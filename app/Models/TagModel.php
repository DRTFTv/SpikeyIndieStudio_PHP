<?php

namespace App\Models;

use CodeIgniter\Model;

class TagModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'tag_tb';
	protected $primaryKey           = 'tag_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function tag(){
		return $this->findAll();
	}

	public function gameTag($id){
		$db = db_connect();
		$builder = $db->table('tag_tb');
		$builder->distinct()
				->select('g.*')
				->from('game_tb AS g')
				->join('game_tag_tb AS gt', 'gt.game_id = g.game_cd')
				->join('tag_tb AS t', 'gt.tag_id = t.tag_cd')
				->where('t.tag_cd', $id);
		$query = $builder->get();
		return $query->getResultArray();
	}
}
