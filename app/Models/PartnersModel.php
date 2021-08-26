<?php

namespace App\Models;

use CodeIgniter\Model;

class PartnersModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'partners_tb';
	protected $primaryKey           = 'partners_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function partners(){
		return $this->findAll();
	}
}
