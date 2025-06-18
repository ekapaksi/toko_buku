<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;

class KioskController extends Controller
{

    public function index()
    {
        return view('kiosk.index');
    }

    public function search_kiosk(Request $request)
    {
        $keyword = $request->input('str');
        $books = Book::where('title', 'like', "%$keyword%")
                    ->orWhere('author', 'like', "%$keyword%")
                    ->get();

        return response()->json($books);
    }
    public function search(Request $request)
    {
        $keyword = $request->input('str');
        $books = Book::where('title', 'like', "%$keyword%")
                    ->orWhere('author', 'like', "%$keyword%")
                    ->get();

        return response()->json($books);
    }


}
