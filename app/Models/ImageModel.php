<?php

namespace App\Models;

use CodeIgniter\Model;

class ImageModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'image_tb';
	protected $primaryKey           = 'image_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function imageProject($id = null){
		return $this->where('project_id', $id)->first();
	}

	public function imagePartners($id = null){
		return $this->where('partners_id', $id)->first();
	}

	public function imageMember($id = null){
		return $this->where('member_id', $id)->first();
	}
}
