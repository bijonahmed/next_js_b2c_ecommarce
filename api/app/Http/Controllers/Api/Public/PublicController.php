<?php

namespace App\Http\Controllers\Api\Public;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Product;
use App\Models\Roles;
use App\Models\ProductCategory;
use App\Models\ProductsAttribues;
use App\Models\ProductsGallery;
use App\Models\Supplier;
use App\Models\User;
use Attribute;
use DB;
use File;
use Helper;
use Illuminate\Http\Request;
use Validator;

class PublicController extends Controller
{
    public function index(Request $request)
    {
        try {
            $categories = ProductCategory::where('status', 1)->get();
            $grouped    = $categories->groupBy('parent_id');
            $buildTree  = function ($parentId) use (&$buildTree, $grouped) {
                return $grouped->get($parentId, collect())->map(function ($category) use ($buildTree) {
                    return [
                        'id'         => $category->id,
                        'name'       => $category->name,
                        'slug'       => $category->slug,
                        'parent_id'  => $category->parent_id,
                        'children'   => $buildTree($category->id),
                    ];
                });
            };

            $chkBanner    = Banner::where('type', 'top_banner')->first();
            $topBanner    = !empty($chkBanner) ? url($chkBanner->banner_image) : "";
            $sliderBanner = Banner::where('type', 'slider')->get();

            $sliders = $sliderBanner->map(function ($item) {
                if (!empty($item->home_slider)) {
                    $item->home_slider = url($item->home_slider);
                }
                return $item;
            });


            // Start with parent_id = 0 (top-level)
            $nestedCategories = $buildTree(0);

            return response()->json([
                'success'   => true,
                'data'      => $nestedCategories,
                'topBanner' => $topBanner,
                'sliders' => $sliders,


            ], 200);
        } catch (\Exception $e) {
            \Log::error('Category fetch failed: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch categories. Please try again later.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }


    public function getsAllproducts(Request $request)
    {

        // dd($request->all());
        $category_id            = $request->query('category_id', null);
        $subcategory_id         = $request->query('subcategory_id', null);
        $offset                 = $request->query('offset', 0);
        $limit                  = $request->query('limit', 40);

        $query                  = Product::where('status', 1);

        if ($category_id) {
            $query->where('categoryId', $category_id);
        }

        if ($subcategory_id) {
            $query->where('subcategoryId', $subcategory_id);
        }

        $products = $query->orderBy('id', 'desc')
            ->skip($offset)
            ->take($limit)
            ->get();

        $get_products      = $products->map(function ($data) {
            $checksupplier = Supplier::find($data->supplier_id);
            return [
                'id'                => $data->id,
                'name'              => $data->name,
                'slug'              => $data->slug,
                'price'             => $data->price,
                'description_full'  => $data->description_full,
                'discount_price'    => $data->discount_price,
                'thumnail_img'      => $data->thumnail_img ? url($data->thumnail_img) : null,
                'vendor'            => $checksupplier ? $checksupplier->name : 'BIR GROUP',
                'currency'          => 'Tk.',
            ];
        });

        return response()->json([
            'success' => true,
            'product' => $get_products,
        ]);
    }


    public function getCategoryParent()
    {
        $categories = ProductCategory::where('status', 1)
            ->where('parent_id', 0)
            ->whereNotNull('thumbnail_image')
            ->get();
        // Map through categories
        $mappedCategories = $categories->map(function ($category) {
            return [
                'id'              => $category->id,
                'name'            => $category->name,
                'slug'            => $category->slug,
                'parent_id'       => $category->parent_id,
                'thumbnail_image' => $category->thumbnail_image ? url($category->thumbnail_image) : null,
                'banner_image'    => $category->banner_image ? url($category->banner_image) : null,
            ];
        });
        return response()->json([
            'success' => true,
            'data' => $mappedCategories,
        ], 200);
    }

    public function productsCategory(Request $request)
    {
        try {
            $categories = ProductCategory::where('status', 1)->get();
            $grouped    = $categories->groupBy('parent_id');
            // Recursive closure
            $buildTree = function ($parentId) use (&$buildTree, $grouped) {
                return $grouped->get($parentId, collect())->map(function ($category) use ($buildTree) {
                    // Get up to 6 products for this category
                    $filterProducts = Product::where('categoryId', $category->id)
                        ->limit(6)
                        ->get()
                        ->map(function ($product) {
                            return [
                                'id'    => $product->id,
                                'name'  => $product->name,
                                'slug'  => $product->slug,
                                'price' => $product->price,
                                'discount_price' => $product->discount_price,
                                'thumbnail'      => $product->thumnail_img ? url($product->thumnail_img) : null,
                            ];
                        });
                    // Recursively build child categories (limited to 6)
                    $children = $buildTree($category->id)->take(6);

                    return [
                        'id'              => $category->id,
                        'name'            => $category->name,
                        'slug'            => $category->slug,
                        'parent_id'       => $category->parent_id,
                        'thumbnail_image' => $category->thumbnail_image ? url($category->thumbnail_image) : null,
                        'banner_image'    => $category->banner_image ? url($category->banner_image) : null,
                        'children'        => $children,       // nested categories
                        'products'        => $filterProducts, // related products
                    ];
                });
            };

            // Start recursion from parent_id = 0 (root)
            $nestedCategories = $buildTree(0);

            return response()->json([
                'success' => true,
                'data' => $nestedCategories,
            ], 200);
        } catch (\Exception $e) {
            \Log::error('Category fetch failed: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch categories. Please try again later.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    public function productsCategoryAllData(Request $request)
    {
        try {
            $categories = ProductCategory::where('status', 1)->get();
            $grouped    = $categories->groupBy('parent_id');
            // Recursive closure
            $buildTree = function ($parentId) use (&$buildTree, $grouped) {
                return $grouped->get($parentId, collect())->map(function ($category) use ($buildTree) {
                    // Get up to 6 products for this category
                    $filterProducts = Product::where('categoryId', $category->id)
                        ->get()
                        ->map(function ($product) {
                            return [
                                'id'    => $product->id,
                                'name'  => $product->name,
                                'slug'  => $product->slug,
                                'price' => $product->price,
                                'discount_price' => $product->discount_price,
                                'thumbnail'      => $product->thumnail_img ? url($product->thumnail_img) : null,
                            ];
                        });
                    // Recursively build child categories (limited to 6)
                    $children = $buildTree($category->id)->take(150);

                    return [
                        'id'              => $category->id,
                        'name'            => $category->name,
                        'slug'            => $category->slug,
                        'parent_id'       => $category->parent_id,
                        'thumbnail_image' => $category->thumbnail_image ? url($category->thumbnail_image) : null,
                        'banner_image'    => $category->banner_image ? url($category->banner_image) : null,
                        'children'        => $children,       // nested categories
                        'products'        => $filterProducts, // related products
                    ];
                });
            };

            // Start recursion from parent_id = 0 (root)
            $nestedCategories = $buildTree(0);

            return response()->json([
                'success' => true,
                'data' => $nestedCategories,
            ], 200);
        } catch (\Exception $e) {
            \Log::error('Category fetch failed: ' . $e->getMessage(), [
                'file' => $e->getFile(),
                'line' => $e->getLine(),
            ]);

            return response()->json([
                'success' => false,
                'message' => 'Failed to fetch categories. Please try again later.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    public function searchProducts(Request $request)
    {

        $query = $request->query('q', '');

        if (!$query) {
            return response()->json([
                'success' => false,
                'product' => [],
            ]);
        }

        // Wildcard search in name or description
        $products = Product::where('name', 'like', "%{$query}%")
            // ->orWhere('description_full', 'like', "%{$query}%")
            ->where('status', 1)
            ->orderBy('id', 'desc')
            ->limit(20)
            ->get();

        $get_prdoucts = $products->map(function ($data) {
            return [
                'id'              => $data->id,
                'name'            => $data->name,
                'slug'            => $data->slug,
                'price'           => $data->price,
                'discount_price'  => $data->discount_price,
                'thumnail_img'    => $data->thumnail_img ? url($data->thumnail_img) : null,
                'vendor'          => 'BIR GROUP',
            ];
        });

        return response()->json([
            'success' => true,
            'product' => $get_prdoucts,
        ]);
    }


    public function getProducts()
    {
        $product = Product::where('status', 1)->limit(12)->orderBy('id', 'desc')->get();

        $get_prdoucts = $product->map(function ($data) {
            return [
                'id'              => $data->id,
                'name'            => $data->name,
                'slug'            => $data->slug,
                'price'           => $data->price,
                'discount_price'  => $data->discount_price,
                'thumnail_img'    => $data->thumnail_img ? url($data->thumnail_img) : null,
                'vendor'          => 'BIR GROUP',
            ];
        });

        // Return a 404 response if not found
        return response()->json([
            'success'               => true,
            'product'               => $get_prdoucts,
        ], 200);
    }


    public function checkProductDetails($slug)
    {

        $product = Product::where('slug', $slug)->first();

        if ($product) {
            $product->thumnail_img = $product->thumnail_img ? url($product->thumnail_img) : null;
        }
        // Return a 404 response if not found
        if (!$product) {
            return response()->json([
                'success' => false,
                'message' => 'Product not found.',
            ], 404);
        }


        $rproducts = Product::where('categoryId', $product->categoryId)->where('id', '!=', $product->id)->where('status', 1)->get();
        //dd($rproducts);
        $related_prdoucts = $rproducts->map(function ($data) {
            return [
                'id'              => $data->id,
                'name'            => $data->name,
                'slug'            => $data->slug,
                'price'           => $data->price,
                'discount_price'  => $data->discount_price,
                'thumbnail_image' => $data->thumnail_img ? url($data->thumnail_img) : null,
                'vendor'          => 'BIR GROUP',
            ];
        });


        // Fetch related data
        $attributes = ProductsAttribues::where('product_id', $product->id)->get();
        $galleries  = ProductsGallery::where('product_id', $product->id)->get();

        // Map gallery data with full URL
        $formattedGallery = $galleries->map(function ($gallery) {
            return [
                'id'            => $gallery->id,
                'product_id'    => $gallery->product_id,
                'gallery_image' => $gallery->gallery_image ? url($gallery->gallery_image) : null,
            ];
        });

        // Return a structured JSON response
        return response()->json([
            'success'               => true,
            'product'               => $product,
            'attributes'            => $attributes,
            'gallery'               => $formattedGallery,
            'related_prdoucts'      => $related_prdoucts,
        ], 200);
    }
}
