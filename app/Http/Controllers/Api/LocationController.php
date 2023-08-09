<?php

namespace App\Http\Controllers\Api;

use App\Models\Location;
use App\Models\Property;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class LocationController extends Controller
{

    //function to show the list of all the locations
    public function index(){
        $locations = Location::all();

        if($locations->count()>0){

           return response()->json([
            'status'=>'Success',
            'message'=> $locations
        ],200); 
        }else{
            return response()->json([
                'status'=>'Error',
                'message'=>'No Location created yet.'
            ],204);
        }
        
    }
    //this function will show properties based on the loation they are
    public function locationProperties($location_id){
        $locationProperties = Property::where('location_id', $location_id)->get();
        // return response()->json($aaa);
         if($locationProperties->count()>0){
             return response()->json(($locationProperties),200);
             
            
             
         }else{
             return response()->json(['message' => "No property in this region"],204);
            
         }
    }

    function locationIDs(){
        $allids = Location::pluck('location','id');
        return response()->json([
            'status'=>"lists of Locations",
            'message'=>$allids
        ]);
    }

    function locationpropertycount(){
        $propertycount = Location::withCount('property')->get();
        return response()->json($propertycount);

        //$propertiescount = Property::select('')
    }

    function newLocation(Request $request){
        
        $inputs = Validator::make($request->all(), [
            'location'=>'required',
        ]);
        if($inputs->fails()){
            return response()->json([
                'status'=>"Error",
                'message'=>$inputs->messages()
            ],404);
        }else{
            $location = Location::create([
                'location'=>$request->location,
            ]);

            if(!$location){
                return response()->json([
                    'message'=>"something went wrong"
                ],505);

            }else{
                return response()->json([
                    'message'=>"New Location Added"
                ],200);
            }
        }

    }
}
