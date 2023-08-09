<?php

namespace App\Models;

use App\Models\Property;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Location extends Model
{
    protected $table ='location';

    protected $fillable = [
        'location'
    ];

    public function property() {
        return $this->hasMany(Property::class, 'location_id');//, 'location_id'
    }
    use HasFactory;
}
