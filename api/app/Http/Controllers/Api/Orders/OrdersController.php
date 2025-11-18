<?php

namespace App\Http\Controllers\Api\Orders;

use App\Http\Controllers\Controller;
use App\Models\Orders;
use App\Models\OrderStatus;
use App\Models\Product;
use App\Models\ProductCategory;
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

class OrdersController extends Controller
{
    public function index(Request $request)
    {
        $user = Auth::user();
        if (! $user->can('view order')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to view order',
            ], 403);
        }
        $page             = (int) $request->input('page', 1);
        $pageSize         = (int) $request->input('pageSize', 10);
        $orderId          = $request->input('searchQuery');
        $customerId       = (int) $request->input('customerId');
        $status           = (int) $request->input('status');

        if ($pageSize <= 0) {
            $pageSize = 10;
        }

        $query = Orders::leftJoin('users', 'users.id', '=', 'orders.customer_id')
            ->select('orders.*', 'users.name as customerName')
            ->orderBy('orders.id', 'desc');

        if (!empty($orderId)) {
            $query->where('orders.orderId', 'like', '%' . $orderId . '%');
        }

        if (!empty($customerId)) {
            $query->where('orders.customer_id', $customerId);
        }


        if (!empty($status)) {
            $query->where('orders.order_status', $status);
        }


        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);

        $modifiedCollection = $paginator->getCollection()->map(function ($item) {


            $statusName = OrderStatus::where('id', $item->order_status)->first();
            return [
                'id'                => $item->id,
                'orderId'           => $item->orderId,
                'customerName'      => $item->customerName,
                'order_date'        => $item->order_date,
                'grand_total'       => $item->grand_total,
                'paymentMethod'     => strtoupper($item->paymentMethod) ?? "N/A",
                'status'            => $statusName->name ?? "",
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

    public function getOrderStatusList()
    {
        $oderStatus = OrderStatus::where('status', 1)->get();
        return response()->json([
            'status'        => true,
            'data'          => $oderStatus,
        ], 200); // 200 OK for data fetch
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
}
