<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {

        $table->increments('id');
        $table->integer('parent_id');  //database a 0 defined  kore dibo
        $table->string('name');
        $table->text('description');
        $table->string('url');
        $table->string('meta_title');
        $table->string('meta_description');
        $table->string('meta_keywords');
        $table->boolean('status')->default(0);
        $table->rememberToken();
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
        Schema::dropIfExists('categories');
    }
}
