<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Sale;
use App\Models\SaleItem;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Cart; // Hardevine\Shoppingcart\Facades\Cart

class SaleController extends Controller
{
    public function pos()
    {
        $books = Book::where('stock', '>', 0)->get();
        $cartItems = Cart::content();
        $cartTotal = Cart::total();

        $invoiceNumber = session('invoice_number');

        $sale = null;
        if ($invoiceNumber) {
            $sale = Sale::where('invoice_number', $invoiceNumber)->first();
        }

        return view('sales.pos', compact('books', 'cartItems', 'cartTotal', 'sale'));
    }


    public function addToCart(Request $request)
    {
        $request->validate([
            'book_id' => 'required|exists:books,id',
            'quantity' => 'required|integer|min:1',
        ]);

        $book = Book::findOrFail($request->book_id);

        if ($book->stock < $request->quantity) {
            return back()->withErrors(['quantity' => 'Stok tidak mencukupi'])->withInput();
        }

        Cart::add($book->id, $book->title, $request->quantity, $book->price);

        return redirect()->route('sales.pos')->with('success', 'Buku ditambahkan ke keranjang');
    }

    public function removeItem($rowId)
    {
        Cart::remove($rowId);
        return back()->with('success', 'Item dihapus dari keranjang');
    }

    public function checkout(Request $request)
    {
        DB::transaction(function () use ($request) {
            $cartItems = Cart::content();
            $cartTotal = 0;

            foreach ($cartItems as $item) {
                $cartTotal += $item->price * $item->qty;
            }

            // Ambil ID invoice dari session
            $invoiceNumber = $request->invoice_number; // atau $request->invoice_number

            $sale = Sale::where('invoice_number', $invoiceNumber)->firstOrFail();

            // Update total dan waktu penjualan
            Sale::where('invoice_number', $invoiceNumber)->update([
                'total' => $cartTotal,
                'sold_at' => now(),
            ]);

            foreach ($cartItems as $item) {
                $book = Book::findOrFail($item->id);

                if ($book->stock < $item->qty) {
                    throw new \Exception("Stock tidak cukup untuk buku: {$book->title}");
                }

                $book->stock -= $item->qty;
                $book->save();

                SaleItem::create([
                    'invoice_number' => $invoiceNumber,
                    'book_id' => $book->id,
                    'quantity' => $item->qty,
                    'total_price' => $item->price * $item->qty,
                    'user_buat' => Auth::user()->name
                ]);
            }

            Cart::destroy();
            session()->forget('invoice_number'); // Bersihkan setelah selesai
        });

        return redirect()->route('sales.pos')->with('success', 'Transaksi berhasil diproses');
    }
    public function generateInvoice()
    {
        $invoiceNumber = 'INV' . now()->format('ymd') . strtoupper(Str::random(5));
        $sale = Sale::create([
            'invoice_number' => $invoiceNumber,
            'total' => 0,
            'created_at' => now(),
            'updated_at' => now(),
            'user_buat' => Auth::user()->name
        ]);

        session(['invoice_number' => $invoiceNumber]);

        return redirect()->route('sales.pos')->with('success', 'Invoice berhasil dibuat');
    }
}
