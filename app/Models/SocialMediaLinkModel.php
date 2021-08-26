<?php

namespace App\Models;

use CodeIgniter\Model;

class SocialMediaLinkModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'socialMediaLink_tb';
	protected $primaryKey           = 'socialMediaLink_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function socialmedialink($id){
		return $this->where('member_id', $id)->findAll();
	}

	public function socialmedianame(){
		return array_diff($this->getFieldNames($this->table), ['socialMediaLink_cd', 'member_id']);
	}
}
