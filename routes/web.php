<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\KioskController;
// Auth routes
Route::get('login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('login', [AuthController::class, 'login'])->name('login.post');
Route::post('logout', [AuthController::class, 'logout'])->name('logout');
Route::get('/kiosk', [KioskController::class, 'index']);
Route::post('/kiosk/search', [KioskController::class, 'search']);
Route::get('/sales/print/{invoice}', [SaleController::class, 'printStruk'])->name('sales.print');
Route::get('/checkout/success/{invoice}', [SaleController::class, 'checkoutSuccess'])->name('checkout.success');


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware('auth')->name('dashboard');
// Protected routes
Route::middleware(['auth'])->group(function () {

    // Dashboard redirect
    Route::get('/', function () {
        return redirect()->route('books.index');
    });

    // USER MANAGEMENT (Admin Only)
    Route::middleware('can:manage-users')->group(function () {
        Route::resource('users', UserController::class);
    });

    // BOOK MANAGEMENT (Admin & Kasir)
    Route::middleware('can:view-books')->group(function () {
        Route::resource('books', BookController::class);
    });

    // POS ROUTES (Admin & Kasir)
    Route::middleware('can:access-pos')->group(function () {
        Route::get('sales/pos', [SaleController::class, 'pos'])->name('sales.pos');
        // Route::get('sales/print-struk/{invoice_number}', [SaleController::class, 'printStruk'])->name('sales.print-struk');
        Route::post('sales/pos', [SaleController::class, 'processSale'])->name('sales.pos.process');
        Route::post('sales/add', [SaleController::class, 'addToCart'])->name('sales.add');
        Route::post('sales/remove/{rowId}', [SaleController::class, 'removeItem'])->name('sales.remove');
        Route::post('sales/checkout', [SaleController::class, 'checkout'])->name('sales.checkout');
        Route::post('sales/pos/generate-invoice', [SaleController::class, 'generateInvoice'])->name('sales.pos.generate_invoice');

    });

    // REPORTS (Admin Only)
    Route::middleware('can:view-reports')->group(function () {
        Route::get('reports/sales', [ReportController::class, 'sales'])->name('reports.sales');
        Route::get('reports/sales/pdf', [ReportController::class, 'exportPdf'])->name('reports.sales.pdf');
        Route::get('reports/sales/excel', [ReportController::class, 'exportExcel'])->name('reports.sales.excel');
        Route::get('reports/inventory', [ReportController::class, 'inventory'])->name('reports.inventory');
        Route::get('/reports/inventory/pdf', [ReportController::class, 'inventory_pdf'])->name('report.inventory.pdf');
        Route::get('/reports/inventory/excel', [ReportController::class, 'inventory_exportExcel'])->name('report.inventory.excel');

    });

    Route::get('/profile/password', [ProfileController::class, 'editPassword'])->name('profile.password.edit');
    Route::post('/profile/password', [ProfileController::class, 'updatePassword'])->name('profile.password.update');
});
