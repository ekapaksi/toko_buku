@extends('layouts.app')

@section('title', 'Master Buku')

@section('content')
<div class="mb-3">
    <a href="{{ route('books.create') }}" class="btn btn-primary">
        <i class="fas fa-plus"></i> Tambah
    </a>
</div>

<table id="booksTable" class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr>
            <th>#</th>
            <th>Judul</th>
            <th>Penulis</th>
            <th>Harga</th>
            <th>Stok</th>
            <th>Deskripsi</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($books as $index => $book)
        <tr>
            <td>{{ $index + 1 }}</td>
            <td>{{ $book->title }}</td>
            <td>{{ $book->author }}</td>
            <td>IDR {{ number_format($book->price, 2) }}</td>
            <td>{{ $book->stock }}</td>
            <td>{{ $book->description }}</td>
            <td>
                <a href="{{ route('books.edit', $book) }}" class="btn btn-sm btn-warning" title="Edit"><i class="fas fa-edit"></i></a>
                <form action="{{ route('books.destroy', $book) }}" method="POST" style="display:inline" onsubmit="return confirm('Hapus buku ini?');">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-sm btn-danger" title="Delete"><i class="fas fa-trash"></i></button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection

{{-- Tambahkan Script DataTables --}}
@push('scripts')
<!-- jQuery -->
{{-- <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<!-- Bootstrap Bundle (jika belum ada di layout) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script> --}}

<script>
    $(document).ready(function () {
        $('#booksTable').DataTable({
            "paging": true,
            "info": true,
            "ordering": true,
            "autoWidth": false,
            "lengthChange": true,
            "pageLength": 10,
            "language": {
                "search": "Cari Judul / Penulis:",
                "lengthMenu": "Tampilkan _MENU_ data",
                "zeroRecords": "Data tidak ditemukan",
                "info": "Menampilkan _START_ - _END_ dari _TOTAL_ data",
                "infoEmpty": "Tidak ada data",
                "infoFiltered": "(difilter dari _MAX_ total data)"
            }
        });
    });
</script>
@endpush
