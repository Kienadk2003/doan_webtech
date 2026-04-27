@extends('admin/layout/index')
@section('manage_products')
active
@endsection
@section('css')
<link rel="stylesheet" href="admin_assets/vendors/simple-datatables/style.css">
@endsection
@section('content')
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>{{__("Products")}}</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/admin">{{__("Dashboard")}}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{__("Products")}}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="card">
            <div class="card-header">
                <button type="button" class="btn btn-outline-primary block" data-bs-toggle="modal"
                    data-bs-target="#products_create">
                    {{__("Create")}}
                </button>
                @include('admin/pages/products/create')
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <div class="row g-2 align-items-end">
                        <div class="col-auto">
                            <label for="filter_month" class="form-label">Theo tháng</label>
                            <input id="filter_month" class="form-control" type="month" />
                        </div>
                        <div class="col-auto">
                            <label for="filter_start" class="form-label">Từ ngày</label>
                            <input id="filter_start" class="form-control" type="date" />
                        </div>
                        <div class="col-auto">
                            <label for="filter_end" class="form-label">Đến ngày</label>
                            <input id="filter_end" class="form-control" type="date" />
                        </div>
                        <div class="col-auto">
                            <button id="btn_filter" class="btn btn-primary">Lọc</button>
                            <button id="btn_reset" class="btn btn-secondary">Xóa</button>
                        </div>
                        
                    </div>
                </div>
                <table class='table table-striped' id="table1">
                    <thead>
                        <tr>
                            <th class="text-center">STT</th>
                            <th class="text-center">SKU</th>
                            <th class="text-center text-nowrap">{{__("Ngày tạo sản phẩm")}}</th>
                            <th class="text-center text-nowrap">{{__("Image")}}</th>
                            <th class="text-center text-nowrap">{{__("Categories")}}</th>
                            <th class="text-center text-nowrap">{{__('Price')}}</th>
                            <th class="text-center text-nowrap">{{__('New Price')}}</th>
                            <th class="text-center text-nowrap">{{__('Tổng nhập')}}</th>
                            <th class="text-center text-nowrap">{{__('Tồn kho')}}</th>
                            <th class="text-center text-nowrap">{{__('Đã bán')}}</th>
                            <th class="text-center text-nowrap">{{__("Đang xử lí")}}</th>
                            <th class="text-center text-nowrap">{{__("Đang giao")}}</th>
                            <th class="text-center text-nowrap">{{__("Trưng bày")}}</th>
                            <th class="text-center text-nowrap">{{__("Status")}}</th>
                            <th class="text-center text-nowrap">{{__("Operations")}}</th>

                        </tr>
                    </thead>
                    <tbody>
                        @foreach($products as $key => $pro)
                        <tr data-product-id="{{$pro->id}}">
                            <td class="text-center">{{$products->count() - $key}}</td>
                            <td class="text-center">{{$pro->product_code ?? $pro->id}}</td>
                            <td class="text-center">{{ optional($pro->created_at)->format('d/m/Y') }}</td>
                            <td class="text-center">
                                @foreach($pro->ProductsImage as $img)
                                @if($loop ->first)
                                @if($img->image == NULL)
                                <img style="width: 150px">
                                @else
                                @if(strstr($img->image,"https") == "")
                                <img style="width: 150px"
                                    src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg">
                                @elseif(strstr($img->image,"https") != "")
                                <img style="width: 150px" src="{{$img->image}}">
                                @endif
                                @endif
                                @endif
                                @endforeach
                            </td>
                            <td class="text-truncate" style="max-width: 130px;">{{$pro->name}}</td>
                            
                            
                            <td class="text-center">{{ number_format($pro->price, 0, ',', '.') }} VND</td>
                            <td class="text-center">{{ number_format($pro->price_new, 0, ',', '.') }} VND</td>
                            
                            @php
                                $sold = \App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 3); })->where('products_id', $pro->id)->sum('quantity');
                                $processing = \App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 1); })->where('products_id', $pro->id)->sum('quantity');
                                $delivering = \App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 2); })->where('products_id', $pro->id)->sum('quantity');
                                $cancelled = \App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 4); })
                                    ->where('products_id', $pro->id)
                                    ->sum('quantity');
                                // Tồn kho = số lượng còn + hủy
                                $tonKho = (int)$pro->quantity + (int)$cancelled;
                                    // Tổng nhập = tồn kho + đang xử lý + đang giao + đã bán
                                    $totalQuantity = $tonKho + $processing + $delivering + $sold;
                            @endphp
                            
                            <td class="text-center total-quantity">
                                {{-- Tổng số lượng --}}
                                {{$totalQuantity}}
                            </td>
                            
                            <td class="text-center">{{ $tonKho }}</td>
                            
                            <td class="text-center sold">
                                {{-- Số lượng đã bán (chỉ đơn hoàn thành) --}}
                                {{$sold}}
                            </td>

                            <td class="text-center processing">
                                {{-- Số lượng đang xử lí --}}
                                {{$processing}}
                            </td>

                            <td class="text-center delivering">
                                {{-- Số lượng đang giao --}}
                                {{$delivering}}
                            </td>

                            <!--Nổi bật -->
                            <td class="text-center" id="featured{{$pro->id}}">
                                @if($pro->featured_product == 1)
                                <a href="javascript:void(0)" onclick="featured({{$pro->id}},0)"><span
                                        class="badge bg-success">{{__("Published")}}</span></a>
                                @else
                                <a href="javascript:void(0)" onclick="featured({{$pro->id}},1)"><span
                                        class="badge bg-danger">{{__("Pending")}}</span></a>
                                @endif
                            </td>

                            <!--Trạng thái-->
                            <td class="text-center" id="status{{$pro->id}}">
                                @if($pro->status == 1)
                                <a href="javascript:void(0)" onclick="status({{$pro->id}},0)"><span
                                        class="badge bg-success">{{__("Đang bán")}}</span></a>
                                @else
                                <a href="javascript:void(0)" onclick="status({{$pro->id}},1)"><span
                                        class="badge bg-danger">{{__("Dừng bán")}}</span></a>
                                @endif
                            </td>

                            <td class="text-center">
                                <a href="admin/accessories/edit/{{$pro->id}}">
                                    <i data-feather="edit"></i>
                                </a>
                                <a href="admin/accessories/delete/{{$pro->id}}"
                                    onclick="return confirm(`{{__('Are you sure you want to delete this ?')}}`)">
                                    <i data-feather="trash-2" stroke="red"></i>
                                </a>
                            </td>


                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </section>
