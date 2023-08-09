<?php

namespace App\Models;

use App\Models\Agent;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Blog extends Model
{
    protected $table = 'blog';
    protected $fillable = [
        'title',
        'body',
        'tag',
        'image',
        'agent_id',
    ];
    use HasFactory;

    public function agent(){
        return $this->belongsTo(Agent::class, 'agent_id');//,'agent_id'
    }
}
