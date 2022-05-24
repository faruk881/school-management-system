<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MenuPermission extends Model
{
	public function role()
	{
		return $this->hasOne(Role::class, 'role_id', 'id');
	}

	public function menu()
	{
		return $this->hasOne(Menu::class, 'menu_id', 'id');
	}
}
