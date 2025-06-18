<div class="form-group">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" value="{{ old('name', $user->name ?? '') }}" class="form-control @error('name') is-invalid @enderror" required>
    @error('name')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="email">Email</label>
    <input type="email" id="email" name="email" value="{{ old('email', $user->email ?? '') }}" class="form-control @error('email') is-invalid @enderror" required>
    @error('email')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="role">Role</label>
    <select id="role" name="role" class="form-control @error('role') is-invalid @enderror" required>
        <option value="kasir" {{ old('role', $user->role ?? '') === 'kasir' ? 'selected' : '' }}>Kasir</option>
        <option value="admin" {{ old('role', $user->role ?? '') === 'admin' ? 'selected' : '' }}>Admin</option>
    </select>
    @error('role')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="password">{{ isset($user) && $user->exists ? 'New Password (leave blank to keep current)' : 'Password' }}</label>
    <input type="password" id="password" name="password" class="form-control @error('password') is-invalid @enderror" {{ isset($user) && $user->exists ? '' : 'required' }}>
    @error('password')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="password_confirmation">Confirm Password</label>
    <input type="password" id="password_confirmation" name="password_confirmation" class="form-control" {{ isset($user) && $user->exists ? '' : 'required' }}>
</div>