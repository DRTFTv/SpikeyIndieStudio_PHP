<?php

namespace App\Models;

use CodeIgniter\Database\MySQLi\Builder;
use CodeIgniter\Model;

class ProjectModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'project_tb';
	protected $primaryKey           = 'project_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function project(){
		return $this->findAll();
	}

	public function tagProject($id){
		$db = db_connect();
		$builder = $db->table('project_tb');
		$builder->distinct()
				->select('t.*')
				->from('tag_tb AS t')
				->join('project_tag_tb AS gt', 'gt.tag_id = t.tag_cd')
				->join('project_tb AS g', 'gt.project_id = g.project_cd')
				->where('g.project_cd', $id);
		$query = $builder->get();
		return $query->getResultArray();
	}
}
