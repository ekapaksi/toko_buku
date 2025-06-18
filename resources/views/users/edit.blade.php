@extends('layouts.app')

@section('title', 'Edit User')

@section('content')
<form action="{{ route('users.update', $user) }}" method="POST" novalidate>
    @csrf
    @method('PUT')

    @include('users.form')

    <button type="submit" class="btn btn-primary">Update User</button>
    <a href="{{ route('users.index') }}" class="btn btn-secondary">Cancel</a>
</form>
@endsection