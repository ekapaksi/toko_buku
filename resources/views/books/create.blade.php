@extends('layouts.app')

@section('title', 'Add New Book')

@section('content')
<form action="{{ route('books.store') }}" method="POST" novalidate>
    @csrf

    @include('books.form')

    <button type="submit" class="btn btn-primary">Add Book</button>
    <a href="{{ route('books.index') }}" class="btn btn-secondary">Cancel</a>
</form>
@endsection