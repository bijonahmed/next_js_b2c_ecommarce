<?php

namespace App\Http\Controllers\Api\Public;

use App\Http\Controllers\Controller;
use App\Models\Roles;
use App\Models\ProductCategory;
use App\Models\User;
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
            // Start with parent_id = 0 (top-level)
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
}
