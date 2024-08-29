<?php


use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\CaptchaController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\GameScoreController;
use App\Http\Controllers\PortfolioController;

Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);

Route::get('/captcha', [CaptchaController::class, 'getCaptcha']);
Route::post('/captcha/validate', [CaptchaController::class, 'validateCaptcha']);

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', [UserController::class, 'getProfile']);
    Route::apiResource('banners', BannerController::class);
    Route::apiResource('blogs', BlogController::class);
    Route::apiResource('portfolios', PortfolioController::class);

    Route::put('/user/{id}', [UserController::class, 'updateProfile']);

    Route::get('/leaderboard', [GameScoreController::class, 'getLeaderboard']);
    Route::post('/save-score', [GameScoreController::class, 'saveScore']);
});
