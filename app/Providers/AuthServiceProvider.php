<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\User;

class AuthServiceProvider extends ServiceProvider
{
    protected $policies = [
        // User::class => UserPolicy::class, // can keep or remove if not used
    ];

    public function boot()
    {
        $this->registerPolicies();

        Gate::define('manage-users', function (User $user) {
            return $user->role === 'admin';
        });

        Gate::define('access-pos', function (User $user) {
            return in_array($user->role, ['admin', 'kasir']);
        });

        Gate::define('view-books', function (User  $user) {
            return in_array($user->role, ['admin', 'kasir']);
        });

        Gate::define('create-books', function (User  $user) {
            return $user->role === 'admin';
        });   

        Gate::define('manage-books', function (User  $user) {
            return $user->role === 'admin';
        });        

        Gate::define('view-reports', function (User $user) {
            return $user->role === 'admin';
        });
    }
}