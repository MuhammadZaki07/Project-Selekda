<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Routing\Controller as BaseController;


class CaptchaController extends BaseController
{
    public function getCaptcha()
    {
        $captcha = Str::random(6);
        return response()->json(['captcha' => $captcha]);
    }

    public function validateCaptcha(Request $request)
    {
        $captcha = $request->input('captcha');
        return response()->json(['valid' => true]);
    }
}
