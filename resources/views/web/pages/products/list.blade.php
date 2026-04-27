@extends('web.layout.index')
@section('css')
<link href="web_assets/css/listing.css" rel="stylesheet">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css" />
@endsection
<style>
.range-slider {
    position: relative;
    height: 80px;
}

.account-slider {
    margin-top: 15px !important;
}
</style>
@section('content')
<main>
    <div class="container">
        <div class="breadcrumbs">
            <ul>
                <li><a href="/">{{__("Home")}}</a></li>
                <li>{{__("Accessories")}}</li>
                @if(Request::get('search'))
                <li>{{Request::get('search')}}</li>
                @endif
            </ul>
        </div>
    </div>
    <!-- /top_banner -->
    <div id="stick_here"></div>
    <div class="toolbox elemento_stick">
        <div class="container">
            {{-- <div class="product-toolbar" style="display: flex; align-items: center; gap: 12px; flex-wrap: wrap; margin-bottom: 24px; background: #fff; padding: 16px 24px; border-radius: 12px; box-shadow: 0 2px 8px rgba(0,0,0,0.04);">
				<button class="toolbar-btn" onclick="onSortChange('price-asc')" style="border: 1px solid #d1d5db; background: #fff; border-radius: 8px; padding: 8px 18px; font-size: 1rem; display: flex; align-items: center; gap: 6px; cursor: pointer;">
					<i class="fa fa-sort-amount-up"></i> GiÃ¡ tÄƒng dáº§n
				</button>
				<button class="toolbar-btn" onclick="onSortChange('price-desc')" style="border: 1px solid #d1d5db; background: #fff; border-radius: 8px; padding: 8px 18px; font-size: 1rem; display: flex; align-items: center; gap: 6px; cursor: pointer;">
					<i class="fa fa-sort-amount-down"></i> GiÃ¡ giáº£m dáº§n
				</button>
				<input type="text" placeholder="GiÃ¡ tháº¥p nháº¥t" style="width: 120px; border: 1px solid #3b82f6; border-radius: 8px; padding: 8px 10px; font-size: 1rem; margin-left: 6px;" />
				<input type="text" placeholder="GiÃ¡ cao nháº¥t" style="width: 120px; border: 1px solid #3b82f6; border-radius: 8px; padding: 8px 10px; font-size: 1rem; margin-left: 6px;" />
				<button style="background: #2563eb; color: #fff; border: none; border-radius: 8px; padding: 8px 16px; margin-left: 6px; font-size: 1.1rem; display: flex; align-items: center; justify-content: center;">
					<i class="fa fa-search"></i>
				</button>
			</div> --}}
            <div class="collapse" id="filters">
                <div class="row small-gutters filters_listing_1">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="dropdown">
                            <a href="#" data-bs-toggle="dropdown" class="drop">{{__("Categories")}}</a>
                            <div class="dropdown-menu">
                                <div class="filter_type">
                                    <form action="/sortCategories" id="sortCategories" method="GET">
                                        @csrf
                                        <ul>
                                            @foreach($categories as $cat)
                                            <li>
                                                <label
                                                    class="container_check">{{$cat->name}}<small>{{$cat->Subcategories->count()}}</small>
                                                    <input type="checkbox" name="cat_value[]" value="{{$cat->id}}"
                                                        @if(isset($catValue)) @checked(in_array($cat->id,$catValue))
                                                    @endif
                                                    >
                                                    <span class="checkmark"></span>
                                                </label>
                                            </li>
                                            @endforeach
                                        </ul>
                                        <a href="javascript:void(0)" class="apply_filter"
                                            onclick="document.getElementById('sortCategories').submit();">{{__("Apply")}}</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- /dropdown -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="dropdown">
                            <a href="#" data-bs-toggle="dropdown" class="drop">{{__("Brands")}}</a>
                            <div class="dropdown-menu">
                                <div class="filter_type">
                                    <form action="/sortBrands" id="sortBrands" method="GET">
                                        @csrf
                                        <ul>
                                            @foreach($brands as $brand)
                                            <li>
                                                <label
                                                    class="container_check">{{$brand->name}}<small>{{$brand->products->count()}}</small>
                                                    <input type="checkbox" name="brand_value[]" value="{{$brand->id}}"
                                                        @if(isset($brandValue))
                                                        @checked(in_array($brand->id,$brandValue))
                                                    @endif
                                                    >
                                                    <span class="checkmark"></span>
                                                </label>
                                            </li>
                                            @endforeach
                                        </ul>
                                        <a href="javascript:void(0)" class="apply_filter"
                                            onclick="document.getElementById('sortBrands').submit();">{{__("Apply")}}</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- /dropdown -->
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- áº¨n thanh tÃ¬m kiáº¿m theo giÃ¡ (range slider) Ä‘á»ƒ khÃ´ng áº£nh hÆ°á»Ÿng dá»¯ liá»‡u sáº£n pháº©m -->
    <div class="range-slider" style="display:none;">
        <input type="text" class="js-range-slider" value="" />
    </div>
    <div class="extra-controls" style="display:none;">
        <input type="text" id="js-input-from" value="0" />
        <input type="text" id="js-input-to" value="0" />
        <input type="hidden" name="from" id="from">
        <input type="hidden" name="to" id="to">
    </div>
    <!-- /toolbox -->
    <div id="products-container">
        <div class="container margin_30 ">
            <div class="row small-gutters ProductList">
                @foreach($products as $pro)
                @foreach($pro->ProductsImage as $img)
                @if($loop->first)
                <div class="col-6 col-md-4 col-xl-3">
                    <div class="grid_item">
                        @if(isset($pro->price_new) && isset($pro->price) && $pro->price != 0 && $pro->price_new != 0 )
                        <span class="ribbon off">-{{round((($pro->price - $pro->price_new)/$pro->price)*100,0) }}
                            %</span>
                        @elseif($pro->featured_product == 1)
                        <span class="ribbon hot">Hot</span>
                        @else
                        <span class="ribbon new">New</span>
                        @endif
                        <figure>
                            <a href="/accessory/{{$pro->id}}">
                                <img style="width:290px; height: 290px;" class="img-fluid lazy"
                                    data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg"
                                    alt="">
                            </a>
                            <!-- <div data-countdown="2019/05/15" class="countdown"></div> -->
                        </figure>
                        <a href="/accessory/{{$pro->id}}">
                            <h3 class="d-block product-name"
                                style="max-width: 270px; height:50px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;">
                                {{$pro->name}}</h3>
                        </a>
                        <div class="price_box">
                            @if($pro->price_new !=0 && $pro->price !=0)
                            <span class="new_price">{{number_format($pro->price_new,0,",",".")}} VND</span>
                            <span class="old_price">{{number_format($pro->price,0,",",".")}} VND</span>

                            @elseif($pro->price_new == 0 && $pro->price != 0)
                            <span class="new_price">{{number_format($pro->price,0,",",".")}} VND</span>

                            @elseif($pro->price == 0 && $pro->price_new != 0)
                            <span class="new_price">{{number_format($pro->price_new,0,",",".")}} VND</span>

                            @else
                            <span class="new_price">{{__("Contact")}}</span>

                            @endif
                        </div>
                        <ul>
                            <li>
                                @if(Auth::check())
                                <?php
								$count = $wishlist->countWishlist($pro->id);
								?>
                                <a href="javascript:void(0)" data-productid="{{$pro->id}}" class="tooltip-1 wishlist"
                                    data-bs-toggle="tooltip" data-bs-placement="left"
                                    title="{{__('Add to favorites')}}">
                                    @if($count >0)
                                    <i class="fa-solid fa-heart" style="color:red"></i>
                                    @else
                                    <i class="fa-regular fa-heart"></i>
                                    @endif
                                    <span>{{__('Add to favorites')}}</span>
                                </a>
                                @else
                                <a href="/signin_signup" data-productid="{{$pro->id}}" class="tooltip-1 wishlist"
                                    data-bs-toggle="tooltip" data-bs-placement="left"
                                    title="{{__('Add to favorites')}}">
                                    <i class="fa-regular fa-heart"></i>
                                    <span>{{__('Add to favorites')}}</span>
                                </a>
                                @endif
                            </li>
                            <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left"
                                    title="{{__('Add to compare')}}"><i
                                        class="ti-control-shuffle"></i><span>{{__("Add to compare")}}</span></a></li>
                            @if($pro->price || $pro->price_new)
                            <li>
                                <form action="/cart" method="post" id="formSubmitCart_{{$pro->id}}">
                                    @csrf
                                    <a href="javascript:void(0)"
                                        onclick="document.getElementById('formSubmitCart_{{$pro->id}}').submit();"
                                        class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left"
                                        title="{{__('Add to cart')}}"><i
                                            class="ti-shopping-cart"></i><span>{{__('Add to cart')}}</span></a>
                                    <input type="hidden" name="products_id" value="{{$pro->id}}" />
                                    <input type="hidden" name="quantity" value="1" />
                                </form>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>

                @endif
                @endforeach
                @endforeach
                <!-- /col -->
            </div>

            {{-- XÃ“A hoáº·c áº©n phÃ¢n trang --}}
            {{-- <div class="pagination__wrapper">
				{{$products->links()}}
        </div> --}}

    </div>
    </div>
    <!-- /container -->
