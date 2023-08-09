<?php

namespace Database\Factories;


use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Property;
use App\Models\Agent;
use App\Models\Location;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\property>
 */
class propertyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
      //$factory->define(Property::class, function ($faker) {
        return [
        'title'=> fake()->sentence(),
       'address'=>fake()->address(),
       'price'=>fake()->randomDigitNot(0)*100,
        'description'=>fake()->paragraph(),
       'bedspace'=>fake()->randomElement(['2', '4','5']),
       'baths'=>fake()->randomElement(['2', '4','5']),
       'parking_space'=>fake()->randomElement(['2', '4','5']),
       'measurement'=>fake()->randomNumber(),
       'image'=>fake()->imageUrl($width=400, $height=400),
       'agent_id'=>rand(1,10),
       'location_id'=>rand(1,5)
       //'agent_id'=>$agent->random()->id,
    //    'agent_id'=>function() {
    //     return factory(Agent::class)->create()->id;},
            //
        ];
        
       // });
    }
    
        // return [
        //     'user_id' => $factory->create(App\User::class)->id,
        //     'title' => $faker->sentence,
        //     'body' => $faker->paragraph
        // ];
    
    
}
