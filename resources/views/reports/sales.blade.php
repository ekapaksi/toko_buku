@extends('layouts.app')
@section('title', 'Laporan Penjualan')

@section('content')
<form method="GET" action="{{ route('reports.sales') }}" class="mb-3">
    <div class="row">
        <div class="col-md-4">
            <label>Dari Tanggal</label>
            <input type="date" name="start_date" class="form-control" value="{{ request('start_date') }}" required>
        </div>
        <div class="col-md-4">
            <label>Sampai Tanggal</label>
            <input type="date" name="end_date" class="form-control" value="{{ request('end_date') }}" required>
        </div>
        <div class="col-md-4 d-flex align-items-end">
            <button class="btn btn-primary me-2" type="submit">Tampilkan</button>
            @if(request('start_date') && request('end_date'))
                <a href="{{ route('reports.sales.pdf', request()->all()) }}" class="btn btn-danger me-2">Export PDF</a>
                <a href="{{ route('reports.sales.excel', request()->all()) }}" class="btn btn-success">Export Excel</a>
            @endif
        </div>
    </div>
</form>

@if($sales->isNotEmpty())
<table class="table table-bordered">
    <thead>
        <tr>
            <th>Tanggal</th>
            <th>Invoice</th>
            <th>Total</th>
        </tr>
    </thead>
    <tbody>
        @foreach($sales as $sale)
            <tr>
                <td>{{ $sale->created_at->format('Y-m-d') }}</td>
                <td>{{ $sale->invoice_number }}</td>
                <td>Rp {{ number_format($sale->total, 0, ',', '.') }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
@else
    <p>Tidak ada data.</p>
@endif
@endsection
