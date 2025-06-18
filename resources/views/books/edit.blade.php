@extends('layouts.app')

@section('title', 'Edit Book')

@section('content')
<form action="{{ route('books.update', $book) }}" method="POST" novalidate>
    @csrf
    @method('PUT')

    @include('books.form')

    <button type="submit" class="btn btn-primary">Update Book</button>
    <a href="{{ route('books.index') }}" class="btn btn-secondary">Cancel</a>
</form>
@endsection