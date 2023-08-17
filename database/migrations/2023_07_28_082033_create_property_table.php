<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    { 
        Schema::create('property', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('agent_id');
            $table->unsignedBigInteger('location_id');
            $table->string('title');
            $table->string('address');
            $table->string('price');
            $table->string('description', 5000);
            $table->string('bedspace');
            $table->string('baths');
            $table->string('parking_space');
            $table->string('measurement');
            $table->string('image');
            $table->string('availability')->default('For Sale');
            $table->foreign('agent_id')->references('id')->on('agent')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('location_id')->references('id')->on('location')->onDelete('cascade')->onUpdate('cascade');
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('property');
    }
};