</div>
@endsection
@section('scripts')
<script src="admin_assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="admin_assets/js/vendors.js"></script>
<script>
$(document).ready(function() {
    $('.checkPrice').change(function() {
        if ($(this).is(":checked")) {
            $('.new_price').removeAttr('disabled');
        } else {
            $('.new_price').attr('disabled', '');
        }
    });



    //change category to subcategory create ©Ph
    $(".category").change(function() {
        var cat_id = $(this).val();
        $.get("admin/accessories/subcategory/" + cat_id, function(data) {
            $(".subcategory").html(data);
        });
    });

});
</script>
<script>
$(function(){
    function applyFilter(){
        var month = $('#filter_month').val();
        var start = $('#filter_start').val();
        var end = $('#filter_end').val();
        var url = '/admin/accessories/filter-sold?ajax=1';
        if(month) url += '&month=' + encodeURIComponent(month);
        if(start) url += '&start=' + encodeURIComponent(start);
        if(end) url += '&end=' + encodeURIComponent(end);
        // debug UI removed; request logged to console
        console.debug('Requesting: ' + url);
        $.get(url, function(res){
            if(!res || !res.ok){
                console.warn('No data returned from filter-sold');
                return;
            }
                if(res.html){
                    // Preferred: replace table body so the visible rows reflect the filter
                    try{ if(window.dataTable) window.dataTable.destroy(); }catch(e){}
                    $('#table1 tbody').html(res.html);
                    window.dataTable = new simpleDatatables.DataTable(document.querySelector('#table1'));
                    if(typeof feather !== 'undefined') feather.replace();
                    console.debug('Replaced table. Rows: ' + $('#table1 tbody tr').length);
                } else if(res.sold_map){
                    // Fallback: update sold cells in-place
                    var changed = 0;
                    Object.keys(res.sold_map).forEach(function(pid){
                        var val = res.sold_map[pid];
                        var $row = $('#table1 tbody').find('tr[data-product-id="'+pid+'"]');
                        if($row.length){
                            var $td = $row.find('td.sold');
                            if($td.length){
                                if($td.text().trim() != String(val)){
                                    $td.text(val);
                                    changed++;
                                }
                            }
                        }
                    });
                    console.debug('Updated in-place. Cells changed: ' + changed);
                }
        }).fail(function(xhr){
            console.error('filter-sold error:', xhr.status);
        });
    }

    $('#btn_filter').on('click', function(e){
        e.preventDefault();
        applyFilter();
    });
    $('#btn_reset').on('click', function(e){
        e.preventDefault();
        $('#filter_month').val('');
        $('#filter_start').val('');
        $('#filter_end').val('');
        // reload full list by requesting without filters
        applyFilter();
    });
});
</script>
<script>
function status(status_id, active) {
    if (active === 1) {
        $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',0)">\
                <span class="badge bg-success">{{__("Published")}}</span>\
            </a>')
    } else {
        $("#status" + status_id).html(' <a href="javascript:void(0)" onclick="status(' + status_id + ',1)">\
                <span class="badge bg-danger">{{__("Pending")}}</span>\
            </a>')
    }
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url: "/admin/accessories/status",
        type: 'GET',
        dataType: 'json',
        data: {
            'active': active,
            'status_id': status_id
        },
        success: function(data) {
            if (data['success']) {
                // alert(data.success);
            } else if (data['error']) {
                alert(data.error);
            }
        }
    });
}
</script>
<script>
function featured(featured_id, active) {
    if (active === 1) {
        $("#featured" + featured_id).html(' <a href="javascript:void(0)" onclick="featured(' + featured_id + ',0)">\
                <span class="badge bg-success">{{__("Published")}}</span>\
            </a>')
    } else {
        $("#featured" + featured_id).html(' <a href="javascript:void(0)" onclick="featured(' + featured_id + ',1)">\
                <span class="badge bg-danger">{{__("Pending")}}</span>\
            </a>')
    }
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url: "/admin/accessories/featured",
        type: 'GET',
        dataType: 'json',
        data: {
            'active': active,
            'featured_id': featured_id
        },
        success: function(data) {
            if (data['success']) {
                // alert(data.success);
            } else if (data['error']) {
                alert(data.error);
            }
        }
    });
}
</script>
<script src="https://cdn.ckeditor.com/ckeditor5/35.2.1/classic/ckeditor.js"></script>
<script>
ClassicEditor
    .create(document.querySelector('.content'))
    .then(content => {//©Ph
        // console.log( content );
    })
    .catch(error => {
        // console.error( error );
    });
</script>
@endsection
