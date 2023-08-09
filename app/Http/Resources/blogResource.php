<?php

namespace App\Http\Resources;

use App\Models\Blog;
use Illuminate\Http\Request;
use App\Http\Resources\agentResource;
use Illuminate\Http\Resources\Json\JsonResource;

class blogResource extends JsonResource
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
            'body'=>$this->body,
            'tag'=>$this->tag,
            'image'=>$this->image,
            'agent_id'=>new agentResource($this->agent),
        ];
    }
}
