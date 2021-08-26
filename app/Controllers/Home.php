<?php

namespace App\Controllers;

use App\Models\GameModel;
use App\Models\ImageModel;
use App\Models\MemberModel;
use App\Models\OfficeModel;
use App\Models\PartnersModel;
use App\Models\SocialMediaLinkModel;
use App\Models\TagModel;

class Home extends BaseController
{
	private $gameModel;
	private $imageModel;
	private $memberModel;
	private $officeModel;
	private $partnersModel;
	private $socialMediaLinkModel;
	private $tagModel;


	public function __construct()
	{
		$this->gameModel = new GameModel();
		$this->imageModel = new ImageModel();
		$this->memberModel = new MemberModel();
		$this->officeModel = new OfficeModel();
		$this->partnersModel = new PartnersModel();
		$this->socialMediaLinkModel = new SocialMediaLinkModel();
		$this->tagModel = new TagModel();
	}

	public function index()
	{
		return view('index', [
			//Game
			'game_tb' => $this->gameModel->game(),

			'imageGame' => function($id) {
				return $this->imageModel->imageGame($id);
			},

			'tagGame' => function($id) {
				return $this->gameModel->tagGame($id);
			},

			//Partners
			'partners_tb' => $this->partnersModel->partners(),

			'imagePartners' => function($id) {
				return $this->imageModel->imagePartners($id);
			},

			//Member
			'member_tb' => $this->memberModel->member(),

			'imageMember' => function($id) {
				return $this->imageModel->imageMember($id);
			},

			'officeMember' => function($id) {
				return $this->memberModel->officeMember($id);
			},

			//Tag
			'tag_tb' => $this->tagModel->tag(),

			'gameTag' => function($id) {
				return $this->tagModel->gameTag($id);
			},

			//Office
			'office_tb' => $this->officeModel->office(),

			'memberOffice' => function($id) {
				return $this->officeModel->memberOffice($id);
			},

			//SocialMediaLink
			'socialmedialink_tb' => function($id) {
				return $this->socialMediaLinkModel->socialmedialink($id);
			},

			'socialmedianame' => $this->socialMediaLinkModel->socialmedianame(),
		]);

	}
}
