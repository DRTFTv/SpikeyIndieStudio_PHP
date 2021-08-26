<?php

namespace App\Models;

use CodeIgniter\Model;

class MemberModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'member_tb';
	protected $primaryKey           = 'member_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function member(){
		return $this->findAll();
	}

	public function officeMember($id){
		$db = db_connect();
		$builder = $db->table('member_tb');
		$builder->distinct()
				->select('o.*')
				->from('office_tb AS o')
				->join('member_office_tb AS mo', 'mo.office_id = o.office_cd')
				->join('member_tb AS m', 'mo.member_id = m.member_cd')
				->where('m.member_cd', $id);
		$query = $builder->get();
		return $query->getResultArray();
	}
}
