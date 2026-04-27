<div class="container">
    <div id="carousel-home">
        <div class="owl-carousel owl-theme techstore-hero-carousel">
            @foreach($banners as $banner)
            @php
            $bannerImage = 'web_assets/img/slides/slide_home_2.jpg';
            if (!empty($banner->image)) {
            $bannerImage = strstr($banner->image, 'https') == '' ?
            'https://res.cloudinary.com/' . env('CLOUD_NAME') . '/image/upload/' . $banner->image . '.jpg' :
            $banner->image;
            }
            @endphp
            <div class="owl-slide techstore-slide">
                <div class="techstore-hero-layout">
                    <div class="techstore-slide-content">
                        <p class="slide-kicker">TechStore Accessories</p>
                        <h2>Phu kien cong nghe chinh hang cho setup hien dai</h2>
                        <p>Lua chon man hinh, chuot, ban phim, tai nghe va thiet bi gaming toi uu cho hoc tap, lam viec
                            va giai tri.</p>
                        <div class="techstore-slide-actions">
                            <a href="/list" class="btn_1">Mua ngay</a>
                            <a href="/accessories" class="btn_1 outline">Xem danh muc</a>
                        </div>
                    </div>
                    <div class="techstore-slide-media">
                        <img src="{{ $bannerImage }}" alt="TechStore Banner">
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <div class="techstore-carousel-nav" aria-label="Banner navigation">
            <button type="button" class="techstore-carousel-btn techstore-carousel-prev" aria-label="Previous banner">
                <i class="ti-angle-left"></i>
            </button>
            <button type="button" class="techstore-carousel-btn techstore-carousel-next" aria-label="Next banner">
                <i class="ti-angle-right"></i>
            </button>
        </div>
        <div id="icon_drag_mobile"></div>
    </div>
</div>
<!--/carousel-->