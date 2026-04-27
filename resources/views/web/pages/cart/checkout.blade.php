@extends('web.layout.index')
@section('css')
<link href="web_assets/css/checkout.css" rel="stylesheet">
@endsection
@section('content')
<?php
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Auth;
if(Auth::check()){
    $carts = Cart::instance(Auth::user()->id);
}else{
    $carts = Cart::instance();
}

?>
<main class="bg_gray">
    <div class="container margin_30">
        <div class="page_header">
            <div class="breadcrumbs">
                <ul>
                    <li><a href="/">{{__("Home")}}</a></li>
                    <li><a href="/cart">{{__("Cart")}}</a></li>
                    <li>{{__("Checkout")}}</li>
                </ul>
            </div>
            <h1>{{__("Checkout")}}</h1>

        </div>
        <!-- /page_header -->
        <form action="/vnpay_payment" id="confirmCheckout" method="post">
            @csrf
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="step first">
                        <h3>1. {{__("User info and Delivery address")}}</h3>
                        <div class="tab-content checkout">
                            <div class="tab-pane fade show active" id="tab_1" role="tabpanel" aria-labelledby="tab_1">
                                <div class="form-group">
                                    <label class="container_check" style="padding-left:5px !important"><span
                                            style="color:red">*</span>
                                        {{__('Receiver information')}}
                                    </label>
                                </div>
                                <div class="row no-gutters">
                                    <div class="col-6 form-group pl-1">
                                        <input type="text" value="{{Auth::user()->lastname ?? ''}}" name="lastname"
                                            class="form-control" placeholder="{{__('Last Name')}}">
                                    </div>

                                    <div class="col-6 form-group pr-1">
                                        <input type="text" value="{{Auth::user()->firstname ?? ''}}" name="firstname"
                                            class="form-control" placeholder="{{__('First Name')}}">
                                    </div>
                                </div>

                                <div class="row no-gutters">
                                    <div class="col-6 form-group pl-1">
                                        <input type="email" value="{{Auth::user()->email ?? '' }}" name="email"
                                            class="form-control" placeholder="Email">
                                    </div>

                                    <div class="col-6 form-group pr-1">
                                        <input type="text" class="form-control" value="{{Auth::user()->phone ?? ''}}"
                                            name="phone" placeholder="{{__('Telephone')}}">
                                    </div>
                                </div>
                                <hr>
                                <!-- /row -->
                                <div class="form-group">
                                    <input type="text" value="{{Auth::user()->address ?? ''}}" name="address"
                                        class="form-control" placeholder="{{__('Address')}}">
                                </div>
                                <div class="row no-gutters">
                                    <div class="col-6 form-group pl-1">
                                        <input type="text" value="{{Auth::user()->district ?? ''}}" name="district"
                                            class="form-control" placeholder="{{__('District')}}">
                                    </div>
                                    <div class="col-md-6 form-group pr-1 mt-1">
                                        <select class="wide add_bottom_15 form-control" name="city" id="city">
                                            <?php
                                                $ch = curl_init();
                                                curl_setopt($ch, CURLOPT_URL, "https://provinces.open-api.vn/api/v2/");
                                                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // 🔥 quan trọng
                                                $response = curl_exec($ch);
                                                $response = json_decode($response, true);
                                                foreach($response as $value){?>
                                            <option value=" {{$value['codename']}}">
                                                {{$value['name']}}
                                            </option>
                                            <?php }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <!-- /row -->
                                <div class="form-group">
                                    <input type="text" value="" name="content" class="form-control"
                                        placeholder="{{__('Notes for orders')}}">
                                </div>
                                <hr>
                                <div class="form-group">
                                    <label class="container_check" id="other_addr">
                                        {{__('Sender information')}}
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div id="other_addr_c" class="pt-2">
                                    <div class="row no-gutters">
                                        <div class="col-6 form-group pr-1">
                                            <input type="text" value="" name="firstname_sender" class="form-control"
                                                placeholder="{{__('First Name')}}">
                                        </div>
                                        <div class="col-6 form-group pl-1">
                                            <input type="text" value="" name="lastname_sender" class="form-control"
                                                placeholder="{{__('Last Name')}}">
                                        </div>
                                    </div>
                                    <!-- /row -->
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="" name="phone_sender"
                                            placeholder="{{__('Telephone')}}">
                                    </div>
                                </div>
                            </div>
                            <!-- /tab_1 -->
                        </div>
                    </div>
                    <!-- /step -->
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="step last">
                        <h3>2. {{__("Order Summary")}}</h3>
                        <div class="box_general summary">
                            <ul>
                                @foreach($carts->content() as $key => $cart)
                                <li class="clearfix">
                                    <a href="/accessory/{{$cart->id}}" style="color:black !important;">
                                        <em
                                            style="max-width: 300px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">
                                            @if(strstr($cart->image,"https") == "")
                                            <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$cart->options->image}}.jpg"
                                                width="50" height="50" class="lazy" alt="Image">
                                            @else
                                            <img src="{{$cart->options->image}}" width="50" height="50" class="lazy"
                                                alt="Image">
                                            @endif
                                            {{$cart->qty}} x {{$cart->name}}
                                        </em>
                                    </a>
                                    <span style="margin-top:15px">
                                        {{number_format($cart->price,0,',','.')}}<sup
                                            style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">Ä‘</sup>
                                    </span>
                                </li>
                                @endforeach
                            </ul>
                            <ul>
                                <li class="clearfix">
                                    <em>
                                        <strong>{{__("Subtotal")}}</strong>
                                    </em>
                                    <span>{{$carts->priceTotal(0,',','.');}}<sup
                                            style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">Ä‘</sup></span>
                                </li>

                                <li class="clearfix">
                                    <em>
                                        <strong>{{__("Tax")}}</strong>
                                    </em>
                                    <span>{{$carts->tax(0,',','.')}}<sup
                                            style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">Ä‘</sup></span>
                                </li>

                                <li class="clearfix">
                                    <em>
                                        <strong>{{__("Discount")}}</strong>
                                    </em>
                                    <span>{{$carts->discount(0,',','.')}}<sup
                                            style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">Ä‘</sup></span>
                                </li>

                                <li class="clearfix">
                                    <em>
                                        <strong>{{__("Shipping")}}</strong>
                                    </em>
                                    <span>{{__("Free")}}</span>
                                </li>

                            </ul>
                            <div class="total clearfix">{{__("Total")}}
                                <span>{{$carts->total(0,',','.')}}<sup
                                        style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">Ä‘</sup></span>
                            </div>
                            @if($carts->content()->count() >0)
                            <a href="javascript:void(0)" onclick="document.getElementById('confirmCheckout').submit();"
                                class="btn_1 full-width">{{__("Direct Payment (VNPay)")}}</a>
                            <!-- NÃºt thanh toÃ¡n COD á»Ÿ ngay dÆ°á»›i -->
                            <button type="submit" formaction="/checkout_cod" formmethod="post" class="btn_1 full-width"
                                style="background:#28a745; margin-top:10px;">{{__("Cash on Delivery (COD)")}}</button>
                            <input type="hidden" name="discount" value="{{$discount}}" />
                            @else
                            <a href="/accessories" class="btn_1 full-width">{{__("Please place an order")}}</a>
                            @endif
                        </div>
                        <!-- /box_general -->
                    </div>
                    <!-- /step -->
                </div>
            </div>
        </form>
        <!-- /row -->
    </div>
    <!-- /container -->
</main>
<!--/main-->
@endsection
@section('scripts')
<script>
// Other address Panel
$('#other_addr input').on("change", function() {
    if (this.checked)
        $('#other_addr_c').fadeIn('fast');
    else
        $('#other_addr_c').fadeOut('fast');
});
$(document).ready(function() {
    $("#city option[value='{{ Auth::user()->city }}']").prop("selected", true);
    $('#city').select2();
});
</script>
<script>
if (window.history && window.history.pushState) {

    window.history.pushState('forward', null, '/checkout');

    $(window).on('popstate', function() { //here you know that the back button is pressed
        window.location.reload();
    });

}
</script>
@endsection