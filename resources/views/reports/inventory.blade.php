@extends('layouts.app')

@section('title', 'Inventory Report')

@section('content')
<div class="mb-3">
    <a href="{{ route('report.inventory.pdf', request()->all()) }}" class="btn btn-danger me-2">Export PDF</a>
    <a href="{{ route('report.inventory.excel', request()->all()) }}" class="btn btn-success">Export Excel</a>
</div>

<table id="inventoryTable" class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Stock</th>
            <th>Price</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($books as $book)
        <tr>
            <td>{{ $book->title }}</td>
            <td>{{ $book->author }}</td>
            <td>{{ $book->stock }}</td>
            <td>IDR {{ number_format($book->price, 2) }}</td>
        </tr>
        @empty
        <tr><td colspan="4" class="text-center">No books found.</td></tr>
        @endforelse
    </tbody>
</table>
@endsection

@push('scripts')

<script>
    $(document).ready(function () {
        $('#inventoryTable').DataTable({
            responsive: true,
            language: {
                emptyTable: "Tidak ada data tersedia",
                search: "Cari:",
                lengthMenu: "Tampilkan _MENU_ data",
                info: "Menampilkan _START_ sampai _END_ dari _TOTAL_ data",
                paginate: {
                    previous: "Sebelumnya",
                    next: "Berikutnya"
                }
            }
        });
    });
</script>
@endpush
