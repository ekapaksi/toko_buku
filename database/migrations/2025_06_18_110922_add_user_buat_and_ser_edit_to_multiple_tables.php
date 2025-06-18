<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUserBuatAndSerEditToMultipleTables extends Migration
{
    public function up()
    {
        // Tabel books
        Schema::table('books', function (Blueprint $table) {
            $table->string('user_buat')->after('description')->nullable();
            $table->string('user_edit')->after('created_at')->nullable();
        });

        // Tabel authors
        Schema::table('sales', function (Blueprint $table) {
            $table->string('user_buat')->after('total')->nullable(); // contoh
            $table->string('user_edit')->after('created_at')->nullable();
        });

        // Tabel categories
        Schema::table('sale_items', function (Blueprint $table) {
            $table->string('user_buat')->after('total_price')->nullable(); // contoh
            $table->string('user_edit')->after('created_at')->nullable();
        });
    }

    public function down()
    {
        Schema::table('books', function (Blueprint $table) {
            $table->dropColumn(['user_buat', 'user_edit']);
        });

        Schema::table('authors', function (Blueprint $table) {
            $table->dropColumn(['user_buat', 'user_edit']);
        });

        Schema::table('categories', function (Blueprint $table) {
            $table->dropColumn(['user_buat', 'user_edit']);
        });
    }
}
