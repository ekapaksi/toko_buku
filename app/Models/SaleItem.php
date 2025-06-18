<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SaleItem extends Model
{
    use HasFactory;

    protected $fillable = [
        'invoice_number',
        'book_id',
        'quantity',
        'total_price',
        'tunai',
        'user_buat', 
        'user_edit',
    ];

    public function sale()
    {
        return $this->belongsTo(Sale::class);
    }

    public function book()
    {
        return $this->belongsTo(Book::class);
    }
}
