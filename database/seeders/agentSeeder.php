<?php

namespace Database\Seeders;

use App\Models\Agent;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class agentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $agentsData = [
            [

            'name'=> 'Kelian Anderson',
            'email' => 'rawjassasm_1212.jd@gmail.com',
            'image' => 'https://imgv3.fotor.com/images/gallery/Realistic-Male-Profile-Picture.jpg',
            'post' => 'land Seller',
            'phone' => '+17213265789' ,
            'details' => 's. Aliquam feugiat eleifend efficitur. Cras vel commodo eros. Aenean consectetur dui et nulla egestas, vel lobortis arcu fringilla. Aenean eu augue in arcu lobortis consequat rutrum nec nisi. Suspendisse efficitur orci eu dignissim volutpat. Pellentesque ullamcorper tortor sit amet metus lobortis, a vulputate lorem tincidunt. Nam volutpat congue augue, ut tincidunt magna dignissim volutpat. Pellentesque hendrerit porttitor congue. Suspendisse porttitor ex sit amet posuere pharetra. Sed gravida felis sed est interdum, nec gravida tortor maximus.' ,
               
            ],
            [
                'name'=> 'Elena Gilbert',
                'email' => 'elena.Gd@gmail.com',
                'image' => 'https://images.unsplash.com/photo-1609132718484-cc90df3417f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFrZSUyMHdvbWFufGVufDB8fDB8fHww&w=1000&q=80',
                'post' => 'land Seller',
                'phone' => '+2123265789' ,
                'details' => 's. Aliquam feugiat eleifend efficitur. Cras vel commodo eros. Aenean consectetur dui et nulla egestas, vel lobortis arcu fringilla. Aenean eu augue in arcu lobortis consequat rutrum nec nisi. Suspendisse efficitur orci eu dignissim volutpat. Pellentesque ullamcorper tortor sit amet metus lobortis, a vulputate lorem tincidunt. Nam volutpat congue augue, ut tincidunt magna dignissim volutpat. Pellentesque hendrerit porttitor congue. Suspendisse porttitor ex sit amet posuere pharetra. Sed gravida felis sed est interdum, nec gravida tortor maximus.' ,
            ],

            [
                'name'=> 'Rose Roselinna',
                'email' => 'Roselina.Ro@gmail.com',
                'image' => 'https://i.dailymail.co.uk/i/pix/2014/04/23/article-2611078-1D48BA1600000578-1000_306x477.jpg',
                'post' => 'land Seller',
                'phone' => '+2523265789' ,
                'details' => 's. Aliquam feugiat eleifend efficitur. Cras vel commodo eros. Aenean consectetur dui et nulla egestas, vel lobortis arcu fringilla. Aenean eu augue in arcu lobortis consequat rutrum nec nisi. Suspendisse efficitur orci eu dignissim volutpat. Pellentesque ullamcorper tortor sit amet metus lobortis, a vulputate lorem tincidunt. Nam volutpat congue augue, ut tincidunt magna dignissim volutpat. Pellentesque hendrerit porttitor congue. Suspendisse porttitor ex sit amet posuere pharetra. Sed gravida felis sed est interdum, nec gravida tortor maximus.' ,
            ],
           
        ];

        foreach ($agentsData as $agentData) {
            Agent::create([
                'name' => $agentData['name'],
                'email' => $agentData['email'],
                'image' => $agentData['image'],
                'post' => $agentData['post'],
                'phone' => $agentData['phone'],
                'details' => $agentData['details'],
            ]);
        }
 
       
    }
}
  


