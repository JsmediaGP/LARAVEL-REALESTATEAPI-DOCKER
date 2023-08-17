<?php

namespace Database\Seeders;

use App\Models\Property;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PropertySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $PropertyData = [
            [
                'title' => 'Comfortable Apartment',
                'address' => '701 MARTINA DR NE ATLANTA GA 30305-2737 USA',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '5',
                'baths' => '3',
                'parking_space' => '2',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/2d4lAQAlbDA',
                //'availability' => '',
                'agent_id' => '1',
                'location_id'=> '2',
            ],
            [
                'title' => 'Comfortable Apartment',
                'address' => '900 DIMMOCK ST SW ATLANTA GA 30310-3314 USA',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '2',
                'baths' => '1',
                'parking_space' => '5',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/MAnVoJlQUvg',
                //'availability' => '',
                'agent_id' => '1',
                'location_id'=> '2',
            ],
            [
                'title' => 'Comfortable Apartment',
                'address' => '100 Kim Seng Road 01-24 Kim Seng Plaza',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '5',
                'baths' => '3',
                'parking_space' => '2',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/ZdJ6eIKN3G0',
                //'availability' => '',
                'agent_id' => '2',
                'location_id'=> '3',
            ],
            [
                'title' => 'Comfortable Apartment',
                'address' => '10 Changi North Street 1 04-01',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '5',
                'baths' => '3',
                'parking_space' => '2',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/4ojhpgKpS68',
                //'availability' => '',
                'agent_id' => '2',
                'location_id'=> '3',
            ],


            [
                'title' => 'Best Apartment for Sale',
                'address' => '10 Changi North Street 1 04-01',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '5',
                'baths' => '3',
                'parking_space' => '2',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/NiHjyE1m9Kc',
                //'availability' => '',
                'agent_id' => '3',
                'location_id'=> '4',
            ],

            [
                'title' => 'Luxury family Loft',
                'address' => '10 Changi North Street 1 04-01',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '5',
                'baths' => '3',
                'parking_space' => '2',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/vbSRUrNm3Ik',
                //'availability' => '',
                'agent_id' => '4',
                'location_id'=> '1',
            ],

            [
                'title' => 'Comfortable Apartment',
                'address' => '10 Changi North Street 1 04-01',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '5',
                'baths' => '3',
                'parking_space' => '2',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/Cn87TISYij8',
                //'availability' => '',
                'agent_id' => '1',
                'location_id'=> '1',
            ],

            [
                'title' => 'Comfortable Apartment',
                'address' => '10 Changi North Street 1 04-01',
                'price' => '3500',
                'description' => 'Quisque sodales quam eu vestibulum tempor. Pellentesque rhoncus velit non semper aliquet. Ut vestibulum, velit in rhoncus auctor, erat erat tincidunt turpis, sit amet rhoncus mi ex id tortor. Etiam vehicula, mi sed consectetur varius, erat turpis viverra tortor, a pulvinar nisl dolor id mi. Nullam tincidunt porta tristique. In eu nibh dolor. Cras auctor lectus eget dignissim cursus. Nulla dolor justo, interdum sit amet eleifend cursus, porttitor ultricies eros.

                In in est felis. Ut pulvinar consectetur porttitor. Sed non dignissim tortor. In lacus ante, aliquet et porta in, lacinia consectetur odio. Etiam a felis tortor. Nam sollicitudin sodales aliquam. Aliquam id dui id nisl consequat feugiat nec a mi. Phasellus feugiat posuere vulputate.
                
                Nunc ut mauris purus. Aliquam nibh lacus, consectetur ac aliquet sed, ultricies non velit. Praesent id metus vulputate, consequat orci congue, semper quam. Maecenas id hendrerit ligula. Aliquam nisi ante, tempor sed tristique ut, finibus vel lorem. Donec nec sodales lectus, in consequat nulla. Quisque vitae imperdiet neque, nec vestibulum odio. Praesent porta purus quis augue pharetra, vel posuere mauris iaculis. Nulla et finibus turpis. Etiam ac mauris non metus laoreet volutpat ut id arcu. Vivamus at ultricies dui, vitae efficitur neque. Nulla id sollicitudin lorem.',
                'bedspace' => '5',
                'baths' => '3',
                'parking_space' => '2',
                'measurement' => '120sqft',
                'image'=> 'https://unsplash.com/photos/GGupkreKwxA',
                //'availability' => '',
                'agent_id' => '3',
                'location_id'=> '3',
            ],
            
            


        ];
        foreach ($PropertyData as $PropertyData) {
            Property::create([
                'title'=>$PropertyData['title'],
                'address'=>$PropertyData['address'],
                'price'=>$PropertyData['price'],
                'description'=>$PropertyData['description'],
                'bedspace'=>$PropertyData['bedspace'],
                'baths'=>$PropertyData['baths'],
                'parking_space'=>$PropertyData['parking_space'],
                'measurement'=>$PropertyData['measurement'],
                'image'=>$PropertyData['image'],
               // 'availability'=>$PropertyData['availability'],
                'agent_id'=>$PropertyData['agent_id'],
                'location_id'=>$PropertyData['location_id'],
               
               
            ]);
        }
    }
}
