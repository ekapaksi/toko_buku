<?php

namespace App\Http\Controllers;

use App\Models\Sale;
use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Barryvdh\DomPDF\Facade\Pdf;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\SalesExport;
use App\Exports\InventoryExport;

class ReportController extends Controller
{
    public function sales(Request $request)
    {
        $sales = collect();

        if ($request->start_date && $request->end_date) {
            $sales = Sale::whereBetween('created_at', [
                $request->start_date . ' 00:00:00',
                $request->end_date . ' 23:59:59'
            ])->get();
        }
        // dump($sales);
        return view('reports.sales', compact('sales'));
    }

    public function exportPdf(Request $request)
    {
        $sales = Sale::whereBetween('created_at', [
            $request->start_date . ' 00:00:00',
            $request->end_date . ' 23:59:59'
        ])->get();

        $pdf = PDF::loadView('reports.sales_pdf', compact('sales'));
        return $pdf->download('laporan-penjualan.pdf');
    }

    public function exportExcel(Request $request)
    {
        $from = $request->start_date . ' 00:00:00';
        $to = $request->end_date . ' 23:59:59';
        
        return Excel::download(new SalesExport($from, $to), 'sales.xlsx');
    }
    public function inventory()
    {
        $books = Book::all();
        return view('reports.inventory', compact('books'));
    }

    public function inventory_pdf()
    {

        $books = Book::orderBy('stock', 'desc')->get();
        $pdf = PDF::loadView('reports.inventory_pdf', compact('books'));
        return $pdf->download('laporan-inventory.pdf');
    }
    public function inventory_exportExcel(Request $request)
    {
        $from = $request->start_date . ' 00:00:00';
        $to = $request->end_date . ' 23:59:59';
        
        return Excel::download(new InventoryExport($from, $to), 'inventory.xlsx');
    }
}
