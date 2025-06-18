<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toko Buku Kita | Cetak Struk</title>
    <style>
        html {
            font-family: "Verdana, Arial";
            color: #333;
        }

        .container {
            width: 100mm;
            font-size: 12px;
            padding: 5px;
        }

        .title {
            text-align: center;
            font-size: 13px;
            padding-bottom: 5px;
            border-bottom: 1px dashed;
        }

        .title h2,
        .title p {
            margin: 0;
        }

        .head {
            margin-top: 5px;
            margin-bottom: 10px;
            padding-bottom: 10px;
            border-bottom: 1px solid;
        }

        .table {
            width: 100%;
            font-size: 11px;
        }

        .kiri {
            text-align: left;
        }

        .kanan {
            text-align: right;
        }

        .kanan.qty {
            width: 5%;
        }

        .terimakasih {
            margin-top: 10px;
            padding-top: 10px;
            text-align: center;
            border-top: 1px dashed;
        }

        @media print {
            @page {
                width: 80mm;
                margin: 0mm;
            }
        }
    </style>
</head>
<body onload="window.print()">
    <div class="container">
        <div class="title">
            <h2>Toko Buku Kita</h2>
            <p>Jl. Bijaksana No.01 Rt. 03/13</p>
            <p>081234567548</p>
        </div>

        <div class="head">
            <table class="table">
                <tr>
                    <td class="kiri">
                        {{ \Carbon\Carbon::parse($data['transaction'][0]['invoice_time'])->format('d F Y H:i') }}
                    </td>
                    <td class="kanan">Kasir :</td>
                    <td class="kanan">{{ $data['transaction'][0]['kasir'] }}</td>
                </tr>
                <tr>
                    <td class="kiri">{{ $data['transaction'][0]['id'] }}</td>
                    <td colspan="2"></td>
                </tr>
            </table>
        </div>

        <div class="transaksi">
            <table class="table">
                @php $trc = null; @endphp
                @foreach ($data['transaction'] as $item)
                <tr>
                    <td class="kiri item">{{ $item['judul'] }}</td>
                    <td class="kanan qty">{{ $item['qty'] }} x</td>
                    <td class="kanan">{{ number_format($item['price'], 0, ',', '.') }}</td>
                    <td class="kanan">{{ number_format($item['qty'] * $item['price'], 0, ',', '.') }}</td>
                </tr>
                @php $trc = $item; @endphp
                @endforeach

                <tr>
                    <td colspan="5" style="border-bottom:1px solid;"></td>
                </tr>
                <tr>
                    <td colspan="3" class="kanan">Sub Total</td>
                    <td class="kanan">{{ number_format($trc['subtotal'], 0, ',', '.') }}</td>
                </tr>
                <tr><td colspan="2"></td><td colspan="3" style="border-bottom: 1px dashed;"></td></tr>
                <tr>
                    <td colspan="3" class="kanan">Total Akhir</td>
                    <td class="kanan">{{ number_format($trc['subtotal'], 0, ',', '.') }}</td>
                </tr>
                <tr><td colspan="2"></td><td colspan="3" style="border-bottom: 1px dashed;"></td></tr>
                <tr>
                    <td colspan="3" class="kanan">Tunai</td>
                    <td class="kanan">{{ number_format($trc['pembayaran'], 0, ',', '.') }}</td>
                </tr>
                <tr>
                    <td colspan="3" class="kanan">Kembalian</td>
                    <td class="kanan">{{ number_format($trc['kembalian'], 0, ',', '.') }}</td>
                </tr>
            </table>
        </div>

        <div class="terimakasih">
            ~~~~~ Terima Kasih ~~~~~
        </div>
    </div>
</body>
</html>
