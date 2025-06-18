@extends('layouts.app')

@section('title', 'Master User')

@section('content')
<div class="mb-3">
    <a href="{{ route('users.create') }}" class="btn btn-primary">
        <i class="fas fa-plus"></i> Tambah
    </a>
</div>
<table class="table table-bordered table-hover">
    <thead class="thead-dark">
        <tr>
            <th>#</th>
            <th>Nama</th>
            <th>Email</th>
            <th>Role</th>
            <th>Tanggal Buat</th>
            <th width="160">Action</th>
        </tr>
    </thead>
    <tbody>
        @forelse ($users as $index => $user)
        <tr>
            <td>{{ $users->firstItem() + $index }}</td>
            <td>{{ $user->name }}</td>
            <td>{{ $user->email }}</td>
            <td>{{ ucfirst($user->role) }}</td>
            <td>{{ $user->created_at->format('Y-m-d') }}</td>
            <td>
                <a href="{{ route('users.edit', $user) }}" class="btn btn-sm btn-warning" title="Edit"><i class="fas fa-edit"></i></a>
                <form action="{{ route('users.destroy', $user) }}" method="POST" style="display:inline" onsubmit="return confirm('Are you sure to delete this user?');">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-sm btn-danger" title="Delete">
                      <i class="fas fa-trash"></i>
                    </button>
                </form>
            </td>
        </tr>
        @empty
        <tr><td colspan="6" class="text-center">No users found.</td></tr>
        @endforelse
    </tbody>
</table>
{{ $users->links() }}
@endsection