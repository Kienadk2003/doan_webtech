@if(Request::path() == 'list' || Request::path() == 'accessories')
<style>
.account-slider {
    margin-top: 19px !important;
}
</style>
@endif
<header class="version_2">
    <div class="layer"></div><!-- Mobile menu overlay mask -->
    <div class="techstore-main-header">
        <div class="container">
            <div class="techstore-header-row">
                <div class="techstore-header-left">
                    <a href="/" class="techstore-brand">
                        <span class="techstore-brand-icon"><i class="fa-solid fa-microchip"></i></span>
                        <span class="techstore-brand-text">TECHSTORE</span>
                    </a>
                    <div class="dropdown techstore-category-dropdown d-none d-lg-block">
                        <button class="techstore-category-btn" type="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fa-solid fa-bars"></i>
                            <span>Danh mục</span>
                        </button>
                        <div class="dropdown-menu techstore-category-panel">
                            <div class="row g-3">
                                @foreach($categories as $cat)
                                @if($cat->status == 1)
                                <div class="col-12 col-md-6 col-xl-4">
                                    <div class="techstore-category-group">
                                        <a href="/category/{{$cat->id}}"
                                            class="techstore-category-parent">{{$cat->name}}</a>
                                        @if($cat->Subcategories->where('status',1)->count() > 0)
                                        <ul>
                                            @foreach($cat->Subcategories as $sub)
                                            @if($sub->status == 1)
                                            <li><a href="/subcategory/{{$sub->id}}">{{$sub->name}}</a></li>
                                            @endif
                                            @endforeach
                                        </ul>
                                        @endif
                                    </div>
                                </div>
                                @endif
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <button class="techstore-category-btn d-lg-none" type="button" data-bs-toggle="collapse"
                        data-bs-target="#mobileCategoryPanel" aria-expanded="false" aria-controls="mobileCategoryPanel">
                        <i class="fa-solid fa-bars"></i>
                        <span>Danh mục</span>
                    </button>
                </div>
                <div class="techstore-header-center">
                    <form action="/search" method="GET" class="techstore-search-form">
                        <input type="text" name="search" value="{{Request::get('search')}}"
                            placeholder="Bạn cần tìm gì?">
                        <button type="submit" aria-label="Search">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </form>
                </div>
                <div class="techstore-header-right">
                    <a class="techstore-utility" href="tel://{{isset($info->phone) ? $info->phone : ''}}">
                        <i class="fa-regular fa-headset"></i>
                        <span><small>Hotline</small><strong>{{isset($info->phone) ? $info->phone : ''}}</strong></span>
                    </a>
                    <a class="techstore-utility" href="javascript:void(0)">
                        <i class="fa-regular fa-map"></i>
                        <span><small>Hệ thống</small><strong>Showroom</strong></span>
                    </a>
                    <a class="techstore-utility" href="/trackOrder">
                        <i class="fa-regular fa-clipboard"></i>
                        <span><small>Tra cứu</small><strong>Đơn hàng</strong></span>
                    </a>
                    <div class="dropdown dropdown-cart techstore-cart-wrap">
                        @if( Request::path() != "cart" && Request::path() != "checkout")
                        <a href="/cart" class="techstore-utility techstore-cart-link"><i
                                class="ti-shopping-cart"></i><span><small>Giỏ
                                    hàng</small><strong>Cart</strong></span><em id="cartCount"
                                class="techstore-cart-badge">@if(Auth::check()){{ Cart::instance(Auth::user()->id)->count() }}@else{{ Cart::instance()->count() }}@endif</em></a>
                        <div class="dropdown-menu">
                            <ul>
                                @foreach($carts->content() as $key =>$cart)
                                <li>
                                    <a href="/accessory/{{$cart->id}}">
                                        @if(strstr($cart->image,"https") == "")
                                        <figure><img
                                                src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$cart->options->image}}.jpg"
                                                alt="" width="50" height="50" class="lazy"></figure>
                                        @else
                                        <figure><img src="{{$cart->options->image}}" alt="" width="50" height="50"
                                                class="lazy"></figure>
                                        @endif
                                        <strong>
                                            <span
                                                style="max-width: 150px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">{{$cart->qty}}
                                                x {{$cart->name}}</span>
                                            {{number_format($cart->price,0,",",".")}} <sup>VND</sup>
                                        </strong>
                                    </a>
                                    <a href="javascript:void(0);" data-id="{{$cart->rowId}}"
                                        class="action delete-cart"><i class="ti-trash"></i></a>
                                </li>
                                @endforeach
                            </ul>
                            <div class="total_drop">
                                <div class="clearfix">
                                    <strong>{{__("Subtotal")}}</strong>
                                    <span id="sumSubtotal">
                                        {{$carts->priceTotal(0,',','.');}} <sup>VND</sup>
                                    </span>
                                </div>
                                <div class="clearfix">
                                    <strong>{{__("Tax")}}</strong>
                                    <span id="tax">
                                        {{$carts->tax(0,',','.');}} <sup>VND</sup>
                                    </span>
                                </div>
                                <div class="clearfix">
                                    <strong>{{__("Total")}}</strong>
                                    <span id="total">
                                        {{$carts->total(0,',','.');}} <sup>VND</sup>
                                    </span>
                                </div>
                                <a href="/cart" class="btn_1">{{__("View Cart")}}</a>
                                @if(Auth::check())
                                <a href="/checkout" class="btn_1">{{__("Checkout")}}</a>
                                @else
                                <a href="/signin_signup" class="btn_1">{{__("Login")}}</a>
                                @endif
                            </div>
                        </div>
                        @endif
                    </div>
                    @if(Auth::check())
                    <div class="dropdown dropdown-access techstore-account-wrap">
                        <a href="javascript:void(0)" class="techstore-utility">
                            <i class="fa-regular fa-user"></i>
                            <span><small>Tài khoản</small><strong>{{Auth::user()->firstname}}</strong></span>
                        </a>
                        <div class="dropdown-menu">
                            @if(isset(Auth::user()->image))

                            @if(strstr(Auth::user()->image,"https") == "")
                            <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{ Auth::user()->image }}.jpg"
                                class=" me-2" style="border-radius:50%!important; width:40px;height:32px">
                            @else
                            <img src='{{Auth::user()->image}}' class=" me-2"
                                style="border-radius:50%!important; width:40px;height:32px">
                            @endif
                            @else
                            <img src='images/avatar/avatar.png' class=" me-2"
                                style="border-radius:50%!important; width:40px;height:32px">
                            @endif

                            @if(Session("language") == "en")
                            {{Auth::user()->firstname}} {{Auth::user()->lastname}}
                            @else
                            {{Auth::user()->lastname}} {{Auth::user()->firstname}}
                            @endif
                            <ul>
                                <li>
                                    <a href="/profile"><i class="ti-user"></i>{{__("My Profile")}}</a>
                                </li>
                                <li>
                                    <a href="/myOrder"><i class="ti-package"></i>{{__("My Orders")}}</a>
                                </li>
                                <li>
                                    <a href="/trackOrder"><i class="ti-truck"></i>{{__("Track your Order")}}</a>
                                </li>
                                <li>
                                    <a href="/logout"><i class="ti-shift-right"></i>{{__("Logout")}}</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    @else
                    <a href="/signin_signup" class="techstore-utility">
                        <i class="fa-regular fa-user"></i>
                        <span><small>Tài khoản</small><strong>Đăng nhập</strong></span>
                    </a>
                    @endif
                </div>
            </div>
            <div class="collapse techstore-mobile-category-panel d-lg-none" id="mobileCategoryPanel">
                @foreach($categories as $cat)
                @if($cat->status == 1)
                <div class="techstore-mobile-cat">
                    <a href="/category/{{$cat->id}}" class="techstore-mobile-cat-title">{{$cat->name}}</a>
                    @if($cat->Subcategories->where('status',1)->count() > 0)
                    <div class="techstore-mobile-subcats">
                        @foreach($cat->Subcategories as $sub)
                        @if($sub->status == 1)
                        <a href="/subcategory/{{$sub->id}}">{{$sub->name}}</a>
                        @endif
                        @endforeach
                    </div>
                    @endif
                </div>
                @endif
                @endforeach
            </div>
        </div>
    </div>
    <!-- /main_header -->
    <div class="main_nav d-none">
        <div class="container">
            <div class="row small-gutters align-items-center">
                <div class="col-xl-7 col-lg-7 d-none d-lg-block">
                    <nav class="techstore-category-nav"></nav>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-9">
                    <div class="custom-search-input">
                        <form action="/search" method="GET">
                            <input type="text" name="search" value="{{Request::get('search')}}"
                                placeholder="{{__('Search accessories for TechStore')}}">
                            <button type="submit" style="margin-top: -3px;"><i class="ti-search"
                                    style="font-size: 20px;"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-xl-2 col-lg-2 col-md-3">
                    <ul class="top_tools"></ul>
                </div>
            </div>
        </div>
    </div>
    <!-- /main_nav -->
</header>
@section('scripts')
<script>
$(document).ready(function() {
    $('.delete-cart').on('click', function() {
        var Obj = $(this);
        var cartId = $(this).data('id');
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            url: '/deleteCart',
            type: 'DELETE',
            data: {
                cartId: cartId
            },
            dataType: 'json',
            success: function(data) {
                Obj.parent().remove();
                $('#sumSubtotal').text(data.subtotal.toLocaleString('vi-VN')).append(
                    ' <sup>VND</sup>');
                $('#total').text(data.total.toLocaleString('vi-VN')).append(
                    ' <sup>VND</sup>');
                $('#cartCount').text(data.count.toLocaleString('vi-VN'));
                $('#tax').text(data.tax.toLocaleString('vi-VN')).append(' <sup>VND</sup>');
            },
            error: function() {
                alert("error");

            }
        })
    });
});
</script>
@endsection