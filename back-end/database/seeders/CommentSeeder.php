<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID'); // Menggunakan locale Indonesia

        foreach (range(1, 10) as $index) {
            DB::table('comments')->insert([
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'subject' => $faker->sentence,
                'website' => $faker->url,
                'comment' => $faker->paragraph,
                'captcha' => $faker->word,
                'created_at' => now(),
                'updated_at' => now(),
                'blog_id' => $faker->numberBetween(1, 10),
            ]);
        }
    }
}
