<h3>Laporan Penjualan</h3>
<table width="100%" border="1" cellspacing="0" cellpadding="5">
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
