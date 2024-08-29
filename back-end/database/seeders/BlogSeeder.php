<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID'); // Menggunakan locale Indonesia

        foreach (range(1, 10) as $index) {
            DB::table('blogs')->insert([
                'image' => $faker->imageUrl(640, 480, 'nature', true, 'Faker'),
                'title' => $faker->sentence,
                'description' => $faker->text,
                'author' => $faker->name,
                'tags' => implode(', ', $faker->words(3)),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}
