@extends('admin.layout.index')
@section('manage_orders')
active
@endsection
@section('css')
<link rel="stylesheet" href="admin_assets/vendors/simple-datatables/style.css">
<link rel="stylesheet" href="admin_assets/css/order-btn.css">
@endsection
@section('content')
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>{{__("Orders")}}</h3>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/admin">{{__("Dashboard")}}</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{__("Orders")}}</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    
    <section class="section">
        {{-- Mở card orders tổng --}}
        <div class="card">
            <div class="card-body">
                    <div class="mb-3">
                        <div class="row g-2 align-items-end">
                            <div class="col-auto">
                                <label for="orders_month" class="form-label">Theo tháng</label>
                                <input id="orders_month" class="form-control" type="month" />
                            </div>
                            <div class="col-auto">
                                <label for="orders_start" class="form-label">Từ ngày</label>
                                <input id="orders_start" class="form-control" type="date" />
                            </div>
                            <div class="col-auto">
                                <label for="orders_end" class="form-label">Đến ngày</label>
                                <input id="orders_end" class="form-control" type="date" />
                            </div>
                            <div class="col-auto">
                                <button id="orders_filter" class="btn btn btn-primary">Lọc</button>
                                <button id="orders_reset" class="btn btn btn-secondary">Xóa</button>
                                <button id="orders_export" class="btn btn btn-info" style="margin-left:8px;">Xuất file</button>
                            </div>
                        </div>
                    </div>
                <table class='table table-striped text-nowrap' id="table1">
                    <thead>
                        <tr>
                            <th class="text-center">{{__("Order Number")}}</th>
                            <th class="text-center">{{__("Name")}}</th>
                            <th class="text-center">{{__("Phone")}}</th>
                            <th class="text-center">{{__("Unit Price")}}</th>
                            <th class="text-center">{{__("Payment method")}}</th>
                            <th class="text-center">{{__("Status")}}</th><!-- Trạng thái-->
                            <th class="text-center">{{__("Detail")}}</th><!--Chi tiết đơn-->
                            <th class="text-center">{{__("Order Date")}}</th> <!--Ngày đặt-->
                            <th class="text-center">{{__("Update Date")}}</th> <!---->
                            <th class="text-center">{{__("In Progress")}}</th> <!--Đang xử lý-->
                            <th class="text-center">{{__("Delivery in Progress")}}</th><!--Giao hàng-->
                            <th class="text-center">{{__("Completed")}}</th><!--Hoàn thành-->
                            <th class="text-center">{{__("Cancel")}}</th>   <!--hủy đơn-->

                        </tr>
                    </thead>
                    <tbody>
                        @foreach($orders as $key => $order)
                        <tr>
                            <td class="text-center">{{$order->id}}</td>
                            <td class="text-center">{{$order->firstname}}</td>
                            <td class="text-center">{{$order->phone}}</td>
                            <td class="text-center">{{ number_format($order->total, 0, ',', '.') }} VND</td>
                            <td class="text-center">
                                @if(str_contains($order->content ?? '', 'COD order'))
                                    <span class="badge bg-success">COD</span>
                                @else
                                    <span class="badge bg-primary">Online</span>
                                @endif
                            </td>
                            <!-- <td class="text-center">{{$order->content}}</td> -->
                            <!--Trạng thái-->
                            <td class="text-center" id="status{{$order->id}}">
                                @if($order->status == 1)
                               <span class="badge bg-warning">{{__("In Progress")}}</span>
                                @elseif($order->status == 2)
                               <span class="badge bg-info">{{__("Delivery in Progress")}}</span>
                                @elseif($order->status == 3)
                               <span class="badge bg-success">{{__("Delivered")}}</span>
                                @elseif($order->status == 4)
                               <span class="badge bg-danger">{{__("Cancelled")}}</span>
                                @elseif($order->status == 5)
                                @endif
                            </td>
                            <!--Chi tiết đơn-->
                            <td class="text-center">
                                <a href="javascript:void(0)" data-bs-toggle="modal"
                                    data-bs-target="#order_detail{{$order->id}}">
                                    <i data-feather="search"></i>
                                </a>
                                @include('admin/pages/orders/detail')
                            </td>
                            <td class="text-center">{{$order->created_at}}</td>

                            <!--Trạng thái-->
                            <td class="text-center">{{$order->updated_at->format('d/m/Y - H:i')}}</td>
                            <!--Đang xử lý-->
                            <td class="text-center">
                                <a href="javascript:void(0)" onclick="status({{$order->id}},1)">
                                    <i data-feather="loader" stroke="black"></i>
                                </a>
                            </td>  
                            <!--Đang giao hàng-->
                            <td class="text-center">
                                <a href="javascript:void(0)" onclick="if(confirm(`{{__('Đơn hàng đã được thanh toán chưa ?')}}`)){status({{$order->id}},2);}">
                                    <i data-feather="truck" stroke="blue"></i>
                                </a>
                            </td>                          
                            <!--Hoàn thành-->
                            <td class="text-center">
                                <a href="javascript:void(0)" onclick="if(confirm(`{{__('Đơn hàng đã được giao thành công !')}}`)){status({{$order->id}},3);}">
                                    <i data-feather="check" stroke="green"></i>
                                </a>
                            </td>
                            <!--Hủy đơn-->
                            <td class="text-center">
                                <a href="javascript:void(0)" onclick="if(confirm(`{{__('Bạn có muốn hủy đơn hàng này không ?')}}`)){status({{$order->id}},4);}">
                                    <i data-feather="x" stroke="red"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div> 
        {{-- Đóng card orders tổng --}}

        {{-- <div class="card mt-4">
            <div class="card-header">
                <h5>Đơn hàng hôm nay</h5>
            </div>
            <div class="card-body">
                @include('admin.pages.home.orders_today')
            </div>
        </div> --}}

    </section>
