<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orders_Detail extends Model
{
    use HasFactory;
    protected $fillable = [
        'orders_id',
        'products_id',
        'quantity'
    ];

    public function order(){
        return $this->belongsTo(Orders::class, 'orders_id', 'id');
    }

    public function product(){
        return $this->belongsTo(Products::class, 'products_id', 'id');
    }
}
