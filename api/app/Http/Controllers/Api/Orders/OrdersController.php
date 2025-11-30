<?php

namespace App\Http\Controllers\Api\Orders;

use App\Http\Controllers\Controller;
use App\Models\Orders;
use App\Models\OrderStatus;
use App\Models\PathaoToken;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ProductsAttribues;
use App\Models\ProductsGallery;
use Illuminate\Support\Facades\Log;
use App\Models\PurchaseOrderInvoice;
use App\Models\PurchaseOrderParticular;
use App\Models\Supplier;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\Catch_;
use PhpParser\Node\Stmt\TryCatch;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Validator;
use App\Services\PathaoService;
use Illuminate\Support\Facades\Http;

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
            $updateBy   = User::find($item->orderUpdateby)->name ?? "-";

            $totalBill = $item->grand_total;

            return [
                'id'                => $item->id,
                'orderId'           => $item->orderId,
                'customerName'      => $item->customerName,
                'order_date'        => $item->order_date,
                'updateBy'          => strtoupper($updateBy),
                'grand_total'       => "Tk." . number_format($totalBill, 2),
                'paymentMethod'     => strtoupper($item->paymentMethod) ?? "N/A",
                'status'            => $statusName->name ?? "",
                'order_status'      => $item->order_status ?? "",
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


    public function orderUpdate(Request $request, PathaoService $pathao)
    {
        //dd($pathao->getStores());

        // return response()->json($pathao->getStores());
        // api 

        // Validate request
        $validated = $request->validate([
            'id'     => 'required|integer|exists:orders,id',
            'status' => 'required|integer',
        ]);
        $user = Auth::user();
        // Prepare update data
        $data = [
            'order_status'     => $validated['status'],
            'orderUpdateDate'  => date("Y-m-d"),
            'orderUpdateby'    => $user->id,
        ];

        /*

        $gettoken = PathaoToken::find(1);
        $token = $gettoken->access_token;
        //dd($token);
        // $request->validate([
        //     "recipient_name" => "required|min:3",
        //     "recipient_phone" => "required|min:11|max:11",
        //     "recipient_address" => "required|min:10",
        //     "item_quantity" => "required|integer|min:1",
        //     "item_weight" => "required|numeric|min:0.5",
        //     "amount_to_collect" => "required|numeric|min:0",
        // ]);

        $payload = [
            "store_id"            => 148941,
            "merchant_order_id"   => "ORD-" . time(),
            "recipient_name"      => "Gazi Giash Uddin",
            "recipient_phone"     => "01988846927",
            "recipient_address"   => "House 123, Mirpur-1, Dhaka", // 10+ characters
            "delivery_type"       => 48,
            "item_type"           => 2,
            "item_quantity"       => 1,
            "item_weight"         => "0.5",
            "item_description"    => "Test cloth item",
            "special_instruction" => "Test instruction",
            "amount_to_collect"   => 900
        ];

        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . $token,
            'Content-Type' => 'application/json'
        ])->post(
            //'https://courier-api-sandbox.pathao.com/aladdin/api/v1/orders',
            'https://api-hermes.pathao.com/aladdin/api/v1/orders',
            $payload
        );

        dd($response->json());
     */


        // Update order
        $response = Orders::where('id', $validated['id'])->update($data);

        return response()->json([
            'success' => true,
            'message' => 'Order status updated successfully',
            'updated' => $response,
        ], 200);
    }


    public function getOrderStatusList()
    {
        $oderStatus = OrderStatus::where('status', 1)->get();
        return response()->json([
            'status'        => true,
            'data'          => $oderStatus,
        ], 200); // 200 OK for data fetch
    }
}
