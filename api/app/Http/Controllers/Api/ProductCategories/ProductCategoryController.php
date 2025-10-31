<?php

namespace App\Http\Controllers\Api\ProductCategories;

use App\Http\Controllers\Controller;
use App\Models\PostCategory;
use App\Models\ProductCategory;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use PhpParser\Node\Stmt\Catch_;
use PhpParser\Node\Stmt\TryCatch;
use Illuminate\Support\Str;
use Validator;

class ProductCategoryController extends Controller
{
    public function index(Request $request)
    {
        $user = Auth::user();
        if (! $user->can('view product category')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to view posts category',
            ], 403);
        }

        try {
            $query = ProductCategory::orderBy('id', 'desc')->get()->map(function ($item) {
                if ($item->thumbnail_image) {
                    $item->thumbnail_image = url($item->thumbnail_image); // full URL
                }
                if ($item->banner_image) {
                    $item->banner_image = url($item->banner_image); // full URL
                }
                return $item;
            });

            return response()->json([
                'data' => $query,
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'error' => 'Something went wrong',
                'message' => $e->getMessage(),
            ], 500);
        }
    }

    public function store(Request $request)
    {
        $user = Auth::user();
        if (! $user->can('create product category')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to create product category',
            ], 403);
        }
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $user_id = $user->id;

        $data = [
            'name'          => $request->name,
            'slug'          => Str::slug($request->name),
            'parent_id'     => 0,
            'status'        => 1, // !empty($request->status) ? $request->status : "",
        ];

        $resdata = ProductCategory::insertGetId($data);
        return response()->json($resdata);
    }



    public function createSubcategory(Request $request)
    {
        //dd($request->all());
        $user = Auth::user();
        if (! $user->can('create product category')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to create product category',
            ], 403);
        }
        // dd($request->all());
        $validator = Validator::make($request->all(), [
            'name'      => 'required',
            'parent_id' => 'required',
            'status'    => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = [
            'name'          => $request->name,
            'slug'          => Str::slug($request->name),
            'parent_id'     => $request->parent_id,
            'status'        => $request->status,
        ];
        //dd($data);

        $resdata = ProductCategory::insertGetId($data);
        return response()->json($resdata);
    }

    public function postrow($id)
    {
        $data = PostCategory::where('id', $id)->first();
        $responseData['data'] = $data;

        return response()->json($responseData);
    }

    public function destroy($id)
    {
        $user = Auth::user();

        if (! $user->can('delete posts category')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to delete',
            ], 403);
        }

        $post = PostCategory::find($id);
        if (! $post) {
            return response()->json([
                'message' => 'Data not found',
            ], 404);
        }
        //$post->delete();

        return response()->json([
            'message' => 'Deleted successfully',
            'id' => $id,
        ], 200);
    }

    public function update(Request $request, $id)
    {
        // dd($request->all());
        $user = Auth::user();
        if (! $user->can('edit product category')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to edit product category',
            ], 403);
        }

        $validator = Validator::make($request->all(), [
            'name'   => 'required',
            'status' => 'required',

        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = [
            'name'   => $request->name,
            'slug'   => Str::slug($request->name),
            'status' => $request->status,
        ];

        $data['id'] = $request->id;

        $post = ProductCategory::find($request->id);
        $post->update($data);
        $resdata['id'] = $post->id;

        return response()->json($resdata);
    }


    public function uploadCategoryImage(Request $request)
    {
        $id = (int) $request->id;

        $user = Auth::user();
        if (! $user->can('edit product category')) {
            return response()->json([
                'message' => 'Unauthorized: You do not have permission to edit product category',
            ], 403);
        }
        // Validate uploaded files
        $validator = Validator::make($request->all(), [
            'thumbnail_image' => 'nullable|image|mimes:jpeg,png,jpg,gif,webp|max:2048', // max 2MB
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Find the category
        $category = ProductCategory::find($id);
        if (! $category) {
            return response()->json(['message' => 'Category not found'], 404);
        }

        // Handle thumbnail upload
        if ($request->hasFile('thumbnail_image')) {
            $thumbnail = $request->file('thumbnail_image');
            $thumbnailName = 'thumb_' . time() . '.' . $thumbnail->getClientOriginalExtension();
            $thumbnail->move(public_path('uploads/categories'), $thumbnailName);
            $category->thumbnail_image = 'uploads/categories/' . $thumbnailName;
        }

        $category->save();

        return response()->json([
            'message' => 'Images uploaded successfully',
            'category' => $category,
        ]);
    }
}
