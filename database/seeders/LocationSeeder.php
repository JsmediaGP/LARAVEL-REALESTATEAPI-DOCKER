<?php

namespace Database\Seeders;

use App\Models\Location;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class LocationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $locationData = [
            [
                'location' => 'New York',
                'picture' => 'https://i.pinimg.com/1200x/7d/d3/06/7dd3064ef0e69e98158540c6c19ee38d.jpg',

            ],
            [
                'location' => 'Atlanta',
                'picture' => 'https://a.cdn-hotels.com/gdcs/production31/d1958/3e9e520e-1c67-4bd6-a3a9-9eb4ab4a5b2f.jpg',

            ],
            [
                'location' => 'Singapore',
                'picture' => 'https://images.squarespace-cdn.com/content/v1/5a3bb03b4c326d76de73ddaa/1570204764595-DR2JEEZHR46QLSK2RQZX/chuttersnap-Y8AQatKZRGc-unsplash.jpg',

            ],
            [
                'location' => 'Paris',
                'picture' => 'https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/blogs/9262/images/8es5qCDSdekmvLc41K4k_Eiffel_Tower_Portrait-min.jpg',

            ],


        ];
        foreach ($locationData as $locationData) {
            Location::create([
                'location' => $locationData['location'],
                'picture' => $locationData['picture'],
               
            ]);
        }
    }

}
