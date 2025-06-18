<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    protected $primaryKey = 'invoice_number'; // ganti primary key
    public $incrementing = false; // karena invoice_number bukan auto-increment
    protected $keyType = 'string'; // karena invoice_number bukan integer

    protected $fillable = [
        'invoice_number',
        'total',
        'sold_at',
        'user_buat', 
        'user_edit',
        // tambahkan kolom lain jika perlu
    ];
    public function user()
{
    return $this->belongsTo(User::class);
}
}