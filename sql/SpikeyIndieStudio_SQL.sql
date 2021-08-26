CREATE DATABASE SIS_DataBase;

USE SIS_DataBase;

CREATE TABLE game_tb (
    game_cd INT AUTO_INCREMENT NOT NULL,
    game_nm VARCHAR(250) NOT NULL,
    game_ds VARCHAR(750),
    gameLink_ds VARCHAR(750),
    PRIMARY KEY (game_cd)
);

CREATE TABLE tag_tb (
	tag_cd INT AUTO_INCREMENT NOT NULL,
    tag_nm VARCHAR(75) NOT NULL,
    tag_ds VARCHAR(750),
    PRIMARY KEY (tag_cd)
);

CREATE TABLE game_tag_tb (
	game_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (game_id, tag_id),
    FOREIGN KEY (game_id) REFERENCES game_tb (game_cd) ON DELETE CASCADE,
	FOREIGN KEY (tag_id) REFERENCES tag_tb (tag_cd) ON DELETE CASCADE
);

CREATE TABLE partners_tb (
	partners_cd INT AUTO_INCREMENT NOT NULL,
    partners_nm VARCHAR(75) NOT NULL,
    partnersSince_dt DATE NOT NULL, 
    partners_ds VARCHAR(750), 
    partnersLink_ds VARCHAR(750),
    PRIMARY KEY (partners_cd)
);

CREATE TABLE member_tb (
	member_cd INT AUTO_INCREMENT NOT NULL,
    member_nm VARCHAR(250) NOT NULL,
    member_ds VARCHAR(750) NOT NULL,
    memberLink_ds VARCHAR(750),
    PRIMARY KEY (member_cd)
);

CREATE TABLE office_tb (
	office_cd INT AUTO_INCREMENT NOT NULL,
    office_nm VARCHAR(75) NOT NULL,
    office_ds VARCHAR(750),
    officeColor_ds CHAR(7),
    PRIMARY KEY (office_cd)
);

CREATE TABLE member_office_tb (
	member_id INT NOT NULL,
    office_id INT NOT NULL,
    PRIMARY KEY (member_id, office_id),
    FOREIGN KEY (member_id) REFERENCES member_tb (member_cd) ON DELETE CASCADE,
	FOREIGN KEY (office_id) REFERENCES office_tb (office_cd) ON DELETE CASCADE
);

CREATE TABLE socialMediaLink_tb (
	socialMediaLink_cd INT AUTO_INCREMENT NOT NULL,
	socialMediaLinkBehance_ds VARCHAR(250),
    socialMediaLinkGameJolt_ds VARCHAR(250),
    socialMediaLinkGitHub_ds VARCHAR(250),
    socialMediaLinkInstagram_ds VARCHAR(250),
    socialMediaLinkSoundCloud_ds VARCHAR(250),
    socialMediaLinkTwitch_ds VARCHAR(250),
    socialMediaLinkYoutube_ds VARCHAR(250),
	PRIMARY KEY (socialMediaLink_cd),
    member_id INT NOT NULL,
    FOREIGN KEY (member_id) REFERENCES member_tb (member_cd)
);

CREATE TABLE image_tb (
	image_cd INT AUTO_INCREMENT NOT NULL,
    image_ds VARCHAR(750) NOT NULL,
    PRIMARY KEY (image_cd),
	game_id INT,
	FOREIGN KEY (game_id) REFERENCES game_tb (game_cd),
    partners_id INT,
	FOREIGN KEY (partners_id) REFERENCES partners_tb (partners_cd),
    member_id INT,
	FOREIGN KEY (member_id) REFERENCES member_tb (member_cd)
);