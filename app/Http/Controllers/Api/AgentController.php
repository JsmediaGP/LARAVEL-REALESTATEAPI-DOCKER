<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Agent;
use App\Http\Resources\agentResource;
use App\Models\Property;
use Illuminate\Support\Facades\Validator;
class AgentController extends Controller
{

    public function allAgents(){
        //$agents = Agent::all();
        $agents = DB::table('agent')->select('id','name','email','phone')->get();
        if($agents->count()>0){
            return response()->json([
                
                'status'=> "Success",
                'message'=> $agents
            ], 200);
        }else{
            return response()->json([
                'status'=>"Success",
                'message'=> "No Agent found"

            ],202);
        }
       
    } 

    public function newAgent(Request $request){
        
        
        $credentials = Validator::make($request->all(), [
            'name'=>'required|string',
            'email'=>'required|email|unique:agent',
            'phone'=>'required|digits:11',
            'post'=>'required|string|max:100',
            'image'=>'required',
            'details'=>'required|string|max:250',
        ]);
        if($credentials->fails()){
            return response()->json([
                'status'=>"Error",
                'message'=> $credentials->messages()
            ],404);
        }else{
            $agents = agent::create([
                'name'=>$request->name,
                'email'=>$request->email,
                'phone'=>$request->phone,
                'post'=>$request->post,
                'image'=>$request->email,
                'details'=>$request->details,
            ]);
            if(!$agents){
                return response()->json([
                    'status'=> "Error",
                    'message'=> "Something went wrong"
                ], 404);
            }else{
                return response()->json([
                    'status'=> "Success",
                    'message'=>"Agent Successfully Created"
                ],200);
            }

        }

    }

    public function findAgent($id){
        

        $agent = Agent::findOrFail($id);
        if ($agent){
            return new agentResource($agent);

        }
        else{
            
            return response()->json([
                "message"=> "Agent not found"
            ],200);
       
        }
       
    }

    public function getids(){

      $allids = Agent::pluck('name','id');
        if($allids->count()>0){
            return response()->json([
                'status'=>"Lists of Agents by their ID",
                'message'=>$allids
            ],200);

        }else{
            return response()->json([
                'Staus'=>'Error',
                'message'=>"Can't find any Agent ID"
            ],202);
        }
        
        
    }

    public function agentpropertiessearch(Request $request){
        $search = $request->input('q');
        $property = Property::where('agent_id', 'LIKE', "%$search%")->get();
        if($property->count()>0){
            return response()->json([$property],200);
        }
    }
    

    public function agentProperties($agent_id){
        
        $agentsProperties = Property::where('agent_id', $agent_id)->get();
       // return response()->json($aaa);
        if($agentsProperties->count()>0){
            return response()->json(($agentsProperties),200);
            
        }else{
            return response()->json(['message' => "Agent do not have any property yet."],204);
           
        }

    }

   

}
