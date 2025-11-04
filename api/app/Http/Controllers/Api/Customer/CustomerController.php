<?php

namespace App\Http\Controllers\Api\Customer;

use App\Http\Controllers\Controller;
use App\Models\RuleModel;
use App\Models\User;
use DB;
use File;
use Helper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Validator;

class CustomerController extends Controller
{
    public function index(Request $request)
    {
        $user = Auth::user();
        //dd($user);
        if (! $user->can('view users')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to view users',
            ], 403);
        }
        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int) $request->selectedFilter;
        $query = User::where('role_type', 4)->orderBy('users.id', 'desc')->select('users.*');
        if ($searchQuery !== null) {
            $query->where('users.name', 'like', '%' . $searchQuery . '%');
        }
        if ($selectedFilter !== null) {
            $query->where('users.status', $selectedFilter);
        }
        // $query->where('users.role_id', 1);
        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);
        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            $status = $item->status == 1 ? 'Active' : 'None';
            return [
                'id'            => $item->id,
                'name'          => $item->name,
                'rulename'      => 'N/A',
                'email'         => $item->email,
                'phone_number'  => $item->phone_number,
                'show_password' => $item->show_password,
                'status'        => $status,
            ];
        });
        // Return the modified collection along with pagination metadata
        return response()->json([
            'data' => $modifiedCollection,
            'current_page' => $paginator->currentPage(),
            'total_pages' => $paginator->lastPage(),
            'total_records' => $paginator->total(),
        ], 200);
    }
}
