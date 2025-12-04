<?php

namespace App\Http\Controllers\Api\Patho;

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
use Codeboxr\PathaoCourier\Facade\PathaoCourier;

class GatewayController extends Controller
{


    public function checkInitialized(PathaoService $pathao)
    {
        $data['store'] = PathaoCourier::store()->list();
        $data['city'] = PathaoCourier::area()->city();

        return response()->json([
            'success'      => true,
            'responseData' => $data,
        ], 200);
    }



    public function checkZone(Request $request, PathaoService $pathao)
    {

        $zoneId = $request->zone_id ?? "";

        $response = PathaoCourier::area()->area($zoneId);

        // Make sure you use the correct property from the response
        $data['zone'] = $response->response ?? $response; // fallback if response missing

        return response()->json([
            'success'      => true,
            'responseData' => $data,
        ], 200);
    }

    public function orderSendToGateway(Request $request, PathaoService $pathao)
    {
        return PathaoCourier::store()->list();
        //return PathaoCourier::area()->city();
        //$cityId = '52';
        // return PathaoCourier::area()->zone($cityId);
        //$zoneId = '156';
        // return PathaoCourier::area()->area($zoneId);

        $pathaoOrder =  PathaoCourier::order()
            ->create([
                "store_id"            => 349959, // Find in store list,
                "merchant_order_id"   => "ORD-" . time(), // Unique order id
                "recipient_name"      => "Gazi Giash Uddin", // Customer name
                "recipient_phone"     => "01988846927", // Customer phone
                "recipient_address"   => "House 123, Mirpur-1, Dhaka", // Customer address
                "recipient_city"      => 52, // Find in city method
                "recipient_zone"      => "156", // Find in zone method
                "recipient_area"      => "13193", // Find in Area method
                "delivery_type"       => "48", // 48 for normal delivery or 12 for on demand delivery
                "item_type"           => 2, // 1 for document,
                "special_instruction" => "",
                "item_quantity"       => "1", // item quantity
                "item_weight"         => "1", // parcel weight
                "amount_to_collect"   => "60", // amount to collect
                "item_description"    => "No details" // product details
            ]);



        dd($pathaoOrder);




        //    dd($pathao->getStores());

        return response()->json($pathao->getStores());
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
}
