<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Blog;
use Illuminate\Routing\Controller as BaseController;


class BlogController extends BaseController
{

    public function index()
    {
        return response()->json(Blog::all());
    }


    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'description' => 'required|string',
            'author' => 'required|string|max:255',
            'tags' => 'nullable|string',
        ]);

        $blog = Blog::create($request->all());

        return response()->json($blog, 201);
    }

    public function show($id)
    {
        return response()->json(Blog::findOrFail($id));
    }

    // Perbarui blog
    public function update(Request $request, $id)
    {
        $blog = Blog::findOrFail($id);
        $blog->update($request->all());

        return response()->json($blog);
    }

    // Hapus blog
    public function destroy($id)
    {
        Blog::destroy($id);

        return response()->json(['message' => 'Blog deleted']);
    }
}
