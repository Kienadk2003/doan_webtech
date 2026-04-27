@extends('web.layout.index')
@section('content')
<main>
			<!--/banners -->
			@include('web.pages.home.banners')
			<!--/banners -->

			<!-- Brands -->
			@include('web.pages.home.brands')
			<!-- /Brands -->
			
			<!-- Featured Products -->
			@include('web.pages.home.featured')
			<!-- /Featured Products -->

			<!-- Top selling -->
			@include('web.pages.home.top_selling')
			<!-- /Top selling -->

			<!-- New Products -->
			@include('web.pages.home.new_products')
			<!-- /New Products -->

			<!-- News -->
			@include('web.pages.home.latest_news')
			<!-- /News -->

		</main>

@endsection
