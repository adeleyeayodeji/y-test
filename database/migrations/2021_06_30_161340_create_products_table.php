<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('brand')->nullable();
            $table->integer('price')->nullable();
            $table->integer('ram')->nullable();
            $table->integer('storage')->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('camera')->nullable();
            $table->boolean('status')->default(1);
            $table->text('description')->nullable();
            // $table->integer('category_id')->unsigned();
            // $table->integer('format_id')->unsigned();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
