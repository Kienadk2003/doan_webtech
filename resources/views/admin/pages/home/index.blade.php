@extends( 'admin/layout/index')
@section('css')
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<style>
    #quick-date-select {
        padding: 4px 10px;
        border-radius: 4px;
        border: 1px solid #ced4da;
        font-size: 15px;
        margin-right: 10px;
    }
    @media (max-width: 600px) {
        #quick-date-select { min-width: 100px; font-size: 13px; }
    }
</style>
@endsection
@section('dashboard')
active
@endsection
@section('content')
<div class="main-content container-fluid">
<div class="page-title">
    <h3>{{__("Dashboard")}}</h3>
    {{-- <p class="text-subtitle text-muted">{{__("Display your statistics")}}</p> --}}
</div>
{{-- 
<section class="section">
    <div class="row mb-2">
        <!--Đơn trong ngày-->
        <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between flex-column'>
                            <h3 class='card-title'>{{__("Sales Today")}}</h3> 
                            <div class="card-right d-flex align-items-center text-nowrap">
                                <p>{{$orders_today->count()}} </p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas4" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
{{-- 
        <!--Doanh thu trong ngày-->
        <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between flex-column'>
                            <h3 class='card-title'>{{__("Revenue Today")}}</h3> 
                            <div class="card-right d-flex align-items-center text-nowrap">
                                <p>{{number_format($sum_today,0,',','.')}} <sup style="text-decoration: underline; padding: 3px; text-transform: lowercase !important;">đ</sup> </p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas2" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}

        <!--Tổng đơn đã giao của của hàng từ trước đến nay-->
        {{-- <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between flex-column'>
                            <h3 class='card-title'>{{__("Total Orders")}}</h3> 
                            <div class="card-right d-flex align-items-center text-nowrap" >
                                <p>{{$orders->count()}} </p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas3" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
{{-- 
        <!--Tổng tiền thu được-->
        <div class="col-12 col-md-3">
            <div class="card card-statistic">
                <div class="card-body p-0">
                    <div class="d-flex flex-column">
                        <div class='px-3 py-3 d-flex justify-content-between flex-column'>
                            <h3 class='card-title'>{{__("Cancelled Today")}}</h3>
                            <div class="card-right d-flex align-items-center text-nowrap" style="margin-left:2px">
                                <p>{{ $cancelled_today }}</p>
                            </div>
                        </div>
                        <div class="chart-wrapper">
                            <canvas id="canvas1" style="height:100px !important"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> --}}

    <div class="row mb-4">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="d-flex align-items-center mb-2">
                        <label class="me-2 mb-0" for="quick-date-select">{{__("Quick Select")}}</label>
                        <select id="quick-date-select" class="form-select w-auto" style="min-width: 160px; display: inline-block;">
                            <option value="today">{{__("Today")}}</option>
                            <option value="yesterday">{{__("Yesterday")}}</option>
                            <option value="week" selected>{{__("Last 7 Days")}}</option>
                            <option value="this_month">{{__("This Month")}}</option>
                            <option value="last_month">{{__("Last Month")}}</option>
                        </select>
                    </div>
                    <div class="mt-2">
                        <label class="form-label">{{__("Filter by status")}}</label>
                        <div class="d-flex flex-wrap">
                            <div class="form-check me-3">
                                <input class="form-check-input status-filter field-filter" data-field="count" type="checkbox" value="3" id="status_delivered_header" checked>
                                <label class="form-check-label" for="status_delivered_header">{{__("Delivered")}}</label>
                            </div>
                            <div class="form-check me-3">
                                <input class="form-check-input field-filter" data-field="total" type="checkbox" value="total" id="field_total_header" checked>
                                <label class="form-check-label" for="field_total_header">{{__("Total")}}</label>
                            </div>
                            <div class="form-check me-3">
                                <input class="form-check-input status-filter field-filter" data-field="processing" type="checkbox" value="1" id="status_processing_header" checked>
                                <label class="form-check-label" for="status_processing_header">{{__("In Progress")}}</label>
                            </div>
                            <div class="form-check me-3">
                                <input class="form-check-input status-filter field-filter" data-field="shipping" type="checkbox" value="2" id="status_shipping_header" checked>
                                <label class="form-check-label" for="status_shipping_header">{{__("Delivery in Progress")}}</label>
                            </div>
                            <div class="form-check me-3">
                                <input class="form-check-input status-filter field-filter" data-field="canceled" type="checkbox" value="0,4" id="status_cancelled_header" checked>
                                <label class="form-check-label" for="status_cancelled_header">{{__("Cancelled")}}</label>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <form autocomplete="off">
                        <div class="row">
                            <div class="row align-items-end mb-3 w-100" style="margin-left:0;">
                                <div class="col-md-3">
                                    <label for="datepickerFrom" class="form-label">{{ __("From:") }}</label>
                                    <div class="input-group">
                                        <input type="text" id="datepickerFrom" class="form-control" autocomplete="off" placeholder="yyyy-mm-dd" />
                                        <span class="input-group-text" style="cursor:pointer"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <label for="datepickerTo" class="form-label">{{ __("To:") }}</label>
                                    <div class="input-group">
                                        <input type="text" id="datepickerTo" class="form-control" autocomplete="off" placeholder="yyyy-mm-dd" />
                                        <span class="input-group-text" style="cursor:pointer"><i class="fa fa-calendar"></i></span>
                                    </div>
                                </div>
                                
                                <div class="col-md-2">
                                    <button id="btn-filter" class="btn btn-primary w-100" type="button">{{ __("Submit") }}</button>
                                </div>
                            </div>

                            <div class="col-12" style="padding:0;">
                                <div id="myfirstchart" style="height: 400px; width: 100%;"></div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-md-12">
                                <h5>{{__("Order statistics table")}}</h5>
                                <table class="table table-bordered" id="orders-table">
                                    <thead>
                                        <tr>
                                            <th>{{__("Days")}}</th>
                                            <th class="col-total">{{__("Total")}}</th>
                                            <th class="text-center col-count">{{__("Delivered")}}</th>
                                            <th class="text-center col-canceled">{{__("Cancelled")}}</th>
                                            <th class="text-center col-shipping">{{__("Delivery in Progress")}}</th>
                                            <th class="text-center col-processing">{{__("In Progress")}}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Dữ liệu sẽ được render bằng JS -->
                                    </tbody>
                                    <tfoot>
                                        <tr id="orders-table-total-row" style="font-weight:bold;background:#f8f9fa;">
                                            <td>{{__("Totals")}}</td>
                                            <td id="total-money" class="col-total">0</td>
                                            <td id="total-delivered" class="col-count">0</td>
                                            <td id="total-canceled" class="col-canceled">0</td>
                                            <td id="total-shipping" class="col-shipping">0</td>
                                            <td id="total-processing" class="col-processing">0</td>
                                        </tr>
                                    </tfoot>
                                    <tfoot>
                                        <tr id="orders-table-total-row" style="font-weight:bold;background:#f8f9fa;"></tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-12">
            <div class="row" style="padding-left:27px;padding-right:27px;">
                <div class="col-md-6 mb-3">
                    <div class="card h-100">
                        <div class="card-header">
                            <h5>{{__("Best Selling Accessories Chart")}}</h5>
                        </div>
                        <div class="card-body">
                            <canvas id="topProductsChart" style="width:100%;height:320px;"></canvas>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="card h-100">
                        <div class="card-header">
                            <h5>{{__("Accessory Inventory Chart")}}</h5>
                        </div>
                        <div class="card-body">
                            <canvas id="stockProductsChart" style="width:100%;height:320px;"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
@endsection
@section('scripts')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<!-- Chart.js datalabels must be loaded before creating charts that use it -->
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2"></script>
<!-- cleaned up duplicate/malformed script block -->
<script>
    $(document).ready(function() {
        var ctx = document.createElement('canvas');
        ctx.id = 'myfirstchart_canvas';
        var chartDiv = document.getElementById('myfirstchart');
        chartDiv.innerHTML = '';
        chartDiv.appendChild(ctx);

        var chart;
        function renderChart(labels, totalData, countData, canceledData = [], shippingData = [], processingData = []) {
            if (chart) chart.destroy();
            chart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [
                        {
                            label: '{{__("Total")}}',
                            data: totalData,
                            borderColor: '#8e44ad',
                            backgroundColor: 'rgba(142,68,173,0.08)',
                            yAxisID: 'y',
                            tension: 0.2
                        },
                        {
                            label: '{{__("Delivered")}}',
                            data: countData,
                            borderColor: '#27ae60',
                            backgroundColor: 'rgba(39,174,96,0.08)',
                            yAxisID: 'y1',
                            tension: 0.2
                        }
                        ,{
                            label: '{{__("Cancelled")}}',
                            data: canceledData,
                            borderColor: '#e74c3c',
                            backgroundColor: 'rgba(231,76,60,0.05)',
                            yAxisID: 'y1',
                            tension: 0.2
                        },{
                            label: '{{__("Delivery in Progress")}}',
                            data: shippingData,
                            borderColor: '#3498db',
                            backgroundColor: 'rgba(52,152,219,0.05)',
                            yAxisID: 'y1',
                            tension: 0.2
                        },{
                            label: '{{__("In Progress")}}',
                            data: processingData,
                            borderColor: '#fc8710',
                            backgroundColor: 'rgba(252,135,16,0.08)',
                            yAxisID: 'y1',
                            tension: 0.2
                        }
                    ]
                },
                options: {
                    responsive: true,
                    interaction: { mode: 'index', intersect: false },
                    stacked: false,
                    plugins: {
                        legend: { position: 'top' },
                        title: { display: false }
                    },
                    scales: {
                        y: {
                            type: 'linear',
                            display: true,
                            position: 'left',
                            title: { display: true, text: '{{__("Total")}}' },
                            ticks: { callback: function(value) { return value.toLocaleString('vi-VN'); } }
                        },
                        y1: {
                            type: 'linear',
                            display: true,
                            position: 'right',
                            title: { display: true, text: '{{__("Order number")}}' },
                            grid: { drawOnChartArea: false },
                            ticks: { stepSize: 1, precision: 0 }
                        }
                    }
                }
            });
        }

        // Tự động load dữ liệu 7 ngày gần nhất khi trang vừa load
        function getDefaultDates() {
            var now = new Date();
            var today = new Date(now.getFullYear(), now.getMonth(), now.getDate()); // reset về 00:00
            var priorDate = new Date(today);
            priorDate.setDate(today.getDate() - 6);
            function format(d) {
                return d.toISOString().slice(0,10);
            }
            return {from: format(priorDate), to: format(today)};
        }

        // collect selected statuses (moved here so both default load and filter use it)
        function getSelectedStatuses(){
            var vals = [];
            $('.status-filter:checked').each(function(){
                var v = $(this).val();
                if(typeof v === 'string' && v.indexOf(',') !== -1){
                    v.split(',').forEach(function(x){ if(x.trim() !== '') vals.push(Number(x.trim())); });
                } else if(v !== '') {
                    vals.push(Number(v));
                }
            });
            return Array.from(new Set(vals));
        }

        // collect selected display fields
        function getSelectedFields(){
            var fields = [];
            $('.field-filter:checked').each(function(){
                var f = $(this).data('field') || $(this).val();
                if(f) fields.push(f);
            });
            return Array.from(new Set(fields));
        }

        // Show/hide chart datasets and table columns according to selected fields
        function applyFieldVisibility(){
            var fields = getSelectedFields();
            console.log('applyFieldVisibility fields:', fields);
            // Chart datasets order: total, count, canceled, shipping, processing
            if (typeof chart !== 'undefined' && chart && chart.data && chart.data.datasets) {
                chart.data.datasets.forEach(function(ds, idx){
                    var key = null;
                    if (idx === 0) key = 'total';
                    if (idx === 1) key = 'count';
                    if (idx === 2) key = 'canceled';
                    if (idx === 3) key = 'shipping';
                    if (idx === 4) key = 'processing';
                    if (key) {
                        ds.hidden = (fields.length > 0) ? (fields.indexOf(key) === -1) : false;
                    }
                });
                try { chart.update(); } catch(e) { console.warn('chart.update failed', e); }
            }
            // Table columns
            var show_total = fields.length === 0 || fields.indexOf('total') !== -1;
            var show_count = fields.length === 0 || fields.indexOf('count') !== -1;
            var show_canceled = fields.length === 0 || fields.indexOf('canceled') !== -1;
            var show_shipping = fields.length === 0 || fields.indexOf('shipping') !== -1;
            var show_processing = fields.length === 0 || fields.indexOf('processing') !== -1;
            $('.col-total').toggle(show_total);
            $('.col-count').toggle(show_count);
            $('.col-canceled').toggle(show_canceled);
            $('.col-shipping').toggle(show_shipping);
            $('.col-processing').toggle(show_processing);
        }

        function loadDefaultChart() {
            var dates = getDefaultDates();
            var statuses = getSelectedStatuses();
            console.log('loadDefaultChart statuses:', statuses);
            $.ajax({
                url: "admin/filter-by-date",
                method: "GET",
                dataType: "json",
                data: {
                    from: dates.from,
                    to: dates.to,
                    status: statuses
                },
                success: function(data) {
                    if (data['success']) {
                        var labels = data.chart_data.map(row => row.date);
                        var totalData = data.chart_data.map(row => Number(row.total) || 0);
                        var countData = data.chart_data.map(row => Number(row.count) || 0);
                        var canceledData = data.chart_data.map(row => Number(row.canceled) || 0);
                        var shippingData = data.chart_data.map(row => Number(row.shipping) || 0);
                        var processingData = data.chart_data.map(row => Number(row.processing) || 0);
                        renderChart(labels, totalData, countData, canceledData, shippingData, processingData);
                        // Render bảng thống kê
                        var tbody = '';
                        var total = 0, delivered = 0, canceled = 0, shipping = 0, processing = 0;
                        data.chart_data.forEach(function(row) {
                            var t = Number(row.total) || 0;
                            var d = Number(row.count) || 0;
                            var c = Number(row.canceled) || 0;
                            var s = Number(row.shipping) || 0;
                            var p = Number(row.processing) || 0;
                            total += t;
                            delivered += d;
                            canceled += c;
                            shipping += s;
                            processing += p;
                            tbody += `<tr>
                                <td>${row.date}</td>
                                <td class="col-total">${t.toLocaleString('vi-VN')}</td>
                                <td class="col-count">${d}</td>
                                <td class="col-canceled">${c}</td>
                                <td class="col-shipping">${s}</td>
                                <td class="col-processing">${p}</td>
                            </tr>`;
                        });
                        $("#orders-table tbody").html(tbody);
                        // Cập nhật dòng tổng
                        $("#total-money").text(total.toLocaleString('vi-VN'));
                        $("#total-delivered").text(delivered);
                        $("#total-canceled").text(canceled);
                        $("#total-shipping").text(shipping);
                        $("#total-processing").text(processing);
                        // Apply column visibility according to checked fields
                        applyFieldVisibility();
                        // Cập nhật biểu đồ sản phẩm bán chạy nếu backend trả về
                        if (data.topProducts) {
                            try { window.updateTopProducts(data.topProducts); } catch(e) { console.warn('updateTopProducts not defined', e); }
                        }
                        // Apply visibility based on checked fields
                        applyFieldVisibility();
                    }
                }
            });
        }
        loadDefaultChart();
        //filter by date
     $("#btn-filter").click(function(){
        var from = $('#datepickerFrom').val();
        var to = $('#datepickerTo').val();
        // collect statuses when filtering (uses same helper above)
        var statuses = [];
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        console.log('filter request statuses:', statuses);
        $.ajax({
            url:"admin/filter-by-date",
            method:"GET",
            dataType:"json",
            data:{
                from:from,
                to:to,
                status: getSelectedStatuses()
            },
            success:function(data){
                if (data['success']) {
                    // Nếu chỉ chọn 1 ngày, hiển thị theo giờ
                    if (from === to) {
                        // Lấy danh sách đơn hàng trong ngày từ backend (nếu có trả về)
                        var allOrders = (data.orders_today || []);
                        var hours = Array.from({length: 24}, (_, i) => i);
                        var orderTotalByHour = Array(24).fill(0);
                        var deliveredCountByHour = Array(24).fill(0);
                        var canceledByHour = Array(24).fill(0);
                        var shippingByHour = Array(24).fill(0);
                        var processingByHour = Array(24).fill(0);

                        allOrders.forEach(function(order) {
                            // Prefer updated_at; fallback to created_at
                            var dateStr = order.updated_at || order.created_at;
                            var d = new Date(dateStr);
                            var hour = d.getHours();
                            if (hour >= 0 && hour < 24) {
                                var amt = Number(order.total) || 0;
                                if (order.status == 3) {
                                    orderTotalByHour[hour] += amt; // money only for delivered to match daily behavior
                                    deliveredCountByHour[hour]++;
                                }
                                if (order.status == 0 || order.status == 4) canceledByHour[hour]++;
                                if (order.status == 2) shippingByHour[hour]++;
                                if (order.status == 1) processingByHour[hour]++;
                            }
                        });

                        // Ensure no negative values
                        orderTotalByHour = orderTotalByHour.map(x => x < 0 ? 0 : x);
                        deliveredCountByHour = deliveredCountByHour.map(x => x < 0 ? 0 : x);
                        canceledByHour = canceledByHour.map(x => x < 0 ? 0 : x);
                        shippingByHour = shippingByHour.map(x => x < 0 ? 0 : x);
                        processingByHour = processingByHour.map(x => x < 0 ? 0 : x);

                        renderChart(
                            hours.map(h => h + ':00'),
                            orderTotalByHour,
                            deliveredCountByHour,
                            canceledByHour,
                            shippingByHour,
                            processingByHour
                        );
                    } else {
                        // Render Chart.js như cũ
                        var labels = data.chart_data.map(row => row.date);
                        var totalData = data.chart_data.map(row => Number(row.total) || 0);
                        var countData = data.chart_data.map(row => Number(row.count) || 0);
                        var canceledData = data.chart_data.map(row => Number(row.canceled) || 0);
                        var shippingData = data.chart_data.map(row => Number(row.shipping) || 0);
                        var processingData = data.chart_data.map(row => Number(row.processing) || 0);
                        renderChart(labels, totalData, countData, canceledData, shippingData, processingData);
                        applyFieldVisibility();
                    }
                    // Render bảng thống kê như cũ
                    var tbody = '';
                    var total = 0, delivered = 0, canceled = 0, shipping = 0, processing = 0;
                    data.chart_data.forEach(function(row) {
                        var t = Number(row.total) || 0;
                        var d = Number(row.count) || 0;
                        var c = Number(row.canceled) || 0;
                        var s = Number(row.shipping) || 0;
                        var p = Number(row.processing) || 0;
                        total += t;
                        delivered += d;
                        canceled += c;
                        shipping += s;
                        processing += p;
                        tbody += `<tr>
                            <td>${row.date}</td>
                            <td class="col-total">${t.toLocaleString('vi-VN')}</td>
                            <td class="col-count">${d}</td>
                            <td class="col-canceled">${c}</td>
                            <td class="col-shipping">${s}</td>
                            <td class="col-processing">${p}</td>
                        </tr>`;
                    });
                    $("#orders-table tbody").html(tbody);
                    var totalRow = `<td>Tổng</td>
                        <td class="col-total">${total.toLocaleString('vi-VN')}</td>
                        <td class="col-count">${delivered}</td>
                        <td class="col-canceled">${canceled}</td>
                        <td class="col-shipping">${shipping}</td>
                        <td class="col-processing">${processing}</td>`;
                    $('#orders-table-total-row').html(totalRow);
                    // Apply visibility according to selected fields
                    applyFieldVisibility();
                    // Update top products chart if backend returned topProducts
                    if (data.topProducts) {
                        try { window.updateTopProducts(data.topProducts); } catch(e) { console.warn('updateTopProducts not defined', e); }
                    }
                } else if (data['error']) {
                    alert(data.error);
                }
            }
        });
    });
    // live update when toggling status filters: apply visibility immediately and trigger filter
    $('.status-filter').change(function(){
        applyFieldVisibility();
        $('#btn-filter').click();
    });
    // field-only filters (like Tổng tiền) should immediately affect visibility
    $('.field-filter').change(function(){
        applyFieldVisibility();
    });
      //sortBy
      $("#statistical").change(function(){
        var statistical = $(this).val();
        if(statistical === "null"){
            chart.setData([{
                date:null,
                total:null,
            }]);
            return;
        }
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        $.ajax({
            url:"admin/sort-by",
            method:"GET",
            dataType:"json",
            data:{
               'statistical': statistical
            },
            success:function(data){
                if (data['success']) {
                    chart.setData(data.chart_data);
                } else if (data['error']) {
                    alert(data.error);
                }
            }
        });
    });
});
   
</script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<!-- Font Awesome for calendar icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<script>
$(function() {
    // Khởi tạo datepicker cho cả hai input
    $("#datepickerFrom, #datepickerTo").datepicker({
        maxDate: '0',
        dateFormat: "yy-mm-dd",
        duration: "fast",
        showAnim: "fadeIn"
    });
    // Khi click vào icon lịch thì focus vào input tương ứng
    $('#datepickerFrom').parent('.input-group').find('.input-group-text').click(function(){
        $('#datepickerFrom').focus();
    });
    $('#datepickerTo').parent('.input-group').find('.input-group-text').click(function(){
        $('#datepickerTo').focus();
    });
});
</script>

{{-- Đã xoá script đồ thị đơn hàng trong ngày để tích hợp vào đồ thị chính --}}

<script>
$(function() {
    // Lấy dữ liệu top sản phẩm bán chạy từ backend
    // We'll create chart instances and expose functions to update them when user filters by date
    var topProductsChart;
    var stockProductsChart;

    function createOrUpdateTopProductsChart(products) {
        var labels = products.map(p => `SKU: ${p.id}`);
        var data = products.map(p => Number(p.sold_qty) || 0);
        var ctx = document.getElementById('topProductsChart').getContext('2d');
        if (topProductsChart) {
            topProductsChart.data.labels = labels;
            topProductsChart.data.datasets[0].data = data;
            topProductsChart.update();
            return;
        }
        topProductsChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Số lượng đã bán',
                    data: data,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                indexAxis: 'y', // Đồ thị ngang
                responsive: true,
                plugins: {
                    legend: { display: false },
                    title: { display: false },
                    tooltip: {
                        enabled: true,
                        callbacks: {
                            label: function(context) {
                                return 'Số lượng đã bán: ' + context.parsed.x;
                            }
                        }
                    },
                    datalabels: {
                        anchor: 'center',
                        align: 'center',
                        color: '#222',
                        font: { weight: 'bold' },
                        formatter: function(value) { return value; }
                    }
                },
                scales: {
                    x: { title: { display: true, text: '{{__("Quantity Sold")}}' }, beginAtZero: true, stepSize: 1 },
                    y: { title: { display: true, text: '{{__("Delivered")}}' } }
                }
            },
            plugins: [ChartDataLabels]
        });
    }

    // Thêm biểu đồ cột dọc số lượng tồn kho (không phụ thuộc ngày)
    var stockProducts = @json($stockProducts ?? []);
    function createStockChart() {
        var stockLabels = stockProducts.map(p => `SKU: ${p.id}`);
        var stockData = stockProducts.map(p => p.quantity || 0);
        var stockCtx = document.getElementById('stockProductsChart').getContext('2d');
        stockProductsChart = new Chart(stockCtx, {
            type: 'bar',
            data: {
                labels: stockLabels,
                datasets: [{
                    label: 'Số lượng tồn kho',
                    data: stockData,
                    backgroundColor: 'rgba(255, 206, 86, 0.5)',
                    borderColor: 'rgba(255, 206, 86, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                indexAxis: 'x', // Đồ thị cột dọc
                responsive: true,
                plugins: {
                    legend: { display: false },
                    title: { display: false },
                    tooltip: {
                        enabled: true,
                        callbacks: {
                            label: function(context) {
                                return 'Số lượng tồn kho: ' + context.parsed.y;
                            }
                        }
                    },
                    datalabels: {
                        anchor: 'end',
                        align: 'top',
                        color: '#222',
                        font: { weight: 'bold' },
                        formatter: function(value) { return value; }
                    }
                },
                scales: {
                    x: { title: { display: true, text: '{{__("Product Code")}}' }, ticks: { autoSkip: false, maxRotation: 60, minRotation: 30 } },
                    y: { title: { display: true, text: '{{__("Inventory Quantity")}}' }, beginAtZero: true, stepSize: 1 }
                }
            },
            plugins: [ChartDataLabels]
        });
    }

    // Initialize charts with server-side data
    createOrUpdateTopProductsChart(@json($topProducts ?? []));
    createStockChart();
    
    // Expose a helper to update topProducts from AJAX responses
    window.updateTopProducts = function(products) {
        createOrUpdateTopProductsChart(products);
    };
});
</script>
<script>
$(document).ready(function() {
    // Xử lý chọn nhanh ngày
    $('#quick-date-select').change(function() {
        var val = $(this).val();
        var today = new Date();
        var yyyy = today.getFullYear();
        var mm = String(today.getMonth() + 1).padStart(2, '0');
        var dd = String(today.getDate()).padStart(2, '0');
        var from, to;
        if (val === 'today') {
            from = to = yyyy + '-' + mm + '-' + dd;
        } else if (val === 'yesterday') {
            var yest = new Date(today);
            yest.setDate(today.getDate() - 1);
            var yyy = yest.getFullYear();
            var mmm = String(yest.getMonth() + 1).padStart(2, '0');
            var ddd = String(yest.getDate()).padStart(2, '0');
            from = to = yyy + '-' + mmm + '-' + ddd;
        } else if (val === 'this_month') {
            from = yyyy + '-' + mm + '-01';
            to = yyyy + '-' + mm + '-' + dd;
        } else if (val === 'last_month') {
            var firstDayLastMonth = new Date(today.getFullYear(), today.getMonth() - 1, 1);
            var lastDayLastMonth = new Date(today.getFullYear(), today.getMonth(), 0);
            var fyyyy = firstDayLastMonth.getFullYear();
            var fmm = String(firstDayLastMonth.getMonth() + 1).padStart(2, '0');
            var fdd = String(firstDayLastMonth.getDate()).padStart(2, '0');
            var lyyyy = lastDayLastMonth.getFullYear();
            var lmm = String(lastDayLastMonth.getMonth() + 1).padStart(2, '0');
            var ldd = String(lastDayLastMonth.getDate()).padStart(2, '0');
            from = fyyyy + '-' + fmm + '-' + fdd;
            to = lyyyy + '-' + lmm + '-' + ldd;
        } else if (val === 'week') {
            var prior = new Date(today);
            prior.setDate(today.getDate() - 6);
            from = prior.getFullYear() + '-' + String(prior.getMonth() + 1).padStart(2, '0') + '-' + String(prior.getDate()).padStart(2, '0');
            to = yyyy + '-' + mm + '-' + dd;
        } else {
            from = to = yyyy + '-' + mm + '-' + dd;
        }
        $('#datepickerFrom').val(from);
        $('#datepickerTo').val(to);
        $('#btn-filter').click();
    });

    // Khi trang vừa load, tự động trigger chọn "7 ngày gần nhất" ở Dropdown
    $('#quick-date-select').val('week').trigger('change');
});
</script>
@endsection
