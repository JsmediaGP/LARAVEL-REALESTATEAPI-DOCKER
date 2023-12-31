<?php

namespace App\Http\Controllers\Api;

use App\Models\Blog;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\blogResource;
use Illuminate\Support\Facades\Validator;

class BlogController extends Controller
{
    function Article(){
        $articles = Blog::select('title', 'tag','image', 'created_at')->get();

        if($articles->count()>0){
            return response()->json([
                'status'=> "Success",
                'data'=> $articles
            ]);
        }
        else{
            return response()->json([
                'status'=> "Error",
                'message'=> "No article found"
            ]);
        }

    }

    function featuredArticle(){
        $articles = Blog::select('title', 'tag','image', 'created_at')->limit(2)->get();

        if($articles->count()>0){
            return response()->json([
                'status'=> "Success",
                'data'=> $articles
            ]);
        }
        else{
            return response()->json([
                'status'=> "Error",
                'message'=> "No article found"
            ]);
        }

    }

    function SingleArticle($id){
        $article = Blog::find($id);
        
        if($article){

            return new blogResource($article);

         }
        else{
            return response()->json([
                'status'=> "Error",
                'message'=> "No article found"
            ]);
        }
    }

    public function newarticle(Request $request){

        $details = Validator::make($request->all(), [
            
            'title'=>'required|string',
            'body'=>'required|string',
            'tag'=>'required|string',
            'image'=>'required',
            'agent_id'=>'required',
        ]);
        if($details->fails()){

            return response()->json([
                'status'=> "Error",
                'message'=> $details->messages()
            ]);

        }else{

            $article = Blog::create([
                'title'=>$request->title,
                'body'=>$request->body,
                'tag'=>$request->tag,
                'image'=>$request->image,
                'agent_id'=>$request->agent_id,
            ]);

                if(!$article){
                    return response()->json([
                        'status'=> "Error",
                        'message'=> "Something went wrong"
                    ]);
                }else{
                    return response()->json([
                        'status'=> "Success",
                        'message'=>"Article Successfully Uploaded."
                    ]);
                }


        }


    }

    
}
