<footer class="techstore-footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <h3>TechStore</h3>
                <p class="footer-lead">Nen tang quan ly va ban phu kien cong nghe xay dung bang Laravel.</p>
                <ul class="contacts">
                    <li><i class="ti-home"></i> {{$info->address}}</li>
                    <li><i class="ti-headphone-alt"></i> +{{$info->phone}}</li>
                    <li><i class="ti-email"></i> {{$info->email}}</li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-6">
                <h3>{{__("Categories")}}</h3>
                <ul class="footer-links">
                    @foreach($categories->take(6) as $cat)
                    <li><a href="/category/{{$cat->id}}">{{$cat->name}}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="col-lg-4 col-md-6">
                <h3>{{__("Contact")}}</h3>
                <div class="follow_us">
                    <ul>
                        <li><a href="{{$info->twitter}}"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="web_assets/img/twitter_icon.svg" alt="" class="lazy"></a></li>
                        <li><a href="{{$info->facebook}}"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="web_assets/img/facebook_icon.svg" alt="" class="lazy"></a></li>
                        <li><a href="{{$info->facebook}}"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="web_assets/img/instagram_icon.svg" alt="" class="lazy"></a></li>
                        <li><a href="{{$info->youtube}}"><img src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="web_assets/img/youtube_icon.svg" alt="" class="lazy"></a></li>
                    </ul>
                </div>
                <a href="/accessories" class="btn_1 mt-3">{{__("Accessories")}}</a>
            </div>
        </div>
        <hr>
        <div class="footer-bottom">
            <p>{{$info->copyright}} | TechStore Accessories Management</p>
            <a href="#0">Dieu khoan va dich vu</a>
        </div>
    </div>
</footer>