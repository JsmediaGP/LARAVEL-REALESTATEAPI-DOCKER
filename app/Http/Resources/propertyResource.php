<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\locationResource;
use App\Http\Resources\agentResource;

class propertyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'address'=>$this->address,
            'price'=>$this->price,
            'description'=>$this->description,
            'bedspace'=>$this->bedspace,
            'baths'=>$this->baths,
            'parking_space'=>$this->parking_space,
            'measurement'=>$this->measurement,
            'image'=>$this->image,
            'availability'=>$this->availability,
            'agent_id'=>new agentResource($this->agent),
            'location_id'=>new locationResource($this->location),

        ];
    }
}
