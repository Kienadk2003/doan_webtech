<section class="techstore-brand-section">
    <div class="container ">
        <div class="techstore-section-head">
            <h2>Thương hiệu nổi bật</h2>
            <p>Cac thuong hieu linh kien va phu kien cong nghe duoc ua chuong tai TechStore.</p>
        </div>
        <div class="techstore-brand-grid">
            @foreach($brands as $brand)
            @if($brand->status == 1 && $brand->image != null)
            <a href="/brands/{{$brand->id}}" class="techstore-brand-card">
                @if(strstr($brand->image,"https") == "")
                <img src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$brand->image}}.jpg"
                    alt="{{$brand->name}}">
                @else
                <img src="{{$brand->image}}" alt="{{$brand->name}}">
                @endif
                <span>{{$brand->name}}</span>
            </a>
            @endif
            @endforeach
        </div>
    </div>
</section>