</main>
@endsection
@section('scripts')
<script src="web_assets/js/sticky_sidebar.min.js"></script>
<script src="web_assets/js/specific_listing.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/js/ion.rangeSlider.min.js"></script>
<script>
totalWishlist();

function totalWishlist() {
    $.ajax({
        type: 'GET',
        url: '/count_wishlist',
        success: function(data) {
            $('#wishlistCount').text(data.count.toLocaleString('vi-VN'));
        }
    });
}

$(document).ready(function() {
    $('.wishlist').click(function() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        var user_id = "{{Auth::id()}}"
        var product_id = $(this).data('productid');
        $.ajax({
            type: 'POST',
            url: '/wishlist',
            data: {
                product_id: product_id,
                user_id: user_id
            },
            success: function(data) {
                if (data.action == 'add') {
                    totalWishlist();
                    $('a[data-productid=' + product_id + ']').html(
                        '<i class="fa-solid fa-heart" style="color:red"></i>');
                } else if (data.action == 'delete') {
                    totalWishlist();
                    $('a[data-productid=' + product_id + ']').html(
                        '<i class="fa-regular fa-heart"></i>');

                }
            }
        })
    });
});
</script>
<script>
var $range = $(".js-range-slider"),
    $inputFrom = $("#js-input-from"),
    $inputTo = $("#js-input-to"),
    instance,
    min = 0,
    max = 100000000,
    from = 30000000,
    to = 60000000;

