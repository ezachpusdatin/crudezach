<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWebservicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('webservice', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('destinasi');
            $table->string('sumber_data');
            $table->string('instansi');
            $table->string('web_service');
            $table->string('aksi');
            $table->string('auth');
            $table->string('keterangan');
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
        Schema::dropIfExists('webservice');
    }
}
