<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
	protected $fillable = ['name', 'slug', 'order_by', 'route'];

	public function hasPermission()
	{
		return $this->hasOne(MenuPermission::class, 'menu_id', 'id');
	}

	public static function getMenus()
	{
		$menus = static::whereNull('parent_id')
				->with('hasPermission')
				->whereHas('hasPermission', function($query) {
					$role_id = auth()->user()->role_id ?? 0;

					// print_r("<pre>");
					// print_r(auth()->user()->userRole->name);die();

					$query->where('role_id', $role_id);
				})
				->orderBy('order_by', 'asc')
				->get();

		foreach ($menus as &$menu) {
			$menu->childs = static::where('parent_id', $menu->id)
							->with('hasPermission')
							->whereHas('hasPermission', function($query) {
								$role_id = auth()->user()->role_id ?? 0;

								$query->where('role_id', $role_id);
							})
							->orderBy('order_by', 'asc')
							->get();
		}

		// print_r("<pre>");
		// print_r($menus);die();

		return $menus;
	}
}
