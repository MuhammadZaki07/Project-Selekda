<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class PortfolioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID'); 

        foreach (range(1, 10) as $index) {
            DB::table('portfolios')->insert([
                'title' => $faker->sentence,
                'image' => $faker->imageUrl(640, 480, 'business', true, 'Faker'),
                'description' => $faker->text,
                'author' => $faker->name,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
