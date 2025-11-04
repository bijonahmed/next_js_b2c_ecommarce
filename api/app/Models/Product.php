<?php

namespace App\Models;
// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use AuthorizesRequests;
use DB;

class Product extends Authenticatable
{
    use HasFactory, Notifiable;
    public $table = "product";
    protected $fillable = [
        'name',
        'slug',
        'product_description',
        'purchase_order_id',
        'supplier_id',
        'meta_title',
        'meta_description',
        'meta_keyword',
        'product_tag',
        'sku',
        'cash_dev_status',
        'price',
        'old_price',
        'unit',
        'stock_qty',
        'stock_mini_qty',
        'shipping_days',
        'thumnail_img',
        'status',
        'entry_by'
    ];
}
