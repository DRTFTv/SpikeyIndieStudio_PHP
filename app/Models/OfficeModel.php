<?php

namespace App\Models;

use CodeIgniter\Model;

class OfficeModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'office_tb';
	protected $primaryKey           = 'office_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function office(){
		return $this->findAll();
	}

	public function memberOffice($id)
	{
		$db = db_connect();
		$builder = $db->table('office_tb');
		$builder->distinct()
				->select('m.*')
				->from('member_tb AS m')
				->join('member_office_tb AS mo', 'mo.member_id = m.member_cd')
				->join('office_tb AS o', 'mo.office_id = o.office_cd')
				->where('o.office_cd', $id);
		$query = $builder->get();
		return $query->getResultArray();
	}
}
