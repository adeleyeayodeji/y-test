<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
// use App\Models\Task;
// use App\Models\Day;

class DatabaseSeeder extends Seeder
{
  
    public function run()
    {
        \App\Models\Product::factory(150)->create();
    
    
    }
}
