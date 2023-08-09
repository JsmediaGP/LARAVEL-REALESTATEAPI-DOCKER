<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Property;
use App\Models\Agent;
use App\Models\Location;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\agent>
 */
class agentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [

            'name'=>fake()->name(),
            'email'=>fake()->unique()->safeEmail(),
            'image'=>fake()->imageUrl($width=400, $height=400),
            'post'=> fake()->randomElement(['Property Agent', 'Article Writer']),
            'phone'=>fake()->phoneNumber(),
            'details'=>fake()->text(),
            //
        ];
    }
}
