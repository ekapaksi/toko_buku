<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\KioskController;

Route::get('/kiosk/search', [KioskController::class, 'search_api']);