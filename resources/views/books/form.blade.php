<div class="form-group">
    <label for="title">Title</label>
    <input type="text" id="title" name="title" value="{{ old('title', $book->title ?? '') }}" class="form-control @error('title') is-invalid @enderror" required>
    @error('title')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="author">Author</label>
    <input type="text" id="author" name="author" value="{{ old('author', $book->author ?? '') }}" class="form-control @error('author') is-invalid @enderror">
    @error('author')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="price">Price (IDR)</label>
    <input type="number" id="price" name="price" step="0.01" min="0" value="{{ old('price', $book->price ?? '') }}" class="form-control @error('price') is-invalid @enderror" required>
    @error('price')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="stock">Stock</label>
    <input type="number" id="stock" name="stock" min="0" value="{{ old('stock', $book->stock ?? '0') }}" class="form-control @error('stock') is-invalid @enderror" required>
    @error('stock')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="description">Description</label>
    <textarea id="description" name="description" rows="3" class="form-control @error('description') is-invalid @enderror">{{ old('description', $book->description ?? '') }}</textarea>
    @error('description')
        <div class="invalid-feedback">{{ $message }}</div>
    @enderror
</div>