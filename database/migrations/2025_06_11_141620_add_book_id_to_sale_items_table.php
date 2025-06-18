<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('sale_items', function (Blueprint $table) {
            $table->foreignId('book_id')->nullable()->after('invoice_number');
        });
    }

    public function down(): void
    {
        Schema::table('sale_items', function (Blueprint $table) {
        });
    }
};
