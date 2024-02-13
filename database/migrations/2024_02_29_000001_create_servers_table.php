<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('server', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('merk');
            $table->string('type');
            $table->string('cpu');
            $table->string('memory');
            $table->string('harddisk');
            $table->string('serialnumber');
	        $table->string('ip_manajement');
            $table->string('ip_network');
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
        Schema::dropIfExists('servers');
    }
}
