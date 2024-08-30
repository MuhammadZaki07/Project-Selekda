<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller as BaseController;

class UserController extends BaseController
{

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'birth_day' => 'required|date',
            'phone_number' => 'required|string|max:20',
            'password' => 'required|string|min:8',
            'profile_picture' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }


        $profilePicturePath = null;
        if ($request->hasFile('profile_picture')) {
            $file = $request->file('profile_picture');
            $profilePicturePath = $file->store('profile_pictures', 'public');
        }

        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'birthdate' => $request->birth_day,
            'phone_number' => $request->phone_number,
            'password' => Hash::make($request->password),
            'profile_picture' => $profilePicturePath,
        ]);

        return response()->json($user, 201);
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|string',
            'password' => 'required|string',
        ]);

        $student = User::firstWhere("email", $request->email);

        if (!$student || !Hash::check($request->password, $student->password)) {
            response()->json([
                "message" => "Bad Credentials",
            ], Response::HTTP_NOT_FOUND);
        }

        $token = $student->createToken('sancum_token')->plainTextToken;
        return response()->json([
            "message" => "Login Succesfuly",
            "token" => $token
        ], Response::HTTP_OK);
    }

    public function getProfile()
    {
        return response()->json(Auth::user());
    }

    public function updateProfile(Request $request, string $id)
    {
        try {
            $validator = Validator::make($request->all(), [
                'first_name' => 'string|max:20|nullable',
                'last_name' => 'string|max:20|nullable',
                'email' => 'string|email|max:255|nullable',
                'birth_day' => 'date|nullable',
                'phone_number' => 'string|max:20|nullable',
                'password' => 'string|min:8|confirmed|nullable',
                'profile_picture' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            ]);

            if ($validator->fails()) {
                return response()->json($validator->errors(), 422);
            }

            $user = User::findOrFail($id);
            if ($request->hasFile('profile_picture')) {
                if ($user->profile_picture) {
                    Storage::disk('public')->delete($user->profile_picture);
                }

                $file = $request->file('profile_picture');
                $user->profile_picture = $file->store('profile_pictures', 'public');
            }
            $user->first_name = $request->input('first_name', $user->first_name);
            $user->last_name = $request->input('last_name', $user->last_name);
            $user->email = $request->input('email', $user->email);
            $user->birthdate = $request->input('birth_day', $user->birthdate);
            $user->phone_number = $request->input('phone_number', $user->phone_number);

            if ($request->has('password')) {
                $user->password = Hash::make($request->password);
            }

            $user->save();

            return response()->json($user);
        } catch (\Exception $e) {
            return response()->json(['message' => $e->getMessage()], 500);
        }
    }

    public function logout()
    {
        auth()->user()->tokens()->delete();

        return response()->json([
            "message" => "Logged Out Succesfuly",
        ], Response::HTTP_OK);
    }
}
