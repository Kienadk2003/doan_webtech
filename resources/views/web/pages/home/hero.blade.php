<section class="techstore-hero">
    <div class="container">
        <div class="hero-grid">
            <div class="hero-copy">
                <p class="hero-kicker">TechStore · Laravel Project</p>
                <h1>Thiết kế và xây dựng website quản lý cửa hàng phụ kiện</h1>
                <p>
                    Nền tảng quản lý bán hàng phụ kiện công nghệ với dashboard theo dõi, quản lý danh mục,
                    quản lý tồn kho và trải nghiệm mua sắm trực quan.
                </p>
                <div class="hero-actions">
                    <a href="/accessories" class="btn_1">{{__("Accessories")}}</a>
                    <a href="/news/list" class="btn_1 outline">{{__("Latest News")}}</a>
                </div>
            </div>
            <div class="hero-stats">
                <article>
                    <span>{{ $products->count() }}</span>
                    <small>Phụ kiện mới</small>
                </article>
                <article>
                    <span>{{ $brands->count() }}</span>
                    <small>Thương hiệu</small>
                </article>
                <article>
                    <span>{{ $categories->count() }}</span>
                    <small>Danh mục</small>
                </article>
                <article>
                    <span>{{ $top_selling->count() }}</span>
                    <small>Top bán chạy</small>
                </article>
            </div>
        </div>
    </div>
</section>
