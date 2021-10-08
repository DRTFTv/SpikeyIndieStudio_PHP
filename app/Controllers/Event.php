<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Event extends BaseController
{
	public function index()
	{
		return view('event');
	}
}
