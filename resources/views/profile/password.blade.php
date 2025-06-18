@extends('layouts.app')
@section('title', 'Ubah Password')

@section('content')
<div class="container">
    <div class="card col-md-6 mx-auto">
        <div class="card-header bg-primary text-white">
            <h5 class="mb-0">Ubah Password</h5>
        </div>
        <div class="card-body">
            <form method="POST" action="{{ route('profile.password.update') }}">
                @csrf

                <div class="mb-3">
                    <label for="current_password">Password Lama</label>
                    <input type="password" name="current_password" class="form-control" required>
                    @error('current_password')
                        <div class="text-danger small">{{ $message }}</div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="new_password">Password Baru</label>
                    <input type="password" name="new_password" class="form-control" required>
                    @error('new_password')
                        <div class="text-danger small">{{ $message }}</div>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="new_password_confirmation">Konfirmasi Password Baru</label>
                    <input type="password" name="new_password_confirmation" class="form-control" required>
                </div>

                <button type="submit" class="btn btn-success">Simpan</button>
                <a href="{{ url()->previous() }}" class="btn btn-secondary">Batal</a>
            </form>
        </div>
    </div>
</div>
@endsection
