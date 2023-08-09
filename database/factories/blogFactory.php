<?php

namespace Database\Factories;

use App\Models\Blog;
use App\Models\Agent;
use App\Models\Location;
use App\Models\Property;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\blog>
 */
class blogFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [

            'title'=> fake()->sentence(),
            'body'=>fake()->paragraph(),
            'tag'=>fake()->randomElement(['Property', 'Home']),
            'image'=>fake()->imageUrl($width=400, $height=400),
            'agent_id'=>rand(1,5),
        ];
    }
}
