<?php
namespace App\Http\Controllers\Api\Products;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ProductInventory;
use App\Models\ProductsAttribues;
use App\Models\ProductsGallery;
use Illuminate\Support\Facades\Log;
use App\Models\PurchaseOrderInvoice;
use App\Models\PurchaseOrderParticular;
use App\Models\Supplier;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\Catch_;
use PhpParser\Node\Stmt\TryCatch;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Validator;
class ProductsController extends Controller
{
    public function index(Request $request)
    {
        $user = Auth::user();
        if (! $user->can('view product')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to view product',
            ], 403);
        }
        $page             = (int) $request->input('page', 1);
        $pageSize         = (int) $request->input('pageSize', 10);
        $searchQuery      = $request->input('searchQuery');
        $supplierId       = (int) $request->input('supplierId');
        $categoryId       = (int) $request->input('categoryId');
        $subcategoryId    = (int) $request->input('subcategoryId');
        $status           = (int) $request->input('status');
        if ($pageSize <= 0) {
            $pageSize = 10;
        }
        $query = Product::leftJoin('supplier', 'supplier.id', '=', 'product.supplier_id')
            ->select('product.*', 'supplier.name as supplierName')
            ->orderBy('product.id', 'desc');
        if (!empty($searchQuery)) {
            $query->where('product.name', 'like', '%' . $searchQuery . '%');
        }
        if (!empty($supplierId)) {
            $query->where('product.supplier_id', $supplierId);
        }
        if (!empty($categoryId)) {
            $query->where('product.categoryId', $categoryId);
        }
        if (!empty($subcategoryId)) {
            $query->where('product.subcategoryId', $subcategoryId);
        }
        if (!empty($status)) {
            $query->where('product.status', $status);
        }
        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);
        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            $chkCat = ProductCategory::where('id', $item->categoryId)->select('name')->first();
            return [
                'id'                => $item->id,
                'supplierName'      => $item->supplierName,
                'price'             => 'TK. ' . $item->price,
                'category_name'     => $chkCat ? $chkCat->name : "N/A",
                'sub_category_name' => 'N/A',
                'thumbanil_img'     => $item->thumnail_img ? url($item->thumnail_img) : "",
                'name'              => $item->name,
                'status'            => $item->status,
            ];
        });
        // Return the modified collection along with pagination metadata
        return response()->json([
            'data'           => $modifiedCollection,
            'current_page'   => $paginator->currentPage(),
            'total_pages'    => $paginator->lastPage(),
            'total_records'  => $paginator->total(),
        ], 200);
    }
    public function search(Request $request)
    {
        $query = $request->get('query');
        $products = Product::where('status',1)->where('name', 'like', "%{$query}%")
            ->limit(10)
            ->get(['id', 'name']);
        return response()->json($products);
    }
    public function productrow($id)
    {
        try {
            $checkData = Product::select('product.*', 'supplier.name as supplier_name')
                ->leftJoin('supplier', 'supplier.id', '=', 'product.supplier_id')
                ->where('product.id', $id)
                ->first();
            $checkData->convert_thumbnail_url = url($checkData->thumnail_img);
            $galleryData = ProductsGallery::where('product_id', $id)->get();
            // ✅ Add full URL for each image
            $galleryData->transform(function ($item) {
                $item->gallery_image_url = url($item->gallery_image);
                return $item;
            });
            $chkSubCategory = ProductCategory::where('parent_id', $checkData->categoryId)->get();
            $chkAttrbute    = ProductsAttribues::where('product_id', $id)->get();
            return response()->json([
                'status'        => true,
                'data'          => $checkData,
                'subCategory'   => $chkSubCategory,
                'chkAttrbute'   => $chkAttrbute,
                'galleryData'   => $galleryData
            ], 200); // 200 OK for data fetch
        } catch (\Exception $e) {
            // Log the error for debugging
            \Log::error('Fetch Product Error: ' . $e->getMessage());
            return response()->json([
                'status' => false,
                'message' => 'Failed to fetch product data',
            ], 500); // 500 Internal Server Error
        }
    }
    public function deleteGalleryImage(Request $request)
    {
        $user = Auth::user();
        // Check permission
        if (! $user->can('delete product')) {
            return response()->json([
                'status' => false,
                'message' => 'Unauthorized: You do not have permission to delete',
            ], 403);
        }
        $productId = $request->product_id;
        $imageId   = $request->image_id;
        // Find the gallery image
        $gallery = ProductsGallery::where('product_id', $productId)
            ->where('id', $imageId)
            ->first();
        if (! $gallery) {
            return response()->json([
                'status' => false,
                'message' => 'Data not found',
            ], 404);
        }
        // Delete file from storage
        if (file_exists(public_path($gallery->gallery_image))) {
            unlink(public_path($gallery->gallery_image));
        }
        // Delete record from database
        $gallery->delete();
        return response()->json([
            'status' => true,
            'message' => 'Deleted successfully',
            'id' => $imageId,
        ], 200);
    }
    public function update(Request $request)
    {
        $user = Auth::user();
        if (!$user->can('edit product')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to edit product',
            ], 403);
        }
        $checkPoint = Product::where('id', $request->id)
            ->where('first_update', 0)
            ->first();
        if ($checkPoint) {
            // Full validation for first update
            $validator = Validator::make($request->all(), [
                'name'           => 'required',
                'categoryId'     => 'required|integer',
                //'subcategoryId'  => 'required|integer',
                'price'          => 'required',
                'discount_price' => 'required',
                'stock_qty'      => 'required|integer|min:0',
                'status'         => 'required|in:0,1',
                'files'          => 'required|image|mimes:jpeg,png,jpg,gif,webp|max:2048',
                'gallery'        => 'required',
                'gallery.*'      => 'image|mimes:jpeg,png,jpg,gif,webp|max:2048',
            ], [
                'name.required'           => 'Product name is required.',
                'categoryId.required'     => 'Category is required.',
                //    'subcategoryId.required'  => 'Subcategory is required.',
                'price.required'          => 'Price is required.',
                'discount_price.required' => 'Discount price is required.',
                'stock_qty.required'      => 'Stock quantity is required.',
                'status.required'         => 'Status is required.',
                'files.required'          => 'Thumbnail image is required.',
                'files.image'             => 'Thumbnail must be an image.',
                'files.mimes'             => 'Thumbnail must be jpeg, png, jpg, gif, or webp.',
                'files.max'               => 'Thumbnail image cannot exceed 2MB.',
                'gallery.required'        => 'At least one gallery image is required.',
                'gallery.*.image'         => 'Each gallery file must be an image.',
                'gallery.*.mimes'         => 'Gallery images must be jpeg, png, jpg, gif, or webp.',
                'gallery.*.max'           => 'Gallery images cannot exceed 2MB each.',
            ]);
        } else {
            // Minimal validation for subsequent updates
            $validator = Validator::make($request->all(), [
                'name'           => 'required',
                'categoryId'     => 'required|integer',
                // 'subcategoryId'  => 'required|integer',
                'price'          => 'required',
                'discount_price' => 'required|numeric|min:0',
                'stock_qty'      => 'required|integer|min:0',
                'status'         => 'required|in:0,1',
            ], [
                'name.required'           => 'Product name is required.',
                'categoryId.required'     => 'Category is required.',
                // 'subcategoryId.required'  => 'Subcategory is required.',
                'price.required'          => 'Price is required.',
                'discount_price.required' => 'Discount price is required.',
                'stock_qty.required'      => 'Stock quantity is required.',
                'status.required'         => 'Status is required.',
            ]);
        }
        if ($validator->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'Validation error',
                'errors' => $validator->errors()
            ], 422);
        }
        $data = [
            'name'                  => $request->name ?? "",
            'meta_title'            => $request->meta_title ?? "",
            'meta_description'      => $request->meta_description ?? "",
            'meta_keyword'          => $request->meta_keyword ?? "",
            'categoryId'            => $request->categoryId ?? "",
            'subcategoryId'         => $request->subcategoryId ?: null, //$request->subcategoryId ?? "",
            'price'                 => $request->price ?? "",
            'discount_price'        => $request->discount_price ?? "",
            'stock_qty'             => $request->stock_qty ?? "",
            'description_full'      => $request->description_full ?? "",
            'status'                => $request->status ?? "",
            'first_update'          => 1,
        ];
        // Handle main product image
        if ($request->hasFile('files')) {
            // Optional: delete old image if exists
            $file = $request->file('files');
            $filename = time() . '_' . Str::slug($request->name) . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/products'), $filename);
            $data['thumnail_img'] = 'uploads/products/' . $filename;
        }
        $productData = Product::where('id', $request->id)->first();
        // dd($request->status);
        if ($request->status == 1) {
            $productId = $request->id;
            // Check if product_id already exists
            $checked = ProductInventory::where('product_id', $productId)->first();
            if (empty($checked)) {
               
                $attributes = $request->input('attributes');
                if (is_string($attributes)) {
                    $attributes = json_decode($attributes, true);
                }
                if (!empty($attributes)) {
                    foreach ($attributes as $attr) {
                        $pdata = [
                            'product_id'          => $productId,
                            'attribute_variation' => $attr['attributeName'] ?? '',
                            'qty_in'              => $attr['quantity'] ?? 0,
                            'stock_date'          => date("Y-m-d"),
                            'user_id'             => $user->id
                            // 'product_attribute_id' => $attr['id'] ?? null, // optional
                        ];
                        ProductInventory::create($pdata);
                    }
                }
                // If attributes empty, insert default
                $pdata = [
                    'product_id'           => $productId,
                    'attribute_variation'  => '',
                    'qty_in'               => $request->stock_qty ?? 0,
                    'stock_date'           => date("Y-m-d"),
                    'user_id'              => $user->id
                ];
                ProductInventory::create($pdata);
            }
        }
        // exit;
        // dd($productData);
        if (! $productData) {
            return response()->json([
                'status' => false,
                'message' => 'Product not found',
            ], 404);
        }
        //  dd($data);
        $productData->update($data);
        if ($request->hasFile('gallery')) {
            $galleryPaths = [];
            foreach ($request->file('gallery') as $file) {
                $filename = time() . '_' . uniqid() . '_' . Str::slug($request->name) . '.' . $file->getClientOriginalExtension();
                $file->move(public_path('uploads/product_gallery'), $filename);
                $galleryPaths[] = 'uploads/product_gallery/' . $filename;
            }
            foreach ($galleryPaths as $path) {
                ProductsGallery::create([
                    'product_id'    => $request->id,
                    'gallery_image' => $path,
                ]);
            }
        }
        $attributes = $request->input('attributes');
        if (is_string($attributes)) {
            $attributes = json_decode($attributes, true);
        }
        ProductsAttribues::where('product_id', $request->id)->delete();
        if (!empty($attributes) && is_array($attributes)) {
            foreach ($attributes as $attr) {
                ProductsAttribues::create([
                    'product_id'    => $request->id,
                    'attributeName' => $attr['attributeName'] ?? '',
                    'quantity'      => (int) $attr['quantity'] ?? 0,
                    'sellingPrice'  => $attr['sellingPrice'] ?? 0,
                ]);
            }
        }
        // Handle gallery images
        return response()->json([
            'status' => true,
            'message' => 'Product updated successfully!',
            'order_id' => $request->id,
        ], 200);
    }
    public function destroy($id)
    {
        $user = Auth::user();
        if (! $user->can('delete product')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to delete',
            ], 403);
        }
        $pdata = Product::find($id);
        if (! $pdata) {
            return response()->json([
                'message' => 'Data not found',
            ], 404);
        }
        //$pdata->delete();
        return response()->json([
            'message' => 'Deleted successfully',
            'id' => $id,
        ], 200);
    }
}
