<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;

Route::get('/', [ProductController::class,'index']);
Route::get('/paginate-more-products-ajax', [ProductController::class,'paginate_more_products_ajax'])->name('paginate-more-products-ajax');
Route::get('/products/{id}', [ProductController::class,'products_main'])->name('product-main');



