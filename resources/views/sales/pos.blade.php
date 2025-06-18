@extends('layouts.app')
@section('title', 'Penjualan')

@section('content')

    <div class="container-fluid">
        {{-- Header Invoice --}}
        @if (!session('invoice_number'))
            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#buatInvoiceModal">
                ➕ Buat Invoice
            </button>

            <!-- Modal Buat Invoice -->
            <div class="modal fade" id="buatInvoiceModal" tabindex="-1">
                <div class="modal-dialog">
                    <form action="{{ route('sales.pos.generate_invoice') }}" method="POST">
                        @csrf
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Buat Invoice Baru</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                Apakah Anda yakin ingin membuat invoice baru?
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">Ya, Buat Invoice</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        @else
            <div class="card border-primary mb-3">
                <div class="card-header bg-primary text-white">
                    Invoice : {{ $sale->invoice_number }}

                </div>
                <div class="card-body row">
                    {{-- Input Produk --}}
                    <div class="col-md-6">
                        <form action="{{ route('sales.add') }}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label>Barcode / Produk</label>
                                <select name="book_id" class="form-select select2" required>
                                    <option value="">Pilih produk...</option>
                                    @foreach ($books as $book)
                                        <option value="{{ $book->id }}">
                                            {{ $book->title }} - Rp {{ number_format($book->price, 0, ',', '.') }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="mb-3 d-flex">
                                <input type="number" name="quantity" class="form-control me-2" min="1"
                                    placeholder="Jumlah" required>
                                <button class="btn btn-primary" type="submit">Tambah</button>
                            </div>
                        </form>
                    </div>

                    {{-- Total Harga --}}
                    <div class="col-md-6 text-end">
                        <h4>Total Harga :</h4>
                        <h1 class="text-danger">
                            Rp {{ number_format((float) str_replace(',', '', Cart::subtotal()), 0, ',', '.') }}
                        </h1>
                    </div>
                </div>
            </div>

            {{-- Daftar Item di Keranjang --}}
            <div class="card mb-3">
                <div class="card-body p-0">
                    <table class="table table-bordered mb-0">
                        <thead class="table-primary">
                            <tr>
                                <th>Barcode</th>
                                <th>Nama Item</th>
                                <th>Harga</th>
                                <th>Jumlah</th>
                                <th>Total</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($cartItems as $item)
                                <tr>
                                    <td>{{ $item->id }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>Rp {{ number_format($item->price, 0, ',', '.') }}</td>
                                    <td>{{ $item->qty }}</td>
                                    <td>Rp {{ number_format($item->price * $item->qty, 0, ',', '.') }}</td>
                                    <td>
                                        <form action="{{ route('sales.remove', $item->rowId) }}" method="POST">
                                            @csrf
                                            <button class="btn btn-sm btn-danger">Hapus</button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="6" class="text-center">Keranjang masih kosong</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

            {{-- Pembayaran --}}
            <form action="{{ route('sales.checkout') }}" method="POST">
                @csrf
                <input type="hidden" name="invoice_number" value="{{ $sale->invoice_number }}">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card border-primary mb-3">
                            <div class="card-body">
                                <div class="mb-2">
                                    <label>Sub Total</label>
                                    <input class="form-control" readonly
                                        value="{{ number_format((float) str_replace(',', '', Cart::subtotal()), 0, ',', '.') }}">
                                </div>
                                <div class="mb-2">
                                    <label>Total Akhir</label>
                                    <input class="form-control" readonly
                                        value="{{ number_format((float) str_replace(',', '', Cart::subtotal()), 0, ',', '.') }}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card border-primary mb-3">
                            <div class="card-body">
                                <div class="mb-2">
                                    <label>Tunai</label>
                                    <input type="number" class="form-control" name="tunai"
                                        placeholder="Masukkan nominal tunai" required>
                                </div>
                                <div class="mb-2">
                                    <label>Kembalian</label>
                                    <input class="form-control" readonly value="0" id="kembalian">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex align-items-end">
                        <div class="d-flex w-100 justify-content-between">
                            <a href="{{ route('sales.pos') }}" class="btn btn-warning">Batal</a>
                            <button type="submit" id="btnCheckout" class="btn btn-success">🧾 Proses Pembayaran</button>
                        </div>
                    </div>
                </div>
            </form>
    </div>

    <script>
        document.querySelector('input[name="tunai"]').addEventListener('input', function() {
            const total = {{ (float) str_replace(',', '', Cart::subtotal()) }};
            const bayar = parseFloat(this.value) || 0;
            const kembali = bayar - total;
            document.getElementById('kembalian').value = kembali > 0 ? kembali.toLocaleString('id-ID') : 0;
        });
    </script>

    @push('scripts')
        <script>
            $(document).ready(function() {
                $('.select2').select2({
                    placeholder: "Pilih produk...",
                    allowClear: true,
                    width: '100%'
                });
            });
            $(document).ready(function() {
                const total = {{ (float) str_replace(',', '', Cart::subtotal()) }};

                $('input[name="tunai"]').on('input', function() {
                    const bayar = parseFloat($(this).val()) || 0;
                    const kembali = bayar - total;

                    $('#kembalian').val(kembali > 0 ? kembali.toLocaleString('id-ID') : 0);

                    if (bayar < total) {
                        $('#btnCheckout').prop('disabled', true);
                    } else {
                        $('#btnCheckout').prop('disabled', false);
                    }
                });

                // Cek saat awal load
                $('input[name="tunai"]').trigger('input');
            });
        </script>
    @endpush
    @endif


@endsection
