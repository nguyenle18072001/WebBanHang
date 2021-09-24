<?php

namespace App\Providers;
use App\Models\ProductType;
use Illuminate\Support\ServiceProvider;
use App\Models\Cart;
use Session;


class AppServiceProvider extends ServiceProvider
{

    public function boot()
    {
        view()->composer(['header','page.dat_hang'],function($view){
            $loai_sp = ProductType::all();
            
            $view->with('loai_sp',$loai_sp);
        });

        view()->composer('header',function($view){
            if(Session('cart')){
                $oldCart= Session::get('cart');//lấy giỏ hàng hiện tại gắn vào giỏ hàng cũ
                $cart = new Cart($oldCart);//kiểm tra giỏ hàng có hay chưa
                $view->with(['cart'=>Session::get('cart'),'product_cart'=>$cart->items,'totalPrice'=>$cart->totalPrice,'totalQty'=>$cart->totalQty]);
            }
        });


    }
    
    public function register()
    {
        //
    }
}
