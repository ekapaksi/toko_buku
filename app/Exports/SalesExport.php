<?php

namespace App\Exports;

use App\Models\Sale;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class SalesExport implements FromCollection, WithHeadings, WithMapping
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
        return Sale::with('user')->whereBetween('created_at', [$this->from, $this->to])->get();
    }

    public function headings(): array
    {
        return ['ID', 'Tanggal', 'Total', 'User'];
    }

    public function map($sale): array
    {
        return [
            $sale->invoice_number,                 
            $sale->created_at->format('Y-m-d H:i'), 
            number_format($sale->total, 0, ',', '.'), 
            $sale->user->name ?? 'Tidak Diketahui' 
        ];
    }
}
