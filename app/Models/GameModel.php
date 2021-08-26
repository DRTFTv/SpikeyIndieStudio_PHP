<?php

namespace App\Models;

use CodeIgniter\Database\MySQLi\Builder;
use CodeIgniter\Model;

class GameModel extends Model
{
	protected $DBGroup              = 'default';
	protected $table                = 'game_tb';
	protected $primaryKey           = 'game_cd';
	protected $useAutoIncrement     = true;
	protected $insertID             = 0;
	protected $returnType           = 'array';
	protected $useSoftDeletes       = false;
	protected $protectFields        = true;
	protected $allowedFields        = [];

	public function game(){
		return $this->findAll();
	}

	public function tagGame($id){
		$db = db_connect();
		$builder = $db->table('game_tb');
		$builder->distinct()
				->select('t.*')
				->from('tag_tb AS t')
				->join('game_tag_tb AS gt', 'gt.tag_id = t.tag_cd')
				->join('game_tb AS g', 'gt.game_id = g.game_cd')
				->where('g.game_cd', $id);
		$query = $builder->get();
		return $query->getResultArray();
	}
}
