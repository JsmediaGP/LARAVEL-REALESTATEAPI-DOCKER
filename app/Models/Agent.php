<?php

namespace App\Models;

use App\Models\Blog;
use App\Models\Property;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Agent extends Model
{
    protected $table = 'agent';
    protected $fillable = [
        'name',
        'email',
        'phone',
        'post',
        'image',
        'details',
    ];
    use HasFactory;
    //agents has many properties they handle
    public function property() {
        return $this->hasMany(Property::class, 'agent_id');//, 'agent_id'
    }

    public function blog() {
        return $this->hasMany(Blog::class, 'agent_id');//, 'agent_id'
    }
    use HasFactory;
}
