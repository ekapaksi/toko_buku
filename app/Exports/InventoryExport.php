<?php

namespace App\Exports;

use App\Models\Book;
use Maatwebsite\Excel\Concerns\FromCollection;

class InventoryExport implements FromCollection
{
    protected $from;
    protected $to;

    public function __construct($from, $to)
    {
        $this->from = $from;
        $this->to = $to;
    }

    public function collection()
    {
        return Book::all();
    }

    public function headings(): array
    {
        return ['ID', 'Judul', 'Penulis', 'Harga', 'Stok'];
    }

    public function map($book): array
    {
        return [
            $book->id,                 // ID atau invoice_number
            $book->title,  
            $book->author,  
            $book->price,  
            $book->stock
        ];
    }
}
