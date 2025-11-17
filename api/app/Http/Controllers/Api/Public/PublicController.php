<?php

namespace App\Http\Controllers\Api\Public;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\OrderHistory;
use App\Models\Orders;
use App\Models\Post;
use App\Models\Product;
use App\Models\Roles;
use App\Models\ProductCategory;
use App\Models\ProductsAttribues;
use App\Models\ProductsGallery;
use App\Models\Setting;
use App\Models\Supplier;
use App\Models\User;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
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
    public function getsAllproductsBySubCategories(Request $request)
    {
        //dd($request->all());
        $slug                   = $request->query('slug');
        $category_id          = $request->query('category_id', null);
        $subcategory_id         = $request->query('subcategory_id', null);
        $offset                 = $request->query('offset', 0);
        $limit                  = $request->query('limit', 40);
        $checkCategories = ProductCategory::where('slug', $slug)->first();
        // dd($checkCategories);
        // ✅ Only check slug if both category and subcategory are NOT provided
        if (empty($category_id) && empty($subcategory_id) && !empty($slug)) {
            $checkCategories = ProductCategory::where('slug', $slug)->first();
            $subcategory_id  = $checkCategories->id ?? null;
        }
        // ✅ Build the query
        $query = Product::where('status', 1);
        if (!empty($category_id)) {
            $query->where('categoryId', $category_id);
        }
        if (!empty($subcategory_id)) {
            $query->where('subcategoryId', $subcategory_id);
        }
        $products = $query->orderBy('id', 'desc')
            ->skip($offset)
            ->take($limit)
            ->get();
        //      dd($products);
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
    public function getsAllproductsByCategories(Request $request)
    {
        //dd($request->all());
        $slug                   = $request->query('slug');
        //$category_id          = $request->query('category_id', null);
        $subcategory_id         = $request->query('subcategory_id', null);
        $offset                 = $request->query('offset', 0);
        $limit                  = $request->query('limit', 40);
        $checkCategories = ProductCategory::where('slug', $slug)->first();
        if ($checkCategories) {
            $category_id    = $checkCategories->id;
        }
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
    public function getsPost(Request $request)
    {
        $category_id = $request->query('category_id');
        $post        = Post::where('categoryId', $category_id)->first();
        // Return a 404 response if not found
        if (!$post) {
            return response()->json([
                'success' => false,
                'message' => 'Post not found.',
            ], 404);
        }
        return response()->json([
            'success'               => true,
            'data'                  => $post,
        ], 200);
    }

    public function getSetting(Request $request)
    {
        $post        = Setting::where('id', 1)->first();
        // Return a 404 response if not found
        if (!$post) {
            return response()->json([
                'success' => false,
                'message' => 'Data not found.',
            ], 404);
        }
        return response()->json([
            'success'               => true,
            'data'                  => $post,
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


    public function confirmOrder(Request $request)
    {

        //  dd($request->all());


        //dd($request->all());
        $cart = $request->cart;
        if (empty($cart)) {
            return response()->json([
                'success' => false,
                'message' => 'Cart is empty.',
            ], 400);
        }
        $couponoffer = $request->couponoffer ?? ''; //couponoffer

        // dd($couponoffer);
        // Validation rules
        $rules = [
            'data.name' => 'required|string|max:255',
            //'data.email'          => 'required|email|max:255',
            'data.phone' => ['required', 'regex:/^[0-9+\-\s]+$/', 'max:12'],
            'data.shipping_phone' => ['required', 'regex:/^[0-9+\-\s]+$/', 'max:20'],
            'data.address' => 'required',
            'data.paymentMethod' => 'required',
            'cart' => 'required|array|min:1',
            // other rules as needed
        ];

        // Custom messages (optional)
        $messages = [
            'data.name.required' => 'Name is required.',
            // 'data.email.required'          => 'Email is required.',
            // 'data.email.email'             => 'Email must be a valid email address.',
            'data.phone.required' => 'Phone number is required.',
            'data.phone.regex' => 'Phone number format is invalid.',
            'data.shipping_phone.required' => 'Shipping phone number is required.',
            'data.shipping_phone.regex' => 'Shipping phone number format is invalid.',
            'data.address' => 'Shipping address is required.',
            'data.paymentMethod' => 'Payment method is required.',
            'cart.required' => 'Cart cannot be empty.',
        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'errors' => $validator->errors(),
                'message' => 'Validation failed',
            ], 422);
        }

        $requestdata = $request->input('data');

        $data['name']    = $requestdata['name'];
        $data['email']   = $requestdata['email'] ?? '';
        $data['phone']   = $requestdata['phone'];
        $data['address'] = $requestdata['address'];
        $data['shipping_phone'] = $requestdata['shipping_phone'];

        $devliery_charge = $requestdata['devliery_charge'];
        $bkash_number    = $requestdata['bkash_number'];
        $transaction_id  = $requestdata['transaction_id'];

        $checkPhone = $requestdata['phone'];
        $checkEmail = $requestdata['email'];
        $password   =  '123456';
        // Step 1: Check by email first
        $chkuser = User::where('email', $checkEmail)->first();
        // Step 2: If not found by email, check by phone number
        if (! $chkuser) {
            $chkuser = User::where('phone_number', $checkPhone)->first();
        }

        if (! $chkuser) {
            // New user registration
            $user = new User;
            $user->name         = $requestdata['name'] ?? '';
            $user->email        = $checkEmail;
            $user->address      = $requestdata['address'] ?? '';
            $user->role_type    = 4;
            $user->status       = 1;
            $user->phone_number = $checkPhone;
            //$user->show_password = '123456';
            $user->password = Hash::make($password);
            $user->save(); // First save to get $user->id

            $inviteCode = $this->generateUniqueRandomNumber();
            $ids = 'V-' . sprintf('%09d', $user->id);

            //$user->inviteCode = $inviteCode;
            //$user->vogexi_id = $ids;
            $user->save(); // Save again with generated values

            $customer_id = $user->id;
        } else {
            $customer_id = $chkuser->id;
        }
        // dd($data);
        $couponRaw = $request->coupon;
        $coupon = is_string($couponRaw) ? json_decode($couponRaw, true) : $couponRaw;
        $setting = Setting::find(1);
        $dvCharge = $devliery_charge;

        $subtotal = 0;
        foreach ($cart as $item) {
            $subtotal += $item['price'] * $item['qty'];
        }

        $discount = 0;
        $discountAmount = 0;
        $grandTotal = $subtotal + $dvCharge;

        if ($coupon && isset($coupon['discountPercent'])) {
            $discount           = (float) $coupon['discountPercent'];
            $discountAmount     = (float) $coupon['discountAmount'];
            $grandTotal         = $subtotal - $discountAmount + $dvCharge;
        }

        $nextId = (Orders::max('id') ?? 0) + 1;
        $orderId = str_pad($nextId, 8, '0', STR_PAD_LEFT);

        $order = new \App\Models\Orders;
        $order->customer_id         = $customer_id;
        $order->orderId             = $orderId;
        $order->subtotal            = $subtotal;
        $order->discount            = $discount;
        $order->shipping_phone      = $requestdata['shipping_phone'];
        $order->address             = $requestdata['address'] ?? '';
        $order->paymentMethod       = $requestdata['paymentMethod'] ?? '';
        $order->discount_amount     = $discountAmount;
        $order->grand_total         = $grandTotal;
        $order->bkash_number        = $bkash_number;
        $order->transaction_id      = $transaction_id;
        $order->devliery_charge     = $dvCharge;
        $order->coupon_code         = $coupon['couponCode'] ?? null;
        $order->order_status        = 1;
        $order->order_date          = date('Y-m-d');
        $order->order_type          = 1; //1=online 2=instant_order

        $coupons = [];

        foreach ($cart as $item) {
            $number = str_pad(mt_rand(0, 9999), 4, '0', STR_PAD_LEFT);
            while (in_array($number, $coupons)) {
                $number = str_pad(mt_rand(0, 9999), 4, '0', STR_PAD_LEFT);
            }

            $coupons[] = $number;
        }
        if ($couponoffer == 'couponoffer') {

            $order->coupons = implode(',', $coupons);
        } else {
            $order->coupons = '';
        }
        //$order->coupons = implode(',', $coupons);

        $coupon_code = implode(',', $coupons) ?? null;

        $order->save();

        $lastInsertId = $order->id;
        $longOrderId = $order->orderId;

        $cart = $request->cart;
        //dd($cart);
        $orderId = $lastInsertId; // Replace with actual order ID (if you have it)

        foreach ($cart as $item) {

            // Safely get selected attribute id
            $selectedAttrId = null;
            if (isset($item['selectedAttr'])) {
                if (is_array($item['selectedAttr']) && count($item['selectedAttr']) > 0) {
                    $selectedAttrId = $item['selectedAttr'][0];
                } elseif (!is_array($item['selectedAttr'])) {
                    $selectedAttrId = $item['selectedAttr'];
                }
            }

            // Get attribute name
            $checkAttr = $selectedAttrId ? ProductsAttribues::find($selectedAttrId) : null;
            $selectedAttrName = '';
            if ($checkAttr) {
                $selectedAttrName = is_array($checkAttr->attributeName)
                    ? implode(', ', $checkAttr->attributeName)
                    : $checkAttr->attributeName;
            }

            // Create order history
            OrderHistory::create([
                'order_id'        => $orderId,
                'product_id'      => $item['id'],
                'attribue_id'     => $selectedAttrId,
                'variation_value' => $selectedAttrName,
                'qty'             => $item['qty'],
                'price'           => $item['price'],
                'total_price'     => $item['price'] * $item['qty'],
            ]);
        }


        $customerPhone = $requestdata['shipping_phone'];
        if ($couponoffer == 'couponoffer') {
            /*
            $msg = "Thanks for your order! ID: $longOrderId, Coupon: $coupon_code. We'll contact you soon.";

            $smsApiUrl = 'http://139.99.39.237/api/smsapi';
            $params = [
                'api_key' => '0YvO1UoW99Z4TprlGUr4',
                'type' => 'text',
                'number' => $customerPhone . ',01915728982',
                'senderid' => '8809604902507',
                'message' => $msg,
            ];
            */
        } else {
            /*
            $msg = "Thanks for your order! ID: $longOrderId. We'll contact you soon.";
            $smsApiUrl = 'http://139.99.39.237/api/smsapi';
            $params = [
                'api_key' => '0YvO1UoW99Z4TprlGUr4',
                'type' => 'text',
                'number' => $customerPhone . ',01915728982',
                'senderid' => '8809604902507',
                'message' => $msg,
            ];
            */
        }

        //  Http::get($smsApiUrl, $params);

        return response()->json([

            'success'           => true,
            'checkEmail'        => $checkEmail,
            'password'          => $password,
            'order_id'          => $longOrderId,
            'message'           => 'Order placed successfully.',
            'subtotal'          => $subtotal,
            'discount'          => $discount,
            'discount_amount'   => $discountAmount,
            'grand_total'       => $grandTotal,
        ]);
    }


    public function sms_send()
    {
        $url = 'http://139.99.39.237/api/smsapi';
        $api_key = '0YvO1UoW99Z4TprlGUr4';
        $senderid = '8809604902507';
        $number = '8801753828855';
        $message = 'test sms check';

        $data = [
            'api_key' => $api_key,
            'senderid' => $senderid,
            'number' => $number,
            'message' => $message,
        ];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($ch);
        curl_close($ch);

        return $response;
    }

    public function generateUniqueRandomNumber()
    {
        $numbers = [];

        while (count($numbers) < 4) {
            $randomNumber = rand(1000, 9999);
            if (! in_array($randomNumber, $numbers)) {
                $numbers[] = $randomNumber;
            }
        }

        return $numbers[0]; // Since we're generating only one number, return the first (and only) element of the array
    }
}
