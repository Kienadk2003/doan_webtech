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
        <img style="width: 150px" src="https://res.cloudinary.com/{{env('CLOUD_NAME')}}/image/upload/{{$img->image}}.jpg">
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
        // Compute per-product metrics consistent with main view
        $sold = $sold_map[$pro->id] ?? (\App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 3); })
            ->where('products_id', $pro->id)->sum('quantity'));
        $processing = \App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 1); })
            ->where('products_id', $pro->id)->sum('quantity');
        $delivering = \App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 2); })
            ->where('products_id', $pro->id)->sum('quantity');
        $cancelled = \App\Models\Orders_Detail::whereHas('order', function($q){ $q->where('status', 4); })
            ->where('products_id', $pro->id)->sum('quantity');
        $tonKho = (int)$pro->quantity + (int)$cancelled;
        // Tổng nhập = tồn kho + đang xử lý + đang giao + đã bán
        $totalQuantity = $tonKho + (int)$processing + (int)$delivering + (int)$sold;
    @endphp

    <td class="text-center total-quantity">{{$totalQuantity}}</td>
    <td class="text-center">{{$tonKho}}</td>
    <td class="text-center sold">{{$sold}}</td>
    <td class="text-center processing">{{$processing}}</td>
    <td class="text-center delivering">{{$delivering}}</td>
    <td class="text-center" id="featured{{$pro->id}}">
        @if($pro->featured_product == 1)
        <a href="javascript:void(0)" onclick="featured({{$pro->id}},0)"><span class="badge bg-success">{{__("Published")}}</span></a>
        @else
        <a href="javascript:void(0)" onclick="featured({{$pro->id}},1)"><span class="badge bg-danger">{{__("Pending")}}</span></a>
        @endif
    </td>
    <td class="text-center" id="status{{$pro->id}}">
        @if($pro->status == 1)
        <a href="javascript:void(0)" onclick="status({{$pro->id}},0)"><span class="badge bg-success">{{__("Published")}}</span></a>
        @else
        <a href="javascript:void(0)" onclick="status({{$pro->id}},1)"><span class="badge bg-danger">{{__("Pending")}}</span></a>
        @endif
    </td>
    <td class="text-center">
        <a href="admin/accessories/edit/{{$pro->id}}">
            <i data-feather="edit"></i>
        </a>
        <a href="admin/accessories/delete/{{$pro->id}}" onclick="return confirm(`{{__('Are you sure you want to delete this ?')}}`)">
            <i data-feather="trash-2" stroke="red"></i>
        </a>
    </td>
</tr>
@endforeach
