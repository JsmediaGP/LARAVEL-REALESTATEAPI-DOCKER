<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\BlogController;
use App\Http\Controllers\Api\AgentController;
use App\Http\Controllers\Api\LocationController;
use App\Http\Controllers\Api\PropertyController;


/* 
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
  
//agent route
//Route::apiResource('agents', AgentController::class);
Route::get('agents', [AgentController::class, 'allAgents']);
Route::post('new_agent', [AgentController::class, 'newAgent']);
Route::get('find_agent/{id}', [AgentController::class, 'findAgent']);
Route::get('agents_id', [AgentController::class, 'getids']);
Route::get('agentproperties/{agent_id}', [AgentController::class, 'agentProperties']);

//property route 
//Route::apiResource('properties', PropertyController::class);
Route::get('properties', [PropertyController::class, 'index']);
Route::get('featuredproperties', [PropertyController::class, 'featuredproperties']);
Route::post('new_property', [PropertyController::class, 'store']);
Route::get('find_property/{id}', [PropertyController::class, 'findProperty']);

//location route
Route::get('locations', [LocationController::class, 'index']);
Route::get('locationids', [LocationController::class, 'locationIDs']);
Route::post('new-location', [LocationController::class, 'newLocation']);
Route::get('locationpropertycount', [LocationController::class, 'locationpropertycount']);
Route::get('locationproperties/{location_id}', [LocationController::class, 'locationProperties']);

//blog route 
//shows all article, search/view an article by their id, and post a new article 

Route::get('blog', [BlogController::class, 'Article']);
Route::get('featuredblog', [BlogController::class, 'featuredArticle']);
Route::get('blog/{id}', [BlogController::class, 'SingleArticle']);
Route::post('newArticle', [BlogController::class, 'newarticle']);
