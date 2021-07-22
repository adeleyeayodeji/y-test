<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
   
    protected $model = Product::class;

    public function definition()
    {
    $brand = $this->faker->randomElement(["Infinix","Apple","Tecno","Itel","Oppo","Galaxy","samesung","Vovo","Gino","Nokia","Lumia"]);
    $storage = $this->faker->randomElement([1,2,4,8,16,32,64,128]);
    $camera = $this->faker->randomElement([13,16,8]);
    return [

       'name' => $this->faker->name,
       'brand' => $brand,
       'price' => $this->faker->numberBetween(12000,150000),
       'ram' => $this->faker->numberBetween(2,8),
       'storage' => $storage,
       'quantity' => $this->faker->numberBetween(15,30),
       'camera' => $camera,
       'status' => $this->faker->numberBetween(0,1),
        'description' => $this->faker->paragraph(4),
        ];
    }
}
