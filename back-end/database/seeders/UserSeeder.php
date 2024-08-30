<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Faker\Factory as Faker;

class UserSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('id_ID');
        foreach (range(1, 10) as $index) {
            User::create([
                'first_name' => $faker->firstName,
                'last_name' => $faker->lastName,
                'email' => $faker->userName() . '@gmail.com',
                'password' => Hash::make('zaki12345'),
                'birthdate' => $faker->date(),
                'phone_number' => $faker->phoneNumber,
                'profile_picture' => $faker->imageUrl(640, 480, 'people', true, 'Faker'),
                'role' => $faker->randomElement(['admin', 'user']),
            ]);
        }
    }
}
