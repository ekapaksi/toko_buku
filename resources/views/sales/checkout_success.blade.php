<!DOCTYPE html>
<html>
<head>
    <title>Redirecting...</title>
    <script>
        window.onload = function () {
            // Buka struk di tab baru
            window.open("{{ route('sales.print', $invoice) }}", '_blank');

            // Redirect kembali ke POS
            window.location.href = "{{ route('sales.pos') }}";
        };
    </script>
</head>
<body>
    <p>Memproses transaksi...</p>
</body>
</html>
