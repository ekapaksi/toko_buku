@extends('layouts.app')

@section('title', 'Add New User')

@section('content')
<form action="{{ route('users.store') }}" method="POST" novalidate>
    @csrf

    @include('users.form')

    <button type="submit" class="btn btn-primary">Create User</button>
    <a href="{{ route('users.index') }}" class="btn btn-secondary">Cancel</a>
</form>
@endsection