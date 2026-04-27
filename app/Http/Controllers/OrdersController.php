<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Symfony\Component\HttpFoundation\StreamedResponse;

class OrdersController extends Controller
{
    public function index(){
        $orders = Orders::orderBy('id', 'DESC')->get();
        return view('admin.pages.orders.index',[
            'orders' => $orders
        ]);
    }
    
    public function orders(){

    }
    
    // AJAX: filter orders by start/end date (format YYYY-MM-DD). Returns JSON with html partial.
    public function filterByDate(Request $request){
        $start = $request->get('start');
        $end = $request->get('end');
        $month = $request->get('month');
        // support month param (YYYY-MM) or 'all'
        if($month){
            if($month === 'all'){
                $start = null; $end = null;
            }else{
                try{
                    $mStart = Carbon::createFromFormat('Y-m', $month)->startOfMonth();
                    $mEnd = Carbon::createFromFormat('Y-m', $month)->endOfMonth();
                    $start = $mStart->toDateString();
                    $end = $mEnd->toDateString();
                }catch(\Exception $e){
                    $start = $request->get('start');
                    $end = $request->get('end');
                }
            }
        }
        $query = Orders::query();
        try{
            if($start){
                $s = Carbon::parse($start)->startOfDay();
                $query->where('created_at', '>=', $s->toDateTimeString());
            }
            if($end){
                $e = Carbon::parse($end)->endOfDay();
                $query->where('created_at', '<=', $e->toDateTimeString());
            }
        }catch(\Exception $e){
            // invalid dates -> return empty
            return response()->json(['ok' => false, 'html' => '']);
        }

        $orders = $query->orderBy('id','DESC')->get();
        if($orders->count() == 0){
            // Return a single row indicating no data (13 columns in the table)
            $html = '<tr><td class="text-center" colspan="13">Không có dữ liệu</td></tr>';
        }else{
            $html = view('admin.pages.orders._rows', ['orders' => $orders])->render();
        }
        return response()->json(['ok' => true, 'html' => $html, 'count' => $orders->count()]);
    }

    // Export filtered orders as CSV (openable in Excel)
    public function export(Request $request){
        $start = $request->get('start');
        $end = $request->get('end');
        $month = $request->get('month');
        if($month){
            if($month === 'all'){
                $start = null; $end = null;
            }else{
                try{
                    $mStart = Carbon::createFromFormat('Y-m', $month)->startOfMonth();
                    $mEnd = Carbon::createFromFormat('Y-m', $month)->endOfMonth();
                    $start = $mStart->toDateString();
                    $end = $mEnd->toDateString();
                }catch(\Exception $e){
                    $start = $request->get('start');
                    $end = $request->get('end');
                }
            }
        }

        $query = Orders::query();
        try{
            if($start){
                $s = Carbon::parse($start)->startOfDay();
                $query->where('created_at', '>=', $s->toDateTimeString());
            }
            if($end){
                $e = Carbon::parse($end)->endOfDay();
                $query->where('created_at', '<=', $e->toDateTimeString());
            }
        }catch(\Exception $e){
            // ignore invalid dates
        }

        $orders = $query->orderBy('id','DESC')->get();

        $filename = 'orders_export_'.date('Ymd_His').'.csv';

        $columns = ['Order ID','Firstname','Lastname','Email','Phone','Total','Payment','Status','Created At','Updated At'];

        $callback = function() use ($orders, $columns) {
            $file = fopen('php://output', 'w');
            // Add BOM to fix UTF-8 in Excel
            fprintf($file, "\xEF\xBB\xBF");
            fputcsv($file, $columns);
            foreach($orders as $o){
                $statusLabel = '';
                if($o->status == 1) $statusLabel = 'In Progress';
                elseif($o->status == 2) $statusLabel = 'Delivery in Progress';
                elseif($o->status == 3) $statusLabel = 'Delivered';
                elseif($o->status == 4) $statusLabel = 'Cancelled';
                $row = [
                    $o->id,
                    $o->firstname,
                    $o->lastname ?? '',
                    $o->email ?? '',
                    $o->phone ?? '',
                    $o->total,
                    $o->content ?? '',
                    $statusLabel,
                    optional($o->created_at)->toDateTimeString(),
                    optional($o->updated_at)->toDateTimeString(),
                ];
                fputcsv($file, $row);
            }
            fclose($file);
        };

        return response()->streamDownload($callback, $filename, [
            'Content-Type' => 'text/csv; charset=UTF-8',
            'Content-Disposition' => 'attachment; filename="'.$filename.'"',
        ]);
    }
    public function status(Request $request){
        $orders = Orders::find($request->status_id);
        $orders->status = $request->active;
        $orders->save();
        return response('success',200);
    }
}
