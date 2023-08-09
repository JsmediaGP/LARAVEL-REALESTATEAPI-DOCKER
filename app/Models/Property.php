<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Agent;
use App\Models\Location;

class Property extends Model
{
    protected $table = 'property';
    protected $fillable = [
       'title',
       'address',
       'price',
        'description',
       'bedspace',
       'baths',
       'parking_space',
       'measurement',
       'image',
       'availability',
       'agent_id',
       'location_id',
        
    ];

    
    use HasFactory;
    //each property belongs to a particular agent
    public function agent(){
        return $this->belongsTo(Agent::class, 'agent_id');//,'agent_id'
    }
    public function location(){
        return $this->belongsTo(Location::class, 'location_id');//,'location_id'
    }
    
    
}
