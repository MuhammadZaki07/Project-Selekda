<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Portfolio;
use Illuminate\Routing\Controller as BaseController;


class PortfolioController extends BaseController
{
    public function index()
    {
        return response()->json(Portfolio::all());
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'author' => 'required|string|max:255',
        ]);

        $portfolio = Portfolio::create($request->all());

        return response()->json([
            'message' => 'Portfolio created successfully',
            'portfolio' => $portfolio
        ], 201);
    }

    public function show($id)
    {
        return response()->json(Portfolio::findOrFail($id));
    }

    public function update(Request $request, $id)
    {
        $portfolio = Portfolio::findOrFail($id);
        $portfolio->update($request->all());

        return response()->json($portfolio);
    }

    public function destroy($id)
    {
        Portfolio::destroy($id);

        return response()->json(['message' => 'Portfolio deleted']);
    }
}
