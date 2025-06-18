<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class UserController extends Controller
{
    use AuthorizesRequests; // Add this line

    public function index()
    {
        $this->authorize('manage-users');
        $users = User::paginate(10);
        return view('users.index', compact('users'));
    }

    public function create()
    {
        $this->authorize('manage-users');
        return view('users.create', ['user' => new \App\Models\User()]);
    }
    

    public function store(Request $request)
    {
        $this->authorize('manage-users');
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|string|min:6|confirmed',
            'role' => 'required|in:admin,kasir',
        ]);

        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'role' => $data['role'],
        ]);

        return redirect()->route('users.index')->with('success', 'User  created successfully');
    }

    public function show(User $user)
    {
        $this->authorize('manage-users');
        return view('users.show', compact('user'));
    }

    public function edit(User $user)
    {
        $this->authorize('manage-users');
        return view('users.edit', compact('user'));
    }

    public function update(Request $request, User $user)
    {
        $this->authorize('manage-users');
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'email' => ['required','email',Rule::unique('users')->ignore($user->id)],
            'password' => 'nullable|string|min:6|confirmed',
            'role' => 'required|in:admin,kasir',
        ]);

        $user->name = $data['name'];
        $user->email = $data['email'];
        $user->role = $data['role'];
        if (!empty($data['password'])) {
            $user->password = Hash::make($data['password']);
        }
        $user->save();

        return redirect()->route('users.index')->with('success', 'User  updated successfully');
    }

    public function destroy(User $user)
    {
        $this->authorize('manage-users');
        $user->delete();
        return redirect()->route('users.index')->with('success', 'User  deleted successfully');
    }
}
