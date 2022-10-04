<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\User;
use App\Models\Task;
class TaskFactory extends Factory
{

       protected $model = Task::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
       return [
            'user_id' => User::inRandomOrder()->first()->id,
            'name'  => $this->faker->name,
            'description' => $this->faker->paragraph,
            

        ];
    }
}