$range.ionRangeSlider({
    skin: "flat",
    type: "double",
    grid: true,
    min: min,
    max: max,
    from: from,
    to: to,
    onStart: updateInputs,
    onChange: updateInputs,
    prettify_enabled: true,
    prettify_separator: ".",
    postfix: " VND"
});
instance = $range.data("ionRangeSlider");

function updateInputs(data) {
    from = data.from;
    to = data.to;

    $inputFrom.prop("value", from);
    $inputTo.prop("value", to);
    $("#from").val(from);
    $("#to").val(to);
}

$inputFrom.on("input", function() {
    var val = $(this).prop("value");

    // validate
    if (val < min) {
        val = min;
    } else if (val > to) {
        val = to;
    }

    instance.update({
        from: val
    });
    $("#from").val($(this).val());
});

$inputTo.on("input", function() {
    var val = $(this).prop("value");

    // validate
    if (val < from) {
        val = from;
    } else if (val > max) {
        val = max;
    }

    instance.update({
        to: val
    });
    $("#to").val($(this).val());
});
$(document).ready(function() {
    $(".js-range-slider").on('change', function() {
        var from = $('#from').val();
        var to = $('#to').val();
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                from: from,
                to: to
            },
            url: '/filterPrice',
            method: "GET",
            success: function(data) {
                $('.ProductList').html(data)
            }
        });
    });
});
</script>
<script>
function onSortChange(type) {
    // Láº¥y giÃ¡ trá»‹ tá»« thanh tÃ¬m kiáº¿m á»Ÿ header
    var keyword = '';
    if ($('.custom-search-input input[name="search"]').length) {
        keyword = $('.custom-search-input input[name="search"]').val();
    } else if ($('.search_mob_wp input[name="search"]').length) {
        keyword = $('.search_mob_wp input[name="search"]').val();
    }
    var priceMin = $("input[placeholder='GiÃ¡ tháº¥p nháº¥t']").val();
    var priceMax = $("input[placeholder='GiÃ¡ cao nháº¥t']").val();
    var catValue = [];
    $("input[name='cat_value[]']:checked").each(function() {
        catValue.push($(this).val());
    });
    var brandValue = [];
    $("input[name='brand_value[]']:checked").each(function() {
        brandValue.push($(this).val());
    });
    $.ajax({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            sort: type,
            keyword: keyword,
            price_min: priceMin,
            price_max: priceMax,
            cat_value: catValue,
            brand_value: brandValue
        },
        url: '/sortBySelect',
        method: "GET",
        success: function(data) {
            $('.ProductList').html(data)
        }
    });
}
</script>
<script>
// Xá»­ lÃ½ tÃ¬m kiáº¿m theo giÃ¡ khi báº¥m nÃºt tÃ¬m kiáº¿m
$(document).ready(function() {
    $(".product-toolbar button:has(.fa-search)").on('click', function(e) {
        e.preventDefault();
        var priceMin = $("input[placeholder='GiÃ¡ tháº¥p nháº¥t']").val();
        var priceMax = $("input[placeholder='GiÃ¡ cao nháº¥t']").val();
        var keyword = '';
        if ($('.custom-search-input input[name="search"]').length) {
            keyword = $('.custom-search-input input[name="search"]').val();
        } else if ($('.search_mob_wp input[name="search"]').length) {
            keyword = $('.search_mob_wp input[name="search"]').val();
        }
        var catValue = [];
        $("input[name='cat_value[]']:checked").each(function() {
            catValue.push($(this).val());
        });
        var brandValue = [];
        $("input[name='brand_value[]']:checked").each(function() {
            brandValue.push($(this).val());
        });
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                price_min: priceMin,
                price_max: priceMax,
                keyword: keyword,
                cat_value: catValue,
                brand_value: brandValue
            },
            url: '/filterPrice',
            method: "GET",
            success: function(data) {
                $('.ProductList').html(data)
            }
        });
    });
});
</script>
<script>
$(document).ready(function() {
    function checkPriceInput() {
        var min = $("input[placeholder='GiÃ¡ tháº¥p nháº¥t']").val();
        var max = $("input[placeholder='GiÃ¡ cao nháº¥t']").val();
        var btn = $(".product-toolbar button:has(.fa-search)");
        if (min === '' || max === '') {
            btn.prop('disabled', true).css({
                opacity: 0.6,
                cursor: 'not-allowed'
            });
        } else {
            btn.prop('disabled', false).css({
                opacity: 1,
                cursor: 'pointer'
            });
        }
    }
    $("input[placeholder='GiÃ¡ tháº¥p nháº¥t'], input[placeholder='GiÃ¡ cao nháº¥t']").on('input',
        checkPriceInput);
    checkPriceInput(); // Gá»i khi load trang
    $(".product-toolbar button:has(.fa-search)").on('click', function(e) {
        if ($(this).prop('disabled')) {
            e.preventDefault();
            return false;
        }
        var priceMin = $("input[placeholder='GiÃ¡ tháº¥p nháº¥t']").val();
        var priceMax = $("input[placeholder='GiÃ¡ cao nháº¥t']").val();
        var keyword = '';
        if ($('.custom-search-input input[name="search"]').length) {
            keyword = $('.custom-search-input input[name="search"]').val();
        } else if ($('.search_mob_wp input[name="search"]').length) {
            keyword = $('.search_mob_wp input[name="search"]').val();
        }
        var catValue = [];
        $("input[name='cat_value[]']:checked").each(function() {
            catValue.push($(this).val());
        });
        var brandValue = [];
        $("input[name='brand_value[]']:checked").each(function() {
            brandValue.push($(this).val());
        });
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                price_min: priceMin,
                price_max: priceMax,
                keyword: keyword,
                cat_value: catValue,
                brand_value: brandValue
            },
            url: '/filterPrice',
            method: "GET",
            success: function(data) {
                $('.ProductList').html(data)
            }
        });
    });
});
</script>
@endsection