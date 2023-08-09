<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\Agent;

class agentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
           // Agent""
           'id'=>$this->id,
            'name'=>$this->name,
            'email'=>$this->email,
            'image'=>$this->image,
            'phone'=>$this->phone,
            'post'=>$this->post,
            'details'=>$this->details,
            
        ];
    }
}
