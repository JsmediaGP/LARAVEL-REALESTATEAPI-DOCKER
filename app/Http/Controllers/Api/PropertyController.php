<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Resources\propertyResource;
use Illuminate\Support\Facades\Validator;
use Http;
use App\Models\Agent;
use App\Models\Property;

class PropertyController extends Controller
{
    public function index(){

        //return propertyResource::collection(Property::all());
        //$properties = Property::all();
        //$properties = Property::all();
        $status = "For Sale";
       $properties = DB::table('property')->select('id','title','address', 'price', 'bedspace','baths','parking_space','measurement','image', 'availability')->get();
        if($properties->count()>0){
            return response()->json([
                
                'status'=> "Success",
                'message'=> $properties
            ], 200);
        }else{
            return response()->json([
                'status'=>"Success",
                'message'=> "No property found"

            ], 204);
      
        }
    }

    function featuredproperties(){
        $status = "For Sale";
        $properties = DB::table('property')->select('id','title','address', 'price', 'bedspace'
            ,'baths','parking_space','measurement','image', 'availability')
            ->where('availability',$status)->get();
            
        if($properties->count()>0){
            return response()->json([
                
                'status'=> "Success",
                'message'=> $properties
            ], 200);
        }else{
            return response()->json([
                'status'=>"Success",
                'message'=> "No property found"

            ], 204);
      
        }

    }

    
    public function store(Request $request){
        //this function will process what the user enter from the interface
        $credentials = Validator::make($request->all(), [

            'title'=>'required|string|max:200',
            'address'=>'required|string',
            'price'=>'required',
            'description'=>'required|string|max:250',
            'bedspace'=>'required',
            'baths'=>'required',
            'parking_space'=>'required',
            'measurement'=>'required',
            'image'=>'required',
            'agent_id'=>'required',
            'location_id'=>'required',
        ]);
        if($credentials->fails()){
            return response()->json([
                'status'=>"Error",
                'message'=> $credentials->messages()
            ]);
        }else{
            
            $property = property::create([
                'title'=>$request->title,
                'address'=>$request->address,
                'price'=>$request->price,
                'description'=>$request->description,
                'bedspace'=>$request->bedspace,
                'baths'=>$request->baths,
                'parking_space'=>$request->parking_space,
                'measurement'=>$request->measurement,
                'image'=>$request->image,
                'agent_id'=>$request->agent_id,
                'location_id'=>$request->location_id,
            ]);
            if(!$property){
                return response()->json([
                    'status'=> "Error",
                    'message'=> "Something went wrong"
                ]);
            }else{
                return response()->json([
                    'status'=> "Success",
                    'message'=>$property
                ],200);
            }

       }
    }

    public function show(Property $property){
      
        return propertyResource::make($property);
      


    }

  
    //search property using the following field id,  title, price, bedspace, baths, parking_space, meassurement
    public function findProperty($id){

        $property = Property::findOrFail($id);

        if($property){
            return new propertyResource($property);

        }else{
            return response()->json([
                'status'=> "Error",
                'message'=> "Property not found."
            ],204);
        }
        

        // $search = $request->input('searchQuery');

        // $property = Property::where('id', 'LIKE', '%'.$search.'%')->orWhere('title',  'LIKE', '%'.$search.'%' )
        // ->orWhere('price',  'LIKE', '%'.$search.'%' )->orWhere('bedspace',  'LIKE', '%'.$search.'%' )
        // ->orWhere('baths',  'LIKE', '%'.$search.'%' )->orWhere('parking_space',  'LIKE', '%'.$search.'%' )
        // ->orWhere('measurement',  'LIKE', '%'.$search.'%' )->get();
        // if($property->count()>0){
        //     return response()->json([$property],200);
        // }
    }

    public function edit()
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update()
    {
      
    }
 
    /**
     * Remove the specified resource from storage.
     */
    public function destroy()
    {
    
    }

 
    
}


