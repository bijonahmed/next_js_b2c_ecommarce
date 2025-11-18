<?php

namespace App\Http\Controllers\Api\Customer;

use App\Http\Controllers\Controller;
use App\Models\OrderHistory;
use App\Models\Orders;
use App\Models\OrderStatus;
use App\Models\RuleModel;
use App\Models\User;
use DB;
use File;
use Helper;
use Illuminate\Http\Request;
use App\Models\ProductCategory;
use App\Models\ProductsAttribues;
use App\Models\ProductsGallery;
use App\Models\Setting;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Validator;

class CustomerController extends Controller
{
    public function index(Request $request)
    {
        $user           = Auth::user();
        $chkCustomerId  = $user->id;

        $orders = Orders::where('customer_id', $chkCustomerId)
            ->orderBy('id', 'desc')
            ->get();

        // Prepare JSON array
        $orderJson = [];
        foreach ($orders as $order) {
            // Find matching status
            $statusName = OrderStatus::where('status', 1)->first();

            $orderJson[] = [
                'order_id'          => $order->id,
                'orderId'           => $order->orderId,
                'order_date'        => $order->order_date,
                'shipping_phone'    => $order->shipping_phone,
                'paymentMethod'     => $order->paymentMethod,
                'subtotal'          => $order->subtotal,
                'status_name'       => $statusName ? $statusName->name : "",
            ];
        }

        return response()->json([
            'data' => $orderJson,
        ], 200);
    }

    public function getOrderCustomer(Request $request)
    {

        $checkOrder   = Orders::join('order_status', 'order_status.id', '=', 'orders.order_status')
            ->where('orders.id', $request->id)
            ->select(
                'orders.*',
                'order_status.name as status_name'
            )
            ->first();
        $orderDetails = OrderHistory::where('order_id', $checkOrder->id)
            ->join('product', 'order_history.product_id', '=', 'product.id')
            ->select('order_history.*', 'product.name as product_name') // select fields you need
            ->get();

        $data['orderRow']    = $checkOrder;
        $data['orderHistory'] = $orderDetails;

        return response()->json([
            'data' => $data,
        ], 200);
    }



    public function getCustomerLists(Request $request)
    {

        $getCustomer             = User::where('role_type', 4)->get();
        
        return response()->json([
            'data' => $getCustomer,
        ], 200);
    }
}
