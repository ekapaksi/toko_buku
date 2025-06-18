<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Kiosk Buku</title>

  <!-- Bootstrap -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/bootstrap/css/bootstrap.min.css') }}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome-free/css/all.min.css') }}">
  <!-- AdminLTE -->
  <link rel="stylesheet" href="{{ asset('assets/dist/css/adminlte.min.css') }}">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">

  <style>
    body {
      background-color: #f4f6f9;
      padding: 20px;
    }
    .card:hover {
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container-fluid">
    <h2 class="text-center display-4">Pencarian Buku</h2>

    <div class="row">
      <div class="col-md-8 offset-md-2">
        <form id="searchForm">
          <div class="input-group input-group-lg">
            <input id="searchInput" type="search" class="form-control" placeholder="Cari judul / penulis / penerbit" name="keyword">
            <div class="input-group-append">
              <button type="submit" class="btn btn-primary">
                <i class="fa fa-search"></i>
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>

    <div id="loadingSpinner" class="text-center d-none mt-4">
      <div class="spinner-border text-primary" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>

    <div id="resultContainer" class="mt-4">
      <!-- Kartu hasil pencarian akan muncul di sini -->
    </div>
  </div>

  <!-- Modal Detail Buku -->
  <div class="modal fade" id="bookDetailModal" tabindex="-1" aria-labelledby="bookDetailModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="bookDetailModalLabel">Detail Buku</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Tutup">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <!-- Konten akan diisi dari JS -->
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Scripts -->
  <script src="{{ asset('assets/plugins/jquery/jquery.min.js') }}"></script>
  <script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
  <script src="{{ asset('assets/dist/js/adminlte.min.js') }}"></script>

  <script>
    $(document).ready(function () {
      $('#searchForm').on('submit', function (e) {
        e.preventDefault();
        var str = $("#searchInput").val().trim();

        if (!str) {
          $('#resultContainer').html('<p class="text-center text-danger">Harap masukkan kata kunci pencarian.</p>');
          return;
        }

        $('#loadingSpinner').removeClass('d-none');
        $('#resultContainer').html('');

        $.ajax({
          type: "POST",
          url: "{{ url('/kiosk/search') }}",
          data: {
            str: str,
            _token: '{{ csrf_token() }}'
          },
          success: function (res) {
            let resultHtml = '';

            if (res.length > 0) {
              res.forEach(book => {
                const image = book.gambar ? book.gambar : '{{ asset("default.jpg") }}';

                resultHtml += `
                  <div class="card mb-3 mx-auto" style="max-width: 800px;" 
                       data-toggle="modal" data-target="#bookDetailModal"
                       data-judul="${book.title}" 
                       data-harga="${book.price}" 
                       data-stok="${book.stock}" 
                    <div class="row no-gutters">
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">${book.title}</h5>
                          <p class="card-text"><strong>Harga:</strong> Rp${Number(book.price).toLocaleString()}</p>
                          <p class="card-text"><strong>Stok:</strong> ${book.stock}</p>
                        </div>
                      </div>
                    </div>
                  </div>`;
              });
            } else {
              resultHtml = '<p class="text-center">Tidak ada hasil ditemukan.</p>';
            }

            $('#resultContainer').html(resultHtml);
          },
          error: function () {
            $('#resultContainer').html('<p class="text-center text-danger">Terjadi kesalahan. Silakan coba lagi.</p>');
          },
          complete: function () {
            $('#loadingSpinner').addClass('d-none');
          }
        });
      });

      // Modal Detail
      $('#resultContainer').on('click', '.card', function () {
        const judul = $(this).data('judul');
        const harga = $(this).data('harga');
        const stok = $(this).data('stok');

        $('#bookDetailModalLabel').text(judul);
        $('#bookDetailModal .modal-body').html(`
          <h5 class="text-center">${judul}</h5>
          <p class="text-center"><strong>Harga:</strong> Rp${Number(harga).toLocaleString()}</p>
          <p class="text-center"><strong>Stok:</strong> ${stok}</p>
        `);
      });
    });
  </script>
</body>
</html>
