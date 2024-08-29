<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller as BaseController;

class BannerController extends BaseController
{
    public function index()
    {
        return response()->json(Banner::all());
    }

    public function show(string $id)
    {
        return response()->json(Banner::find($id));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'nullable|string|max:50',
            'description' => 'nullable|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        if($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $banner = new Banner();
        $banner->title = $request->title;
        $banner->description = $request->description;
        if ($request->hasFile('image')) {
            $banner->image = $request->file('image')->store('banners', 'public');
        }
        $banner->save();
        return response()->json([
            'message' => 'Banner created successfully',
            'banner' => $banner
        ], 201);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'nullable|string|max:50',
            'description' => 'nullable|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $banner = Banner::findOrFail($id);
        $banner->title = $request->title ?? $banner->title;
        $banner->description = $request->description ?? $banner->description;
        if ($request->hasFile('image')) {
            if ($banner->image) {
                Storage::disk('public')->delete($banner->image);
            }
            $banner->image = $request->file('image')->store('banners', 'public');
        }
        $banner->save();

        return response()->json([
            'message' => 'Banner updated successfully',
            'banner' => $banner
        ], 200);
    }


    public function destroy($id)
    {
        $banner = Banner::findOrFail($id);
        $banner->delete();
        return response()->json(['message' => 'Banner deleted']);
    }
}
