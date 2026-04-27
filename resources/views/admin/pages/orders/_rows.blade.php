@foreach($orders as $order)
<tr>
    <td class="text-center">{{$order->id}}</td>
    <td class="text-center">{{$order->firstname}}</td>
    <td class="text-center">{{$order->phone}}</td>
    <td class="text-center">{{ number_format($order->total, 0, ',', '.') }} VND</td>
    <td class="text-center">
        @if(str_contains($order->content ?? '', 'COD order'))
            <span class="badge bg-success">COD</span>
        @endif
    </td>
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
    <td class="text-center">
        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#order_detail{{$order->id}}">
            <i data-feather="search"></i>
        </a>
        @include('admin/pages/orders/detail')
    </td>
    <td class="text-center">{{$order->created_at}}</td>
    <td class="text-center">{{$order->updated_at->format('d/m/Y - H:i')}}</td>
    <td class="text-center">
        <a href="javascript:void(0)" onclick="status({{$order->id}},1)">
            <i data-feather="loader" stroke="black"></i>
        </a>
    </td>
    <td class="text-center">
        <a href="javascript:void(0)" onclick="if(confirm(`{{__('Đơn hàng đã được thanh toán chưa ?')}}`)){status({{$order->id}},2);}">
            <i data-feather="truck" stroke="blue"></i>
        </a>
    </td>
    <td class="text-center">
        <a href="javascript:void(0)" onclick="if(confirm(`{{__('Đơn hàng đã được giao thành công !')}}`)){status({{$order->id}},3);}">
            <i data-feather="check" stroke="green"></i>
        </a>
    </td>
    <td class="text-center">
        <a href="javascript:void(0)" onclick="if(confirm(`{{__('Bạn có muốn hủy đơn hàng này không ?')}}`)){status({{$order->id}},4);}">
            <i data-feather="x" stroke="red"></i>
        </a>
    </td>
</tr>
@endforeach
