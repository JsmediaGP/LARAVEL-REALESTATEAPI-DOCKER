<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class dbcheck extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:dbcheck';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()

    {

        try {
            DB::connection()->getPdo();

            $this->info("Databse Connection Successful");
        } catch (\Throwable $th) {
            $this->error("Database Connection failed" );
            //throw $th;
        }
        //
    }
}