</div>
@endsection
@section('scripts')
<script src="admin_assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="admin_assets/js/vendors.js"></script>
<script>
function status(status_id, active) {
    if (active === 1) {
        $("#status" + status_id).html(' <a href="javascript:void(0)">\
                <span class="badge bg-warning">{{__("In Progress")}}</span>\
            </a>')
    } else if (active === 2) {
        $("#status" + status_id).html(' <a href="javascript:void(0)">\
                <span class="badge bg-info">{{__("Delivery in Progress")}}</span>\
            </a>')
    } else if (active === 3) {
        $("#status" + status_id).html(' <a href="javascript:void(0)">\
                <span class="badge bg-success">{{__("Delivered")}}</span>\
            </a>')
    } else {
        $("#status" + status_id).html(' <a href="javascript:void(0)">\
                <span class="badge bg-danger">{{__("Cancelled")}}</span>\
            </a>')
    }
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url: "/admin/orders/status",
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
// Orders filter AJAX
$(function(){
    function applyOrdersFilter(){
        var start = $('#orders_start').val();
        var end = $('#orders_end').val();
        var month = $('#orders_month').val();
        var url = '/admin/orders/filter?ajax=1';
        if(month) {
            url += '&month=' + encodeURIComponent(month);
        } else {
            if(start) url += '&start=' + encodeURIComponent(start);
            if(end) url += '&end=' + encodeURIComponent(end);
        }
        console.debug('Orders filter request:', url);
        $.get(url, function(res){
            if(!res || !res.ok){
                console.warn('No data returned for orders filter');
                return;
            }
            if(res.html){
                try{ if(window.dataTable) window.dataTable.destroy(); }catch(e){}
                $('#table1 tbody').html(res.html);
                window.dataTable = new simpleDatatables.DataTable(document.querySelector('#table1'));
                if(typeof feather !== 'undefined') feather.replace();
                console.debug('Orders table replaced. Rows:', $('#table1 tbody tr').length);
            }
        }).fail(function(xhr){
            console.error('orders filter error', xhr.status);
        });
    }
    $('#orders_filter').on('click', function(e){ e.preventDefault(); applyOrdersFilter(); });
    $('#orders_reset').on('click', function(e){ e.preventDefault(); $('#orders_start').val(''); $('#orders_end').val(''); $('#orders_month').val(''); applyOrdersFilter(); });
    $('#orders_export').on('click', function(e){
        e.preventDefault();
        var start = $('#orders_start').val();
        var end = $('#orders_end').val();
        var month = $('#orders_month').val();
        var url = '/admin/orders/export?';
        if(month){ url += 'month=' + encodeURIComponent(month); }
        else{ if(start) url += 'start=' + encodeURIComponent(start); if(end) url += (url.endsWith('?')? 'end=' : '&end=') + encodeURIComponent(end); }
        // trigger download
        window.location = url;
    });
});
</script>
@endsection