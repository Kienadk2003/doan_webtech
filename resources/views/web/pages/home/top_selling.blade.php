<div class="container margin_60_35">
    <div class="main_title mb-4">
        <a href="#">
            <h2>{{__("Top Selling Accessories")}}</h2>
            <span>{{__("Top Selling Accessories")}}</span>
        </a>
    </div>
    <div class="main_title mb-4" style="display:flex;align-items:center;gap:16px;">
        <style>
        /* Local filter button styles to match admin design */
        .filter-btn {
            border: none;
            color: #ffffff;
            font-size: 14px;
            padding: 10px 22px;
            border-radius: 3px;
            min-width: 100px;
            box-shadow: none;
            display: inline-block;
        }

        .filter-btn.primary {
            background: linear-gradient(180deg, #5b9bff 0%, #4b82e6 100%);
        }

        .filter-btn.secondary {
            background: linear-gradient(180deg, #445a70 0%, #364b5e 100%);
        }

        .filter-btn:active {
            transform: translateY(1px);
        }
        </style>
        <form id="monthFilterForm" action="{{ url()->current() }}" method="get"
            style="display:flex;gap:8px;align-items:center;margin:0;padding:0;order:1;">
            <input type="month" id="month" name="month" class="form-control" value="{{ request('month', date('Y-m')) }}"
                style="width:200px;height:38px;padding:6px 8px;" />
            <button type="submit" class="filter-btn primary" style="height:38px;">{{__("Apply")}}</button>
            <button type="button" id="monthAllBtn" class="filter-btn secondary"
                style="height:38px;margin-left:0px;">{{__("All")}}</button>
        </form>
    </div>
    <div class="isotope-wrapper">
        <script>
        // Keep default form submission behavior so the "XÃ¡c nháº­n" button reloads the page.
        // The "Táº¥t cáº£" button remains an AJAX quick-update.
        document.addEventListener('DOMContentLoaded', function() {
            // AJAX submit for the month form
            var form = document.getElementById('monthFilterForm');
            if (form) {
                form.addEventListener('submit', function(e) {
                    e.preventDefault();
                    var monthVal = document.getElementById('month').value;
                    var url = '/top-selling/ajax';
                    if (monthVal) {
                        url += '?month=' + encodeURIComponent(monthVal);
                    }
                    var xhr = new XMLHttpRequest();
                    xhr.open('GET', url, true);
                    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
                    xhr.onload = function() {
                        if (xhr.status === 200) {
                            var container = document.querySelector(
                                '.isotope-wrapper .row.small-gutters');
                            if (container) {
                                container.innerHTML = xhr.responseText;
                                try {
                                    if (window.lazyLoadInstance && typeof window.lazyLoadInstance
                                        .update === 'function') {
                                        window.lazyLoadInstance.update();
                                    } else if (typeof LazyLoad !== 'undefined') {
                                        new LazyLoad({
                                            elements_selector: ".lazy"
                                        });
                                    }
                                } catch (e) {}
                                try {
                                    var triggers = [].slice.call(container.querySelectorAll(
                                        '[data-bs-toggle="tooltip"]'));
                                    triggers.map(function(el) {
                                        return new bootstrap.Tooltip(el);
                                    });
                                } catch (e) {}
                            }
                        } else {
                            // fallback to full reload
                            var qs = monthVal ? ('?month=' + encodeURIComponent(monthVal)) : '';
                            window.location = window.location.pathname + qs;
                        }
                    };
                    xhr.onerror = function() {
                        var qs = monthVal ? ('?month=' + encodeURIComponent(monthVal)) : '';
                        window.location = window.location.pathname + qs;
                    };
                    xhr.send();
                });
            }

            // Keep "Táº¥t cáº£" button behavior as AJAX
            var allBtn = document.getElementById('monthAllBtn');
            if (allBtn) {
                allBtn.addEventListener('click', function(e) {
                    e.preventDefault();
                    var xhr = new XMLHttpRequest();
                    var url = '/top-selling/ajax?month=all';
                    xhr.open('GET', url, true);
                    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
                    xhr.onload = function() {
                        if (xhr.status === 200) {
                            var container = document.querySelector(
                                '.isotope-wrapper .row.small-gutters');
                            if (container) {
                                container.innerHTML = xhr.responseText;
                                try {
                                    if (window.lazyLoadInstance && typeof window.lazyLoadInstance
                                        .update === 'function') {
                                        window.lazyLoadInstance.update();
                                    } else if (typeof LazyLoad !== 'undefined') {
                                        new LazyLoad({
                                            elements_selector: ".lazy"
                                        });
                                    }
                                } catch (e) {}
                                try {
                                    var triggers = [].slice.call(container.querySelectorAll(
                                        '[data-bs-toggle="tooltip"]'));
                                    triggers.map(function(el) {
                                        return new bootstrap.Tooltip(el);
                                    });
                                } catch (e) {}
                            }
                        } else {
                            window.location = window.location.pathname + '?month=all';
                        }
                    };
                    xhr.onerror = function() {
                        window.location = window.location.pathname + '?month=all';
                    };
                    xhr.send();
                });
            }
        });
        </script>
        <div class="row small-gutters">
            @foreach($top_selling as $pro)
            @foreach($pro->ProductsImage as $img)
            @if($loop ->first)
            @if($pro->price != 0 && $pro->price_new != 0)
            <div class="col-6 col-md-4 col-xl-3 isotope-item sale">
                <div class="grid_item">
                    <figure>
                        <span class="ribbon off">
                            -{{round((($pro->price - $pro->price_new)/$pro->price)*100,0) }} %
                        </span>
                        <a href="/accessory/{{$pro->id}}">
                            @if(strstr($img->image,"https") == "")
                            <img style="width:270px; height:250px" class="img-fluid lazy"
                                data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg"
                                alt="">
                            <img style="width:270px; height:250px" class="img-fluid lazy"
                                data-src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg"
                                alt="">
                            @else
                            <img style="width:270px; height:250px" class="img-fluid lazy" data-src="{{$img->image}}"
                                alt="">
                            <img style="width:270px; height:250px" class="img-fluid lazy" data-src="{{$img->image}}"
                                alt="">
                            @endif
                        </a>
                        <!-- <div data-countdown="2013/12/12" class="countdown"></div> -->
                    </figure>
                    <!-- <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div> -->
                    <a href="/accessory/{{$pro->id}}">
                        <h3 class="d-block">{{$pro->name}}</h3>
                    </a>
                    <div class="price_box">
                        <span class="new_price">{{number_format($pro->price_new,0,",",".")}} VND</span>
                        <span class="old_price">{{number_format($pro->price,0,",",".")}} VND</span>
                    </div>
                    <ul>
                        <li>
                            @if(Auth::check())
                            <?php 
														$count = $wishlist->countWishlist($pro->id);
													?>
                            <a href="javascript:void(0)" data-productid="{{$pro->id}}" class="tooltip-1 wishlist"
                                data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to favorites')}}">
                                @if($count >0)
                                <i class="fa-solid fa-heart" style="color:red"></i>
                                @else
                                <i class="fa-regular fa-heart"></i>
                                @endif
                                <span>{{__('Add to favorites')}}</span>
                            </a>
                            @else
                            <a href="/signin_signup" data-productid="{{$pro->id}}" class="tooltip-1 wishlist"
                                data-bs-toggle="tooltip" data-bs-placement="left" title="{{__('Add to favorites')}}">
                                <i class="fa-regular fa-heart"></i>
                                <span>{{__('Add to favorites')}}</span>
                            </a>
                            @endif
                        </li>
                        <li><a href="#0" class="tooltip-1" data-bs-toggle="tooltip" data-bs-placement="left"
                                title="{{__('Add to compare')}}"><i
                                    class="ti-control-shuffle"></i><span>{{__('Add to compare')}}</span></a></li>
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
                <!-- /grid_item -->
            </div>
            @endif
            @endif
            @endforeach
            @endforeach
        </div>
        <!-- /row -->
    </div>
    <!-- /isotope-wrapper -->
</div>