<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
class ProductController extends Controller
{

  public function index(){
    $products = Product::paginate(8);
    return view('welcome')->with('products',$products);
  }

  public function paginate_more_products_ajax(Request $request){
    if($request->ajax()){
        session(["pagenumber" => $request->page]);
      $products = Product::paginate(8);
        return view('ajax-list-view')->with('products',$products)->render();
    }

}


public function products_main($id){
  $product = Product::find($id);
  session(["pageview" => "true"]);
return view('product-main')->with('product',$product);
}


}