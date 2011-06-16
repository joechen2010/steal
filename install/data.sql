DROP TABLE IF EXISTS qb_members;
CREATE TABLE `qb_members` (
  `uid` mediumint(7) unsigned NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_memberdata;
CREATE TABLE `qb_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(50) NOT NULL default '',
  `qq_api` varchar(32) NOT NULL default '',
  `question` varchar(32) NOT NULL default '',
  `groupid` smallint(4) NOT NULL default '0',
  `grouptype` tinyint(1) NOT NULL default '0',
  `groups` varchar(255) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  `newpm` tinyint(1) NOT NULL default '0',
  `medals` varchar(255) NOT NULL default '',
  `money` mediumint(7) unsigned NOT NULL default '0',
  `totalspace` bigint(13) NOT NULL default '0',
  `usespace` bigint(13) NOT NULL default '0',
  `oltime` int(10) NOT NULL default '0',
  `lastvist` int(10) NOT NULL default '0',
  `lastip` varchar(15) NOT NULL default '',
  `regdate` int(10) NOT NULL default '0',
  `regip` varchar(15) NOT NULL default '',
  `sex` tinyint(1) NOT NULL default '0',
  `bday` date NOT NULL default '0000-00-00',
  `icon` varchar(150) NOT NULL default '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL default '0',
  `lastview` int(10) NOT NULL default '0',
  `oicq` varchar(11) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `homepage` varchar(150) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `provinceid` mediumint(6) NOT NULL default '0',
  `cityid` mediumint(7) NOT NULL default '0',
  `address` varchar(255) NOT NULL default '',
  `postalcode` varchar(6) NOT NULL default '',
  `mobphone` varchar(12) NOT NULL default '',
  `telephone` varchar(25) NOT NULL default '',
  `idcard` varchar(20) NOT NULL default '',
  `truename` varchar(20) NOT NULL default '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL default '0',
  `email_yz` tinyint(1) NOT NULL default '0',
  `mob_yz` tinyint(1) NOT NULL default '0',
  `idcard_yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`),
  KEY `qq_api` (`qq_api`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_group;
CREATE TABLE `qb_group` (
  `gid` smallint(4) NOT NULL auto_increment,
  `gptype` tinyint(1) NOT NULL default '0',
  `grouptitle` varchar(50) NOT NULL default '',
  `levelnum` mediumint(7) NOT NULL default '0',
  `totalspace` int(10) NOT NULL default '0',
  `allowsearch` tinyint(1) NOT NULL default '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL default '0',
  `allowadmindb` text,
  PRIMARY KEY  (`gid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_menu;
CREATE TABLE `qb_menu` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` varchar(80) NOT NULL default '',
  `linkurl` varchar(150) NOT NULL default '',
  `color` varchar(15) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `moduleid` tinyint(2) NOT NULL default '0',
  `type` tinyint(2) NOT NULL default '0',
  `hide` tinyint(1) NOT NULL default '0',
  `list` smallint(4) NOT NULL default '0',
  `extend` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_admin_menu;
CREATE TABLE `qb_admin_menu` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL default '',
  `color` varchar(15) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `list` smallint(4) NOT NULL default '0',
  `groupid` mediumint(5) NOT NULL default '0',
  `iftier` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_module;
CREATE TABLE `qb_module` (
  `id` mediumint(5) NOT NULL auto_increment,
  `type` tinyint(1) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `pre` varchar(20) NOT NULL default '',
  `dirname` varchar(30) NOT NULL default '',
  `domain` varchar(100) NOT NULL default '',
  `admindir` varchar(20) NOT NULL default '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL default '0',
  `admingroup` varchar(150) NOT NULL default '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL default '0',
  `ifsys` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_alonepage;
CREATE TABLE `qb_alonepage` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `style` varchar(15) NOT NULL default '',
  `tpl_head` varchar(50) NOT NULL default '',
  `tpl_main` varchar(50) NOT NULL default '',
  `tpl_foot` varchar(50) NOT NULL default '',
  `filename` varchar(100) default NULL,
  `filepath` varchar(30) NOT NULL default '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL default '0',
  `ishtml` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_config;
CREATE TABLE `qb_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hack;
CREATE TABLE `qb_hack` (
  `keywords` varchar(30) NOT NULL default '',
  `name` varchar(30) NOT NULL default '',
  `isclose` tinyint(1) NOT NULL default '0',
  `author` varchar(30) NOT NULL default '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL default '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL default '',
  `class2` varchar(30) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL default '0',
  UNIQUE KEY `keywords` (`keywords`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_label;
CREATE TABLE `qb_label` (
  `lid` int(10) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `ch` smallint(4) NOT NULL default '0',
  `chtype` tinyint(2) NOT NULL default '0',
  `tag` varchar(50) NOT NULL default '',
  `type` varchar(30) NOT NULL default '',
  `typesystem` tinyint(1) NOT NULL default '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL default '0',
  `js_time` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `pagetype` tinyint(3) NOT NULL default '0',
  `module` mediumint(6) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `if_js` tinyint(1) NOT NULL default '0',
  `style` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_form_config;
CREATE TABLE `qb_form_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_form_content;
CREATE TABLE `qb_form_content` (
  `id` mediumint(7) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `hits` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` varchar(10) NOT NULL default '',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `hits` (`hits`,`yz`),
  KEY `list` (`list`,`yz`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_form_content_1;
CREATE TABLE `qb_form_content_1` (
  `id` mediumint(7) unsigned NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `truename` varchar(20) NOT NULL default '',
  `sex` int(1) NOT NULL default '0',
  `oicq` varchar(10) NOT NULL default '',
  `mobphone` varchar(11) NOT NULL default '',
  `interest` mediumtext NOT NULL,
  `introduce` mediumtext NOT NULL,
  `sortname` varchar(40) NOT NULL default '',
  `webtime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_form_content_3;
CREATE TABLE `qb_form_content_3` (
  `id` mediumint(7) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `advicetype` varchar(30) NOT NULL default '',
  `content` mediumtext NOT NULL,
  `truename` varchar(15) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `mobphone` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_form_module;
CREATE TABLE `qb_form_module` (
  `id` smallint(4) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `list` smallint(4) NOT NULL default '0',
  `style` varchar(50) NOT NULL default '',
  `config` mediumtext NOT NULL,
  `allowpost` varchar(255) NOT NULL default '',
  `endtime` int(10) NOT NULL default '0',
  `about` text NOT NULL,
  `usetitle` tinyint(1) NOT NULL default '0',
  `repeatpost` tinyint(1) NOT NULL default '0',
  `statename` varchar(30) NOT NULL default '',
  `allowview` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_form_reply;
CREATE TABLE `qb_form_reply` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `mid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`rid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_friendlink;
CREATE TABLE `qb_friendlink` (
  `id` mediumint(5) NOT NULL auto_increment,
  `fid` int(7) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `url` varchar(150) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` varchar(255) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `ifhide` tinyint(1) NOT NULL default '0',
  `iswordlink` tinyint(1) default NULL,
  `hits` tinyint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` int(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '1',
  `endtime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_friendlink_sort;
CREATE TABLE `qb_friendlink_sort` (
  `fid` mediumint(7) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_pm;
CREATE TABLE `qb_pm` (
  `mid` int(10) unsigned NOT NULL auto_increment,
  `touid` mediumint(8) unsigned NOT NULL default '0',
  `togroups` varchar(80) NOT NULL default '',
  `fromuid` mediumint(8) unsigned NOT NULL default '0',
  `username` varchar(15) NOT NULL default '',
  `type` enum('rebox','sebox','public') NOT NULL default 'rebox',
  `ifnew` tinyint(1) NOT NULL default '0',
  `title` varchar(130) NOT NULL default '',
  `mdate` int(10) unsigned NOT NULL default '0',
  `content` text NOT NULL,
  PRIMARY KEY  (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_guestbook_content;
CREATE TABLE `qb_guestbook_content` (
  `id` int(7) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `ico` tinyint(2) NOT NULL default '0',
  `email` varchar(50) NOT NULL default '',
  `oicq` varchar(11) default NULL,
  `weburl` varchar(150) NOT NULL default '',
  `blogurl` varchar(150) NOT NULL default '',
  `uid` int(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `reply` text NOT NULL,
  `mobphone` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_guestbook_sort;
CREATE TABLE `qb_guestbook_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metatitle` varchar(250) NOT NULL default '',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL default '0',
  `contents` mediumint(4) NOT NULL default '0',
  `tableid` varchar(30) NOT NULL default '',
  `dir_name` varchar(50) NOT NULL default '',
  `ifcolor` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_guestbook_config;
CREATE TABLE `qb_guestbook_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_limitword;
CREATE TABLE `qb_limitword` (
  `id` int(5) NOT NULL auto_increment,
  `oldword` varchar(50) NOT NULL default '',
  `newword` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_norm_place;
CREATE TABLE `qb_ad_norm_place` (
  `id` mediumint(7) NOT NULL auto_increment,
  `keywords` varchar(50) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `type` varchar(30) NOT NULL default '0',
  `isclose` tinyint(1) NOT NULL default '0',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `adcode` text NOT NULL,
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `hits` mediumint(7) NOT NULL default '0',
  `money` mediumint(6) NOT NULL default '0',
  `moneycard` mediumint(6) NOT NULL default '0',
  `ifsale` tinyint(1) NOT NULL default '0',
  `autoyz` tinyint(1) NOT NULL default '0',
  `demourl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_norm_user;
CREATE TABLE `qb_ad_norm_user` (
  `u_id` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `u_uid` mediumint(7) NOT NULL default '0',
  `u_username` varchar(30) NOT NULL default '',
  `u_day` smallint(4) NOT NULL default '0',
  `u_begintime` int(10) NOT NULL default '0',
  `u_endtime` int(10) NOT NULL default '0',
  `u_hits` mediumint(7) NOT NULL default '0',
  `u_yz` tinyint(1) NOT NULL default '0',
  `u_code` text NOT NULL,
  `u_money` mediumint(7) NOT NULL default '0',
  `u_moneycard` mediumint(7) NOT NULL default '0',
  `u_posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`u_id`),
  KEY `u_endtime` (`u_endtime`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_config;
CREATE TABLE `qb_ad_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_compete_place;
CREATE TABLE `qb_ad_compete_place` (
  `id` mediumint(7) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `isclose` tinyint(1) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `price` mediumint(5) NOT NULL default '0',
  `day` mediumint(4) NOT NULL default '0',
  `adnum` smallint(3) NOT NULL default '0',
  `wordnum` smallint(3) NOT NULL default '0',
  `autoyz` tinyint(1) NOT NULL default '1',
  `demourl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_ad_compete_user;
CREATE TABLE `qb_ad_compete_user` (
  `ad_id` mediumint(7) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `money` mediumint(6) NOT NULL default '0',
  `id` mediumint(7) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '1',
  `adlink` varchar(200) NOT NULL default '',
  `adword` varchar(255) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  `color` varchar(20) NOT NULL default '',
  `fonttype` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`ad_id`),
  KEY `id` (`id`,`endtime`,`money`,`yz`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_upfile;
CREATE TABLE `qb_upfile` (
  `up_id` mediumint(7) NOT NULL auto_increment,
  `module_id` smallint(4) NOT NULL default '0',
  `ids` varchar(255) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `url` varchar(150) NOT NULL default '',
  `filename` varchar(100) NOT NULL default '',
  `num` smallint(5) NOT NULL default '0',
  `if_tmp` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_vote_element;
CREATE TABLE `qb_vote_element` (
  `id` int(7) NOT NULL auto_increment,
  `cid` int(7) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `votenum` int(7) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `img` varchar(100) NOT NULL default '',
  `describes` varchar(255) NOT NULL default '',
  `url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_vote_comment;
CREATE TABLE `qb_vote_comment` (
  `id` mediumint(7) unsigned NOT NULL auto_increment,
  `cid` mediumint(7) unsigned NOT NULL default '0',
  `vid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_vote_topic;
CREATE TABLE `qb_vote_topic` (
  `cid` int(7) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `about` text NOT NULL,
  `type` tinyint(4) NOT NULL default '0',
  `limittime` int(10) NOT NULL default '0',
  `limitip` tinyint(1) NOT NULL default '0',
  `ip` text NOT NULL,
  `posttime` int(10) NOT NULL default '0',
  `user` text NOT NULL,
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `forbidguestvote` tinyint(1) NOT NULL default '0',
  `ifcomment` tinyint(1) NOT NULL default '0',
  `tplcode` text NOT NULL,
  `votetype` tinyint(2) NOT NULL default '0',
  `aid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`cid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_vote_config;
CREATE TABLE `qb_vote_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_area;
CREATE TABLE `qb_area` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_jfabout;
CREATE TABLE `qb_jfabout` (
  `id` mediumint(7) NOT NULL auto_increment,
  `fid` mediumint(5) NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_jfsort;
CREATE TABLE `qb_jfsort` (
  `fid` mediumint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_moneycard;
CREATE TABLE `qb_moneycard` (
  `id` mediumint(7) NOT NULL auto_increment,
  `passwd` varchar(32) NOT NULL default '',
  `moneyrmb` int(7) NOT NULL default '0',
  `moneycard` int(7) NOT NULL default '0',
  `ifsell` tinyint(1) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_olpay;
CREATE TABLE `qb_olpay` (
  `id` mediumint(7) NOT NULL auto_increment,
  `orderid` int(10) NOT NULL default '0',
  `numcode` varchar(32) NOT NULL default '',
  `money` varchar(15) NOT NULL default '0',
  `ifpay` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `paytype` tinyint(3) NOT NULL default '0',
  `moduleid` mediumint(5) NOT NULL default '0',
  `formid` mediumint(5) NOT NULL default '0',
  `banktype` varchar(15) NOT NULL default '',
  `articleid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_propagandize;
CREATE TABLE `qb_propagandize` (
  `id` int(10) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `ip` bigint(11) NOT NULL default '0',
  `day` smallint(3) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `fromurl` varchar(150) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_template;
CREATE TABLE `qb_template` (
  `id` mediumint(5) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `type` smallint(4) NOT NULL default '0',
  `filepath` varchar(100) NOT NULL default '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_template_bak;
CREATE TABLE `qb_template_bak` (
  `bid` int(7) NOT NULL auto_increment,
  `id` int(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `code` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `id` (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_crontab;
CREATE TABLE `qb_crontab` (
  `id` mediumint(7) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `minutetime` mediumint(4) NOT NULL default '0',
  `daytime` varchar(4) NOT NULL default '0',
  `whiletime` int(10) NOT NULL default '0',
  `lasttime` int(10) NOT NULL default '0',
  `filepath` varchar(50) NOT NULL default '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `ifstop` (`ifstop`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_moneylog;
CREATE TABLE `qb_moneylog` (
  `id` mediumint(7) NOT NULL auto_increment,
  `uid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `about` varchar(255) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_yzimg;
CREATE TABLE `qb_yzimg` (
  `sid` varchar(8) NOT NULL default '',
  `imgnum` varchar(6) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) TYPE=HEAP;


DROP TABLE IF EXISTS qb_buy_collection;
CREATE TABLE `qb_buy_collection` (
  `cid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`cid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_comments;
CREATE TABLE `qb_buy_comments` (
  `cid` mediumint(7) unsigned NOT NULL auto_increment,
  `cuid` int(7) NOT NULL default '0',
  `type` tinyint(2) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL default '0',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `flowers` smallint(4) NOT NULL default '0',
  `egg` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `type` (`type`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_config;
CREATE TABLE `qb_buy_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_content;
CREATE TABLE `qb_buy_content` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `fname` varchar(50) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  `comments` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` varchar(10) NOT NULL default '',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `picurl` varchar(150) NOT NULL default '',
  `ispic` tinyint(1) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `levels` tinyint(2) NOT NULL default '0',
  `levelstime` int(10) NOT NULL default '0',
  `keywords` varchar(100) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `lastfid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `lastview` int(10) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  `picnum` smallint(4) NOT NULL default '0',
  `price` double NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_content_1;
CREATE TABLE `qb_buy_content_1` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `my_units` varchar(10) NOT NULL default '',
  `order_num` int(7) NOT NULL default '0',
  `end_day` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_content_2;
CREATE TABLE `qb_buy_content_2` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `ask_username` varchar(20) NOT NULL default '',
  `ask_phone` varchar(20) NOT NULL default '',
  `ask_mobphone` varchar(15) NOT NULL default '',
  `ask_email` varchar(50) NOT NULL default '',
  `ask_qq` varchar(11) NOT NULL default '',
  `ask_title` varchar(100) NOT NULL default '',
  `order_num` int(6) NOT NULL default '0',
  `sell_price` varchar(20) NOT NULL default '',
  `hope_reply` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_db;
CREATE TABLE `qb_buy_db` (
  `id` int(10) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_field;
CREATE TABLE `qb_buy_field` (
  `id` mediumint(7) NOT NULL auto_increment,
  `mid` mediumint(5) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `field_name` varchar(30) NOT NULL default '',
  `field_type` varchar(15) NOT NULL default '',
  `field_leng` smallint(3) NOT NULL default '0',
  `orderlist` int(10) NOT NULL default '0',
  `form_type` varchar(15) NOT NULL default '',
  `field_inputwidth` smallint(3) default NULL,
  `field_inputheight` smallint(3) NOT NULL default '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` text NOT NULL,
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL default '0',
  `listshow` tinyint(1) NOT NULL default '0',
  `listfilter` tinyint(1) default NULL,
  `search` tinyint(1) NOT NULL default '0',
  `allowview` varchar(255) NOT NULL default '',
  `allowpost` varchar(255) NOT NULL default '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL default '',
  `classid` mediumint(7) NOT NULL default '0',
  `form_js` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_join;
CREATE TABLE `qb_buy_join` (
  `id` mediumint(7) NOT NULL auto_increment,
  `mid` smallint(4) NOT NULL default '0',
  `cid` mediumint(7) NOT NULL default '0',
  `cuid` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mid` (`mid`),
  KEY `fid` (`fid`,`cid`),
  KEY `yz` (`yz`,`fid`,`mid`,`cid`),
  KEY `cuid` (`cuid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_module;
CREATE TABLE `qb_buy_module` (
  `id` smallint(4) NOT NULL auto_increment,
  `sort_id` mediumint(5) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `list` smallint(4) NOT NULL default '0',
  `style` varchar(50) NOT NULL default '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL default '0',
  `ifdp` tinyint(1) NOT NULL default '0',
  `template` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_pic;
CREATE TABLE `qb_buy_pic` (
  `pid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `mid` smallint(4) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `imgurl` varchar(150) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_report;
CREATE TABLE `qb_buy_report` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `onlineip` varchar(15) NOT NULL default '',
  `type` tinyint(2) NOT NULL default '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`rid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_buy_sort;
CREATE TABLE `qb_buy_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metatitle` varchar(250) NOT NULL default '',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL default '0',
  `contents` mediumint(4) NOT NULL default '0',
  `tableid` varchar(30) NOT NULL default '',
  `dir_name` varchar(50) NOT NULL default '',
  `ifcolor` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_company;
CREATE TABLE `qb_hy_company` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL default '',
  `host` varchar(32) NOT NULL default '',
  `fname` varchar(100) NOT NULL default '',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `renzheng` tinyint(1) NOT NULL default '0',
  `is_agent` tinyint(1) NOT NULL default '0',
  `is_vip` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `listorder` int(10) NOT NULL default '0',
  `picurl` varchar(255) NOT NULL default '',
  `gz` varchar(248) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  `yzer` varchar(32) NOT NULL default '',
  `yztime` int(10) NOT NULL default '0',
  `hits` int(10) NOT NULL default '0',
  `levels` tinyint(2) NOT NULL default '0',
  `levelstime` int(10) NOT NULL default '0',
  `lastview` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `province_id` mediumint(7) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  `zone_id` mediumint(7) NOT NULL default '0',
  `street_id` mediumint(7) NOT NULL default '0',
  `qy_cate` varchar(32) NOT NULL default '',
  `qy_saletype` varchar(48) NOT NULL default '',
  `qy_regmoney` int(10) NOT NULL default '0',
  `qy_createtime` varchar(64) NOT NULL default '',
  `qy_regplace` varchar(128) NOT NULL default '',
  `qy_address` varchar(248) NOT NULL default '',
  `qy_postnum` varchar(8) NOT NULL default '',
  `qy_pro_ser` varchar(248) NOT NULL default '',
  `my_buy` varchar(248) NOT NULL default '',
  `my_trade` varchar(32) NOT NULL default '',
  `qy_contact` varchar(16) NOT NULL default '',
  `qy_contact_zhiwei` varchar(16) NOT NULL default '',
  `qy_contact_sex` int(1) NOT NULL default '1',
  `qy_contact_tel` varchar(248) NOT NULL default '',
  `qy_contact_mobile` varchar(248) NOT NULL default '',
  `qy_contact_fax` varchar(248) NOT NULL default '',
  `qy_contact_email` varchar(248) NOT NULL default '',
  `qy_website` varchar(248) NOT NULL default '',
  `qq` varchar(248) NOT NULL default '',
  `msn` varchar(248) NOT NULL default '',
  `skype` varchar(248) NOT NULL default '',
  `ww` varchar(248) NOT NULL default '',
  `bd_pics` varchar(248) NOT NULL default '',
  `toptime` int(10) NOT NULL default '0',
  `if_homepage` tinyint(4) NOT NULL default '0',
  `permit_pic` varchar(100) NOT NULL default '',
  `guo_tax_pic` varchar(100) NOT NULL default '',
  `di_tax_pic` varchar(100) NOT NULL default '',
  `organization_pic` varchar(100) NOT NULL default '',
  `idcard_pic` varchar(100) NOT NULL default '',
  `gg_maps` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`,`posttime`),
  KEY `yz` (`yz`,`posttime`),
  KEY `toptime` (`toptime`),
  KEY `city_id` (`city_id`,`levels`,`levelstime`),
  KEY `renzheng` (`renzheng`),
  KEY `host` (`host`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_company_fid;
CREATE TABLE `qb_hy_company_fid` (
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_config;
CREATE TABLE `qb_hy_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_friendlink;
CREATE TABLE `qb_hy_friendlink` (
  `ck_id` int(10) unsigned NOT NULL auto_increment,
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(16) NOT NULL default '',
  `companyName` varchar(64) NOT NULL default '',
  `title` varchar(128) NOT NULL default '',
  `url` varchar(248) NOT NULL default '',
  `description` text NOT NULL,
  `yz` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`ck_id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_guestbook;
CREATE TABLE `qb_hy_guestbook` (
  `id` int(7) NOT NULL auto_increment,
  `cuid` mediumint(7) NOT NULL default '0',
  `uid` int(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL default '0',
  `posttime` int(16) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `uid` (`uid`),
  KEY `cuid` (`cuid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_home;
CREATE TABLE `qb_hy_home` (
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `style` varchar(32) NOT NULL default '',
  `index_left` varchar(248) NOT NULL default '',
  `index_right` varchar(248) NOT NULL default '',
  `listnum` text NOT NULL,
  `banner` varchar(248) NOT NULL default '',
  `bodytpl` varchar(8) NOT NULL default 'left',
  `renzheng_show` tinyint(1) NOT NULL default '0',
  `visitor` text NOT NULL,
  `hits` mediumint(7) NOT NULL default '0',
  `head_menu` text NOT NULL,
  `gg_maps` varchar(255) NOT NULL default '',
  UNIQUE KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_news;
CREATE TABLE `qb_hy_news` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `title` varchar(150) NOT NULL default '',
  `content` text NOT NULL,
  `hits` mediumint(7) NOT NULL default '0',
  `posttime` int(10) unsigned NOT NULL default '0',
  `list` int(10) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `fonttype` tinyint(1) NOT NULL default '0',
  `picurl` varchar(150) NOT NULL default '',
  `ispic` tinyint(1) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `levels` tinyint(1) NOT NULL default '0',
  `keywords` varchar(100) NOT NULL default '',
  `bd_pics` varchar(248) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `rid` (`posttime`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_pic;
CREATE TABLE `qb_hy_pic` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `psid` int(10) unsigned NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(32) NOT NULL default '',
  `title` varchar(128) NOT NULL default '',
  `url` varchar(248) NOT NULL default '',
  `level` tinyint(1) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `posttime` int(10) unsigned NOT NULL default '0',
  `isfm` tinyint(1) NOT NULL default '0',
  `orderlist` mediumint(5) NOT NULL default '0',
  `type` varchar(8) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_picsort;
CREATE TABLE `qb_hy_picsort` (
  `psid` int(10) unsigned NOT NULL auto_increment,
  `psup` int(10) unsigned NOT NULL default '0',
  `name` varchar(16) NOT NULL default '',
  `remarks` varchar(248) NOT NULL default '',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(16) NOT NULL default '',
  `level` tinyint(1) NOT NULL default '0',
  `posttime` int(10) unsigned NOT NULL default '0',
  `orderlist` mediumint(4) unsigned NOT NULL default '0',
  `faceurl` varchar(248) NOT NULL default '',
  PRIMARY KEY  (`psid`),
  KEY `uid` (`uid`,`orderlist`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_hy_sort;
CREATE TABLE `qb_hy_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metatitle` varchar(250) NOT NULL default '',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL default '0',
  `contents` mediumint(4) NOT NULL default '0',
  `tableid` varchar(30) NOT NULL default '',
  `dir_name` varchar(50) NOT NULL default '',
  `ifcolor` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_news_comments;
CREATE TABLE `qb_news_comments` (
  `cid` mediumint(7) unsigned NOT NULL auto_increment,
  `id` int(10) unsigned NOT NULL default '0',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `cuid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `ifcom` tinyint(1) NOT NULL default '0',
  `agree` mediumint(5) NOT NULL default '0',
  `disagree` mediumint(5) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `aid` (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `ifcom` (`ifcom`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_news_config;
CREATE TABLE `qb_news_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_news_content;
CREATE TABLE `qb_news_content` (
  `id` mediumint(7) unsigned NOT NULL auto_increment,
  `title` varchar(150) NOT NULL default '',
  `smalltitle` varchar(100) NOT NULL default '',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `mid` mediumint(5) NOT NULL default '0',
  `fname` varchar(50) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  `pages` smallint(4) NOT NULL default '0',
  `comments` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `author` varchar(30) NOT NULL default '',
  `copyfrom` varchar(100) NOT NULL default '',
  `copyfromurl` varchar(150) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `fonttype` tinyint(1) NOT NULL default '0',
  `picurl` varchar(150) NOT NULL default '0',
  `ispic` tinyint(1) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `yzer` varchar(30) NOT NULL default '',
  `yztime` int(10) NOT NULL default '0',
  `levels` tinyint(2) NOT NULL default '0',
  `levelstime` int(10) NOT NULL default '0',
  `keywords` varchar(100) NOT NULL default '',
  `jumpurl` varchar(150) NOT NULL default '',
  `iframeurl` varchar(150) NOT NULL default '',
  `style` varchar(15) NOT NULL default '',
  `template` varchar(255) NOT NULL default '',
  `target` tinyint(1) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  `lastfid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `buyuser` text NOT NULL,
  `passwd` varchar(32) NOT NULL default '',
  `allowdown` varchar(150) NOT NULL default '',
  `allowview` varchar(150) NOT NULL default '',
  `editer` varchar(30) NOT NULL default '',
  `edittime` int(10) NOT NULL default '0',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `description` text NOT NULL,
  `lastview` int(10) NOT NULL default '0',
  `digg_num` mediumint(7) NOT NULL default '0',
  `digg_time` int(10) NOT NULL default '0',
  `forbidcomment` tinyint(1) NOT NULL default '0',
  `ifvote` tinyint(1) NOT NULL default '0',
  `heart` varchar(255) NOT NULL default '',
  `htmlname` varchar(100) NOT NULL default '',
  `city_id` int(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `hits` (`hits`,`yz`,`fid`,`ispic`),
  KEY `list` (`list`,`yz`,`fid`,`ispic`),
  KEY `ispic` (`ispic`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `digg_num` (`digg_num`),
  KEY `digg_time` (`digg_time`),
  KEY `mid` (`mid`),
  KEY `posttime` (`yz`,`posttime`,`fid`,`ispic`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_news_content_1;
CREATE TABLE `qb_news_content_1` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `subhead` varchar(150) NOT NULL default '',
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `topic` tinyint(1) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `orderid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`rid`),
  KEY `aid` (`id`,`topic`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_news_sort;
CREATE TABLE `qb_news_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `mid` mediumint(5) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL default '',
  `bencandy_html` varchar(255) NOT NULL default '',
  `domain` varchar(150) NOT NULL default '',
  `domain_dir` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`mid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_regnum;
CREATE TABLE `qb_regnum` (
  `sid` varchar(8) NOT NULL default '',
  `num` varchar(6) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) TYPE=HEAP;


DROP TABLE IF EXISTS qb_sell_collection;
CREATE TABLE `qb_sell_collection` (
  `cid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  PRIMARY KEY  (`cid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_comments;
CREATE TABLE `qb_sell_comments` (
  `cid` mediumint(7) unsigned NOT NULL auto_increment,
  `cuid` int(7) NOT NULL default '0',
  `type` tinyint(2) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL default '0',
  `fid` mediumint(7) unsigned NOT NULL default '0',
  `uid` mediumint(7) unsigned NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL default '',
  `icon` tinyint(3) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `flowers` smallint(4) NOT NULL default '0',
  `egg` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  KEY `type` (`type`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_config;
CREATE TABLE `qb_sell_config` (
  `c_key` varchar(50) NOT NULL default '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY  (`c_key`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_content;
CREATE TABLE `qb_sell_content` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `fname` varchar(50) NOT NULL default '',
  `hits` mediumint(7) NOT NULL default '0',
  `comments` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` varchar(10) NOT NULL default '',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `titlecolor` varchar(15) NOT NULL default '',
  `picurl` varchar(150) NOT NULL default '',
  `ispic` tinyint(1) NOT NULL default '0',
  `yz` tinyint(1) NOT NULL default '0',
  `levels` tinyint(2) NOT NULL default '0',
  `levelstime` int(10) NOT NULL default '0',
  `keywords` varchar(100) NOT NULL default '',
  `ip` varchar(15) NOT NULL default '',
  `lastfid` mediumint(7) NOT NULL default '0',
  `money` mediumint(7) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `begintime` int(10) NOT NULL default '0',
  `endtime` int(10) NOT NULL default '0',
  `lastview` int(10) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  `picnum` smallint(4) NOT NULL default '0',
  `price` double NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_content_1;
CREATE TABLE `qb_sell_content_1` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `shoptype` varchar(50) NOT NULL default '',
  `my_units` varchar(10) NOT NULL default '',
  `order_min` int(7) NOT NULL default '0',
  `order_max` varchar(7) NOT NULL default '',
  `send_day` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_content_2;
CREATE TABLE `qb_sell_content_2` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` int(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `ask_username` varchar(20) NOT NULL default '',
  `ask_phone` varchar(20) NOT NULL default '',
  `ask_mobphone` varchar(15) NOT NULL default '',
  `ask_email` varchar(50) NOT NULL default '',
  `ask_qq` varchar(11) NOT NULL default '',
  `ask_title` varchar(100) NOT NULL default '',
  `order_num` int(6) NOT NULL default '0',
  `hope_price` varchar(20) NOT NULL default '',
  `hope_know` varchar(255) NOT NULL default '',
  `hope_reply` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_db;
CREATE TABLE `qb_sell_db` (
  `id` int(10) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `city_id` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_field;
CREATE TABLE `qb_sell_field` (
  `id` mediumint(7) NOT NULL auto_increment,
  `mid` mediumint(5) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `field_name` varchar(30) NOT NULL default '',
  `field_type` varchar(15) NOT NULL default '',
  `field_leng` smallint(3) NOT NULL default '0',
  `orderlist` int(10) NOT NULL default '0',
  `form_type` varchar(15) NOT NULL default '',
  `field_inputwidth` smallint(3) default NULL,
  `field_inputheight` smallint(3) NOT NULL default '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(255) NOT NULL default '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL default '0',
  `listshow` tinyint(1) NOT NULL default '0',
  `listfilter` tinyint(1) default NULL,
  `search` tinyint(1) NOT NULL default '0',
  `allowview` varchar(255) NOT NULL default '',
  `allowpost` varchar(255) NOT NULL default '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL default '',
  `classid` mediumint(7) NOT NULL default '0',
  `form_js` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_join;
CREATE TABLE `qb_sell_join` (
  `id` mediumint(7) NOT NULL auto_increment,
  `mid` smallint(4) NOT NULL default '0',
  `cid` mediumint(7) NOT NULL default '0',
  `cuid` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `yz` tinyint(1) NOT NULL default '0',
  `ip` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `mid` (`mid`),
  KEY `fid` (`fid`,`cid`),
  KEY `yz` (`yz`,`fid`,`mid`,`cid`),
  KEY `cuid` (`cuid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_module;
CREATE TABLE `qb_sell_module` (
  `id` smallint(4) NOT NULL auto_increment,
  `sort_id` mediumint(5) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `list` smallint(4) NOT NULL default '0',
  `style` varchar(50) NOT NULL default '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL default '0',
  `ifdp` tinyint(1) NOT NULL default '0',
  `template` text NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_pic;
CREATE TABLE `qb_sell_pic` (
  `pid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(10) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `mid` smallint(4) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `imgurl` varchar(150) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_report;
CREATE TABLE `qb_sell_report` (
  `rid` mediumint(7) NOT NULL auto_increment,
  `id` mediumint(7) NOT NULL default '0',
  `fid` mediumint(7) NOT NULL default '0',
  `uid` mediumint(7) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `posttime` int(10) NOT NULL default '0',
  `onlineip` varchar(15) NOT NULL default '',
  `type` tinyint(2) NOT NULL default '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`rid`)
) TYPE=MyISAM;


DROP TABLE IF EXISTS qb_sell_sort;
CREATE TABLE `qb_sell_sort` (
  `fid` mediumint(7) unsigned NOT NULL auto_increment,
  `fup` mediumint(7) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `mid` smallint(4) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `sons` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `admin` varchar(100) NOT NULL default '',
  `list` int(10) NOT NULL default '0',
  `listorder` tinyint(2) NOT NULL default '0',
  `passwd` varchar(32) NOT NULL default '',
  `logo` varchar(150) NOT NULL default '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL default '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL default '',
  `maxperpage` tinyint(3) NOT NULL default '0',
  `metatitle` varchar(250) NOT NULL default '',
  `metakeywords` varchar(255) NOT NULL default '',
  `metadescription` varchar(255) NOT NULL default '',
  `allowcomment` tinyint(1) NOT NULL default '0',
  `allowpost` varchar(150) NOT NULL default '',
  `allowviewtitle` varchar(150) NOT NULL default '',
  `allowviewcontent` varchar(150) NOT NULL default '',
  `allowdownload` varchar(150) NOT NULL default '',
  `forbidshow` tinyint(1) NOT NULL default '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL default '0',
  `contents` mediumint(4) NOT NULL default '0',
  `tableid` varchar(30) NOT NULL default '',
  `dir_name` varchar(50) NOT NULL default '',
  `ifcolor` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;


INSERT INTO `qb_members` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `qb_members` VALUES ('27','test1','42b72f913c3201fc62660d512f5ac746');
INSERT INTO `qb_members` VALUES ('28','test2','48b83a2a920f7284c9f0e1bf03012b68');
INSERT INTO `qb_members` VALUES ('29','test3','e12234d4575a12bfd61d61294f32b086');
INSERT INTO `qb_members` VALUES ('30','test4','e125db4ab2e60069409c5857be05d01d');
INSERT INTO `qb_members` VALUES ('31','test5','5b25f8c229db5db622a1b29f1ef97c34');
INSERT INTO `qb_members` VALUES ('32','test6','8ae9db4d88e6b21cfadffbf909a2c6b1');
INSERT INTO `qb_members` VALUES ('33','test7','cb7127945eb632e244223d3befccd92a');
INSERT INTO `qb_members` VALUES ('34','test8','63a8d0a081205ac5966769ad0b50b218');
INSERT INTO `qb_members` VALUES ('35','test9','cdc10f414c38f0b165c8aef0eb57f7fd');
INSERT INTO `qb_members` VALUES ('36','test10','3960033ed2f9e184af7e5c8cc99d062c');
INSERT INTO `qb_members` VALUES ('37','test11','16617490bce8593838933c93db5218eb');
INSERT INTO `qb_members` VALUES ('38','fdsafds','80b2157f75e044c8ce67d4e0fd50c24a');
INSERT INTO `qb_members` VALUES ('39','fdsafdsa','6b9260b1e02041a665d4e4a5117cfe16');
INSERT INTO `qb_memberdata` VALUES ('1','admin','','','3','1','','1','0','','3000','0','79287218','3355378','1306905411','127.0.0.1','1253678332','127.0.0.1','1','1890-00-00','http://v7.com/upload_files/icon/1.jpg','','95','1294910515','888888','','','54325@qq.com','20','345','cvbnmmm','','13399999999','','','张学友','a:1:{s:7:\"endtime\";s:0:\"\";}','5','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('37','test11','','','8','1','','1','0','','50','0','10658','0','1288663688','127.0.0.1','1288663688','127.0.0.1','0','0000-00-00','','','0','0','','','','test11@dew.cn','0','0','','','','','','','a:1:{s:7:\"endtime\";s:0:\"\";}','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('36','test10','','','8','1','','1','0','','5','0','14283','0','1288663488','127.0.0.1','1288663488','127.0.0.1','0','0000-00-00','','','0','0','','','','test10@dsa.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('35','test9','','','8','1','','1','0','','5','0','13302','0','1288663331','127.0.0.1','1288663331','127.0.0.1','0','0000-00-00','','','0','0','','','','test9@dsa.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('34','test8','','','8','1','','1','0','','5','0','10725','771','1303353025','127.0.0.1','1288663154','127.0.0.1','0','0000-00-00','','','0','0','','','','test8@dsa.cm','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('33','test7','','','8','1','','1','0','','5','0','12667','0','1288663028','127.0.0.1','1288663028','127.0.0.1','0','0000-00-00','','','0','0','','','','test7@es.cm','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('32','test6','','','8','1','','1','0','','5','0','144578','0','1288662836','127.0.0.1','1288662836','127.0.0.1','0','0000-00-00','','','0','0','','','','test6@dsa.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('31','test5','','','8','1','','1','0','','5','0','107377','208','1288662640','127.0.0.1','1288662633','127.0.0.1','0','0000-00-00','','','0','0','','','','test5@ds.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('30','test4','','','8','1','','1','0','','5','0','17044','0','1288662370','127.0.0.1','1288662370','127.0.0.1','0','0000-00-00','','','0','0','','','','test4@qq.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('29','test3','','','8','1','','1','0','','5','0','160010','0','1288662223','127.0.0.1','1288662223','127.0.0.1','0','0000-00-00','','','0','0','','','','test3@qq.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('28','test2','','','8','1','','1','0','','5','0','80741','180','1288666915','127.0.0.1','1288661813','127.0.0.1','0','0000-00-00','','','0','0','','','','test2@qq.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('27','test1','','','8','1','','1','0','','5','0','113391','3498','1288668780','127.0.0.1','1288661559','127.0.0.1','0','0000-00-00','','','1','1288668776','','','','test1@qq.com','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('38','fdsafds','','','8','0','','1','0','','5','0','0','0','1300684108','127.0.0.1','1300684107','127.0.0.1','0','0000-00-00','','','0','0','','','','fdsafds@ds.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_memberdata` VALUES ('39','fdsafdsa','','','8','0','','1','0','','5','0','0','600','1303355222','127.0.0.1','1303355221','127.0.0.1','0','0000-00-00','','','0','0','','','','fdsafdsa@dsa.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `qb_group` VALUES ('2','1','游客组','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `qb_group` VALUES ('3','1','超级管理员','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"999\";s:12:\"post_buy_num\";s:3:\"999\";s:13:\"post_news_num\";s:3:\"999\";s:14:\"post_photo_num\";s:3:\"999\";s:11:\"post_hr_num\";s:3:\"999\";s:17:\"post_zhanghui_num\";s:3:\"999\";s:12:\"post_ZLG_num\";s:3:\"999\";s:16:\"post_pingpai_num\";s:3:\"999\";s:19:\"post_baojiadian_num\";s:3:\"999\";s:19:\"post_xunjiadian_num\";s:3:\"999\";s:24:\"post_info_collection_num\";s:3:\"999\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:109:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:12:\"company_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:14:\"moneycard_make\";s:1:\"1\";s:14:\"limitword_list\";s:1:\"1\";s:12:\"propagandize\";s:1:\"1\";s:11:\"jfadmin_mod\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:8:\"adminmap\";s:1:\"1\";s:8:\"moneylog\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:25:\"Module_news_center_config\";s:1:\"1\";s:24:\"Module_news_center_label\";s:1:\"1\";s:21:\"Module_news_sort_post\";s:1:\"1\";s:16:\"Module_news_list\";s:1:\"1\";s:19:\"Module_news_comment\";s:1:\"1\";s:25:\"Module_news_sort_listsort\";s:1:\"1\";s:23:\"Module_hy_center_config\";s:1:\"1\";s:14:\"Module_hy_sort\";s:1:\"1\";s:17:\"Module_hy_company\";s:1:\"1\";s:17:\"Module_hy_comment\";s:1:\"1\";s:18:\"Module_hy_renzheng\";s:1:\"1\";s:22:\"Module_hy_center_label\";s:1:\"1\";s:21:\"Module_hy_companynews\";s:1:\"1\";s:20:\"Module_hy_companypic\";s:1:\"1\";s:25:\"Module_sell_center_config\";s:1:\"1\";s:24:\"Module_sell_center_label\";s:1:\"1\";s:16:\"Module_sell_list\";s:1:\"1\";s:19:\"Module_sell_comment\";s:1:\"1\";s:16:\"Module_sell_sort\";s:1:\"1\";s:18:\"Module_sell_report\";s:1:\"1\";s:17:\"Module_sell_order\";s:1:\"1\";s:18:\"Module_sell_module\";s:1:\"1\";s:24:\"Module_buy_center_config\";s:1:\"1\";s:23:\"Module_buy_center_label\";s:1:\"1\";s:15:\"Module_buy_list\";s:1:\"1\";s:18:\"Module_buy_comment\";s:1:\"1\";s:15:\"Module_buy_sort\";s:1:\"1\";s:17:\"Module_buy_report\";s:1:\"1\";s:16:\"Module_buy_order\";s:1:\"1\";s:17:\"Module_buy_module\";s:1:\"1\";s:23:\"Module_hr_center_config\";s:1:\"1\";s:22:\"Module_hr_center_label\";s:1:\"1\";s:14:\"Module_hr_sort\";s:1:\"1\";s:19:\"Module_hr_list_list\";s:1:\"1\";s:18:\"Module_hr_joinlist\";s:1:\"1\";s:25:\"Module_hr_list_listmember\";s:1:\"1\";s:20:\"Module_hr_collection\";s:1:\"1\";s:14:\"Module_hr_city\";s:1:\"1\";s:16:\"Module_hr_module\";s:1:\"1\";s:29:\"Module_showroom_center_config\";s:1:\"1\";s:28:\"Module_showroom_center_label\";s:1:\"1\";s:20:\"Module_showroom_list\";s:1:\"1\";s:20:\"Module_showroom_room\";s:1:\"1\";s:20:\"Module_showroom_sort\";s:1:\"1\";s:20:\"Module_showroom_join\";s:1:\"1\";s:20:\"Module_showroom_city\";s:1:\"1\";s:22:\"Module_showroom_module\";s:1:\"1\";s:26:\"Module_brand_center_config\";s:1:\"1\";s:25:\"Module_brand_center_label\";s:1:\"1\";s:17:\"Module_brand_list\";s:1:\"1\";s:17:\"Module_brand_sort\";s:1:\"1\";s:17:\"Module_brand_join\";s:1:\"1\";s:19:\"Module_brand_module\";s:1:\"1\";s:16:\"Module_ad_center\";s:1:\"1\";s:21:\"Module_ad_norm_listad\";s:1:\"1\";s:25:\"Module_ad_norm_listuserad\";s:1:\"1\";s:24:\"Module_ad_compete_listad\";s:1:\"1\";s:26:\"Module_ad_compete_listuser\";s:1:\"1\";s:18:\"Module_vote_center\";s:1:\"1\";s:20:\"Module_vote_vote_add\";s:1:\"1\";s:21:\"Module_vote_vote_list\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `qb_group` VALUES ('4','1','前台管理员','0','0','0','a:6:{s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";}','0','a:1:{s:6:\"mymenu\";N;}');
INSERT INTO `qb_group` VALUES ('8','0','普通会员','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_group` VALUES ('9','0','VIP会员','10000','0','0','a:54:{s:17:\"SearchArticleType\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:2:\"30\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:9:\"topmyinfo\";s:0:\"\";s:12:\"topmyinfoday\";s:0:\"\";s:13:\"topcompanyday\";s:0:\"\";s:13:\"post_sell_num\";s:2:\"50\";s:12:\"post_buy_num\";s:2:\"50\";s:13:\"post_news_num\";s:2:\"50\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:2:\"20\";s:17:\"post_zhanghui_num\";s:2:\"20\";s:12:\"post_ZLG_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:2:\"50\";s:19:\"post_xunjiadian_num\";s:2:\"50\";s:16:\"post_pingpai_num\";s:2:\"10\";s:24:\"post_info_collection_num\";s:3:\"100\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_group` VALUES ('10','0','钻石会员','30000','0','0','a:50:{s:17:\"SearchArticleType\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:16:\"PassContributeSP\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"100\";s:12:\"post_buy_num\";s:3:\"100\";s:13:\"post_news_num\";s:3:\"100\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:3:\"100\";s:17:\"post_zhanghui_num\";s:3:\"100\";s:12:\"post_ZLG_num\";s:2:\"10\";s:16:\"post_pingpai_num\";s:2:\"10\";s:19:\"post_baojiadian_num\";s:3:\"100\";s:19:\"post_xunjiadian_num\";s:3:\"100\";s:24:\"post_info_collection_num\";s:3:\"300\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_menu` VALUES ('9','0','找产品','/sell/','','0','0','0','0','18','34');
INSERT INTO `qb_menu` VALUES ('10','0','看求购','/buy/','','0','0','0','0','16','35');
INSERT INTO `qb_menu` VALUES ('11','0','找商家','/hy/','','0','0','0','0','14','16');
INSERT INTO `qb_menu` VALUES ('52','0','资讯中心','/news/','','0','0','0','0','13','20');
INSERT INTO `qb_menu` VALUES ('51','0','网站首页','/','','0','0','0','0','20','0');
INSERT INTO `qb_admin_menu` VALUES ('12','0','内容管理','','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('83','0','标签设置','','','0','100','3','0');
INSERT INTO `qb_admin_menu` VALUES ('84','83','资讯首页','../news/index.php?jobs=show','','0','18','3','1');
INSERT INTO `qb_admin_menu` VALUES ('140','111','商铺','index.php?lfj=module_admin&dirname=hy&file=sort&job=listsort','','0','-2','3','1');
INSERT INTO `qb_admin_menu` VALUES ('85','83','供应首页','index.php?lfj=module_admin&dirname=sell&file=center&job=label','','0','17','3','0');
INSERT INTO `qb_admin_menu` VALUES ('86','83','商铺首页','index.php?lfj=module_admin&dirname=hy&file=center&job=label','','0','15','3','0');
INSERT INTO `qb_admin_menu` VALUES ('87','0','评论管理','','','0','7','3','0');
INSERT INTO `qb_admin_menu` VALUES ('88','87','产品供应','index.php?lfj=module_admin&dirname=sell&file=comment&job=list','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('89','87','求购信息','index.php?lfj=module_admin&dirname=buy&file=comment&job=list','','0','97','3','1');
INSERT INTO `qb_admin_menu` VALUES ('112','111','文章资讯','index.php?lfj=module_admin&dirname=news&file=sort&job=listsort&type=all','','0','-1','3','0');
INSERT INTO `qb_admin_menu` VALUES ('111','0','分类管理','','','0','88','3','0');
INSERT INTO `qb_admin_menu` VALUES ('75','12','文章资讯','index.php?lfj=module_admin&dirname=news&file=list&job=list','','0','-1','3','0');
INSERT INTO `qb_admin_menu` VALUES ('116','12','商铺','index.php?lfj=module_admin&dirname=hy&file=company&job=list','','0','-2','3','1');
INSERT INTO `qb_admin_menu` VALUES ('117','12','产品供应','index.php?lfj=module_admin&dirname=sell&file=list&job=list','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('118','12','求购信息','index.php?lfj=module_admin&dirname=buy&file=list&job=list','','0','98','3','1');
INSERT INTO `qb_admin_menu` VALUES ('130','111','产品供应','index.php?lfj=module_admin&dirname=sell&file=sort&job=listsort','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('101','83','求购首页','index.php?lfj=module_admin&dirname=buy&file=center&job=label','','0','16','3','1');
INSERT INTO `qb_admin_menu` VALUES ('102','83','网站主页','../index.php?&ch=1&chtype=0&jobs=show','','0','19','3','0');
INSERT INTO `qb_admin_menu` VALUES ('143','87','资讯评论','index.php?lfj=module_admin&dirname=news&file=comment&job=list','','0','69','3','0');
INSERT INTO `qb_admin_menu` VALUES ('131','111','求购信息','index.php?lfj=module_admin&dirname=buy&file=sort&job=listsort','','0','98','3','1');
INSERT INTO `qb_module` VALUES ('16','2','黄页店铺','hy_','hy','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','101','','','0','1');
INSERT INTO `qb_module` VALUES ('18','2','留言本','guestbook_','guestbook','','','','-1','','','0','0');
INSERT INTO `qb_module` VALUES ('21','2','万能表单','form_','form','','','','-2','','','0','0');
INSERT INTO `qb_module` VALUES ('20','2','文章资讯','news_','news','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','102','','','0','1');
INSERT INTO `qb_module` VALUES ('23','2','投票系统','vote_','vote','','','','0','','','0','0');
INSERT INTO `qb_module` VALUES ('24','2','广告系统','ad_','a_d','','','','2','','','0','0');
INSERT INTO `qb_module` VALUES ('34','2','供应模型','sell_','sell','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','100','','','0','1');
INSERT INTO `qb_module` VALUES ('35','2','求购模型','buy_','buy','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','99','','','0','1');
INSERT INTO `qb_alonepage` VALUES ('1','0','友情链接','友情链接','1229507597','0','','','','','','friendlink.htm','','','','<table cellSpacing=4 cellPadding=4 width=\"100%\" border=0>\r\n<tbody>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.mmcbbs.com/\" target=_blank>菁菁论坛</a></td>\r\n<td width=\"20%\"><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a></td>\r\n<td width=\"20%\"><a href=\"http://pic.goodod.com/\" target=_blank>欧迪手机图片</a></td>\r\n<td width=\"20%\"><a href=\"http://www.tianyakezhan.com/\" target=_blank>天涯客栈</a></td>\r\n<td width=\"20%\"><a href=\"http://www.czin.cn/\" target=_blank>崇左热线</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.jneg.com.cn/\" target=_blank>金能家园</a></td>\r\n<td width=\"20%\"><a href=\"http://www.wyrj.com/\" target=_blank>屋檐人家</a></td>\r\n<td width=\"20%\"><a href=\"http://www.nenbei.com/\" target=_blank>嫩北网</a></td>\r\n<td width=\"20%\"><a href=\"http://www.photosbar.com/\" target=_blank>图吧</a></td>\r\n<td width=\"20%\"><a href=\"http://www.ok586.cn/\" target=_blank>视览供销</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.51solo.net/\" target=_blank>我爱搜罗娱乐</a></td>\r\n<td width=\"20%\"><a href=\"http://www.toopd.com/\" target=_blank>飞羽设计</a></td>\r\n<td width=\"20%\"><a href=\"http://www.qiqig.com/\" target=_blank>爱雅</a></td>\r\n<td width=\"20%\"><a href=\"http://www.jxsrjys.com.cn/\" target=_blank>上饶教研</a></td>\r\n<td width=\"20%\"><a href=\"http://www.unok.net/\" target=_blank>优盟网</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://mmm.pudou.com/\" target=_blank>扑豆中国</a></td>\r\n<td width=\"20%\"><a href=\"http://www.itzhan.com/\" target=_blank>IT中文</a></td>\r\n<td width=\"20%\"><a href=\"http://www.hkwtv.com/\" target=_blank>香港网视</a></td>\r\n<td width=\"20%\">&nbsp;</td>\r\n<td width=\"20%\">&nbsp;</td></tr></tbody></table>','54','0');
INSERT INTO `qb_config` VALUES ('yzImgComment','0','');
INSERT INTO `qb_config` VALUES ('flashtime','0','');
INSERT INTO `qb_config` VALUES ('showComment','1','');
INSERT INTO `qb_config` VALUES ('forbidComment','0','');
INSERT INTO `qb_config` VALUES ('showCommentRows','8','');
INSERT INTO `qb_config` VALUES ('viewNoPassGuestBook','1','');
INSERT INTO `qb_config` VALUES ('yzImgContribute','0','');
INSERT INTO `qb_config` VALUES ('groupPassContribute','3','');
INSERT INTO `qb_config` VALUES ('QQ_login','2','');
INSERT INTO `qb_config` VALUES ('MaxOnlineUser','1000','');
INSERT INTO `qb_config` VALUES ('groupPassShopYz','3,4','');
INSERT INTO `qb_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `qb_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `qb_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `qb_config` VALUES ('ContributeFid','2','');
INSERT INTO `qb_config` VALUES ('groupPassLogYz','3,4','');
INSERT INTO `qb_config` VALUES ('limitRegTime','','');
INSERT INTO `qb_config` VALUES ('FtpName','admin','');
INSERT INTO `qb_config` VALUES ('PostSortStep','2','');
INSERT INTO `qb_config` VALUES ('ListSonline','2','');
INSERT INTO `qb_config` VALUES ('_Notice','29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=','');
INSERT INTO `qb_config` VALUES ('CommentTime','5','');
INSERT INTO `qb_config` VALUES ('weburl','/','');
INSERT INTO `qb_config` VALUES ('MailType','smtp','');
INSERT INTO `qb_config` VALUES ('yeepay_key','ve4ets3huzxruch0tsf6nga7a2lpckm8h9p7qnefj31q49ms8bhl3qin6q0g','');
INSERT INTO `qb_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `qb_config` VALUES ('AvoidGatherPre','','');
INSERT INTO `qb_config` VALUES ('AvoidCopy','0','');
INSERT INTO `qb_config` VALUES ('AvoidGather','0','');
INSERT INTO `qb_config` VALUES ('AvoidSave','0','');
INSERT INTO `qb_config` VALUES ('waterpos','7','');
INSERT INTO `qb_config` VALUES ('adminPostEditType','html','');
INSERT INTO `qb_config` VALUES ('article_show_step','0','');
INSERT INTO `qb_config` VALUES ('ifContribute','1','');
INSERT INTO `qb_config` VALUES ('allowGuestSearch','0','');
INSERT INTO `qb_config` VALUES ('kill_badword','0','');
INSERT INTO `qb_config` VALUES ('ShowKeywordColor','#F70968','');
INSERT INTO `qb_config` VALUES ('ifShowKeyword','1','');
INSERT INTO `qb_config` VALUES ('UseFtp','0','');
INSERT INTO `qb_config` VALUES ('FtpWeb','','');
INSERT INTO `qb_config` VALUES ('FtpPort','21','');
INSERT INTO `qb_config` VALUES ('photoShowType','0','');
INSERT INTO `qb_config` VALUES ('groupTime','180','');
INSERT INTO `qb_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `qb_config` VALUES ('ShowMenu','0','');
INSERT INTO `qb_config` VALUES ('GuestBookNum','8','');
INSERT INTO `qb_config` VALUES ('ShopNormalSend','8','');
INSERT INTO `qb_config` VALUES ('ShopEmsSend','25','');
INSERT INTO `qb_config` VALUES ('groupUpType','1','');
INSERT INTO `qb_config` VALUES ('allowDownMv','0','');
INSERT INTO `qb_config` VALUES ('SPlist_filename2','listsp.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('waterimg','images/default/water.gif','');
INSERT INTO `qb_config` VALUES ('MailPort','25','');
INSERT INTO `qb_config` VALUES ('HideNopowerPost','1','');
INSERT INTO `qb_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `qb_config` VALUES ('allowGuestComment','1','');
INSERT INTO `qb_config` VALUES ('PostNotice','<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>','');
INSERT INTO `qb_config` VALUES ('ListLeng','70','');
INSERT INTO `qb_config` VALUES ('propagandize_jumpto','/','');
INSERT INTO `qb_config` VALUES ('propagandize_LogDay','5','');
INSERT INTO `qb_config` VALUES ('propagandize_close','0','');
INSERT INTO `qb_config` VALUES ('propagandize_Money','2','');
INSERT INTO `qb_config` VALUES ('YZ_IdcardMoney','20','');
INSERT INTO `qb_config` VALUES ('EditYzEmail','0','');
INSERT INTO `qb_config` VALUES ('EditYzMob','0','');
INSERT INTO `qb_config` VALUES ('EditYzIdcard','0','');
INSERT INTO `qb_config` VALUES ('YZ_EmailMoney','10','');
INSERT INTO `qb_config` VALUES ('YZ_MobMoney','15','');
INSERT INTO `qb_config` VALUES ('MailServer','smtp.163.com','');
INSERT INTO `qb_config` VALUES ('sms_wi_id','2','');
INSERT INTO `qb_config` VALUES ('sms_wi_pwd','3','');
INSERT INTO `qb_config` VALUES ('sms_es_key','2','');
INSERT INTO `qb_config` VALUES ('sms_es_name','1','');
INSERT INTO `qb_config` VALUES ('sms_type','winic','');
INSERT INTO `qb_config` VALUES ('SPbencandy_filename2','showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('list_filename2','list.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('emailOnly','1','');
INSERT INTO `qb_config` VALUES ('close_count','0','');
INSERT INTO `qb_config` VALUES ('Reg_Field','a:1:{s:8:\\\\\"field_db\\\\\";a:0:{}}','');
INSERT INTO `qb_config` VALUES ('passport_TogetherLogin','1','');
INSERT INTO `qb_config` VALUES ('Listsortnameline','2','');
INSERT INTO `qb_config` VALUES ('ListSonLeng','34','');
INSERT INTO `qb_config` VALUES ('ListSonRows','9','');
INSERT INTO `qb_config` VALUES ('JsListLeng','36','');
INSERT INTO `qb_config` VALUES ('tenpay_key','fdsafds','');
INSERT INTO `qb_config` VALUES ('yeepay_id','10000821064','');
INSERT INTO `qb_config` VALUES ('RegCompany','1','');
INSERT INTO `qb_config` VALUES ('cache_time_js','-1','');
INSERT INTO `qb_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `qb_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `qb_config` VALUES ('JsListRows','5','');
INSERT INTO `qb_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `qb_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `qb_config` VALUES ('cache_time_com','-1','');
INSERT INTO `qb_config` VALUES ('ArticleHeart','欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif','');
INSERT INTO `qb_config` VALUES ('heart_time','30','');
INSERT INTO `qb_config` VALUES ('heart_noRecord','1','');
INSERT INTO `qb_config` VALUES ('ForceDel','0','');
INSERT INTO `qb_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `qb_config` VALUES ('YzImg_voice','0','');
INSERT INTO `qb_config` VALUES ('sortNUM','27','');
INSERT INTO `qb_config` VALUES ('FtpPwd','admin','');
INSERT INTO `qb_config` VALUES ('articleNUM','186','');
INSERT INTO `qb_config` VALUES ('cache_time_like','-1','');
INSERT INTO `qb_config` VALUES ('cache_time_new','-1','');
INSERT INTO `qb_config` VALUES ('is_waterimg','1','');
INSERT INTO `qb_config` VALUES ('passport_path','../pw7','');
INSERT INTO `qb_config` VALUES ('Del_MoreUpfile','1','');
INSERT INTO `qb_config` VALUES ('passport_pre','`dz7`.cdb_','');
INSERT INTO `qb_config` VALUES ('hideFid','','');
INSERT INTO `qb_config` VALUES ('RewriteUrl','0','');
INSERT INTO `qb_config` VALUES ('mymd5','65345358','');
INSERT INTO `qb_config` VALUES ('companyTrade','机械及行业设备\r\n普通机械制造\r\n通用零部件\r\n五金配件\r\n金属工具\r\n电动工具\r\n电子元件\r\n电子器件\r\n照明及照明器具\r\n安全防护设备\r\n包装\r\n造纸及纸制品\r\n电机、电工电器\r\n电工器材\r\n通用仪器仪表\r\n专用仪器仪表\r\n交通运输设备、零部件\r\n办公、文教用品\r\n数码、电脑及网络配件\r\n日常家居用品\r\n木材、木制品\r\n家具\r\n家用电器\r\n礼品、工艺美术品\r\n食品、饮料\r\n通信产品\r\n玩具\r\n印刷设备\r\n运动、休闲、保健用品\r\n鞋、帽\r\n服装\r\n日用化学品\r\n农用化学品\r\n胶粘剂\r\n染料、颜料、涂料和油墨\r\n催化剂和助剂\r\n库存精细化学品\r\n食品和饲料添加剂\r\n塑料\r\n橡胶制品\r\n环保、环保设备\r\n建筑、建材\r\n能源\r\n粮油、农制品\r\n金属\r\n医药、保健及医疗设备\r\n纺织\r\n皮革\r\n煤焦化产品\r\n日常服务\r\n广告服务\r\n教育培训\r\n认证\r\n创意设计\r\n物流服务\r\n进出口代理\r\n维修及安装服务\r\n广告、展览器材\r\n专业录音、放音设备\r\n光学摄影器材\r\n编辑制作设备\r\n播出、前端设备\r\n建筑、装饰业\r\n房地产\r\n安装工程\r\n邮电通信\r\n事务所、公证\r\n卫生、体育、社会、福利\r\n公共服务业\r\n金融、保险\r\n实业公司、商业贸易\r\n高新技术开发区\r\n卡类市场','');
INSERT INTO `qb_config` VALUES ('label_cache_time','-1','');
INSERT INTO `qb_config` VALUES ('DownLoad_readfile','1','');
INSERT INTO `qb_config` VALUES ('FtpDir','111','');
INSERT INTO `qb_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `qb_config` VALUES ('passport_type','','');
INSERT INTO `qb_config` VALUES ('MakeIndexHtmlTime','0','');
INSERT INTO `qb_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `qb_config` VALUES ('list_cache_time','0','');
INSERT INTO `qb_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `qb_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `qb_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `qb_config` VALUES ('forbidReg','0','');
INSERT INTO `qb_config` VALUES ('pay99_id','','');
INSERT INTO `qb_config` VALUES ('tenpay_id','fdsafdsa','');
INSERT INTO `qb_config` VALUES ('MoneyRatio','100','');
INSERT INTO `qb_config` VALUES ('Money2card','0','');
INSERT INTO `qb_config` VALUES ('index_cache_time','0','');
INSERT INTO `qb_config` VALUES ('waterAlpha','80','');
INSERT INTO `qb_config` VALUES ('if_gdimg','1','');
INSERT INTO `qb_config` VALUES ('yzNumReg','0','');
INSERT INTO `qb_config` VALUES ('DefaultIndexHtml','0','');
INSERT INTO `qb_config` VALUES ('AutoPassCompany','1','');
INSERT INTO `qb_config` VALUES ('reg_group','8','');
INSERT INTO `qb_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `qb_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `qb_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `qb_config` VALUES ('postArticleMoney','1','');
INSERT INTO `qb_config` VALUES ('comArticleMoney','3','');
INSERT INTO `qb_config` VALUES ('hotArticleNum','100','');
INSERT INTO `qb_config` VALUES ('newArticleTime','24','');
INSERT INTO `qb_config` VALUES ('ListShowIcon','0','');
INSERT INTO `qb_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `qb_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `qb_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `qb_config` VALUES ('ForbidRepeatTitle','1','');
INSERT INTO `qb_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `qb_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `qb_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `qb_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `qb_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `qb_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `qb_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `qb_config` VALUES ('KeepTodayCount','1','');
INSERT INTO `qb_config` VALUES ('ShopOtherSend','18','');
INSERT INTO `qb_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `qb_config` VALUES ('bencandy_filename2','bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('MailId','lfj846@163.com','');
INSERT INTO `qb_config` VALUES ('MailPw','020php168gz','');
INSERT INTO `qb_config` VALUES ('alipay_transport','https','');
INSERT INTO `qb_config` VALUES ('alipay_service','create_partner_trade_by_buyer','');
INSERT INTO `qb_config` VALUES ('alipay_partner','','');
INSERT INTO `qb_config` VALUES ('alipay_key','','');
INSERT INTO `qb_config` VALUES ('alipay_id','test@test.com','');
INSERT INTO `qb_config` VALUES ('pay99_key','','');
INSERT INTO `qb_config` VALUES ('alipay_scale','100','');
INSERT INTO `qb_config` VALUES ('NewsMakeHtml','0','');
INSERT INTO `qb_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `qb_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `qb_config` VALUES ('AutoCutFace','0','');
INSERT INTO `qb_config` VALUES ('passport_url','http://localhost/u/bbs','');
INSERT INTO `qb_config` VALUES ('FtpHost','127.0.0.1','');
INSERT INTO `qb_config` VALUES ('memberNotice','欢迎大家踊跃投稿,投稿可得积分奖励!!','');
INSERT INTO `qb_config` VALUES ('member_contact',' <div class=t>020-88888888</div>\r\n            <div class=t>020-88888888</div>\r\n            <div class=q>qq:123456</div>\r\n','');
INSERT INTO `qb_config` VALUES ('copyright','','');
INSERT INTO `qb_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `qb_config` VALUES ('miibeian_gov_cn','粤ICP备10080701号','');
INSERT INTO `qb_config` VALUES ('bokecc_id','','');
INSERT INTO `qb_config` VALUES ('cookiePre','','');
INSERT INTO `qb_config` VALUES ('cookieDomain','','');
INSERT INTO `qb_config` VALUES ('forbid_show_bug','1','');
INSERT INTO `qb_config` VALUES ('updir','upload_files','');
INSERT INTO `qb_config` VALUES ('upfileType','.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf','');
INSERT INTO `qb_config` VALUES ('path','/do','');
INSERT INTO `qb_config` VALUES ('upfileMaxSize','','');
INSERT INTO `qb_config` VALUES ('totalSpace','100','');
INSERT INTO `qb_config` VALUES ('time','0','');
INSERT INTO `qb_config` VALUES ('admin_url','admin','');
INSERT INTO `qb_config` VALUES ('www_url','http://localhost/u','');
INSERT INTO `qb_config` VALUES ('style_member','','');
INSERT INTO `qb_config` VALUES ('style','blue','');
INSERT INTO `qb_config` VALUES ('close_why','网站维护当中,\r\n暂停访问.','');
INSERT INTO `qb_config` VALUES ('web_open','1','');
INSERT INTO `qb_config` VALUES ('MoneyDW','个','');
INSERT INTO `qb_config` VALUES ('MoneyName','积分','');
INSERT INTO `qb_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `qb_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `qb_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `qb_config` VALUES ('webmail','admin@admin.com','');
INSERT INTO `qb_config` VALUES ('description','提供最新的行业新闻','');
INSERT INTO `qb_config` VALUES ('metakeywords','b2b 行业门户 电子商务','');
INSERT INTO `qb_config` VALUES ('webname','齐博B2B垂直行业电子商务系统','');
INSERT INTO `qb_config` VALUES ('QQ_appid','','');
INSERT INTO `qb_config` VALUES ('forbidRegIp','','');
INSERT INTO `qb_config` VALUES ('yzImgReg','1','');
INSERT INTO `qb_config` VALUES ('RegYz','1','');
INSERT INTO `qb_config` VALUES ('regmoney','5','');
INSERT INTO `qb_config` VALUES ('forbidRegName','','');
INSERT INTO `qb_config` VALUES ('QQ_appkey','','');
INSERT INTO `qb_config` VALUES ('QQ_QBappid','1','');
INSERT INTO `qb_config` VALUES ('QQ_QBappkey','d12100d9366fbd6d92c9','');
INSERT INTO `qb_config` VALUES ('guide_word','网站首页|/|0||51|0\r\n找产品|/sell/|0||9|34\r\n看求购|/buy/|0||10|35\r\n找商家|/hy/|0||11|16\r\n资讯中心|/news/|0||52|20','');
INSERT INTO `qb_hack` VALUES ('login','用户登录插件','0','','a:3:{s:10:\"systemType\";s:6:\"齐博CMS\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `qb_hack` VALUES ('adminmap','后台菜单','0','','','','','','index.php?lfj=adminmap&job=list','','other','插件大全','0','','0');
INSERT INTO `qb_hack` VALUES ('moneylog','用户消费积分记录','0','','','','','','index.php?lfj=moneylog&job=list','','other','插件大全','0','','0');
INSERT INTO `qb_hack` VALUES ('alipay_set','在线充值支付管理','0','','','','','','index.php?lfj=alipay&job=list','','other','电子商务管理','9','','0');
INSERT INTO `qb_hack` VALUES ('template_list','模板设置','0','','','','','','index.php?lfj=template&job=list','','other','风格/模板设置','1','','0');
INSERT INTO `qb_hack` VALUES ('style_editstyle','风格管理','0','','','','','','index.php?lfj=style&job=edittpl','','other','风格/模板设置','2','','0');
INSERT INTO `qb_hack` VALUES ('propagandize','推广赚取积分功能','0','','','','','','index.php?lfj=propagandize&job=list','','other','其它功能','8','','0');
INSERT INTO `qb_hack` VALUES ('jfadmin_mod','积分介绍管理','0','','','','','','index.php?lfj=jfadmin&job=listjf','','other','其它功能','7','','0');
INSERT INTO `qb_hack` VALUES ('attachment_list','附件管理','0','','','','','','index.php?lfj=attachment&job=list','','other','其它功能','6','','0');
INSERT INTO `qb_hack` VALUES ('upgrade_ol','系统在线升级','0','','','','','','index.php?lfj=upgrade&job=get','','other','其它功能','4','','0');
INSERT INTO `qb_hack` VALUES ('mail_send','邮件群发','0','','','','','','index.php?lfj=mail&job=send','','other','消息/邮件群发','2','','0');
INSERT INTO `qb_hack` VALUES ('message_send','站内消息群发','0','','','','','','index.php?lfj=message&job=send','','other','消息/邮件群发','3','','0');
INSERT INTO `qb_hack` VALUES ('sms_send','手机短信群发','0','','','','','','index.php?lfj=sms&job=send','','other','消息/邮件群发','1','','0');
INSERT INTO `qb_hack` VALUES ('cnzz_set','CNZZ流量统计','0','','','','','','index.php?lfj=cnzz&job=ask','','other','站外功能','3','','0');
INSERT INTO `qb_hack` VALUES ('limitword_list','不良词语过滤','0','','','','','','index.php?lfj=limitword&job=list','','other','内容模型插件功能','9','','0');
INSERT INTO `qb_hack` VALUES ('moneycard_make','点卡充值管理','0','','','','','','index.php?lfj=moneycard&job=make','','other','电子商务管理','7','','1');
INSERT INTO `qb_hack` VALUES ('logs_login_logs','后台登录日志','0','','','','','','index.php?lfj=logs&job=login_logs','','other','日志管理','2','','0');
INSERT INTO `qb_hack` VALUES ('logs_admin_do_logs','后台操作日志','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','日志管理','1','','0');
INSERT INTO `qb_hack` VALUES ('area_list','地区管理','0','','','','','','index.php?lfj=area&job=list','','other','其它功能','5','','0');
INSERT INTO `qb_hack` VALUES ('crontab','定时任务','0','','','','','','index.php?lfj=crontab&job=list','','other','插件大全','0','','0');
INSERT INTO `qb_label` VALUES ('1','','0','0','show_right_top_picad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=show_right_top_picad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"110\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893892','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('2','','0','0','show_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=show_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893880','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('3','','0','0','list_page_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=list_page_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"130\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893815','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('4','','0','0','article_list','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=article_list\'> </SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"263\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893832','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('5','','0','0','article_list_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279418','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('6','','0','0','bbsifmark_tag','code','0','论坛优秀贴','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('7','','0','0','bbsifmark','pwbbs','1','a:28:{s:13:\"tplpart_1code\";s:162:\"<div style=\"padding-top:6px;\">·<A HREF=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" target=\'_blank\'  style=\"$fontcolor;$fontweight\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"pwbbs\";s:6:\"digest\";s:3:\"all\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"ifmark\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:176:\" SELECT T.*,T.tid AS id,T.author AS username,T.authorid AS uid,T.subject AS title,T.postdate AS posttime FROM pw_threads T  WHERE 1  ORDER BY T.ifmark DESC,T.tid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"282\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240202279','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('8','','0','0','article_show','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=article_show\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893904','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('9','','0','0','article_show_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279430','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('10','','0','0','view_article_bbs_tag','code','0','论坛推荐图文','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('11','','0','0','view_article_bbs','pwbbs','1','a:28:{s:13:\"tplpart_1code\";s:370:\"<div  class=\"listpic\"> \r\n              <p class=img><a href=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\"text-align:center;\"><A HREF=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"pwbbs\";s:6:\"digest\";s:3:\"all\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"tid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:252:\" SELECT T.*,T.tid AS id,T.author AS username,T.authorid AS uid,T.subject AS title,T.postdate AS posttime,A.attachurl FROM pw_attachs A LEFT JOIN pw_threads T ON A.tid=T.tid  WHERE 1  AND A.type=\'img\' GROUP BY tid ORDER BY T.tid DESC,T.tid DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"650\";s:5:\"div_h\";s:3:\"100\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893928','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('413','','0','0','news_k14','code','0','促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047359','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('414','','0','0','news_k15','code','0','美容','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047373','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('415','','0','0','news_k16','code','0','留学','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047384','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('416','','0','0','news_k17','code','0','服装','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047399','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('417','','0','0','news_k18','code','0','装修','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047409','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('418','','0','0','news_k19','code','0','不锈钢','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('419','','0','0','news_k2','code','0','成功故事','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('13','','0','0','list_top_ad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=AD_list_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:2:\"51\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893857','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('225','','0','0','shop_a2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:77:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338718','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('226','','0','0','shop_a3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:655:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                        <span class=\"prica\">市场价：<strike>￥{$market_price}</strike></span>\r\n                        <span class=\"pricb\">本店价：<em>￥{$price}</em></span>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"430\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338688','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('220','','0','0','shop_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"480\";s:6:\"height\";s:3:\"150\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101029141056_pgxoy.jpg\";i:2;s:32:\"label/1_20101029141000_syjv2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288332865','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('221','','0','0','shop_hot','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338654','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('222','','0','0','shop_new','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338640','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('407','','0','0','news_banner2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('408','','0','0','news_k1','code','0','推荐新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047266','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('409','','0','0','news_k10','code','0','新品上市','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047445','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('410','','0','0','news_k11','code','0','打折促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047521','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('411','','0','0','news_k12','code','0','购物要领','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047503','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('412','','0','0','news_k13','code','0','美食推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047468','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('224','','0','0','shop_a1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:532:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"list1\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>现价:<span>￥{$price}</span>元</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338921','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('406','','0','0','news_banner1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475674','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('405','','0','0','news_9','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:535:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnew\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content <a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\r\n                \";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"65\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"209\";s:5:\"div_h\";s:3:\"221\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909958','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('404','','0','0','news_8_5','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('403','','0','0','news_8_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909968','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('402','','0','0','news_8_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909975','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('401','','0','0','news_8_2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909980','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('400','','0','0','news_8_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"334\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909961','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('399','','0','0','news_7','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:83:\"<div class=\"l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>$hits</span></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"218\";s:5:\"div_h\";s:3:\"230\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909954','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('398','','0','0','news_6','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:114:\" SELECT A.* FROM qb_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665814','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('397','','0','0','news_5','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:538:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listzt\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"75\" border=\"0\"/></a></td>\r\n                    \r\n              <td class=\"word\"><a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content<a href=\"$url\" target=\"_blank\">[详细]</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:163:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"209\";s:5:\"div_h\";s:3:\"179\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909936','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('396','','0','0','news_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:543:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtv\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"60\" height=\"50\" border=\"0\"/></a></td>\r\n                    <td class=\"word\">\r\n                <div><a href=\"$url\" target=\"_blank\">{$title}</a></div>\r\n                <div>关注度: <span>{$hits}</span> 人次</div></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:110:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"188\";s:5:\"div_h\";s:3:\"111\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909932','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('395','','0','0','news_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:69:\"<div class=\"l$i\"><a href=\"{$url}\" target=\"_blank\">{$title}</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"284\";s:5:\"div_h\";s:2:\"95\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909950','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('394','','0','0','news_2_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:114:\" SELECT A.* FROM qb_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665747','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('393','','0','0','news_2_0','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"24\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"313\";s:5:\"div_h\";s:2:\"94\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909929','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('392','','0','0','news_1_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"346\";s:5:\"div_h\";s:2:\"73\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909943','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('391','','0','0','news_1_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"364\";s:5:\"div_h\";s:3:\"114\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909946','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('389','','0','0','news_1_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"372\";s:5:\"div_h\";s:3:\"112\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909926','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('390','','0','0','news_1_2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:79:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:3:\"102\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909939','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('40','','1','0','news_0','code','0',' <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">钢材频道</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">每日行情</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">价格汇总</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">出厂价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">采购价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">调价信息</a></dd>\r\n        </dl>        \r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">钢材频道</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">每日行情</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">价格表</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">出厂价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">采购价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">调价信息</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">钢材频道</a></dt>        \r\n            <dd><a href=\"#\" target=\"_blank\">每日行情</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">价格汇总</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">出厂价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">采购价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">调价信息</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">钢材频道</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">每日行情</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">价格汇总</a></dd>        \r\n            <dd><a href=\"#\" target=\"_blank\">出厂价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">采购价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">调价信息</a></dd>\r\n        </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"800\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475864','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('388','','0','0','news_13','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>　$content<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:132:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";s:145:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"340\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910020','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('387','','0','0','news_12','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>　$content<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"339\";s:5:\"div_h\";s:3:\"185\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910014','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('386','','0','0','news_11','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"189\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910009','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('44','','0','0','index_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:258:\" <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr><td class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                    <td class=\"d\">{$time_y}-{$time_m}-{$time_d}</td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"24\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:3:\"161\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909340','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('45','','0','0','index_2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:151:\"<div class=\"listr\"> <a>[{$time_m}-{$time_d}]</a> <a href=\"$url\" target=\"_blank\">{$title}</a> \r\n              <span>{$price}元/{$my_units}</span> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:122:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"327\";s:5:\"div_h\";s:3:\"151\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724131','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('46','','0','0','index_3','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:151:\"<div class=\"listr\"> <a>[{$time_m}-{$time_d}]</a> <a href=\"$url\" target=\"_blank\">{$title}</a> \r\n              <span>{$price}元/{$my_units}</span> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"353\";s:5:\"div_h\";s:3:\"188\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724139','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('47','','0','0','index_4','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:267:\" <div class=\"list\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">{$title}</a> <br>{$price}元/{$my_units}</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:131:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"702\";s:5:\"div_h\";s:3:\"270\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724175','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('48','','0','0','index_5','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:267:\" <div class=\"list\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">{$title}</a> <br>{$price}元/{$my_units}</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:128:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list ASC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287031404','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('49','','0','0','index_L_1','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:90:\"<div class=\"l$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:64:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"222\";s:5:\"div_h\";s:3:\"134\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724165','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('50','','0','0','index_L_2','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:90:\"<div class=\"l$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:64:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"214\";s:5:\"div_h\";s:3:\"134\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724157','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('51','','0','0','index_L_3','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:256:\"<div class=\"listc\"> <a href=\"$url\" class=\"p$i img\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> \r\n              <a href=\"$url\" class=\"title\">$title</a>\r\n			  </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"229\";s:5:\"div_h\";s:3:\"333\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904993','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('52','','0','0','index_L_4','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:91:\"<div class=\"listt_d\"><a href=\"$url\" target=\"_blank\">$title</a><span>$day_begin</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:77:\" SELECT A.* FROM qb_news_content A  WHERE 1   ORDER BY A.list DESC LIMIT 0,4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:2:\"87\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904880','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('53','','0','0','index_L_5','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:446:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_w\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"50\"/></a></td>\r\n                    <td class=\"word\"><a href=\"$url\" target=\"_blank\">$title</a><br>开展日期:$day_begin</td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:2:\"62\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904873','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('54','','0','0','index_L_6','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:236:\"<div class=\"listd\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> \r\n              <a href=\"$url\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"228\";s:5:\"div_h\";s:3:\"235\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904863','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('55','','0','0','index_L_7','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:160:\" <div class=\"liste\"><a href=\"$url\" class=\"t\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/home/?uid=$uid\" class=\"c\" target=\"_blank\">$companyname</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:77:\" SELECT A.* FROM qb_news_content A  WHERE 1   ORDER BY A.list DESC LIMIT 0,9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"175\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904948','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('57','','0','0','index_L_8','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:177:\" <div class=\"liste\">姓名:<a href=\"$webdb[www_url]/{$ModuleDB[hr_][dirname]}/joinshow.php?id=$id\" class=\"t\" target=\"_blank\">$truename</a> 专业:<a class=\"c\" >$speciality</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:77:\" SELECT A.* FROM qb_news_content A  WHERE 1   ORDER BY A.list DESC LIMIT 0,9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904908','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('58','','0','0','index_r1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:340:\"<table class=\"listtable\">\r\n  <tr>\r\n    <td><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a> </td>\r\n    <td>\r\n    	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n        <div class=\"c\">{$content}</div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:163:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"54\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"296\";s:5:\"div_h\";s:3:\"174\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909478','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('59','','0','0','index_r3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:340:\"<table class=\"listtable\">\r\n  <tr>\r\n    <td><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a> </td>\r\n    <td>\r\n    	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n        <div class=\"c\">{$content}</div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:162:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list ASC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"54\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"302\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909460','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('60','','0','0','index_r2','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:101:\"<div class=\"Mlistt_d\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_y}-{$time_m}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:82:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 0,8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"415\";s:5:\"div_h\";s:3:\"176\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904888','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('61','','0','0','index_r4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:103:\"<div class=\"Mlistt_d\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_y}-{$time_m}</span></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:79:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"407\";s:5:\"div_h\";s:3:\"185\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909464','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('62','','0','0','index_b1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:104:\"<div class=\"listt_d\"><a href=\"{$url}\" target=\"_blank\">{$title}</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:506:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_w\">\r\n                  <tr>                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"50\" border=\"0\"/></a></td>\r\n                    \r\n                <td class=\"word\"><b><a href=\"$url\" target=\"_blank\">$title</a></b><br>\r\n                  $content</td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"42\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"232\";s:5:\"div_h\";s:3:\"181\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909469','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('63','','0','0','hy_a1','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:64:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"233\";s:5:\"div_h\";s:3:\"146\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291723950','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('64','','0','0','hy_a2','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:290:\"<div class=\"listpic\"> <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"30\" border=\"0\"/></a> \r\n              <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:64:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"264\";s:5:\"div_h\";s:3:\"142\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291723969','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('65','','0','0','hy_a3','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:92:\"<div class=\"array\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:65:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"432\";s:5:\"div_h\";s:3:\"132\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291723989','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('66','','0','0','hy_a5','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:90:\"<div class=\"n$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:65:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292656055','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('67','','0','0','index_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"470\";s:6:\"height\";s:3:\"200\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018151046_fnagb.jpg\";i:2;s:32:\"label/1_20101018151028_v2jek.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"471\";s:5:\"div_h\";s:3:\"196\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724122','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('68','','0','0','sell_roll','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"380\";s:6:\"height\";s:3:\"202\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018151037_qiocb.jpg\";i:2;s:32:\"label/1_20101018151012_mphck.gif\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288330923','0','34','0','0','default');
INSERT INTO `qb_label` VALUES ('69','','0','0','buy_roll','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"386\";s:6:\"height\";s:3:\"202\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161044_ao7o8.jpg\";i:2;s:32:\"label/1_20101018161000_boy6x.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('70','','0','0','hy_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"440\";s:6:\"height\";s:3:\"187\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161012_oca2s.jpg\";i:2;s:32:\"label/1_20101018161035_bld7m.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"437\";s:5:\"div_h\";s:3:\"183\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291723962','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('73','','1','0','news_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"1\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"276\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161028_pjjzu.jpg\";i:2;s:32:\"label/1_20101018161051_jfeu1.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:24:\"家电折扣季品牌家电32元起\";i:2;s:20:\"百元以下烘焙烤箱详解\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287389936','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('74','','0','0','index_t1','code','0','<a href=\"#\">业界动态</a> | <a href=\"#\">新品技术</a> | <a href=\"#\">产业趋势</a> | <a href=\"#\">人物对话</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('75','','0','0','index_t2','code','0','<a href=\"#\">技术方案</a> | <a href=\"#\">业界动态</a> | <a href=\"#\">新品技术</a> | <a href=\"#\">产业趋势</a> | <a href=\"#\">人物对话</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('76','','0','0','hy_title1','code','0','<a href=\"http://www_php168_com/do/bencandy.php?fid=44&aid=940\" target=\"_blank\">为什么要申请金牌会员?</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287391917','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('77','','0','0','hy_title2','code','0','	| <a href=\"../do/bencandy.php?fid=44&aid=947\" target=\"_blank\">金牌会员开通流程</a><br/>\r\n                        | <a href=\"../do/bencandy.php?fid=44&aid=948\" target=\"_blank\">在线申请开通金牌会员</a><br/>\r\n                        | <a href=\"../do/bencandy.php?fid=44&aid=949\" target=\"_blank\">金牌会员服务介绍</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"149\";s:5:\"div_h\";s:2:\"62\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291723956','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('78','','0','0','index_p1','code','0','钢铁快报','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('79','','0','0','index_p2','code','0','钢铁动态','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('80','','0','0','index_p3','code','0','钢铁行情','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('81','','0','0','index_bannerad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019091059_atxxl.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"70\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287451536','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('82','','0','0','index_more1','code','0','<a href=\"/sell/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('83','','0','0','index_more2','code','0','<a href=\"/buy/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('84','','0','0','index_more3','code','0','<a href=\"/sell/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('85','','0','0','index_more4','code','0','<a href=\"/showroom/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('86','','0','0','index_more5','code','0','<a href=\"/brand/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('87','','0','0','index_more6','code','0','<a href=\"/showroom/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('88','','0','0','index_more7','code','0','<a href=\"/do/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('89','','0','0','index_more8','code','0','<a href=\"/sell/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('90','','0','0','index_more9','code','0','<a href=\"/do/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('91','','0','0','index_more10','code','0','<a href=\"/do/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('92','','0','0','sell_tt1','code','0','最新供应信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('93','','0','0','sell_tt2','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('94','','0','0','sell_tt3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019091036_2nwif.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('95','','0','0','sell_tt4','code','0','推荐产品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('96','','0','0','sell_tt5','code','0','<a href=\"list.php?fid=2\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('97','','0','0','sell_ts4','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:450:\"<div class=\"list\">\r\n                	<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span style=\"line-height:20px;\">单价:<font color=\"#FF0000\">{$price}</font>元/{$my_units}<br>\r\n最小起订 <font color=\"#FF0000\">{$order_min}</font> {$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:130:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287454001','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('98','','0','0','sell_tt6','code','0','热门产品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('99','','0','0','sell_tt7','code','0','<a href=\"list.php?fid=3\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('100','','0','0','sell_tt8','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:162:\"<div class=\"listr\">\r\n                   <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span>{$price}元/{$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:122:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('101','','0','0','sell_newss','code','0','产品资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('102','','0','0','sell_news2','code','0','<A href=\"/do/\" target=\"_blank\">更多&gt;&gt;</A>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287454483','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('103','','0','0','sell_newss3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:69:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909646','0','34','0','0','default');
INSERT INTO `qb_label` VALUES ('104','','0','0','sell_v3','code','0','品牌展示','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('105','','0','0','sell_v4','code','0','<a href=\"/brand/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('106','','0','0','sell_v5','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpinpai\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"40\"/></a> \r\n              <a href=\"$url\" target=\"_blank\">$title</a> </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306905053','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('107','','0','0','sell_tb3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:55:\"<span><a href=\"$url\" target=\"_blank\">$title</a></span> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909639','0','34','0','0','default');
INSERT INTO `qb_label` VALUES ('108','','0','0','buy_adpic','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019101005_utjpw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"730\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287461438','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('109','','0','0','buy_n1','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:373:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>\r\n                            <td class=\"t\"> <a href=\"$url\" target=\"_blank\">$title</a></td>                            \r\n                    <td class=\"d\"><font color=\"#FF0000\">{$price}</font>元/{$my_units}</td>\r\n                          </tr>\r\n                        </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('110','','0','0','buy_n2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:55:\"<span><a href=\"$url\" target=\"_blank\">$title</a></span> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909601','0','35','0','0','default');
INSERT INTO `qb_label` VALUES ('111','','0','0','buy_n3','code','0','加入115钢铁网,开始做生意','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('112','','0','0','buy_n4','code','0','热门求购','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('113','','0','0','buy_n5','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('114','','0','0','buy_n6','code','0','推荐求购信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('115','','0','0','buy_n7','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('116','','0','0','buy_n8','code','0','最新求购信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('117','','0','0','buy_n9','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('118','','0','0','buy_n10','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:162:\"<div class=\"listr\">\r\n                   <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span>{$price}元/{$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('119','','0','0','buy_c1','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:434:\"<div class=\"list\">\r\n                	<a href=\"$url\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span style=\"line-height:20px;\">单价:<font color=\"#FF0000\">{$price}</font>元/{$my_units}<br>\r\n最小起订 <font color=\"#FF0000\">{$order_min}</font> {$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:128:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('120','','0','0','buy_c2','code','0','求购资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('121','','0','0','buy_c3','code','0','<a href=\"/do/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('122','','0','0','buy_c4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\" <div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909614','0','35','0','0','default');
INSERT INTO `qb_label` VALUES ('123','','0','0','buy_c5','code','0','品牌展示','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('124','','0','0','buy_c6','code','0','<a href=\"/brand/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('125','','0','0','buy_c7','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpinpai\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"40\"/></a> \r\n              <a href=\"$url\" target=\"_blank\">$title</a> </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306905078','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('126','','0','0','hy_tb1','code','0','<a href=\"../do/bencandy.php?fid=44&aid=946\" target=\"_blank\">如何申请商铺?</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287467061','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('127','','0','0','hy_j1','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多 \r\n            &gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('128','','0','0','hy_j2','code','0','推荐企业','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('129','','0','0','hy_j3','code','0','金牌企业','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('130','','0','0','hy_j4','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('131','','0','0','hy_j5','code','0','热门企业','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('132','','0','0','hy_j6','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('133','','0','0','hy_j8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019141039_qrv6e.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:3:\"120\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"120\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287469480','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('134','','0','0','hy_j9','code','0','最新加入','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('135','','0','0','hy_j10','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('136','','0','0','hy_d1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:74:\"<div class=\"n$i\"><a href=\"$url\" class=\"a\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"261\";s:5:\"div_h\";s:3:\"219\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909586','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('137','','0','0','hy_d3','code','0','<a href=\"/do/\" target=\"_blank\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('138','','0','0','hy_d2','code','0','成功经验','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('160','','1','0','news_k1','code','0','创业经验','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('161','','1','0','news_k2','code','0','成功故事','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('162','','1','0','news_k3','code','0','钢铁行业资料','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('163','','1','0','news_k4','code','0','代理/经销商文档','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('164','','1','0','news_k5','code','0','热门资料','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('165','','1','0','news_k7','code','0','市场动态','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('166','','1','0','news_k8','code','0','价格行情汇总','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('167','','1','0','news_k9','code','0','钢企资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('168','','1','0','news_k10','code','0','钢铁参考','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('169','','1','0','news_k11','code','0','钢企论坛','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('170','','1','0','news_k12','code','0','参考消息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('171','','1','0','news_k13','code','0','热点快讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('172','','1','0','news_k14','code','0','报价','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('173','','1','0','news_k15','code','0','钢材','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('174','','1','0','news_k16','code','0','特钢','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('175','','1','0','news_k17','code','0','有色','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('176','','1','0','news_k18','code','0','炉料','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('177','','1','0','news_k19','code','0','不锈钢','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('178','','1','0','news_banner1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475674','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('179','','1','0','news_banner2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('180','','0','99','head_menu','code','0','<a href=\"http://www_php168_com/member/?main=http://www_php168_com/hy/member/homepage_ctrl.php?atn=info\" target=\"_blank\">管理商铺</a> \r\n<a href=\"http://www_php168_com/member/?main=http://www_php168_com/sell/member/post_choose.php\" target=\"_blank\">发布产品</a> \r\n<a href=\"http://www_php168_com/member/?main=http://www_php168_com/buy/member/post_choose.php\" target=\"_blank\">发布求购</a> \r\n<a href=\"http://www_php168_com/buy/\" target=\"_blank\">寻找商机</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"300\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554487','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('181','','0','99','head_topmenu','code','0','<a href=\"http://www_php168_com/do/jf.php\" target=\"_blank\">如何赚积分</a> | <a href=\"http://www_php168_com/do/list.php?fid=43\" target=\"_blank\">新手入门</a> \r\n| <a href=\"http://www_php168_com/guestbook/\" target=\"_blank\">访问留言</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"200\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554775','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('182','','0','99','head_tel','code','0','400-45874147','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554818','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('183','','0','0','gift_left1','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:455:\"<div class=\"lista\"> <a href=\"$url\" class=\"img\" target=\"_blank\"><img src=\"$picurl\" onError=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"75\" height=\"75\" border=\"0\"></a> \r\n            <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n            <span class=\"price\">原价{$mart_price}元</span> <span class=\"zf\">需{$money}{$webdb[MoneyName]}</span> \r\n            <a href=\"$url\" class=\"goto\" target=\"_blank\">去看看</a> \r\n          </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:67:\"SELECT * FROM qb_gift_content  WHERE 1  ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('184','','0','0','gift_pic1','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:507:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"120\"></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <div><span>￥{$mart_price}</span><em>$money</em>积分兑换</div>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"butter\"><img src=\"$webdb[www_url]/images/yellow/gift_butter.gif\"></a>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:68:\"SELECT * FROM qb_gift_content  WHERE 1  ORDER BY list DESC LIMIT 15 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('185','','0','0','gift_news','code','0',' <div class=\"l1\"><a >免费注册一个帐号</a></div>\r\n                <div class=\"l2\"><a >努力通过各种方式赚积分</a></div>\r\n                <div class=\"l3\"><a >挑选礼品,申请兑换</a></div>\r\n                <div class=\"l4\"><a >等待审核,发放礼品</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287981570','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('186','','0','0','gift_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:3:\"220\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025121017_53fhc.jpg\";i:2;s:32:\"label/1_20101025121026_yiimn.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('385','','0','0','news_10','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:236:\"<div class=\"listpic\"> <a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"150\" height=\"120\" border=\"0\"/></a> \r\n        <a href=\"$url\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:110:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"973\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910026','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('188','','0','0','tuangou_hot','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:99:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}-{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:70:\"SELECT * FROM qb_tuangou_content  WHERE 1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287990144','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('189','','0','0','tuangou_xz1','code','0','推荐活动','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('190','','0','0','tuangou_xz2','code','0','推荐活动','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('191','','0','0','tuangou_vz1','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:97:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:70:\"SELECT * FROM qb_tuangou_content  WHERE 1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287992234','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('192','','0','0','tuangou_xz3','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:263:\" <div class=\"listpic\"> <a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" border=\"0\"></a> \r\n            <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:76:\"SELECT * FROM qb_tuangou_content  WHERE ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('193','','0','0','tuangou_hy1','pic','0','a:4:{s:6:\"imgurl\";s:65:\"http://i05.c.aliimg.com/news/upload/0831/116x58_1250072543719.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('194','','0','0','tuangou_hy2','pic','0','a:4:{s:6:\"imgurl\";s:72:\"http://i05.c.aliimg.com/news/upload/5003817/114x56love_1262239807514.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('195','','0','0','tuangou_hy3','pic','0','a:4:{s:6:\"imgurl\";s:66:\"http://i04.c.aliimg.com/news/upload/!!!!!!/92-60_1280974834710.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('196','','0','0','tuangou_hy4','pic','0','a:4:{s:6:\"imgurl\";s:71:\"http://i02.c.aliimg.com/news/upload/rain/banner114x56_1258530967195.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('197','','0','0','tuangou_hy0','code','0','赞助商','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('198','','0','0','tuangou_main','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:890:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tablelist\">\r\n          <tr>\r\n            <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"></a></td>\r\n            <td class=\"word\">\r\n            	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                &nbsp;&nbsp;$content\r\n            </td>\r\n            <td class=\"info\">\r\n            	<div>\r\n                	<a href=\"$webdb[www_url]/member/?main=$GLOBALS[Murl]/member/join.php?fid=$fid&cid=$id\" target=\"_blank\">我要报名</a>\r\n                    <span>参加人数:<em>{$totaluser}人</em></span>\r\n                    <span>发起时间:<em>{$time_Y}-{$time_m}-{$time_d}</em></span>\r\n                    <span>浏览人数:<em>{$hits}次</em></span>\r\n                </div>\r\n            </td>\r\n          </tr>\r\n        </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:3:\"120\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:76:\"SELECT * FROM qb_tuangou_content  WHERE ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"700\";s:5:\"div_h\";s:3:\"550\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287994729','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('199','','0','0','tuangou_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"420\";s:6:\"height\";s:3:\"182\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025161030_dn3nk.jpg\";i:2;s:32:\"label/1_20101025161027_ybvq3.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287994981','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('200','','0','0','coupon_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"650\";s:6:\"height\";s:3:\"190\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025161019_tkw1v.jpg\";i:2;s:32:\"label/1_20101025161026_bvtim.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287998816','0','27','0','0','default');
INSERT INTO `qb_label` VALUES ('201','','0','0','coupon_new1','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:419:\"<div class=\"listpic\">\r\n                	<div class=\"t\"><a href=\"$url\" target=\"_blank\" class=\"title\">$title</a></div>\r\n                    <div class=\"m\">原价:<strike>{$mart_price}元</strike> 优惠价:{$price}元</div>\r\n                	<div class=\"p\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"170\" height=\"125\"></a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:74:\"SELECT * FROM qb_coupon_content  WHERE ispic=1  ORDER BY list DESC LIMIT 9\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"650\";s:5:\"div_h\";s:3:\"580\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288094795','0','27','0','0','default');
INSERT INTO `qb_label` VALUES ('202','','0','0','coupon_new23','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:123:\"<div class=\"list\"><span>$username</span>于<em>{$time_m}-{$time_d}</em>发布了<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:68:\"SELECT * FROM qb_coupon_content  WHERE 1  ORDER BY list DESC LIMIT 5\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','27','0','0','default');
INSERT INTO `qb_label` VALUES ('203','','0','0','fenlei_a1','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:71:\"(SELECT * FROM qb_fenlei_content  WHERE 1 ) ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288171281','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('204','','0','0','fenlei_a2','code','0','今日<br/>推荐信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('205','','0','0','fenlei_a3','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:67:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">·$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:71:\"(SELECT * FROM qb_fenlei_content  WHERE 1 ) ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"620\";s:5:\"div_h\";s:2:\"48\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288169903','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('384','','0','0','news_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:67:\" <div class=\"s\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:13:\"tplpart_2code\";s:66:\"<div class=\"b\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"381\";s:5:\"div_h\";s:2:\"76\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909921','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('207','','0','0','fenlei_a5','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:593:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_title\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\" border=\"0\"/></a></td>\r\n                    \r\n              <td class=\"word\"> <a href=\"$url\" target=\"_blank\">$title</a> \r\n                <a href=\"$list_url\" target=\"_blank\" class=\"sort\">$fname</a> <span>{$posttime} </span> </td>\r\n                  </tr>\r\n                </table>\r\n                \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:77:\"(SELECT * FROM qb_fenlei_content  WHERE ispic=1 ) ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"233\";s:5:\"div_h\";s:3:\"223\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170216','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('208','','0','0','fenlei_a6','code','0','赞助商','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('209','','0','0','fenlei_a7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171018_bzfar.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170047','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('210','','0','0','fenlei_a8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171006_q2b2q.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('211','','0','0','fenlei_a9','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171021_fndoi.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('212','','0','0','fenlei_a10','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171047_wrbq9.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"485\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"65\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('213','','0','0','fenlei_a11','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171005_mcr01.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"65\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('214','','0','0','fenlei_b1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171059_0i0zi.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"720\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"720\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170330','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('215','','0','0','fenlei_b2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171042_twc8g.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"250\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('216','','0','0','fenlei_b3','code','0','图文信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('217','','0','0','fenlei_b4','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:272:\"<div class=\"list_fpic\">\r\n        	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n            <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"16\";s:3:\"sql\";s:78:\"(SELECT * FROM qb_fenlei_content  WHERE ispic=1 ) ORDER BY list DESC LIMIT 16 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('218','','0','0','fenlei_ab11','code','0','最新信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('219','','0','0','fenlei_ab5','code','0','热门信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('383','','0','0','news_0','code','0',' <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">餐饮美食</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">火锅\\砂锅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">韩国料理</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">庭院餐厅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">石锅拌饭</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">调价信息</a></dd>\r\n        </dl>        \r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">休闲娱乐</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">KTV俱乐部</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">酸菜鱼</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">酒吧/SPA馆</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">庭院餐厅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">日本料理</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">旅游酒店</a></dt>        \r\n            <dd><a href=\"#\" target=\"_blank\">洗浴桑拿</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">农家菜</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">足浴按摩</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">海鲜自助餐</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">儿童摄影</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">便民服务</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">玩乐影院</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">油爆虾</a></dd>        \r\n            <dd><a href=\"#\" target=\"_blank\">出厂价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">瑜伽馆</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">桌游吧</a></dd>\r\n        </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"800\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292050226','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('228','','0','0','shop_b1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:494:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tbb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>￥{$price}元</div>\r\n                    </td>\r\n                  </tr></table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338753','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('229','','0','0','shop_x1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:78:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"300\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338778','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('230','','0','0','shop_x2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:77:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list ASC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338001','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('231','','0','0','shop_x3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:78:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('232','','0','0','shop_tt1','code','0','商城公告','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('233','','0','0','shop_tt2','code','0','今日推荐商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('234','','0','0','shop_tt3','code','0','促销商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('235','','0','0','shop_tt4','code','0','注意事项','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('236','','0','0','shop_tt5','code','0','热门商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('237','','0','0','shop_tt7','code','0','最新商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('238','','0','0','shop_tt8','code','0','热销榜','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('239','','0','0','shop_tt9','code','0','家用电器','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('240','','0','0','shop_tt10','code','0','化妆品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('241','','0','0','shop_tt11','code','0','生活用品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('242','','0','0','shop_m1','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('243','','0','0','shop_m2','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('244','','0','0','shop_m3','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('245','','0','0','shop_m4','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('246','','0','0','shop_m5','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('247','','0','0','index_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151113_py1p5.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"188\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('248','','0','0','index_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151127_oithk.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"188\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('249','','0','0','index_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151143_i8ntn.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"188\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('250','','0','0','index_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151137_uz2b6.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"188\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('251','','0','0','index_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151119_r2bof.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"188\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('252','','0','0','index_ade1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151105_uweny.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('253','','0','0','index_ade2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151127_9qmry.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('254','','0','0','index_ade3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151145_j8xam.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('255','','0','0','index_ade4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151104_vhrhb.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('256','','0','0','index_ade5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151123_ziop3.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('257','','0','0','index_ade6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151143_rycrk.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('258','','0','0','index_ade7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151108_c1twt.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('259','','0','0','index_ade8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101151123_nk0jo.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('261','','0','0','index_b1ad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101161158_o5dl5.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:3:\"100\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('262','','0','0','sell_tt1ad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101161137_qampc.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','default');
INSERT INTO `qb_label` VALUES ('263','','0','0','buy_tt1ad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101161109_wqdn9.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','default');
INSERT INTO `qb_label` VALUES ('264','','0','0','hy_tt1ad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101101161136_h08af.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('268','','0','0','index_rollad1','pic','0','a:4:{s:6:\"imgurl\";s:12:\"label/t2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"33\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"33\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288668268','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('269','','0','0','index_rollad2','pic','0','a:4:{s:6:\"imgurl\";s:12:\"label/t1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"33\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"33\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288668477','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('420','','0','0','news_k3','code','0','美食资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047289','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('421','','0','0','news_k4','code','0','旅游资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047302','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('422','','0','0','news_k5','code','0','热门资料','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('423','','0','0','news_k7','code','0','本地行情','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047324','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('424','','0','0','news_k8','code','0','购物街','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047338','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('425','','0','0','news_k9','code','0','今日促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047427','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('426','','0','0','news_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"1\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"276\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161028_pjjzu.jpg\";i:2;s:32:\"label/1_20101018161051_jfeu1.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:24:\"家电折扣季品牌家电32元起\";i:2;s:20:\"百元以下烘焙烤箱详解\";}}','a:3:{s:5:\"div_w\";s:3:\"328\";s:5:\"div_h\";s:3:\"274\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292053991','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('427','','0','0','blue_indext1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:109:\"<div class=\"list$i\"><A HREF=\"$url\" target=\'_blank\'>$title</a><span>{$time_y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299127892','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('428','','0','0','blue_indext2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:265:\"<div class=\"list\"> \r\n<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n<a href=\"$url\" target=\"_blank\">{$title}</a> \r\n<span>{$price}元/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:131:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299139448','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('429','','0','0','blue_indext3','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:265:\"<div class=\"list\"> \r\n<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n<a href=\"$url\" target=\"_blank\">{$title}</a> \r\n<span>{$price}元/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:129:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('430','','0','0','blue_sellgotosell','code','0','<li class=\"l1\"><span>找卖家</span>关键词搜索，一步到位！</li>\r\n<li class=\"l2\"><span>引卖家</span>足不出户，让卖家主动找上门！<a href=\"http://www_qibosoft_com/member/?main=http://www_qibosoft_com/buy/member/post_choose.php\" target=\"_blank\">发布求购信息</a></li>\r\n<li class=\"l3\"><span>与卖家洽谈</span>与卖家网上洽谈，方便又快捷！</li>\r\n<li class=\"l4\"><span>达成交易</span>方便快捷，买卖双赢！</li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('431','','0','0','blue_sellpiclist','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:344:\"<div class=\"listpic\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n<a href=\"$url\" target=\"_blank\" class=\"t\">$title</a>\r\n<span>单价:<em>{$price}</em>元/{$my_units}</span>\r\n<span>最小起订<em> {$order_min}</em>{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:130:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('432','','0','0','blue_sellhotlist','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list$i\">\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span>{$price}元/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:122:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('433','','0','0','blue_buynewlist','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:117:\"<div class=\"list$i\">\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span><em>{$price}</em>元/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 7 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299490988','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('434','','0','0','blue_hotbuy','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list$i\">\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span>{$price}元/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.hits DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('435','','0','0','blue_picbuy','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:332:\"<div class=\"list\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span>单价:<em>{$price}</em>元/{$my_units}</span>\r\n<span>最小起订 <em>{$order_min}</em> {$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:128:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('436','','0','0','blue_howjoinhy','code','0','1.<a href=\"../do/bencandy.php?fid=44&aid=947\" target=\"_blank\">金牌会员开通流程</a><br/>\r\n2.<a href=\"../do/bencandy.php?fid=44&aid=948\" target=\"_blank\">在线申请开通金牌会员</a><br/>\r\n3.<a href=\"../do/bencandy.php?fid=44&aid=949\" target=\"_blank\">金牌会员服务介绍</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','blue');
INSERT INTO `qb_label` VALUES ('437','','0','0','blue_whyjoinhy','code','0','<a href=\"#\" target=\"_blank\"><span>为什么要申请金牌会员?</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299565949','0','16','0','0','blue');
INSERT INTO `qb_label` VALUES ('438','','0','0','blue_newsmenu','code','0','   <li class=\"begin\">\r\n        <a href=\"#\" target=\"_blank\"><span>餐饮美食</span></a>\r\n        <a href=\"#\" target=\"_blank\">火锅\\砂锅</a>\r\n        <a href=\"#\" target=\"_blank\">韩国料理</a>\r\n        <a href=\"#\" target=\"_blank\">庭院餐厅</a>\r\n        <a href=\"#\" target=\"_blank\">石锅拌饭</a>\r\n        <a href=\"#\" target=\"_blank\">调价信息</a>\r\n    </li>        \r\n    <li>\r\n        <a href=\"#\" target=\"_blank\"><span>休闲娱乐</span></a>\r\n        <a href=\"#\" target=\"_blank\">KTV俱乐部</a>\r\n        <a href=\"#\" target=\"_blank\">酸菜鱼</a>\r\n        <a href=\"#\" target=\"_blank\">酒吧/SPA馆</a>\r\n        <a href=\"#\" target=\"_blank\">庭院餐厅</a>\r\n        <a href=\"#\" target=\"_blank\">日本料理</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#\" target=\"_blank\"><span>旅游酒店</span></a>        \r\n        <a href=\"#\" target=\"_blank\">洗浴桑拿</a>\r\n        <a href=\"#\" target=\"_blank\">农家菜</a>\r\n        <a href=\"#\" target=\"_blank\">足浴按摩</a>\r\n        <a href=\"#\" target=\"_blank\">海鲜自助餐</a>\r\n        <a href=\"#\" target=\"_blank\">儿童摄影</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#\" target=\"_blank\"><span>便民服务</span></a>\r\n        <a href=\"#\" target=\"_blank\">玩乐影院</a>\r\n        <a href=\"#\" target=\"_blank\">油爆虾</a>        \r\n        <a href=\"#\" target=\"_blank\">出厂价格</a>\r\n        <a href=\"#\" target=\"_blank\">瑜伽馆</a>\r\n        <a href=\"#\" target=\"_blank\">桌游吧</a>\r\n    </li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('439','','0','0','blue_secondnews','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:195:\"<div class=\"list$i\">\r\n   <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n   <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n   <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"20\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 20 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"22\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299642881','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('440','','0','0','blue_listsortynews','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:430:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listzt\">\r\n  <tr>\r\n    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"80\" height=\"60\"/></a></td>\r\n    <td class=\"word\">\r\n    	<a href=\"$url\" target=\"_blank\">$title</a></div>\r\n        <div>$content<a href=\"$url\" target=\"_blank\">[详细]</a></div>\r\n   </td>\r\n </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:163:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('441','','0','0','blue_newsad1','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('442','','0','0','blue_news9','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:374:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnew\">\r\n<tr>\r\n<td> \r\n<a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"80\" height=\"60\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n$content <a href=\"$url\" target=\"_blank\">[详细]</a> \r\n</td>\r\n</tr>\r\n</table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299655106','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('443','','0','0','blue_newslistpic','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:251:\"<div class=\"listpic\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\"/></a></div> \r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:110:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299656296','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('444','','0','0','blue_news13','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"listm\"><A HREF=\"$url\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:394:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpw\">\r\n<tr>\r\n<td class=\"img\"><div><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\"/></a></div></td> \r\n<td class=\"word\">\r\n<a href=\"$url\" target=\"_blank\">$title</a><br/>　\r\n$content<a href=\"$url\" target=\"_blank\">[详细]</a>\r\n</td>\r\n</tr>\r\n</table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"80\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299659078','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('445','','0','0','blue_news12','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"listm\"><A HREF=\"$url\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:394:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpw\">\r\n<tr>\r\n<td class=\"img\"><div><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\"/></a></div></td> \r\n<td class=\"word\">\r\n<a href=\"$url\" target=\"_blank\">$title</a><br/>　\r\n$content<a href=\"$url\" target=\"_blank\">[详细]</a>\r\n</td>\r\n</tr>\r\n</table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:132:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.hits ASC LIMIT 7 \";s:4:\"sql2\";s:145:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.hits ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299659352','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('446','','0','0','blue_newsad2','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"93\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('451','','0','0','blue_hotcompany','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list\"><A HREF=\"$webdb[www_url]/home/?uid=$uid\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:65:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','16','0','0','blue');
INSERT INTO `qb_form_config` VALUES ('module_pre','form_','');
INSERT INTO `qb_form_config` VALUES ('module_id','21','');
INSERT INTO `qb_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_form_config` VALUES ('Info_webname','万能表单','');
INSERT INTO `qb_form_config` VALUES ('module_close','0','');
INSERT INTO `qb_form_content` VALUES ('27','','3','1','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `qb_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `qb_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `qb_form_content_3` VALUES ('18','1','售后客服','','222223','54325@qq.com','133444444443');
INSERT INTO `qb_form_content_3` VALUES ('25','1','售后客服','hhhhhhhhhhhhhhhhhh','222223','54325@qq.com','13377777777');
INSERT INTO `qb_form_content_3` VALUES ('27','1','售后客服','192.168.0.99/55 all righ\nts reserved \n京ICP备05047353号 \nPowered by PHP168','222223','54325@qq.com','13377777777');
INSERT INTO `qb_form_module` VALUES ('1','版主申请','0','','a:3:{s:8:\"field_db\";a:8:{s:8:\"sortname\";a:14:{s:5:\"title\";s:18:\"申请哪个栏目的版主\";s:10:\"field_name\";s:8:\"sortname\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:8:\"checkbox\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:38:\"新闻频道\r\n下载频道\r\n图片频道\r\n视频频道\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:2:\"11\";s:9:\"allowview\";N;}s:7:\"webtime\";a:15:{s:5:\"title\";s:16:\"每天上网几个小时\";s:10:\"field_name\";s:7:\"webtime\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"4\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:4:\"小时\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"真实姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"9\";s:9:\"allowview\";N;}s:3:\"sex\";a:15:{s:5:\"title\";s:4:\"性别\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|男\r\n2|女\r\n0|保密\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"联系QQ\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:8:\"手机号码\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:8:\"interest\";a:14:{s:5:\"title\";s:8:\"兴趣爱好\";s:10:\"field_name\";s:8:\"interest\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:9:\"introduce\";a:14:{s:5:\"title\";s:8:\"自我介绍\";s:10:\"field_name\";s:9:\"introduce\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"内容\";}s:11:\"listshow_db\";a:2:{s:8:\"truename\";s:8:\"真实姓名\";s:3:\"sex\";s:4:\"性别\";}}','3,4,8,9','0','<p><strong>如果你有激情,有梦想,就来申请做我们的版主吧!</strong></p>','0','0','审批','');
INSERT INTO `qb_form_module` VALUES ('3','投诉建议','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:15:{s:5:\"title\";s:8:\"投诉类型\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"售前客服\r\n售后客服\r\n产品质量\r\n其它\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"你的电话\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"你的邮箱\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:15:{s:5:\"title\";s:8:\"投诉内容\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"你的称呼\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:8:\"投诉类型\";s:8:\"truename\";s:8:\"你的称呼\";}}','','0','','0','1','处理','3,4');
INSERT INTO `qb_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `qb_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `qb_friendlink` VALUES ('12','0','PHPWIND官方论坛','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND官方论坛','32','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('5','0','齐博CMS','http://www.qibosoft.com','../images/default/friendlink.gif','国内著名的CMS建站系统提供商!','40','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('16','3','华夏名网','http://www.sudu.cn/','','','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('17','3','动网论坛','http://www.dvbbs.net/','','动网论坛','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('21','2','易宝支付','http://www.yeepay.com/','friendlink/1_20090418160410_UxB8E.gif','易宝支付','39','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('25','2','站长网','http://admin5.com/','friendlink/1_20090418160400_wqpAk.gif','站长网','37','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('26','2','中国站长站','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','中国站长站','38','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('27','2','WEB开发网','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB开发网','34','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('29','2','中电华通','http://www.chinaccnet.com/','','中电华通','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('32','2','快车下载','http://union.flashget.com/','','快车下载','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('34','3','CNZZ','http://www.cnzz.cn/','','CNZZ','26','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink_sort` VALUES ('2','友情链接','0');
INSERT INTO `qb_friendlink_sort` VALUES ('3','合作伙伴','0');
INSERT INTO `qb_pm` VALUES ('4','11','','0','<font color=\"re','rebox','1','你有客户下订单了','1286873754','请尽快查看<A HREF=\'http://v7.com/buy/joinshow.php?fid=8&id=4\' target=\'_blank\'>http://v7.com/buy/joinshow.php?fid=8&id=4</A>');
INSERT INTO `qb_pm` VALUES ('10','1','','0','SYSTEM','rebox','1','有客户向你报价了','1287630209','请尽快查看<A HREF=\'http://v7.com/buy/member/joinshow.php?id=5\' target=\'_blank\'>http://v7.com/buy/member/joinshow.php?id=5</A>');
INSERT INTO `qb_pm` VALUES ('9','1','','0','SYSTEM','rebox','0','有客户向你询价了','1287628221','请尽快查看<A HREF=\'http://v7.com/sell/member/joinshow.php?fid=102&id=6\' target=\'_blank\'>http://v7.com/sell/member/joinshow.php?id=6</A>');
INSERT INTO `qb_pm` VALUES ('11','1','','0','SYSTEM','rebox','0','你有客户下订单了','1288143909','请尽快查看<A HREF=\'http://v7.com/shop/joinshow.php?fid=32&id=1\' target=\'_blank\'>http://v7.com/shop/joinshow.php?fid=32&id=1</A>');
INSERT INTO `qb_guestbook_content` VALUES ('12','0','1','','','','','1','admin','192.168.0.99','忘记密码强制进入网站后台的方法是:修改/admin/global.php文件,查找$ForceEnter=0;把0改成1即可,强制进入网站的后台.','1','1240206881','1240206881','','');
INSERT INTO `qb_guestbook_content` VALUES ('13','0','1','','','','','1','admin','192.168.0.99','普通管理员成为超级管理员的方法是,修改文件/php168/admin.php,把里边的帐号更换一下即可','1','1240206958','1240206958','','');
INSERT INTO `qb_guestbook_content` VALUES ('14','0','1','','','','','1','admin','192.168.0.99','整站系统的数据库配置文件是/php168/mysql_config.php','1','1240207079','1240207079','','');
INSERT INTO `qb_guestbook_content` VALUES ('15','0','1','','','','','1','admin','192.168.0.99','服务器默认限制上传文件大小为2M,你如果不修改服务器设置.而想在整站系统上传大于2M的文件.是不可以的.必须先修改服务器设置.一般来说服务器的PHP配置文件放在c:\\windows\\php.ini这里.','1','1240207216','1240207216','','');
INSERT INTO `qb_guestbook_content` VALUES ('16','0','1','','','','','1','admin','192.168.0.99','如果服务器做了限制.就无法使用采集程序.','1','1240207330','1240207330','','');
INSERT INTO `qb_guestbook_content` VALUES ('22','1','1','','','','','1','admin','127.0.0.1','fsdafds\r\nwfdsafd','1','1283393799','1283393799','a:4:{s:8:\"username\";s:5:\"admin\";s:7:\"content\";s:20:\"wfdsa\r\nfd\r\n3511\r\n999\";s:8:\"posttime\";i:1283394570;s:3:\"uid\";s:1:\"1\";}','');
INSERT INTO `qb_guestbook_content` VALUES ('23','2','1','','','','','1','admin','127.0.0.1','42452424','1','1283395885','1283395885','a:4:{s:7:\"content\";s:7:\"1111144\";s:3:\"uid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:8:\"posttime\";i:1283395894;}','');
INSERT INTO `qb_guestbook_sort` VALUES ('1','0','发展建议','0','1','0','0','','0','0','','','','','','','0','','','','0','','','','','0','b:0;','0','0','','','0');
INSERT INTO `qb_guestbook_sort` VALUES ('2','0','意见投诉','0','1','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `qb_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `qb_guestbook_config` VALUES ('groupPassPassGuestBook','3,4','');
INSERT INTO `qb_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `qb_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `qb_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `qb_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `qb_guestbook_config` VALUES ('Info_webname','留言本','');
INSERT INTO `qb_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_limitword` VALUES ('1','造反','造**');
INSERT INTO `qb_limitword` VALUES ('2','法轮功','法**功');
INSERT INTO `qb_ad_norm_place` VALUES ('1','article_list','文章列表页侧面广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `qb_ad_norm_place` VALUES ('10','article_content','文章内容里边的广告','pic','1','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:32:\"other/1_20090326120324_mnfIi.jpg\";s:7:\"linkurl\";s:22:\"http://www.php168.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','5','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('2','article_show','文章内容页侧边下方广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:1782:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.zxx6.com/\" target=_blank><font color=#ff0000><strong>站长学习网</strong></font></a> 　　<a href=\"http://www.angelyyl.cn/\" target=_blank>冰蓝世界</a><a href=\"http://www.czin.cn/\" target=_blank><br />崇左热线—崇左人的网上家园</a> <br /><a href=\"http://www.sy50.com/\" target=_blank>邵阳网邻 了解邵阳 商务邵阳</a> <br /><a href=\"http://www.771881.cn/\" target=_blank>亲亲你抱抱你-国际女同拉拉网-败家女网站 </a><br /><a href=\"http://www.aihut.com/\" target=_blank>情感小筑原创情感文章网 </a><br /><a href=\"http://www.popyule.com/\" target=_blank>泡泡娱乐网--娱乐综合站PHP168构建</a> <br /><a href=\"http://www.china551.cn/\" target=_blank><font color=#ff0000>高中物理网</font></a> 　　<a href=\"http://www.ym988.com/\" target=_blank>圆梦模板工作室 </a><br /><a href=\"http://www.welights.com/\" target=_blank>国际灯具网</a> 　　<a href=\"http://www.hnmssy.cn/\" target=_blank>湖南民俗摄影网</a> <br /><a href=\"http://www.nuoyue.net/\" target=_blank><font color=#ff0000>诺跃站长社区 - 站长、菜鸟学习的好地方</font></a> <br /><a href=\"http://www.qzfl.com/\" target=_blank>泉州分类 连接泉州信息，服务百姓生活</a> <br /><a href=\"http://www.stmsn.com/\" target=_blank>中国内衣联盟</a> 　　<a href=\"http://www.downcc.cn/\" target=_blank>大当家软件站 </a><br /><a href=\"http://www.yt12333.cn/\" target=_blank>劳动社保之家-盐亭劳动保障网</a> <br /><a href=\"http://www.gooyi.cn/\" target=_blank>广易网 - 广州最大门户网 </a><br /><a href=\"http://www.idercn.com/\" target=_blank>I.D.部落</a> 　　<a href=\"http://www.tz0632.com/\" target=_blank>滕州城市网</a> 　　<a href=\"http://www.doubar.com/\" target=_blank>豆吧 </a></div>\r\n<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.wfseo.org/\" target=_blank><font color=#d2691e>重庆网站优化</font><br /></a><br /></div>\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('11','digg_list','顶客排行榜侧边广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:813:\"<div style=\"LINE-HEIGHT: 200%\"><a href=\"http://www.ibioo.com/\" target=_blank><font color=#ff0000>绿谷生物网--打造最具活力生物站!</font> </a><br /><a href=\"http://www.51solo.net/\" target=_blank>搜罗娱乐门户－精彩娱乐生活从我开始 </a><br /><a href=\"http://1.com/45/admin/www.china-highway.com\" target=_blank>方向和路线尽在中国高速公路网 </a><br /><a href=\"http://www.nenbei.com/\" target=_blank><font color=#ff0000>嫩北聚合娱乐网欢迎您的到来 </font></a><br /><a href=\"http://www.liuv.net/\" target=_blank><font color=#ff0000>流水设计</font></a> <br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创 文学与摄影的创作平台 </a><br /><a href=\"http://www.netchinatown.com/\" target=_blank>时尚唐城-海外华人精英的网络家园 </a><br /><a href=\"http://frp.ok586.cn/\" target=_blank>上海玻璃钢冷却塔专业生产厂家. </a></div>\";}','0','0','0','0','0','5','0','1','/do/digg.php');
INSERT INTO `qb_ad_norm_place` VALUES ('19','list_page_topad','列表页侧边顶部广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:13:\"ad/listad.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"130\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','2','0','10','1','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `qb_ad_norm_place` VALUES ('18','show_topad','内容页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:18:\"ad/ad_show_top.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','10','1','1','../do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('17','show_right_top_picad','内容页侧边顶部图片广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:15:\"ad/qyshowad.jpg\";s:7:\"linkurl\";s:43:\"http://www.qy.com.cn/idc/product_double.asp\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"110\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','29','0','10','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('20','AD_list_topad','列表页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:14:\"ad/cnidca1.gif\";s:7:\"linkurl\";s:21:\"http://www.cnidc.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','4','0','10','1','1','/do/list.php?fid=1');
INSERT INTO `qb_ad_norm_place` VALUES ('21','sp_show_ad','专题页广告位','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:943:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://3cq.org/\" target=_blank>重庆幼儿教育 一切为了我们的孩子</a> <br /><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a> <br /><a href=\"http://www.21yao.com/\" target=_blank>世纪医药网</a><br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创</a> <br /><a href=\"http://www.jnrx.net/\" target=_blank>胶南热线</a> <br /><a href=\"http://www.7mt.cn/\" target=_blank>骑摩托-中国第一摩托车互动媒体 </a><br /><a href=\"http://www.hnpolice.net/\" target=_blank>湖南公安高等专科学校校友会 </a><br /><a href=\"http://www.seo178.com/\" target=_blank>SEO培训选择--北京SEO培训中心</a> <br /><a href=\"http://www.51solo.net/\" target=_blank>品牌推广,SEO网站优化 </a><br /><a href=\"http://www.kljy.cn/\" target=_blank>致力于儿童教育 </a><br /><a href=\"http://www.eia8.com/job/\" target=_blank>中国环评吧招聘求职网</a> <br /><a href=\"http://www.wenzhang8.com/\" target=_blank>文章吧 打造最好经典文章网 </a>　 </div>\";}','0','0','0','0','0','0','0','1','/do/showsp.php?fid=1&id=23');
INSERT INTO `qb_ad_norm_place` VALUES ('22','AD_6112','主页滚动图1','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:12:\"label/t1.gif\";s:7:\"linkurl\";s:1:\"#\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"33\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','0','1','1','');
INSERT INTO `qb_ad_norm_place` VALUES ('23','AD_9996','主页滚动图2','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:12:\"label/t2.gif\";s:7:\"linkurl\";s:1:\"#\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"33\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','0','1','1','');
INSERT INTO `qb_ad_config` VALUES ('module_id','24','');
INSERT INTO `qb_ad_config` VALUES ('Info_webname','广告系统','');
INSERT INTO `qb_ad_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_ad_config` VALUES ('module_pre','ad_','');
INSERT INTO `qb_ad_compete_place` VALUES ('3','顶客页竞价广告','0','0','50','5','8','36','1','/do/digg.php');
INSERT INTO `qb_ad_compete_user` VALUES ('11','1','admin','1239277578','1239709578','50','3','1','http://www.php168.com/','P8官方站','0','','0');
INSERT INTO `qb_ad_compete_user` VALUES ('12','1','admin','1239279810','1239711810','50','3','1','http://www.php168.com/bbs','P8官方论坛','0','','0');
INSERT INTO `qb_upfile` VALUES ('1','0','0','0','1','1288596433','label','tmp-1_20101101151113_py1p5.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('2','0','0','0','1','1288596447','label','tmp-1_20101101151127_oithk.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('3','0','0','0','1','1288596463','label','tmp-1_20101101151143_i8ntn.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('4','0','0','0','1','1288596637','label','tmp-1_20101101151137_uz2b6.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('5','0','0','0','1','1288596679','label','tmp-1_20101101151119_r2bof.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('6','0','0','0','1','1288597685','label','tmp-1_20101101151105_uweny.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('7','0','0','0','1','1288597707','label','tmp-1_20101101151127_9qmry.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('8','0','0','0','1','1288597725','label','tmp-1_20101101151145_j8xam.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('9','0','0','0','1','1288597744','label','tmp-1_20101101151104_vhrhb.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('10','0','0','0','1','1288597763','label','tmp-1_20101101151123_ziop3.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('11','0','0','0','1','1288597783','label','tmp-1_20101101151143_rycrk.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('12','0','0','0','1','1288597808','label','tmp-1_20101101151108_c1twt.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('13','0','0','0','1','1288597823','label','tmp-1_20101101151123_nk0jo.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('14','0','0','0','1','1288598456','label','tmp-1_20101101161156_ltkko.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('15','0','0','0','1','1288599538','label','tmp-1_20101101161158_o5dl5.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('16','0','0','0','1','1288599937','label','tmp-1_20101101161137_qampc.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('17','0','0','0','1','1288600089','label','tmp-1_20101101161109_wqdn9.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('18','0','0','0','1','1288600236','label','tmp-1_20101101161136_h08af.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('19','0','0','0','1','1288600418','label','tmp-1_20101101161138_mbysz.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('20','0','0','0','1','1288600580','label','tmp-1_20101101161120_kchzq.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('21','0','0','0','1','1288617144','qb_showroom_/0','tmp-1_20101101211124_ewwhb.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('22','0','0','0','1','1288660211','homepage/logo/1/','tmp-1_20101102091111_ybuoq.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('23','0','0','0','27','1288661741','homepage/logo/1/','tmp-27_20101102091141_e1uuj.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('24','0','0','0','28','1288662180','homepage/logo/1/','tmp-28_20101102091100_6jeu7.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('25','0','0','0','29','1288662327','homepage/logo/1/','tmp-29_20101102091127_bcl6e.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('26','0','0','0','30','1288662567','homepage/logo/1/','tmp-30_20101102091127_ibn2r.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('27','0','0','0','31','1288662786','homepage/logo/1/','tmp-31_20101102091106_ijzou.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('28','0','0','0','32','1288662947','homepage/logo/1/','tmp-32_20101102091147_9pqhn.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('29','0','0','0','33','1288663129','homepage/logo/1/','tmp-33_20101102091149_ofqqf.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('30','0','0','0','34','1288663299','homepage/logo/1/','tmp-34_20101102101139_apfdl.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('31','0','0','0','35','1288663462','homepage/logo/1/','tmp-35_20101102101122_jvufs.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('32','0','0','0','36','1288663617','homepage/logo/1/','tmp-36_20101102101157_jugc3.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('33','0','0','0','37','1288663816','homepage/logo/1/','tmp-37_20101102101116_xmwaa.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('34','0','0','0','1','1288665085','label','tmp-1_20101102101125_x0cdr.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('35','0','0','0','27','1288666650','qb_hr_/0','tmp-27_20101102101130_flozo.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('36','0','0','0','27','1288666651','qb_hr_/0','tmp-27_20101102101131_m6scp.gif','1','1');
INSERT INTO `qb_upfile` VALUES ('37','0','0','0','1','1288666857','qb_hr_/0','tmp-1_20101102111157_hlxdx.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('38','0','0','0','29','1288666891','qb_hr_/0','tmp-29_20101102111131_caqee.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('39','0','0','0','28','1288666995','qb_hr_/0','tmp-28_20101102111115_mn7ex.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('40','0','0','0','31','1288667175','qb_hr_/0','tmp-31_20101102111115_yrnp5.jpg','1','1');
INSERT INTO `qb_upfile` VALUES ('41','0','0','0','32','1288667364','qb_hr_/0','tmp-32_20101102111124_jaf0y.jpg','1','1');
INSERT INTO `qb_vote_element` VALUES ('37','6','熊晓鸽','4','10','','','');
INSERT INTO `qb_vote_element` VALUES ('38','6','马化腾','4','7','','','');
INSERT INTO `qb_vote_element` VALUES ('39','6','马云','2','5','','','');
INSERT INTO `qb_vote_element` VALUES ('41','6','李彦宏','6','6','','','');
INSERT INTO `qb_vote_element` VALUES ('81','11','阿里妈妈和淘宝合并','0','4','vote/1_20090418220434_DSazk.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('80','11','Chinaz之CNIDC主机网上线','0','9','vote/1_20090419090435_51j39.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('68','6','丁磊','12','9','','','');
INSERT INTO `qb_vote_element` VALUES ('70','10','百度粉丝团','6','0','vote/1_20090317160304_1cyPh.gif','我是百度粉丝团','http://www.baidu.com');
INSERT INTO `qb_vote_element` VALUES ('71','10','谷歌粉丝团','1','0','vote/1_20090317160317_NO50S.gif','我是谷歌粉丝团','http://www.google.cn');
INSERT INTO `qb_vote_element` VALUES ('72','11','博客已死，SNS当立','1','8','vote/1_20090419090425_nkqeB.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('73','11','CN域名白菜到猪肉','2','10','vote/1_20090419090455_L5Iz8.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('74','11','九九音乐网倒闭','1','3','vote/1_20090419090414_BVe9o.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('75','11','番茄花园被告','2','6','vote/1_20090419090445_qQiaW.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('76','11','红火的全国站长大会','2','5','vote/1_20090419090445_QVf6M.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('77','11','丁磊养猪','0','7','vote/1_20090419090459_1MkWx.jpg','','http://bbs.chinaz.com/Shuiba/thread-1240750-1-1.html');
INSERT INTO `qb_vote_comment` VALUES ('11','10','0','1','admin','1237279209','rrrrrrrrrrrrrrr','192.168.0.99','0','1');
INSERT INTO `qb_vote_comment` VALUES ('12','10','0','1','admin','1237279223','dddddddddddddddd','192.168.0.99','0','1');
INSERT INTO `qb_vote_comment` VALUES ('14','6','0','1','admin','1239025849','&nbsp;证&nbsp;码:','127.0.0.1','0','1');
INSERT INTO `qb_vote_comment` VALUES ('22','6','0','1','admin','1283825218','fdsadf','127.0.0.1','0','1');
INSERT INTO `qb_vote_comment` VALUES ('19','11','0','1','admin','1240210890','不错呀','192.168.0.99','0','1');
INSERT INTO `qb_vote_comment` VALUES ('20','11','0','1','admin','1255082863','fdsa','127.0.0.1','0','1');
INSERT INTO `qb_vote_comment` VALUES ('21','11','0','1','admin','1283823884','ll','127.0.0.1','0','1');
INSERT INTO `qb_vote_topic` VALUES ('6','互联网哪些前辈是你支持的','互联网哪些前辈是你支持和影响到你的？','2','600','0','','1164793927','','1233749543','1265256743','0','1','<div class=\"voteid\" title=\"$describes\">{$button}{$title}({$votenum})</div>','0','0','0');
INSERT INTO `qb_vote_topic` VALUES ('11','2008年中国站长十大热门事件投票','-------请为你觉得2008年最热门的站长事件投上一票.','2','500','0','','1237281523','','1233749543','1580789543','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:118px;float:left;margin-top:4px;\" class=\"voteid\">\r\n  <tr> \r\n    <td align=\"center\"><A HREF=\"$url\" target=\"_blank\" style=\"border:1px solid #ccc;display:block;width:100px;height:75px;\"><img alt=\"{$title}\" style=\"border:1px solid #fff;\" src=\"$img\" border=\"0\" width=\"100\" height=\"75\"></A></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\">\r\n      <div  style=\"width:110px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;\">{$button}(<b><font color=\"#FF0000\" >{$votenum}</font></b>)<a HREF=\"$url\" target=\"_blank\" title=\"{$title}\">{$title}</a></div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td>{$describes}</td>\r\n  </tr>\r\n  <tr> \r\n    <td></td>\r\n  </tr>\r\n</table>\r\n\r\n','1','0','0');
INSERT INTO `qb_vote_topic` VALUES ('10','哪个搜索引擎好?','你喜欢使用哪个搜索引擎呢,请投上一票?','1','15','0','','1237275830','','0','0','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:90px;float:left;\">\r\n  <tr> \r\n    <td align=\"center\" valign=\"middle\" style=\"line-height:40px;\"> <a href=\"$url\" target=_blank> \r\n      <b>$title</b></a> </td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\"><a href=\"$url\" target=\"_blank\"><img alt=\"$describes\" src=\"$img\" width=\"80\" height=\"30\" border=\"0\"></a></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:20px;\"> <font color=\"#990000\">共 <b><font color=\"#FF0000\">$votenum</font> 票 \r\n      </b></font></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:40px;\"><a href=\"$webdb[www_url]/do/vote.php?action=vote&voteId=$id\" target=\"_blank\"><u>投一票</u></a> \r\n      <a href=\"$webdb[www_url]/do/vote.php?job=show&cid=$cid#postcomment\" target=\"_blank\"><u>评一评</u></a></td>\r\n  </tr>\r\n</table>','2','0','0');
INSERT INTO `qb_vote_config` VALUES ('module_id','23','');
INSERT INTO `qb_vote_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_vote_config` VALUES ('Info_webname','投票系统','');
INSERT INTO `qb_vote_config` VALUES ('module_pre','vote_','');
INSERT INTO `qb_area` VALUES ('1','0','北京市','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('2','0','上海市','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('3','0','天津市','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('4','0','重庆市','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('5','0','河北省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('6','0','山西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('7','0','内蒙古自治区','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('8','0','辽宁省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('9','0','吉林省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('10','0','黑龙江省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('11','0','江苏省','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('12','0','浙江省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('13','0','安徽省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('14','0','福建省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('15','0','江西省','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('16','0','山东省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('17','0','河南省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('18','0','湖北省','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('19','0','湖南省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('20','0','广东省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('21','0','广西壮族自治区','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('22','0','海南省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('23','0','四川省','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('24','0','贵州省','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('25','0','云南省','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('26','0','西藏自治区','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('27','0','陕西省','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('28','0','甘肃省','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('29','0','青海省','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('30','0','宁夏回族自治区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('31','0','新疆维吾尔自治区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('32','0','台湾省','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('33','0','香港特别行政区','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('34','0','澳门特别行政区','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('35','1','东城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('36','1','西城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('37','1','崇文区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('38','1','宣武区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('39','1','朝阳区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('40','1','丰台区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('41','1','石景山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('42','1','海淀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('43','1','门头沟区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('44','1','房山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('45','1','通州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('46','1','顺义区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('47','1','昌平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('48','1','大兴区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('49','1','怀柔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('50','1','平谷区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('51','1','密云县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('52','1','延庆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('53','2','黄浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('54','2','卢湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('55','2','徐汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('56','2','长宁区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('57','2','静安区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('58','2','普陀区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('59','2','闸北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('60','2','虹口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('61','2','杨浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('62','2','闵行区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('63','2','宝山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('64','2','嘉定区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('65','2','浦东新区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('66','2','金山区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('67','2','松江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('68','2','青浦区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('69','2','南汇区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('70','2','奉贤区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('71','2','崇明县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('72','3','和平区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('73','3','河东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('74','3','河西区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('75','3','南开区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('76','3','河北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('77','3','红桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('78','3','塘沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('79','3','汉沽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('80','3','大港区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('81','3','东丽区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('82','3','西青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('83','3','津南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('84','3','北辰区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('85','3','武清区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('86','3','宝坻区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('87','3','宁河县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('88','3','静海县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('89','3','蓟县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('90','4','万州区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('91','4','涪陵区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('92','4','渝中区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('93','4','大渡口区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('94','4','江北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('95','4','沙坪坝区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('96','4','九龙坡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('97','4','南岸区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('98','4','北碚区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('99','4','万盛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('100','4','双桥区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('101','4','渝北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('102','4','巴南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('103','4','黔江区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('104','4','长寿区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('105','4','綦江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('106','4','潼南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('107','4','铜梁县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('108','4','大足县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('109','4','荣昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('110','4','璧山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('111','4','梁平县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('112','4','城口县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('113','4','丰都县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('114','4','垫江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('115','4','武隆县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('116','4','忠县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('117','4','开县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('118','4','云阳县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('119','4','奉节县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('120','4','巫山县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('121','4','巫溪县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('122','4','石柱土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('123','4','秀山土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('124','4','酉阳土家族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('125','4','彭水苗族土家族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('126','4','江津市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('127','4','合川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('128','4','永川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('129','4','南川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('130','5','石家庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('131','5','唐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('132','5','秦皇岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('133','5','邯郸市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('134','5','邢台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('135','5','保定市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('136','5','张家口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('137','5','承德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('138','5','沧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('139','5','廊坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('140','5','衡水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('141','6','太原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('142','6','大同市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('143','6','阳泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('144','6','长治市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('145','6','晋城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('146','6','朔州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('147','6','晋中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('148','6','运城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('149','6','忻州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('150','6','临汾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('151','6','吕梁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('152','7','呼和浩特市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('153','7','包头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('154','7','乌海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('155','7','赤峰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('156','7','通辽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('157','7','鄂尔多斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('158','7','呼伦贝尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('159','7','巴彦淖尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('160','7','乌兰察布市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('161','7','兴安盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('162','7','锡林郭勒盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('163','7','阿拉善盟','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('164','8','沈阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('165','8','大连市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('166','8','鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('167','8','抚顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('168','8','本溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('169','8','丹东市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('170','8','锦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('171','8','营口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('172','8','阜新市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('173','8','辽阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('174','8','盘锦市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('175','8','铁岭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('176','8','朝阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('177','8','葫芦岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('178','9','长春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('179','9','吉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('180','9','四平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('181','9','辽源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('182','9','通化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('183','9','白山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('184','9','松原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('185','9','白城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('186','9','延边朝鲜族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('187','10','哈尔滨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('188','10','齐齐哈尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('189','10','鸡西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('190','10','鹤岗市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('191','10','双鸭山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('192','10','大庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('193','10','伊春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('194','10','佳木斯市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('195','10','七台河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('196','10','牡丹江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('197','10','黑河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('198','10','绥化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('199','10','大兴安岭地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('200','11','南京市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('201','11','无锡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('202','11','徐州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('203','11','常州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('204','11','苏州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('205','11','南通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('206','11','连云港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('207','11','淮安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('208','11','盐城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('209','11','扬州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('210','11','镇江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('211','11','泰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('212','11','宿迁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('213','12','杭州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('214','12','宁波市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('215','12','温州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('216','12','嘉兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('217','12','湖州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('218','12','绍兴市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('219','12','金华市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('220','12','衢州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('221','12','舟山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('222','12','台州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('223','12','丽水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('224','13','合肥市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('225','13','芜湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('226','13','蚌埠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('227','13','淮南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('228','13','马鞍山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('229','13','淮北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('230','13','铜陵市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('231','13','安庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('232','13','黄山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('233','13','滁州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('234','13','阜阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('235','13','宿州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('236','13','巢湖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('237','13','六安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('238','13','亳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('239','13','池州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('240','13','宣城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('241','14','福州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('242','14','厦门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('243','14','莆田市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('244','14','三明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('245','14','泉州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('246','14','漳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('247','14','南平市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('248','14','龙岩市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('249','14','宁德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('250','15','南昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('251','15','景德镇市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('252','15','萍乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('253','15','九江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('254','15','新余市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('255','15','鹰潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('256','15','赣州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('257','15','吉安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('258','15','宜春市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('259','15','抚州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('260','15','上饶市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('261','16','济南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('262','16','青岛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('263','16','淄博市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('264','16','枣庄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('265','16','东营市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('266','16','烟台市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('267','16','潍坊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('268','16','济宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('269','16','泰安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('270','16','威海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('271','16','日照市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('272','16','莱芜市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('273','16','临沂市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('274','16','德州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('275','16','聊城市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('276','16','滨州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('277','16','荷泽市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('278','17','郑州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('279','17','开封市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('280','17','洛阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('281','17','平顶山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('282','17','安阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('283','17','鹤壁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('284','17','新乡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('285','17','焦作市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('286','17','濮阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('287','17','许昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('288','17','漯河市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('289','17','三门峡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('290','17','南阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('291','17','商丘市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('292','17','信阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('293','17','周口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('294','17','驻马店市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('295','18','武汉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('296','18','黄石市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('297','18','十堰市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('298','18','宜昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('299','18','襄樊市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('300','18','鄂州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('301','18','荆门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('302','18','孝感市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('303','18','荆州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('304','18','黄冈市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('305','18','咸宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('306','18','随州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('307','18','恩施土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('308','18','仙桃市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('309','18','潜江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('310','18','天门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('311','18','神农架林区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('312','19','长沙市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('313','19','株洲市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('314','19','湘潭市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('315','19','衡阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('316','19','邵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('317','19','岳阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('318','19','常德市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('319','19','张家界市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('320','19','益阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('321','19','郴州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('322','19','永州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('323','19','怀化市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('324','19','娄底市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('325','19','湘西土家族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('326','20','广州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('327','20','韶关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('328','20','深圳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('329','20','珠海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('330','20','汕头市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('331','20','佛山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('332','20','江门市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('333','20','湛江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('334','20','茂名市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('335','20','肇庆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('336','20','惠州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('337','20','梅州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('338','20','汕尾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('339','20','河源市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('340','20','阳江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('341','20','清远市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('342','20','东莞市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('343','20','中山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('344','20','潮州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('345','20','揭阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('346','20','云浮市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('347','21','南宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('348','21','柳州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('349','21','桂林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('350','21','梧州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('351','21','北海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('352','21','防城港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('353','21','钦州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('354','21','贵港市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('355','21','玉林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('356','21','百色市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('357','21','贺州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('358','21','河池市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('359','21','来宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('360','21','崇左市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('361','22','海口市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('362','22','三亚市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('363','22','五指山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('364','22','琼海市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('365','22','儋州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('366','22','文昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('367','22','万宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('368','22','东方市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('369','22','定安县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('370','22','屯昌县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('371','22','澄迈县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('372','22','临高县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('373','22','白沙黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('374','22','昌江黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('375','22','乐东黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('376','22','陵水黎族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('377','22','保亭黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('378','22','琼中黎族苗族自治县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('379','22','西沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('380','22','南沙群岛','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('381','22','中沙群岛的岛礁及其海域','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('382','23','成都市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('383','23','自贡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('384','23','攀枝花市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('385','23','泸州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('386','23','德阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('387','23','绵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('388','23','广元市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('389','23','遂宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('390','23','内江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('391','23','乐山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('392','23','南充市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('393','23','眉山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('394','23','宜宾市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('395','23','广安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('396','23','达州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('397','23','雅安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('398','23','巴中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('399','23','资阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('400','23','阿坝藏族羌族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('401','23','甘孜藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('402','23','凉山彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('403','24','贵阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('404','24','六盘水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('405','24','遵义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('406','24','安顺市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('407','24','铜仁地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('408','24','黔西南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('409','24','毕节地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('410','24','黔东南苗族侗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('411','24','黔南布依族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('412','25','昆明市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('413','25','曲靖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('414','25','玉溪市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('415','25','保山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('416','25','昭通市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('417','25','丽江市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('418','25','思茅市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('419','25','临沧市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('420','25','楚雄彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('421','25','红河哈尼族彝族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('422','25','文山壮族苗族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('423','25','西双版纳傣族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('424','25','大理白族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('425','25','德宏傣族景颇族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('426','25','怒江傈僳族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('427','25','迪庆藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('428','26','拉萨市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('429','26','昌都地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('430','26','山南地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('431','26','日喀则地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('432','26','那曲地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('433','26','阿里地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('434','26','林芝地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('435','27','西安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('436','27','铜川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('437','27','宝鸡市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('438','27','咸阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('439','27','渭南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('440','27','延安市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('441','27','汉中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('442','27','榆林市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('443','27','安康市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('444','27','商洛市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('445','28','兰州市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('446','28','嘉峪关市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('447','28','金昌市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('448','28','白银市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('449','28','天水市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('450','28','武威市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('451','28','张掖市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('452','28','平凉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('453','28','酒泉市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('454','28','庆阳市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('455','28','定西市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('456','28','陇南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('457','28','临夏回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('458','28','甘南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('459','29','西宁市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('460','29','海东地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('461','29','海北藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('462','29','黄南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('463','29','海南藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('464','29','果洛藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('465','29','玉树藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('466','29','海西蒙古族藏族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('467','30','银川市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('468','30','石嘴山市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('469','30','吴忠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('470','30','固原市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('471','30','中卫市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('472','31','乌鲁木齐市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('473','31','克拉玛依市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('474','31','吐鲁番地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('475','31','哈密地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('476','31','昌吉回族自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('477','31','博尔塔拉蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('478','31','巴音郭楞蒙古自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('479','31','阿克苏地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('480','31','克孜勒苏柯尔克孜自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('481','31','喀什地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('482','31','和田地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('483','31','伊犁哈萨克自治州','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('484','31','塔城地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('485','31','阿勒泰地区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('486','31','石河子市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('487','31','阿拉尔市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('488','31','图木舒克市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('489','31','五家渠市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('490','32','台北市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('491','32','高雄市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('492','32','基隆市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('493','32','新竹市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('494','32','台中市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('495','32','嘉义市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('496','32','台南市','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('497','32','台北县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('498','32','桃园县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('499','32','新竹县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('500','32','苗栗县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('501','32','台中县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('502','32','彰化县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('503','32','南投县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('504','32','云林县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('505','32','嘉义县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('506','32','台南县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('507','32','高雄县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('508','32','屏东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('509','32','宜兰县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('510','32','花莲县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('511','32','台东县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('512','32','澎湖县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('513','32','金门县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('514','32','连江县','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('515','33','中西区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('516','33','东区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('517','33','南区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('518','33','湾仔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('519','33','九龙城区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('520','33','观塘区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('521','33','深水埗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('522','33','黄大仙区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('523','33','油尖旺区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('524','33','离岛区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('525','33','葵青区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('526','33','北区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('527','33','西贡区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('528','33','沙田区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('529','33','大埔区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('530','33','荃湾区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('531','33','屯门区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('532','33','元朗区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('533','34','澳门市花地玛堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('534','34','澳门市圣安多尼堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('535','34','澳门市大堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('536','34','澳门市望德堂区','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('537','34','澳门市风顺堂区','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_jfabout` VALUES ('6','2','发表文章可得{$webdb[postArticleMoney]}个积分','只有审核后的文章才可得积分,没审核的文章不得积分.','0');
INSERT INTO `qb_jfabout` VALUES ('7','2','删除文章扣除{$webdb[deleteArticleMoney]}个积分','','0');
INSERT INTO `qb_jfabout` VALUES ('5','1','用户注册可得{$webdb[regmoney]}个积分','','0');
INSERT INTO `qb_jfabout` VALUES ('8','2','文章被设置为精华可得{$webdb[comArticleMoney]}个积分','','0');
INSERT INTO `qb_jfabout` VALUES ('9','1','每个点卡可兑换{$webdb[MoneyRatio]}个积分,点卡可以通过在线充值获得.','','0');
INSERT INTO `qb_jfsort` VALUES ('1','会员中心','0');
INSERT INTO `qb_jfsort` VALUES ('2','文章中心','0');
INSERT INTO `qb_olpay` VALUES ('33','0','08nyzxrb9a','10','0','1284605041','1','admin','1','0','0','yeepay','0');
INSERT INTO `qb_template` VALUES ('5','头部白板','7','template/default/none.htm','','0');
INSERT INTO `qb_template` VALUES ('6','底部白板','8','template/default/none.htm','','0');
INSERT INTO `qb_template` VALUES ('23','文章列表页(左宽右窄)','2','template/default/list.htm','','0');
INSERT INTO `qb_template` VALUES ('22','内容页(左宽右窄)','3','template/default/bencandy.htm','','0');
INSERT INTO `qb_template` VALUES ('24','主页(左宽右窄)','1','template/default/index.htm','','0');
INSERT INTO `qb_template` VALUES ('20','内容页(上下型)','3','template/default/bencandy_tpl_2.htm','','0');
INSERT INTO `qb_template` VALUES ('21','独立页','9','template/default/alonepage.htm','','0');
INSERT INTO `qb_template` VALUES ('25','专题模板一(头与底要白板)','11','template/special/showsp2.htm','','0');
INSERT INTO `qb_template` VALUES ('26','专题模板二(头与底要白板)','11','template/special/special_sport.htm','','0');
INSERT INTO `qb_template` VALUES ('27','专题模板三(头与底要白板)','11','template/special/special_car.htm','','0');
INSERT INTO `qb_template` VALUES ('28','专题模板四(头与底要白板)','11','template/special/special_finance.htm','','0');
INSERT INTO `qb_template` VALUES ('29','专题模板五(头与底要白板)','11','template/special/sp1.htm','','0');
INSERT INTO `qb_crontab` VALUES ('2','备份数据库','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `qb_crontab` VALUES ('3','清除CK编辑器多余的缩略图','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `qb_crontab` VALUES ('4','清空附件表','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `qb_moneylog` VALUES ('1','38','5','注册得分','1300684107');
INSERT INTO `qb_moneylog` VALUES ('2','39','5','注册得分','1303355221');
INSERT INTO `qb_buy_config` VALUES ('sort_layout','1,75,5#2,71,4,65#54,3#','');
INSERT INTO `qb_buy_config` VALUES ('order_send_msg','1','');
INSERT INTO `qb_buy_config` VALUES ('UpdatePostTime','1','');
INSERT INTO `qb_buy_config` VALUES ('showNoPassComment','0','');
INSERT INTO `qb_buy_config` VALUES ('Info_index_cache','','');
INSERT INTO `qb_buy_config` VALUES ('Info_list_cache','','');
INSERT INTO `qb_buy_config` VALUES ('Info_ShowNoYz','1','');
INSERT INTO `qb_buy_config` VALUES ('Info_TopMoney','20','');
INSERT INTO `qb_buy_config` VALUES ('Info_TopDay','15','');
INSERT INTO `qb_buy_config` VALUES ('Info_TopNum','8','');
INSERT INTO `qb_buy_config` VALUES ('PostInfoMoney','10','');
INSERT INTO `qb_buy_config` VALUES ('module_id','35','');
INSERT INTO `qb_buy_config` VALUES ('Info_allowGuesSearch','1','');
INSERT INTO `qb_buy_config` VALUES ('Info_metakeywords','产品','');
INSERT INTO `qb_buy_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_buy_config` VALUES ('Info_webname','求购产品','');
INSERT INTO `qb_buy_config` VALUES ('order_send_mail','1','');
INSERT INTO `qb_buy_config` VALUES ('Info_ReportDB','非法信息\r\n虚假信息\r\n过期信息','');
INSERT INTO `qb_buy_config` VALUES ('module_pre','buy_','');
INSERT INTO `qb_buy_config` VALUES ('Info_TopColor','#FF0000','');
INSERT INTO `qb_buy_config` VALUES ('module_close','0','');
INSERT INTO `qb_buy_content` VALUES ('1','求购铜包铜线','1','11','螺纹钢','1','0','1288611664','1288611664','1','admin','','http://i00.c.aliimg.com/img/product/70/97/31/70973167.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611665','0','1','43');
INSERT INTO `qb_buy_content` VALUES ('2','求购无铅含银锡丝','1','11','螺纹钢','1','0','1288611793','1288611793','1','admin','','http://i01.c.aliimg.com/img/product/33/21/99/33219975.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611794','0','1','43');
INSERT INTO `qb_buy_content` VALUES ('3','求购射线防护材料-铅板 厂家直销 质优价廉','1','21','带钢','1','0','1288611864','1288611864','1','admin','','http://i02.c.aliimg.com/img/offer/19/39/46/69/19394669-2.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611865','0','1','654');
INSERT INTO `qb_buy_content` VALUES ('4','求购20g钢管 20g高压锅炉管 抗氧化耐腐蚀','1','33','冷轧板','1','0','1288611943','1288611943','1','admin','','http://i04.c.aliimg.com/img/ibank/2010/562/548/203845265_1777718237.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611946','0','1','54');
INSERT INTO `qb_buy_content` VALUES ('5','求购不锈钢圆钢 316L不锈钢圆钢','1','46','船板','1','0','1288612043','1288612043','1','admin','','http://i03.c.aliimg.com/img/offer/33/24/15/40/7/332415407-2.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288612044','0','1','43');
INSERT INTO `qb_buy_content` VALUES ('6','求购佛山不锈钢管厂','1','59','无缝管','2','0','1288612132','1288612132','1','admin','','http://i00.c.aliimg.com/img/offer/56/28/57/26/7/562857267.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288680842','0','1','434');
INSERT INTO `qb_buy_content` VALUES ('7','求购黄铜棒','1','87','焊线','7','0','1288612333','1288612333','1','admin','','http://i04.c.aliimg.com/img/offer/50/94/67/51/2/509467512.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300690932','0','1','54');
INSERT INTO `qb_buy_content` VALUES ('8','求购纯铁,钕铁硼专用纯铁,纯铁方','1','87','焊线','5','0','1288612560','1288612560','1','admin','','http://i01.c.aliimg.com/img/offer2/2010/075/210/91075210_0eb64d7b2064ea5f5cfc34ecfd9156af.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300338705','0','1','434');
INSERT INTO `qb_buy_content_1` VALUES ('1','1','11','1','<p><span style=\"color:#0000ff;\"><span style=\"font-size:15pt;\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://i00.c.aliimg.com/img/product/70/97/31/70973167.jpg\" width=\"768\" height=\"576\" /><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 铜包铜线优点 ●具有广阔的应用范围. 产品广泛用于铁路、公路、电力、通讯电子等行业。 ●好的延展性和可加工性: 可以进一步地深(细)加工成铜包铝各种规格的裸线及镀锡线.漆包线.镀银线. ●明显的经济效益: ，使用铜包铜线替代纯铜线，能够大幅度节约原材料成本。以此类推，铜包铝线、铜包钢线以及各产品的镀锡线也是替代纯铜导线的理想产品。 ●显著的社会效益和环境效益 节省大量稀缺的铜资源,减轻电费重量,便于运输和网络施工,减轻工人劳动强度。</span></span></p>\r\n<p><span style=\"font-size:15pt;\"><span style=\"color:#0000ff;\">　本公司拥有先进工艺技术和优良设备，拥有多条生产线以满足生产φ0.10-φ1.60规格铜包铜线各类产品的需求。 我们衷心希望与国内外线缆厂家建立长期合作、互惠互利、共同发展的战略伙伴关系；并热忱欢迎您对本公司产品提出宝贵意见，恒久模具必将为降低您的企业生产成本而竭诚努力!</span></span></p>\r\n','箱','43','2010-11-30');
INSERT INTO `qb_buy_content_1` VALUES ('2','2','11','1','<p>无铅锡线（丝）类别：</p>\r\n<p>★ 锡铜无铅锡线/丝（Sn99.3CU0.7）</p>\r\n<p>★ 0.3银无铅锡线/丝（Sn99.0Ag0.3Cu0.7）</p>\r\n<p>★ 锡银铜无铅锡线/丝（Sn96.5Ag3.0Cu0.5）</p>\r\n<p>★ 实芯型无铅锡线/丝（不含助焊剂）</p>\r\n<p>★ 小松香无铅锡线/丝（含1.4%松香）</p>\r\n<p>&nbsp;</p>\r\n<p>无铅焊锡丝/丝的种类：</p>\r\n<p>★ 无铅松香芯焊锡线/丝&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★无铅免洗焊锡线/丝</p>\r\n<p>★ 无铅焊锡线/丝&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★无铅水溶性焊锡线/丝</p>\r\n<p>★ 无铅含银焊锡线/丝&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★无铅不锈钢焊锡线/丝</p>\r\n<p>★ 无铅镀镍焊锡线/丝&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ★无铅焊铝焊锡线/丝</p>\r\n<p>★ 无卤素焊锡线/丝</p>\r\n<p>&nbsp;</p>\r\n<p>无铅锡线（丝）特点：</p>\r\n<p>★ 良好的湿润性导电率热导率易上锡</p>\r\n<p>★ 按客户所需订制松香含量焊接不飞溅</p>\r\n<p>★ 助焊剂分布均匀锡芯里无断助焊剂现象</p>\r\n<p>★ 绕线均匀不打结上锡速度快残渣少</p>\r\n<p>★ 锡丝线径大小由：0.5--3.0mm均可订做</p>\r\n<p>&nbsp;</p>\r\n','套','3','2010-11-27');
INSERT INTO `qb_buy_content_1` VALUES ('3','3','21','1','<div><p>规格： 厚度0.5-15mm 宽度1000mm 长度2000-8000mm 同时可按用户提供的规格，生产供应特种规格的铅板。 也可以按用户的要求制做铅制辐射防护用品及设备。</p>\r\n</div>\r\n','箱','4','2010-11-26');
INSERT INTO `qb_buy_content_1` VALUES ('4','4','33','1','<p>品名：20g高压锅炉管</p>\r\n<p>&nbsp;</p>\r\n<p>特性：持久强度高、抗氧化、耐腐蚀，并有良好的组织稳定性。</p>\r\n<p>&nbsp;</p>\r\n<p>用途：主要用来制造高压和超高压锅炉的过热器管、再热器管、导气管、主蒸汽管等。</p>\r\n<p>&nbsp;</p>\r\n<p>经营规格：外径10-530mm，壁厚2-70mm。</p>\r\n<p>&nbsp;</p>\r\n<p>长度：4-11米</p>\r\n<p>&nbsp;</p>\r\n<p>产地：天津、包头</p>\r\n<p>&nbsp;</p>\r\n<p>执行标准：GB/T5310-1995</p>\r\n<p>&nbsp;</p>\r\n<p>现货：千吨以上</p>\r\n<p>&nbsp;</p>\r\n<p>包装方式：打捆</p>\r\n<p>&nbsp;</p>\r\n<p>供应单位：聊城市正利钢管有限公司</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成立于2005年，原名（聊城市中创钢管有限公司）</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本公司常年经营天津、包头、衡阳等大钢厂生产的20g高压锅炉管，现货多，规格全，价格优惠。欢迎广大用户来人来电洽谈订购、指导工作。 </p>\r\n<p>&nbsp;</p>\r\n','件','45','2010-11-19');
INSERT INTO `qb_buy_content_1` VALUES ('5','5','46','1','<div><p>昊鸿钢铁贸易是经营不锈钢的专业公司。目前公司与张家港、山西太原、台湾烨耿、宝新、<br />\r\n南韩等各大钢厂建立了良好的供求关系，有着多年的业务往来。公司经营的系列不锈钢产品广泛应用于化工<br />\r\n石油、天然气、环保、制药、食品机械、供水供暖等领域。同时，公司下设加工厂，可按用户需求定做各种<br />\r\n型材，并生产加工不锈钢及其制品。<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; 多年来，公司本着“质量第一、信誉第一、服务至上、共谋发展”的经营宗旨，向国内外的广大客户提供<br />\r\n最优质的产品及热情周到的服务。本公司郑重承诺：各种材质、各种规格的产品均以市场最低价供应，欢迎垂<br />\r\n询光临！&nbsp;</p>\r\n</div>\r\n','箱','4','2010-11-26');
INSERT INTO `qb_buy_content_1` VALUES ('6','6','59','1','<div><p>佛山市鑫中航金属材料有限公司<br />\r\n我公司位于素有不锈钢名镇之称的佛山市澜石镇，水陆交通极为便利,是一家采用现代化经营管理模式运作的专业不锈钢公司，<br />\r\n公司经营各种规格型号不锈钢管，产品涉及200、300系列。<br />\r\n我公司凭借敏锐的市场触觉，良好的业界口碑，雄厚的资金实力以及良好的客情关系，在不锈钢行业树立了广泛的知名度,在业界享有盛誉。</p>\r\n<p>公司集不锈钢材料销售、加工与配送为一体,长期专营各种不锈钢管材,,规格齐全,并有不定尺开界,<br />\r\n欢迎各界人士与我们携手合作，公司将以优惠的价格、优惠的材料、优良的服务来满足客户的要求，<br />\r\n竭诚欢迎广大新老客户查询惠顾。愿与各界朋友精诚合作，共同发展。&nbsp;</p>\r\n<p>专业现货供应各种不锈钢装饰用管,机械结构和工业管材<br />\r\n规格齐全，价格优惠欢迎来电咨询！谢谢！！</p>\r\n</div>\r\n','吨','43','2010-11-27');
INSERT INTO `qb_buy_content_1` VALUES ('7','7','87','1','天津市飞龙制管有限公司-西邻津汕、京沪高速、东邻天津新港码头、滨海国际机场及丹拉高速交通快捷便利。是全国诚信企业和天津市知名企业，始建于1995年，现有职工1800人，其中专业技术人员236人，厂区占地面积1200亩，现有22条ERW、高频焊管生产线，6条热镀锌生产线，12条扩管生产线，4条方管生产线，1条石油、天然气开采用套管生产线。产品主要用于石油、天然气、煤气、煤浆、机械、托辊、建筑、电力、化工、环保、锅炉、农井建设、温室大棚框架、钢构框架、消防管线、等行业。产品执行API\\SPEC5L、API\\SPEC5CT、ASTA53、EN10217、及GB/T9711.1、GP/T9711.2、GB/T3091-2008、GB/T13793-9292、GB/14291-2006、等国内外最新标准。我公司产品通过ISO9001、ISO14001及API、PED-CE、德国AD2000-WO、国标、英标、日标、欧盟、美标等质量管理体系要求。可年产直径20mm-426mm焊管150万吨，年出口各类钢管10万吨。<br />\r\n方管、矩管；15*15--300*500<br />\r\n镀锌管【牛头牌】、高频焊管、隐形焊管：直径4分、6分、1寸、1.2寸、1.5寸、2寸、76、89、102、108、114、121、127、133、140、152、159、165、168、180、194、203、219、245、250、273、299、306、325、351、355、377、406、426、530.长度4mm-16mm，壁厚0.8mm-14mm<br />\r\n热扩钢管:245、250、273、299、325、351、377、406、426.<br />\r\n石油天然气开采用套管：57、73、114.3、127、168.3、139.7、177.8、219.1、244.5、273.1.&nbsp;&nbsp;&nbsp; 规格、壁厚、口径可根据客户要求定做。<br />\r\n','吨','43','2010-11-27');
INSERT INTO `qb_buy_content_1` VALUES ('8','8','87','1','<div><p><span style=\"font-size:10pt;font-family:宋体;\">太钢是我国纯铁科研和生产的主要基地，也是我国最早研制和生产纯铁的企业。从<span>1955</span>年开始到现在，经过五十多年的研究和生产，已经形成一整套独特的生产工艺和多用途、多品种、多规格的纯铁系列产品。太钢生产纯铁经验丰富、设备精良、技术力量雄厚、检测手段完善<span>,</span>生产工艺路线先进。</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size:small;\"><font size=\"2\"><span style=\"color:red;font-family:宋体;\">主营产品</span><span><span style=\"font-family:Times New Roman;\">:</span></span></font></span></p>\r\n<p><span style=\"font-size:small;\"><font size=\"2\"><span style=\"font-family:宋体;\">纯铁</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:宋体;\">原料纯铁</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:宋体;\">电工纯铁</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:宋体;\">纯铁板</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:宋体;\">纯铁棒</span><span style=\"font-family:Times New Roman;\"><span>.</span></span><span style=\"color:black;font-family:宋体;\">高纯度原料纯铁</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;YTO/YTO1;</span></span><span style=\"color:black;font-family:宋体;\">高性能电磁纯铁</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;DT4 /DT4A;DT4E/DT4C;DT8/DT9;</span></span><span style=\"color:black;font-family:宋体;\">方坯</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">棒材</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">盘圆</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">板材</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">精密机械加工</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">精密铸造</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">电磁纯铁冷轧薄板</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">电磁纯铁热轧中板</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">纯铁冷拉直条</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">纯铁棒材</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">纯铁锻材</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:宋体;\">铸造纯铁</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:宋体;\">钕铁硼专用纯铁</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:宋体;\">工业纯铁材</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:宋体;\">军工纯铁</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:宋体;\">深冲板</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:宋体;\">铁芯用电磁纯铁</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:宋体;\">纯铁</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">70</span></span><span style=\"color:black;font-family:宋体;\">方坯</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">.</span></span></font></span></p>\r\n</div>\r\n','件','34','2010-11-20');
INSERT INTO `qb_buy_db` VALUES ('1','11','0','1');
INSERT INTO `qb_buy_db` VALUES ('2','11','0','1');
INSERT INTO `qb_buy_db` VALUES ('3','21','0','1');
INSERT INTO `qb_buy_db` VALUES ('4','33','0','1');
INSERT INTO `qb_buy_db` VALUES ('5','46','0','1');
INSERT INTO `qb_buy_db` VALUES ('6','59','0','1');
INSERT INTO `qb_buy_db` VALUES ('7','87','0','1');
INSERT INTO `qb_buy_db` VALUES ('8','87','0','1');
INSERT INTO `qb_buy_field` VALUES ('86','1','其它要求','content','mediumtext','0','-1','ieeditsimp','600','250','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('159','2','供货价格','sell_price','varchar','20','18','text','50','0','','','单价','','1','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('158','2','供货总量','order_num','int','6','19','text','50','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('142','2','补充说明','content','mediumtext','0','15','textarea','500','70','','','','','0','0','0','0','','','','','0','<br><select name=\'autoSelect\' onchange=\"changeaddContent(this);\">\r\n<option value=\'\'>(懒得打字？“快速填写”帮您忙！) </option>\r\n<option value=\'请您发一份比较详细的产品规格说明，谢谢！\'>请您发一份比较详细的产品规格说明，谢谢！</option> \r\n<option value=\'请问您对此产品是长期有需求吗？\'>请问您对此产品是长期有需求吗？</option> \r\n<option value=\'请问您对此产品有多大的需求量？\'>请问您对此产品有多大的需求量？</option> \r\n</select>\r\n<SCRIPT language=\"javascript\">\r\n            function changeaddContent(autoSelect){\r\n			 	if (autoSelect.selectedIndex !=0){			 		\r\n			 		document.getElementById(\"atc_content\").value = autoSelect[autoSelect.selectedIndex].value;\r\n					autoSelect.selectedIndex=0;\r\n			 	}\r\n				\r\n			 }\r\n	     </SCRIPT>');
INSERT INTO `qb_buy_field` VALUES ('154','1','求购数量','order_num','int','7','8','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('153','1','计量单位','my_units','varchar','10','9','text','50','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('145','2','联系电话','ask_phone','varchar','20','8','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('144','2','联系人姓名','ask_username','varchar','20','9','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('146','2','联系手机','ask_mobphone','varchar','15','7','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('147','2','联系邮箱','ask_email','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('148','2','联系QQ','ask_qq','varchar','11','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('156','1','截止日期','end_day','varchar','30','5','time','0','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('157','2','报价标题','ask_title','varchar','100','20','text','300','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('161','2','我希望','hope_reply','varchar','25','14','time','0','0','','','之前回复','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_module` VALUES ('2','0','报价单模型','1','','','','0','0','a:4:{s:4:\"list\";s:12:\"joinlist.htm\";s:4:\"show\";s:12:\"joinshow.htm\";s:4:\"post\";s:8:\"join.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `qb_buy_module` VALUES ('1','0','求购模型','4','','','','1','0','');
INSERT INTO `qb_buy_pic` VALUES ('1','1','11','0','1','0','http://i00.c.aliimg.com/img/product/70/97/31/70973167.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('2','2','11','0','1','0','http://i01.c.aliimg.com/img/product/33/21/99/33219975.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('3','3','21','0','1','0','http://i02.c.aliimg.com/img/offer/19/39/46/69/19394669-2.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('4','4','33','0','1','0','http://i04.c.aliimg.com/img/ibank/2010/562/548/203845265_1777718237.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('5','5','46','0','1','0','http://i03.c.aliimg.com/img/offer/33/24/15/40/7/332415407-2.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('6','6','59','0','1','0','http://i00.c.aliimg.com/img/offer/56/28/57/26/7/562857267.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('7','7','87','0','1','0','http://i04.c.aliimg.com/img/offer/50/94/67/51/2/509467512.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('8','8','87','0','1','0','http://i01.c.aliimg.com/img/offer2/2010/075/210/91075210_0eb64d7b2064ea5f5cfc34ecfd9156af.310x310.jpg','');
INSERT INTO `qb_buy_sort` VALUES ('1','0','钢材','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('2','0','钢板卷','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('3','0','板材','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('4','0','中厚板','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('5','0','钢管','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('6','0','型钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('7','0','特钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('8','0','不锈钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('9','0','炉料','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('10','0','生铁','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('11','1','螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('12','1','普线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('13','1','高线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('14','1','圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('15','1','线材','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('16','1','二级螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('17','1','三级螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('18','1','盘螺','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('19','1','优线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('20','1','带肋钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('21','2','带钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('22','2','热板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('23','2','冷板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('24','2','不锈板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('25','2','镀锌板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('26','2','彩涂板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('27','2','花纹板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('28','2','低合金板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('29','2','镀锡板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('30','2','镀铝锌板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('31','2','酸洗板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('32','2','轧硬卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('33','3','冷轧板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('34','3','热轧板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('35','3','容器板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('36','3','合金板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('37','3','高强板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('38','3','耐腐蚀板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('39','3','马口铁基板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('40','3','镀锡板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('41','3','镀铝板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('42','3','硅钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('43','3','镀锌板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('44','3','彩涂板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('45','3','管线钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('46','4','船板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('47','4','大梁板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('48','4','模具板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('49','4','锅炉板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('50','4','翼缘板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('51','4','四切平板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('52','4','花纹板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('53','4','低合金板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('54','4','锰板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('55','4','碳结板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('56','4','合结板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('57','4','开平板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('58','4','耐磨板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('59','5','无缝管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('60','5','镀锌管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('61','5','方管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('62','5','螺旋管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('63','5','焊管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('64','5','直缝管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('65','5','圆管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('66','5','锅炉管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('67','5','球墨管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('68','5','矩型管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('69','5','化肥用管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('70','5','结构管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('71','5','铸铁管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('72','5','脚手架','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('73','6','H型钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('74','6','槽钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('75','6','工字钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('76','6','角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('77','6','扁钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('78','6','轻轨','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('79','6','重轨','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('80','6','方钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('81','6','不等边角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('82','6','型钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('83','6','六角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('84','6','拉光圆','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('85','6','碳圆','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('86','6','等边角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('87','7','焊线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('88','7','圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('89','7','轴承钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('90','7','碳结钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('91','7','弹簧钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('92','7','高工钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('93','7','模具钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('94','7','钢纹线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('95','7','齿轮钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('96','7','合结钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('97','7','耐腐蚀钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('98','7','耐磨钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('99','7','碳工钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('100','7','碳素钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('101','7','耐热钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('102','7','冷镦钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('103','7','工模钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('104','7','结构钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('105','8','不锈板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('106','8','不锈钢管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('107','8','不锈钢线材','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('108','8','不锈钢带','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('109','8','不锈钢圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('110','8','不锈钢角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('111','8','不锈钢槽钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('112','8','不锈钢扁钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('113','8','不锈钢坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('114','8','优焊线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('115','8','拉丝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('116','8','硬线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('117','8','耐热钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('118','8','钢丝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('119','9','矿石','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('120','9','煤焦','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('121','9','精铁粉','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('122','9','废钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('123','9','焦炭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('124','9','煤炭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('125','9','耐火材料','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('126','9','碳素材料','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('127','9','球墨铸铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('128','9','钢锭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('129','9','硅锰','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('130','9','方坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('131','9','管坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('132','9','钢坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('133','9','板坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('134','9','球磨生铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('135','9','辅料副产品','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('136','10','硅铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('137','10','铬铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('138','10','钼铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('139','10','钒铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('140','10','钨铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('141','10','铌铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('142','10','钛铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('143','10','锰铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('144','10','镍矿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('145','10','有色','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('146','10','铜','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('147','10','铝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('148','10','锌','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('149','10','金','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('150','10','银','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('151','10','镍','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('152','10','铅','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('153','10','锡','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('154','10','稀土','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('155','10','贵金属','1','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','guijinshu','0');
INSERT INTO `qb_hy_company` VALUES ('17','广州协天软件科技有限公司','','螺纹钢,普线,带钢,热板卷,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷','1','admin','3','0','0','1282284007','0','0','homepage/logo/1/1_20101102091111_ybuoq.gif','','1','','1282284007','455','1','1282719160','0','&nbsp;&nbsp;&nbsp;&nbsp;PHP168是中国领先的开源CMS平台与服务提供商，长期专注于互联网高性能平台及技术解决方案的研发，公司人员70%以上为技术人员，拥有中国专业的Web应用平台技术研发团队，PHP168拥有广泛的社会影响力，为国内应用最广泛的系统之一，也是中国南方PHP领域最大的开源系统提供方。<br /><br /><a style=\"FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #990000\">发展历程</a><br />&nbsp;&nbsp;&nbsp;&nbsp;自2003年10月PHP168 V1.0面世至今，已形成面向广大站长的V系列和面向媒体报刊门户、政府电子政务的Sharp系列（简称S系列），S系列以千万级海量数据应用媒体报刊、政府站群应用中形成良好的品牌口碑，以“核心+系统+模块+插件”架构体系，成为国内高性能、模块化的开源PHP系统。涉及政府电子政务、媒体新闻门户、大型企业信息化、站群系统、电子商务B2B及企业内部OA等海量数据高端互联网应用，已为三十余万用户提供了应用平台。 ','0','0','0','0','个人独资企业','服务型','100','2007-10-02','广东省广州市天河区','1111','000222','CMS整站程序 电子商务程序 地方门户程序 分类信息系统','PHP人才','数码、电脑及网络配件','张生','总裁','0','020','15920222222','0106665555','0342@fdsg.cn','http://112','65284322','125@erw.cn','','1451','','0','1','company/renzheng/1_20101016111001_krbfo.jpg','company/renzheng/1_20101016111026_ienzi.jpg','company/renzheng/1_20101016111030_dbedh.jpg','company/renzheng/1_20101016111032_g2s7m.jpg','company/renzheng/1_20101016111035_nlvue.jpg','');
INSERT INTO `qb_hy_company` VALUES ('22','瑞安市锻造实业公司','','螺纹钢,带钢,冷轧板,模具板,无缝管,H型钢,焊线,不锈板卷','27','test1','0','0','0','1288661741','0','0','homepage/logo/1/27_20101102091141_e1uuj.jpg','','1','','1288661741','5','1','1288663982','0','    公司创办于1992年，占地5000平方米，建筑面积8900平方米，以复杂机械零件的精密模锻件锻造生产为主,并进行锻件的机械加工和硬质合金工具的钎焊。   供应机械零件（汽摩配）锻件、起重吊钩、五金工具、钎焊硬质合金工具。如随车工具、G字夹、汽车摩托车齿轮及叉臂轴类锻件。','0','0','0','0','个体经营','生产型','999','2010-11-03','广东省','','','钢材','钢','机械及行业设备','张生','','0','020555444','','','gfds@afds.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('23','宁波市鄞州塘溪红龙五金工具厂','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','28','test2','0','0','0','1288662180','0','0','homepage/logo/1/logo_28_20101102091100_6jeu7.jpg','','1','','1288662180','19','1','1288663984','0','    本厂是一家拥有十多年历史，专业生产园林工具刀片（系列修枝机刀片）的厂家 。  本厂依靠科技进步，通过本厂技术人员的刻苦攻关，现开发出多款具有先进水平的高硬度，高韧性的系列产品。基本解决了国内刀片厂家有韧性没硬度，有硬度没韧性的技术困局，大大提高了刀片的使用寿命。 得到很多国内外客商的首肯，直接出口欧洲和美国。  本厂产品由进料到成品基本做到全线产品一体生产，所有零配件无外加工。质量，产能得到了最高最大化。现竭诚邀请您来电，来函。我们将以最大的热情期待您的光临。','0','0','0','0','个体经营','生产型','900','2010-11-13','宁波','','','钢索','钢','机械及行业设备','牛生','','0','0205544447','','','fds@ds.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('24','南京绿友纸浆模塑有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','29','test3','0','0','0','1288662327','0','0','homepage/logo/1/29_20101102091127_bcl6e.jpg','','1','','1288662327','1','1','1288663984','0','   南京绿友纸浆模塑有限公司是由中国包装新技术开发包宁公司改制组建而成，继续从事包宁公司的纸浆模塑技术研究、设备制造、新品推广的专业公司，具有独立法人资格、科、工、贸一体化、外向型股份制企业。   公司围绕纸浆模塑技术开发设有技术开发部、模具中心、机械加工厂、新品示范厂、工程安装部等部门，从事纸塑技术开发的专业工程技术人员占35%，高级工程师3人(其中一名因在纸浆模塑方面有特殊贡献、享受国务院特殊津贴并颁发证书)，工程师8人，技术力量雄厚，设施齐全，具有独立自主的开发研究、试验示范、生产销售的经济实体。绿友公司集中了包宁公司最优秀的人才，全面继承、加速研究、全面开发了纸浆模塑技术，因此，在纸浆模塑领域保持了技术最全面、设备最先进、品种最齐全的优势！','0','0','0','0','个体经营','生产型','600','2010-11-06','上海','','','玻璃幕墙','玻璃','机械及行业设备','黄生','','0','0204448554','','','fdsg@sda.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('25','上海烈力轴承制造有限公司','','螺纹钢,普线,带钢,热板卷,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷','30','test4','0','0','0','1288662567','0','0','homepage/logo/1/30_20101102091127_ibn2r.jpg','','1','','1288662567','26','1','1288663985','0','    浙江双飞无油轴承有限公司，是中国专业生产滑动轴承系列产品的龙头企业；浙江省“AAA”级守合同、重信用企业；浙江省高新技术企业；ISO9001和QS9000质量体系认证单位。 公司有一支强劲的新产品研发队伍和完善的试验设施，被列为浙江省技术中心。产品50%以上出口德国、意大利、日本、新加坡、美国、加拿大、台湾等20多个国家和地区， 已经创造了良好的国际信誉。   公司目前主要产品有：SF系列无油润滑轴承、JF双金属轴承、FB青铜轴承、JDB镶嵌固体润滑轴承等12个系列16000多个品种，适应：高温、高速等各种场合的使用。公司有完善的检测设备，保证100%的合格产品提供给顾客，让每位“ZOB”','0','0','0','0','个体经营','生产型','600','2010-11-04','上海','','','生铁','铁','机械及行业设备','李生','','0','02054477877','','','fds@sda.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('26','温州天旺五金有限公司','','螺纹钢,普线,带钢,冷轧板,船板,H型钢,焊线,不锈板卷,矿石','31','test5','0','0','0','1288662786','0','0','homepage/logo/1/31_20101102091106_ijzou.jpg','','1','','1288662786','0','1','1288663985','0','    我司是专业生产日用五金、机电配件、塑胶制品、紧固件等产品的出口外向型企业，是中国较早开发DIY家用五金组合系列产品的知名企业。企业创立至今始终坚持走质量效益型之路，强化全面管理和有效经营，注重企业形象和产品形象，产品远销世界各地，深得国内外客户信赖和赞誉。在纷繁复杂的市场竟争中，始终坚守诚信、勇于创新。  我司根据自身发展需求和市场发展趋势，将制造、生产的日用五金、标准件、非标准件、紧固件、塑胶制品、机电配件等产品，分为两大市场板块，其中DIY家用五金套装已形成30个系列近1000个品种，凭借严格质量管理和出众的设计理念，产品在国际市场（尤其是欧美、东南亚市场）形成良好的销售势头，市场占有','0','0','0','0','个体经营','生产型','300','2010-11-06','深圳','','','布','灰布','机械及行业设备','何生','','0','0204544744','','','fds@fsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('27','常州市武进天力电动工具厂','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','32','test6','0','0','0','1288662947','0','0','homepage/logo/1/32_20101102091147_9pqhn.jpg','','1','','1288662947','1','1','1288663986','0','  浙江双飞无油轴承有限公司，是中国专业生产滑动轴承系列产品的龙头企业；浙江省“AAA”级守合同、重信用企业；浙江省高新技术企业；ISO9001和QS9000质量体系认证单位。 公司有一支强劲的新产品研发队伍和完善的试验设施，被列为浙江省技术中心。产品50%以上出口德国、意大利、日本、新加坡、美国、加拿大、台湾等20多个国家和地区， 已经创造了良好的国际信誉。   公司目前主要产品有：SF系列无油润滑轴承、JF双金属轴承、FB青铜轴承、JDB镶嵌固体润滑轴承等12个系列16000多个品种，适应：高温、高速等各种场合的使用。公司有完善的检测设备，保证100%的合格产品提供给顾客，让每位“ZOB”的顾客满意。   我们严格按照 ISO-TS16949 的质量体系，从原材料投入、模具制造、成形、烧结…等直到服务，全过程加以控制。操作工首先进行自检，专职检验人员进行巡回检，每道工序都进行严格把关，每道工序都做到有据可查。同时以先进的检测设备保证了产品100%的出厂合格率！','0','0','0','0','个体经营','生产型','300','2010-11-04','','','','','','机械及行业设备','刘生','','0','020544777','','','fda@dsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('28','丽图数码科技（深圳）有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','33','test7','0','0','0','1288663129','0','0','homepage/logo/1/33_20101102091149_ofqqf.jpg','','1','','1288663129','1','1','1288663987','0','   专业从事一体化速印机印刷耗材设计开发和制造的外商独资企业，公司享有独立的进出口权，提供了和外商直接自由的贸易平台。公司拥有5000平方米的现代化厂房，配合全封闭的无尘、恒温、恒湿的生产车间。生产设备全部采用电脑化自动控制。先进的生产工艺流程，保证了产品卓越的品质，并率先于2003年通过了ISO9001-2000质量管理体系认证。公司始终遵循“以客户为本，以品质取胜，以服务领先”的发展理念。坚持产品的专业化，细致化的经营模拟。通过不断努力，不懈追求，充分满足客户的个性化要求，赢得了客户的充分认可与肯定，使公司成为国内同行中最具知名度的供应商。','0','0','0','0','个体经营','生产型','600','2010-11-13','深圳','','','','','机械及行业设备','何生','','0','02087744454','','','dfsafs@dsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('29','深圳市实业发展有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','34','test8','0','0','0','1288663299','0','0','homepage/logo/1/34_20101102101139_apfdl.jpg','','1','','1288663299','3','1','1288663987','0','    一家集产品开发、设计、生产与销售于一体，较早从事五金、弹簧、消费电子类研发、生产与销售，拥有进出口经营权的高科技民营企业。公司实力雄厚，研发技术成熟，采用国际先进的管理模式，产品质量过硬、销售网络完善，售后服务优质。 　　本公司现拥有厂房面积600平方米，固定资产500多万元，员工60多人，其中工程技术人员有10人，年销售额500多万元，公司已通过ISO9001-2000质量体系认证，并在目前已推广ISO/TS16949-2002体系的运行。有一套完备的产品质量检测设备和检验员队伍，确保产品质量的稳定可靠，在用户中有较高的质量信誉。 ','0','0','0','0','个体经营','生产型','100','','深圳市','','','五金','弹簧','机械及行业设备','黄生','','0','02054787741','','','fsgfd@dsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('30','海盐中凌铸造有限责任公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','35','test9','0','0','0','1288663462','0','0','homepage/logo/1/35_20101102101122_jvufs.jpg','','1','','1288663462','1','1','1288663988','0','    海盐中凌铸造有限责任公司地处浙江省海盐县，东依上海80公里，西距杭州65公里，南邻风景秀丽的南北湖风景区，北连嘉兴市区，离沪杭高速公路王店出口处7公里，水陆交通十分便利。公司在全体员工十多年来的默默耕耘下，讫今已拥有资产300万美元，占地面积30000平方米，其中厂房20000多平方米，各类生产设备120余台套，有齐全的理化检测设备及先进的质量管理体系，主要设备有250KG中频电炉3套及熔模精密铸造流水线三条，10吨级铸钢件热处理炉三个，各类机加工设备80余台。目前企业员工130名，其中各类工程技术人员38名','0','0','0','0','个体经营','生产型','300','2010-11-06','浙江省海盐县','','','铁','生铁','机械及行业设备','黄生','','0','02045789654','','','safsa@dfsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('31','东莞市华尔赛弹簧制造有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','36','test10','0','0','0','1288663617','0','0','homepage/logo/1/36_20101102101157_jugc3.jpg','','1','','1288663617','28','1','1288663988','0','     是一家集生产、研发、销售和服务于一体的综合型弹簧生产企业。公司位于广东省东莞市黄江镇，距莞深高速公路3公里，东莞火车站10公里左右，交通十分便捷。公司占地2000平方米，拥有全套一流的生产、检测设备，有目前国内最选进的十毫米以下的CNC数控自动弹簧机，可生产弹簧线径最小0.08MM-10MM，是东莞市首家拥有可以生产10mm以下线径的CNC弹簧机械；弹簧处理网带式连续回火炉，清洗机。弹簧检测设备仪器齐全，如：二次元投影仪、扭力测试机、压拉力测试机、盐雾测试机等，全面有效地控制了弹簧的质量。华尔赛主导产品有各类精密弹簧，车件，铆钉，螺丝，五金冲压件。产品广泛用于电子、电器、玩具、锁具、文具、童车、自行车、礼品、工艺品、厨卫具、照相机、打印机、办公设备、精密设备、各类交通工具等。现我司的生产的弹簧产品如：离合器弹簧、复合弹簧、启动弹簧、回位弹簧、座垫弹簧等 已迈入汽车行业。','0','0','0','0','个体经营','生产型','350','2010-11-04','东莞市','','','钢材','钢','机械及行业设备','刘生','','0','02054484444','','','fsdafd@sa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('32','广州金栢叶床具制品有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','37','test11','0','0','0','1288663816','0','0','homepage/logo/1/37_20101102101116_xmwaa.jpg','','1','','1288663816','4','1','1288663989','0','    前身“广州恒基（床垫）弹簧厂”，是专业生产床垫、床垫弹簧网的厂家。风雨十五年，一步一脚印，发展至今天，拥有厂房五千多平方米，多条先进的弹簧、床垫生产线及压缩设备。 大批技艺超群的生产技术工人，产品开发研究人员 ，严格的质量体系。严格按照ISO9001：2000质量体系，ISO14000环境体系标准运行，产品通过中国国家质量认证，美国CFR1633标准及英国BS5852标准，为生产世界级品牌产品有坚实保证。目前，金栢叶公司生产的床垫、床垫芯产品可经压缩包装处理，方便世界各地客商的运输及仓储。凭借多年生产床垫弹簧出口世界各地的经验，集全球多家名牌床垫之技术精华，经研究人员精心研究设计，创造出纯中国制造的高端品牌床垫——“金栢叶”系列产品。','0','0','0','0','个体经营','生产型','200','2010-11-04','广州','','','猪油','生猪油','机械及行业设备','林生','','0','0205447777','','','dfsaf@dsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company_fid` VALUES ('1','11');
INSERT INTO `qb_hy_company_fid` VALUES ('1','12');
INSERT INTO `qb_hy_company_fid` VALUES ('1','21');
INSERT INTO `qb_hy_company_fid` VALUES ('1','22');
INSERT INTO `qb_hy_company_fid` VALUES ('1','33');
INSERT INTO `qb_hy_company_fid` VALUES ('1','46');
INSERT INTO `qb_hy_company_fid` VALUES ('1','59');
INSERT INTO `qb_hy_company_fid` VALUES ('1','73');
INSERT INTO `qb_hy_company_fid` VALUES ('1','87');
INSERT INTO `qb_hy_company_fid` VALUES ('1','105');
INSERT INTO `qb_hy_company_fid` VALUES ('27','11');
INSERT INTO `qb_hy_company_fid` VALUES ('27','21');
INSERT INTO `qb_hy_company_fid` VALUES ('27','33');
INSERT INTO `qb_hy_company_fid` VALUES ('27','48');
INSERT INTO `qb_hy_company_fid` VALUES ('27','59');
INSERT INTO `qb_hy_company_fid` VALUES ('27','73');
INSERT INTO `qb_hy_company_fid` VALUES ('27','87');
INSERT INTO `qb_hy_company_fid` VALUES ('27','105');
INSERT INTO `qb_hy_company_fid` VALUES ('28','11');
INSERT INTO `qb_hy_company_fid` VALUES ('28','21');
INSERT INTO `qb_hy_company_fid` VALUES ('28','33');
INSERT INTO `qb_hy_company_fid` VALUES ('28','46');
INSERT INTO `qb_hy_company_fid` VALUES ('28','59');
INSERT INTO `qb_hy_company_fid` VALUES ('28','73');
INSERT INTO `qb_hy_company_fid` VALUES ('28','87');
INSERT INTO `qb_hy_company_fid` VALUES ('28','105');
INSERT INTO `qb_hy_company_fid` VALUES ('28','119');
INSERT INTO `qb_hy_company_fid` VALUES ('28','136');
INSERT INTO `qb_hy_company_fid` VALUES ('29','11');
INSERT INTO `qb_hy_company_fid` VALUES ('29','21');
INSERT INTO `qb_hy_company_fid` VALUES ('29','33');
INSERT INTO `qb_hy_company_fid` VALUES ('29','46');
INSERT INTO `qb_hy_company_fid` VALUES ('29','59');
INSERT INTO `qb_hy_company_fid` VALUES ('29','73');
INSERT INTO `qb_hy_company_fid` VALUES ('29','87');
INSERT INTO `qb_hy_company_fid` VALUES ('29','105');
INSERT INTO `qb_hy_company_fid` VALUES ('29','119');
INSERT INTO `qb_hy_company_fid` VALUES ('29','136');
INSERT INTO `qb_hy_company_fid` VALUES ('30','11');
INSERT INTO `qb_hy_company_fid` VALUES ('30','12');
INSERT INTO `qb_hy_company_fid` VALUES ('30','21');
INSERT INTO `qb_hy_company_fid` VALUES ('30','22');
INSERT INTO `qb_hy_company_fid` VALUES ('30','33');
INSERT INTO `qb_hy_company_fid` VALUES ('30','46');
INSERT INTO `qb_hy_company_fid` VALUES ('30','59');
INSERT INTO `qb_hy_company_fid` VALUES ('30','73');
INSERT INTO `qb_hy_company_fid` VALUES ('30','87');
INSERT INTO `qb_hy_company_fid` VALUES ('30','105');
INSERT INTO `qb_hy_company_fid` VALUES ('31','11');
INSERT INTO `qb_hy_company_fid` VALUES ('31','12');
INSERT INTO `qb_hy_company_fid` VALUES ('31','21');
INSERT INTO `qb_hy_company_fid` VALUES ('31','33');
INSERT INTO `qb_hy_company_fid` VALUES ('31','46');
INSERT INTO `qb_hy_company_fid` VALUES ('31','73');
INSERT INTO `qb_hy_company_fid` VALUES ('31','87');
INSERT INTO `qb_hy_company_fid` VALUES ('31','105');
INSERT INTO `qb_hy_company_fid` VALUES ('31','119');
INSERT INTO `qb_hy_company_fid` VALUES ('32','11');
INSERT INTO `qb_hy_company_fid` VALUES ('32','21');
INSERT INTO `qb_hy_company_fid` VALUES ('32','33');
INSERT INTO `qb_hy_company_fid` VALUES ('32','46');
INSERT INTO `qb_hy_company_fid` VALUES ('32','59');
INSERT INTO `qb_hy_company_fid` VALUES ('32','73');
INSERT INTO `qb_hy_company_fid` VALUES ('32','87');
INSERT INTO `qb_hy_company_fid` VALUES ('32','105');
INSERT INTO `qb_hy_company_fid` VALUES ('32','119');
INSERT INTO `qb_hy_company_fid` VALUES ('32','136');
INSERT INTO `qb_hy_company_fid` VALUES ('33','11');
INSERT INTO `qb_hy_company_fid` VALUES ('33','21');
INSERT INTO `qb_hy_company_fid` VALUES ('33','33');
INSERT INTO `qb_hy_company_fid` VALUES ('33','46');
INSERT INTO `qb_hy_company_fid` VALUES ('33','59');
INSERT INTO `qb_hy_company_fid` VALUES ('33','73');
INSERT INTO `qb_hy_company_fid` VALUES ('33','87');
INSERT INTO `qb_hy_company_fid` VALUES ('33','105');
INSERT INTO `qb_hy_company_fid` VALUES ('33','119');
INSERT INTO `qb_hy_company_fid` VALUES ('33','136');
INSERT INTO `qb_hy_company_fid` VALUES ('34','11');
INSERT INTO `qb_hy_company_fid` VALUES ('34','21');
INSERT INTO `qb_hy_company_fid` VALUES ('34','33');
INSERT INTO `qb_hy_company_fid` VALUES ('34','46');
INSERT INTO `qb_hy_company_fid` VALUES ('34','59');
INSERT INTO `qb_hy_company_fid` VALUES ('34','73');
INSERT INTO `qb_hy_company_fid` VALUES ('34','87');
INSERT INTO `qb_hy_company_fid` VALUES ('34','105');
INSERT INTO `qb_hy_company_fid` VALUES ('34','119');
INSERT INTO `qb_hy_company_fid` VALUES ('34','136');
INSERT INTO `qb_hy_company_fid` VALUES ('35','11');
INSERT INTO `qb_hy_company_fid` VALUES ('35','21');
INSERT INTO `qb_hy_company_fid` VALUES ('35','33');
INSERT INTO `qb_hy_company_fid` VALUES ('35','46');
INSERT INTO `qb_hy_company_fid` VALUES ('35','59');
INSERT INTO `qb_hy_company_fid` VALUES ('35','73');
INSERT INTO `qb_hy_company_fid` VALUES ('35','87');
INSERT INTO `qb_hy_company_fid` VALUES ('35','105');
INSERT INTO `qb_hy_company_fid` VALUES ('35','119');
INSERT INTO `qb_hy_company_fid` VALUES ('35','136');
INSERT INTO `qb_hy_company_fid` VALUES ('36','11');
INSERT INTO `qb_hy_company_fid` VALUES ('36','21');
INSERT INTO `qb_hy_company_fid` VALUES ('36','33');
INSERT INTO `qb_hy_company_fid` VALUES ('36','46');
INSERT INTO `qb_hy_company_fid` VALUES ('36','59');
INSERT INTO `qb_hy_company_fid` VALUES ('36','73');
INSERT INTO `qb_hy_company_fid` VALUES ('36','87');
INSERT INTO `qb_hy_company_fid` VALUES ('36','105');
INSERT INTO `qb_hy_company_fid` VALUES ('36','119');
INSERT INTO `qb_hy_company_fid` VALUES ('36','136');
INSERT INTO `qb_hy_company_fid` VALUES ('37','11');
INSERT INTO `qb_hy_company_fid` VALUES ('37','21');
INSERT INTO `qb_hy_company_fid` VALUES ('37','33');
INSERT INTO `qb_hy_company_fid` VALUES ('37','46');
INSERT INTO `qb_hy_company_fid` VALUES ('37','59');
INSERT INTO `qb_hy_company_fid` VALUES ('37','73');
INSERT INTO `qb_hy_company_fid` VALUES ('37','87');
INSERT INTO `qb_hy_company_fid` VALUES ('37','105');
INSERT INTO `qb_hy_company_fid` VALUES ('37','119');
INSERT INTO `qb_hy_company_fid` VALUES ('37','136');
INSERT INTO `qb_hy_config` VALUES ('creat_home_money','0','');
INSERT INTO `qb_hy_config` VALUES ('module_pre','hy_','');
INSERT INTO `qb_hy_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_hy_config` VALUES ('module_close','0','');
INSERT INTO `qb_hy_config` VALUES ('sort_layout','1,5#3,8,7#2,4,6#','');
INSERT INTO `qb_hy_config` VALUES ('Index_listsortnum','','');
INSERT INTO `qb_hy_config` VALUES ('module_id','16','');
INSERT INTO `qb_hy_config` VALUES ('Info_webname','黄页模块','');
INSERT INTO `qb_hy_config` VALUES ('vipselfdomain','','');
INSERT INTO `qb_hy_config` VALUES ('vipselfdomaincannot','','');
INSERT INTO `qb_hy_config` VALUES ('gg_map_api','','');
INSERT INTO `qb_hy_home` VALUES ('1','admin','vip_1','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";s:1:\"4\";s:7:\"visitor\";s:2:\"10\";s:8:\"newslist\";s:2:\"10\";s:10:\"friendlink\";s:2:\"10\";s:10:\"Mguestbook\";s:2:\"10\";s:9:\"Mnewslist\";s:2:\"10\";s:8:\"Mvisitor\";s:2:\"40\";}','','','0','0	127.0.0.1	1305595243\r\n9	fdsafsdw	1282633598','455','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:9;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:10;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";s:1:\"3\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('30','test4','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1290389920','26','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('29','test3','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('28','test2','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1290389819','19','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('27','test1','red','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";s:1:\"4\";s:7:\"visitor\";s:2:\"10\";s:8:\"newslist\";s:2:\"10\";s:10:\"friendlink\";s:2:\"10\";s:10:\"Mguestbook\";s:2:\"10\";s:9:\"Mnewslist\";s:2:\"10\";s:8:\"Mvisitor\";s:2:\"40\";}','','','0','','5','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"6\";s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"3\";s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('31','test5','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','0','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('32','test6','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('33','test7','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('34','test8','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1303349703\r\n1	admin	1303349692','3','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('35','test9','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('36','test10','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1305595056','28','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('37','test11','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1294113347','4','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"公司首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"公司介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"公司新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"供应信息\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"求购信息\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"留言本\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"联系我们\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_picsort` VALUES ('1','0','产品图库','记录产品多方面图片资料','27','test1','0','1288661741','2','');
INSERT INTO `qb_hy_picsort` VALUES ('2','0','资质说明','荣誉证书，获奖证书，营业执照','27','test1','0','1288661741','1','');
INSERT INTO `qb_hy_picsort` VALUES ('3','0','产品图库','记录产品多方面图片资料','28','test2','0','1288662180','2','');
INSERT INTO `qb_hy_picsort` VALUES ('4','0','资质说明','荣誉证书，获奖证书，营业执照','28','test2','0','1288662180','1','');
INSERT INTO `qb_hy_picsort` VALUES ('5','0','产品图库','记录产品多方面图片资料','29','test3','0','1288662327','2','');
INSERT INTO `qb_hy_picsort` VALUES ('6','0','资质说明','荣誉证书，获奖证书，营业执照','29','test3','0','1288662327','1','');
INSERT INTO `qb_hy_picsort` VALUES ('7','0','产品图库','记录产品多方面图片资料','30','test4','0','1288662567','2','');
INSERT INTO `qb_hy_picsort` VALUES ('8','0','资质说明','荣誉证书，获奖证书，营业执照','30','test4','0','1288662567','1','');
INSERT INTO `qb_hy_picsort` VALUES ('9','0','产品图库','记录产品多方面图片资料','31','test5','0','1288662786','2','');
INSERT INTO `qb_hy_picsort` VALUES ('10','0','资质说明','荣誉证书，获奖证书，营业执照','31','test5','0','1288662786','1','');
INSERT INTO `qb_hy_picsort` VALUES ('11','0','产品图库','记录产品多方面图片资料','32','test6','0','1288662947','2','');
INSERT INTO `qb_hy_picsort` VALUES ('12','0','资质说明','荣誉证书，获奖证书，营业执照','32','test6','0','1288662947','1','');
INSERT INTO `qb_hy_picsort` VALUES ('13','0','产品图库','记录产品多方面图片资料','33','test7','0','1288663129','2','');
INSERT INTO `qb_hy_picsort` VALUES ('14','0','资质说明','荣誉证书，获奖证书，营业执照','33','test7','0','1288663129','1','');
INSERT INTO `qb_hy_picsort` VALUES ('15','0','产品图库','记录产品多方面图片资料','34','test8','0','1288663299','2','');
INSERT INTO `qb_hy_picsort` VALUES ('16','0','资质说明','荣誉证书，获奖证书，营业执照','34','test8','0','1288663299','1','');
INSERT INTO `qb_hy_picsort` VALUES ('17','0','产品图库','记录产品多方面图片资料','35','test9','0','1288663462','2','');
INSERT INTO `qb_hy_picsort` VALUES ('18','0','资质说明','荣誉证书，获奖证书，营业执照','35','test9','0','1288663462','1','');
INSERT INTO `qb_hy_picsort` VALUES ('19','0','产品图库','记录产品多方面图片资料','36','test10','0','1288663617','2','');
INSERT INTO `qb_hy_picsort` VALUES ('20','0','资质说明','荣誉证书，获奖证书，营业执照','36','test10','0','1288663617','1','');
INSERT INTO `qb_hy_picsort` VALUES ('21','0','产品图库','记录产品多方面图片资料','37','test11','0','1288663816','2','');
INSERT INTO `qb_hy_picsort` VALUES ('22','0','资质说明','荣誉证书，获奖证书，营业执照','37','test11','0','1288663816','1','');
INSERT INTO `qb_hy_sort` VALUES ('1','0','钢材','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('2','0','钢板卷','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('3','0','板材','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('4','0','中厚板','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('5','0','钢管','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('6','0','型钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('7','0','特钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('8','0','不锈钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('9','0','炉料','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('10','0','生铁','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('11','1','螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('12','1','普线','0','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('13','1','高线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('14','1','圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('15','1','线材','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('16','1','二级螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('17','1','三级螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('18','1','盘螺','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('19','1','优线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('20','1','带肋钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('21','2','带钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('22','2','热板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('23','2','冷板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('24','2','不锈板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('25','2','镀锌板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('26','2','彩涂板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('27','2','花纹板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('28','2','低合金板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('29','2','镀锡板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('30','2','镀铝锌板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('31','2','酸洗板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('32','2','轧硬卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('33','3','冷轧板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('34','3','热轧板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('35','3','容器板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('36','3','合金板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('37','3','高强板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('38','3','耐腐蚀板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('39','3','马口铁基板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('40','3','镀锡板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('41','3','镀铝板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('42','3','硅钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('43','3','镀锌板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('44','3','彩涂板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('45','3','管线钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('46','4','船板','0','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('47','4','大梁板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('48','4','模具板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('49','4','锅炉板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('50','4','翼缘板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('51','4','四切平板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('52','4','花纹板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('53','4','低合金板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('54','4','锰板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('55','4','碳结板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('56','4','合结板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('57','4','开平板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('58','4','耐磨板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('59','5','无缝管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('60','5','镀锌管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('61','5','方管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('62','5','螺旋管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('63','5','焊管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('64','5','直缝管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('65','5','圆管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('66','5','锅炉管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('67','5','球墨管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('68','5','矩型管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('69','5','化肥用管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('70','5','结构管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('71','5','铸铁管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('72','5','脚手架','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('73','6','H型钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('74','6','槽钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('75','6','工字钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('76','6','角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('77','6','扁钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('78','6','轻轨','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('79','6','重轨','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('80','6','方钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('81','6','不等边角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('82','6','型钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('83','6','六角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('84','6','拉光圆','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('85','6','碳圆','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('86','6','等边角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('87','7','焊线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('88','7','圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('89','7','轴承钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('90','7','碳结钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('91','7','弹簧钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('92','7','高工钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('93','7','模具钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('94','7','钢纹线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('95','7','齿轮钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('96','7','合结钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('97','7','耐腐蚀钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('98','7','耐磨钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('99','7','碳工钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('100','7','碳素钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('101','7','耐热钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('102','7','冷镦钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('103','7','工模钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('104','7','结构钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('105','8','不锈板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('106','8','不锈钢管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('107','8','不锈钢线材','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('108','8','不锈钢带','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('109','8','不锈钢圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('110','8','不锈钢角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('111','8','不锈钢槽钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('112','8','不锈钢扁钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('113','8','不锈钢坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('114','8','优焊线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('115','8','拉丝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('116','8','硬线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('117','8','耐热钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('118','8','钢丝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('119','9','矿石','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('120','9','煤焦','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('121','9','精铁粉','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('122','9','废钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('123','9','焦炭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('124','9','煤炭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('125','9','耐火材料','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('126','9','碳素材料','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('127','9','球墨铸铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('128','9','钢锭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('129','9','硅锰','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('130','9','方坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('131','9','管坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('132','9','钢坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('133','9','板坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('134','9','球磨生铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('135','9','辅料副产品','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('136','10','硅铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('137','10','铬铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('138','10','钼铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('139','10','钒铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('140','10','钨铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('141','10','铌铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('142','10','钛铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('143','10','锰铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('144','10','镍矿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('145','10','有色','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('146','10','铜','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('147','10','铝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('148','10','锌','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('149','10','金','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('150','10','银','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('151','10','镍','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('152','10','铅','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('153','10','锡','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('154','10','稀土','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('155','10','贵金属','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_news_config` VALUES ('Info_ShowCommentRows','0','');
INSERT INTO `qb_news_config` VALUES ('Info_PassCommentType','1','');
INSERT INTO `qb_news_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_news_config` VALUES ('Info_adminfen','','');
INSERT INTO `qb_news_config` VALUES ('GroupPostjumpurl','3,4','');
INSERT INTO `qb_news_config` VALUES ('GroupPostIframe','3,4','');
INSERT INTO `qb_news_config` VALUES ('Info_PostCommentType','1','');
INSERT INTO `qb_news_config` VALUES ('module_close','0','');
INSERT INTO `qb_news_config` VALUES ('UseArea','0','');
INSERT INTO `qb_news_config` VALUES ('Info_forbidOutPost','0','');
INSERT INTO `qb_news_config` VALUES ('Info_closeWhy','','');
INSERT INTO `qb_news_config` VALUES ('module_pre','news_','');
INSERT INTO `qb_news_config` VALUES ('GroupPostYZ','3,4,8','');
INSERT INTO `qb_news_config` VALUES ('Info_GroupPostYZ','3,4','');
INSERT INTO `qb_news_config` VALUES ('allowGroupPost','3,4,8','');
INSERT INTO `qb_news_config` VALUES ('module_id','20','');
INSERT INTO `qb_news_config` VALUES ('Info_metakeywords','','');
INSERT INTO `qb_news_config` VALUES ('Info_webname','资讯频道','');
INSERT INTO `qb_news_content` VALUES ('1060','11月1日邯郸钢材市场低合金板价格行情','','4','0','建筑钢材价格行情','1','1','0','1288588437','1288588437','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579066','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1061','11月1日哈尔滨钢材市场螺纹钢价格行情','','4','0','建筑钢材价格行情','1','1','0','1288588439','1288588439','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579066','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1062','11月1日哈尔滨钢材市场盘螺价格行情','','4','0','建筑钢材价格行情','2','1','0','1288588441','1288588441','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579069','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1063','11月1日哈尔滨钢材市场圆钢价格行情','','4','0','建筑钢材价格行情','2','1','0','1288588444','1288588444','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579068','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1064','11月1日哈尔滨钢材市场角钢价格行情','','4','0','建筑钢材价格行情','2','1','0','1288588446','1288588446','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579068','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1065','11月1日哈尔滨钢材市场槽钢价格行情','','4','0','建筑钢材价格行情','1','1','0','1288588448','1288588448','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579067','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1066','10月29日石家庄市场热卷价格基本稳定','','38','0','建筑钢材每日分析','0','1','0','1288588472','1288588472','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1067','10月29日北京市场热轧板卷价格暂稳','','38','0','建筑钢材每日分析','1','1','0','1288588475','1288588475','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578481','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1068','10月29日北京市场中厚板价格暂稳','','38','0','建筑钢材每日分析','1','1','0','1288588480','1288588480','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578480','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1069','10月29日南宁市场热轧价格暂稳','','38','0','建筑钢材每日分析','1','1','0','1288588486','1288588486','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578480','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1070','10月29日博兴市场镀锌板卷成交稳定','','38','0','建筑钢材每日分析','1','1','0','1288588496','1288588496','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578479','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1071','10月29日上海市场热轧带钢价格平稳','','38','0','建筑钢材每日分析','0','1','0','1288588498','1288588498','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1072','10月29日扬州市场中厚板价格暂稳','','38','0','建筑钢材每日分析','0','1','0','1288588502','1288588502','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1073','10月29日鞍山市场热卷价格继续弱势运行','','38','0','建筑钢材每日分析','0','1','0','1288588510','1288588510','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1074','10月29日西宁市场大中型材价格暂稳','','38','0','建筑钢材每日分析','1','1','0','1288588515','1288588515','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578478','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1075','11月1日济南钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588552','1288588552','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1076','11月1日昆明钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588556','1288588556','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1077','11月1日泉州钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588560','1288588560','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1078','11月1日福州钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588567','1288588567','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1079','11月1日南京钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588572','1288588572','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1080','11月1日太原钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588575','1288588575','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1081','11月1日常州钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588578','1288588578','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1082','11月1日贵阳钢材市场冷轧板价格行情','','37','0','冷轧钢板价格行情','0','1','0','1288588580','1288588580','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1083','9月16日东北冷轧市场价格平稳','','39','0','冷轧钢板每日分析','0','1','0','1288588604','1288588604','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1084','9月17日上海冷轧市场价格持跌','','39','0','冷轧钢板每日分析','0','1','0','1288588607','1288588607','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1085','9月17日乐从市场冷轧板卷盘整下行','','39','0','冷轧钢板每日分析','0','1','0','1288588610','1288588610','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1086','9月20日天津市场冷轧价格部分下跌','','39','0','冷轧钢板每日分析','0','1','0','1288588612','1288588612','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1087','9月20日贵阳冷轧市场价格持稳','','39','0','冷轧钢板每日分析','0','1','0','1288588615','1288588615','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1088','9月26日太原市场冷轧价格暂稳','','39','0','冷轧钢板每日分析','0','1','0','1288588618','1288588618','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1089','9月26日贵阳市场冷轧价格稳中趋弱','','39','0','冷轧钢板每日分析','0','1','0','1288588620','1288588620','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1090','9月27日兰州市场冷轧板卷价格基本平稳','','39','0','冷轧钢板每日分析','0','1','0','1288588623','1288588623','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1091','9月27日乌鲁木齐冷轧板卷价格震荡调整','','39','0','冷轧钢板每日分析','0','1','0','1288588625','1288588625','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1092','9月28日北京冷轧市场价格平稳','','39','0','冷轧钢板每日分析','1','1','0','1288588628','1288588628','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1288588697','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1093','组图：陈琳坠楼现场实拍 一楼花园已被清空','','45','0','社会新闻','10','1','0','1288590004','1288590004','1','admin','','','','','0','http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1288590669','0','0','','1302578177','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1094','内地女歌手陈琳跳楼身亡 朋友已在料理后事','','45','0','社会新闻','1','1','0','1288589906','1288589906','1','admin','','','','','0','http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1288590807','0','0','','1300338689','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1095','组图：吴彦祖携女友赴万圣派对 各种制服女亮相','','45','0','社会新闻','1','1','0','1288589807','1288589807','1','admin','','','','','0','http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1288590689','0','0','','1302579234','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1096','法医确认接收陈琳遗体 称其亲友已经来过(图)','','45','0','社会新闻','2','1','0','1288589709','1288589709','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1306905095','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1097','图文：吴彦祖万圣节开派对--吴彦祖和女友','','45','0','社会新闻','1','1','0','1288589610','1288589610','1','admin','','','','','0','http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1306905103','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1098','歌手陈琳跳楼身亡 陈母请求警方追查死因(组图)','','45','0','社会新闻','0','1','0','1288589512','1288589512','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1099','陈琳尸体被遛狗邻居发现','','45','0','社会新闻','0','1','0','1288589414','1288589414','1','admin','','','','','0','htt','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1100','陈琳跳楼身亡暂未排除他杀可能 3个月前刚再嫁','','45','0','社会新闻','2','1','0','1288589316','1288589316','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/2009-11-01/U3996P28T3D2752350F326DT20091101083502.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579226','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1101','女歌手陈琳跳楼自杀身亡 曾前往闺蜜张强家','','45','0','社会新闻','0','1','0','1288589217','1288589217','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752065F326DT20091031194116.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1102','关心妍发放甜蜜结婚照 扬言两年后生孩子(组图)','','45','0','社会新闻','0','1','0','1288589119','1288589119','1','admin','','','','','0','http://ent.sina.com.cn/s/p/2009-11-01/10292752406.shtml&quot; target=&quot;_blank&quot;&gt;&lt;img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1103','组图：大S罗志祥T台走秀 恭喜张柏芝再度怀孕','','45','0','社会新闻','0','1','0','1288589021','1288589021','1','admin','','','','','0','http://ent.sina.com.cn/s/p/2009-11-01/05032752257.shtml&quot; target=&quot;_blank&quot;&gt;&lt;img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=&q','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1104','伏明霞与老公梁锦松做慈善 坦言不再生孩子(图)','','45','0','社会新闻','1','1','0','1288588923','1288588923','1','admin','','','','','0','http://i0.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F326DT20091101082716.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579087','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1105','麦浚龙力撑阿娇不需要隆胸(图)','','45','0','社会新闻','0','1','0','1288588825','1288588825','1','admin','','','','','0','http://i3.sinaimg.cn/ent/s/h/2009-11-01/U2231P28T3D2752338F326DT20091101081157.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1106','组图：李小鹏刘璇亮相香港 与伏明霞重聚很兴奋','','45','0','社会新闻','0','1','0','1288588728','1288588728','1','admin','','','','','0','http://ent.sina.com.cn/s/p/2009-11-01/10332752414.shtml&quot; target=&quot;_blank&quot;&gt;&lt;img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1107','常宽：伤心坏了 昨天在KTV还点了陈琳的歌','','45','0','社会新闻','0','1','0','1288588630','1288588630','1','admin','','','','','0','htt','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1108','洛兵称对陈琳婚变有所耳闻 不愿相信她真的自杀','','45','0','社会新闻','1','1','0','1288588532','1288588532','1','admin','','','','','0','htt','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579052','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1109','图文：吴彦祖万圣节开派对--吴彦祖女友Lisa.S','','45','0','社会新闻','1','1','0','1288588434','1288588434','1','admin','','','','','0','http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579022','0','0','0','0','','','0');
INSERT INTO `qb_news_content_1` VALUES ('1054','','1060','4','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1055','','1061','4','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1056','','1062','4','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1057','','1063','4','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1058','','1064','4','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1059','','1065','4','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1060','','1066','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1061','','1067','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1062','','1068','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1063','','1069','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1064','','1070','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1065','','1071','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1066','','1072','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1067','','1073','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1068','','1074','38','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1069','','1075','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1070','','1076','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1071','','1077','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1072','','1078','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1073','','1079','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1074','','1080','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1075','','1081','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1076','','1082','37','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1077','','1083','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1078','','1084','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1079','','1085','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1080','','1086','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1081','','1087','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1082','','1088','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1083','','1089','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1084','','1090','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1085','','1091','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1086','','1092','39','1','1','近日，浙江省国资委审核通过了杭州钢铁集团公司提交的《杭州钢铁集团公司主业确定方案》。根据审核意见，杭州钢铁集团公司的主业为5个，其中，金属采矿、冶炼和压延加工业，批发零售业，房地产开发与经营业为核心业务，废弃资源和废旧材料回收加工业和水的生产与供应业为培育业务。\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1087','','1092','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752104.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752102.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752108.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752110.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752101.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752103.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752107.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752112.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752106.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752105.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752109.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752111.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212.JPG\" /></a></br><p>　　新浪娱乐讯 今日(10月31日)凌晨，曾演唱<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>走红的内地女歌手陈琳坠楼身亡。尸体在北京东坝奥林匹克花园三期701号楼被发现，据称她是跳楼自杀。新浪娱乐赶到陈琳跳楼所在小区，小区居民透露，今早六点有人遛狗时已发现陈琳的尸体。报警后有警察前来处理。但无法核实其具体跳楼时间。冯科/图</p>				  播放器 begin                                          <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1088','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg alt=内地女歌手陈琳跳楼身亡朋友已在料理后事><br><br>陈琳 资料图片  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯 今日(10月31日)凌晨，内地女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>的尸体，在东坝奥林匹克花园三期701号楼被发现，据称她是跳楼自杀，终年39岁。新浪娱乐已向陈琳自杀地所属派出所求证，对方未否认。此外，陈琳的好友黄先生也向新浪娱乐确认了该消息，目前正在为她料理后事。有好友称，陈琳死前为情所困。</p>				  播放器 begin  <p>　<sbrong>　具体死亡时间无法确认</sbrong></p><p>　　新浪娱乐赶到陈琳跳楼所在小区，小区居民透露，今早六点有人遛狗时已发现陈琳的尸体。报警后有警察前来处理。无法核实其具体跳楼时间。陈琳的好友黄先生向新浪娱乐独家确认陈琳已死亡，并自称正在为其料理后事。</p><p>　<sbrong>　有友人称为情所困</sbrong></p><p>　　据《法制晚报》报道：今晨7时许一名女青年被发现死在一居民家的一楼小花园内。死者仰面躺在一层居民自建的小花园内，年龄20多岁，身穿灰色外套、牛仔裤，下巴处贴有一块口罩大小的白色纱布。999急救人员赶到现场后，确认她已经死亡。上午11时，一名自称死者朋友的年轻女子跑过来，当场放声大哭，她说，自己住在奥林匹克花园一期，之前死者因感情问题来找自己，目前暂住在701号楼九层。“神经病！疯了！怎么这么想不开！？”她对着毫无声息的朋友边哭边骂，后来她对警察说，昨天晚上的情况自己不知情，听说这边出事儿了才跑过来的。</p><p>　　据了解，文中所称女青年，即为陈琳。</p><p>　　<sbrong>经纪人称陈琳电话无法接通</sbrong></p><p>　　今天下午北京某著名经纪人从警局朋友口中得到消息，称陈琳在朋友家中跳楼身亡，他们刚刚出警归来，但具体情况和细节并没有透露。该名经纪人随即向圈中记者询问详情，导致陈琳跳楼自杀的消息在圈中很快传播开来。新浪随即联系陈琳的经纪人刘梅。刘梅称她也是今天下午记者电话她才得知此消息，但她并没有接到警方的任何通知。她也试图联系陈琳，但电话始终无法拨通。</p><p>　<sbrong>　前夫暂无回应</sbrong></p><p>　　陈琳曾经是音乐圈著名厂牌竹书文化的签约艺人，并跟老板沈永革有过十多年的恋情。1994年，陈琳与沈永革相识，一年后沈永革创办北京竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子，但十多年的恋情最终在07年走向终点。09年7月，有四川媒体报道了陈琳与音乐人张超峰再婚的消息，证实此前陈琳与沈永革离婚的消息不假。新浪娱乐随即也联系了沈永革，但他的电话也无人接听。据圈中一位对陈琳比较了解的音乐人透露，自从她与前夫沈永革离婚后一直非常不顺，情绪上相当低落，近两年已逐渐淡出媒体视线。此外，他还透露，今天(10月31日)是沈永革的生日。</p><p>　　<sbrong>警方不做回应</sbrong></p><p>　　另据新浪娱乐北京朝阳区东坝派出所了解到，警方承认今天下午在他们的辖区有人跳楼，但具体情况以及当事人的详细情况不便透露。JZB/文</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-10-31/230456330.shtml\r\"><img src=\"http://p2.v.iask.com/348/14/25693044_0.jpg\" width=\"94\" height=\"71\" alt=\"歌手陈琳跳楼自杀身亡 终年39岁\r\" /></a>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1089','','1092','45','1','1','	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752244.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752242.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752240.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752236.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752237.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752246.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752241.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752245.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752235.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752238.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443.jpg\" /></a></br><p>　　新浪娱乐讯 2009年11月1日香港讯消息，昨天，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">吴彦祖</a>、尹子维、连凯、陈子聪、Lisa S、Ana R、Cara G等一众艺人举行万圣节派对，大玩变装秀。其中以吴彦祖和女友Lisa.S以迷彩造型现身，延续型男风格，最为抢眼。(TungStar/文并图)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1090','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg alt=法医确认接收陈琳遗体称其亲友已经来过(图)><br><br>法医鉴定中心停尸间，牛振华车祸后尸体也曾被停放此处  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F329DT20091101003200.jpg alt=法医确认接收陈琳遗体称其亲友已经来过(图)><br><br>法医鉴定中心的值班工作人员透露陈琳下午确实被送到这里，其家属还过来认尸<br><br></left>\r<p>　　新浪娱乐讯 女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>于昨日(10月31日)凌晨跳楼自杀身亡。新浪娱乐昨晚赶赴北京市法医鉴定中心，值班的工作人员表示他们在昨天下午接收了陈琳的遗体。陈琳的亲友也已经来过，但都已离开。具体的细节他则表示不便多透露。冯科/图</p>				  播放器 begin                                          <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1091','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg alt=图文：吴彦祖万圣节开派对--吴彦祖和女友><br><br>吴彦祖和女友  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯 2009年11月1日香港讯消息，昨天，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">吴彦祖</a>、尹子维、连凯、陈子聪、Lisa S、Ana R、Cara G等一众艺人举行万圣节派对，大玩变装秀。其中以吴彦祖和女友Lisa.S以迷彩造型现身，延续型男风格，最为抢眼。(TungStar/文并图)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1092','','1092','45','1','1','<left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg\" /></left><left>陈琳从9楼跳下坠入一楼小花园</left><p>&nbsp;</p><left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_eUfDyH.jpg\" /></left><left>陈琳在万圣节化魂而去</left><p>&nbsp;</p>				  播放器 begin  <left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i3.sinaimg.cn/ent/y/p/2009-11-01/1257028533_HIEkDi.jpg\" /></left><left>陈琳前夫沈永革</left><p>&nbsp;</p><left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_NRq7w6.jpg\" /></left><left>年近不惑的陈琳，却未解开自己的情感之惑</left><p>　　<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\"><sbrong>陈琳</sbrong></a><sbrong>之死疑与感情有关，事发当天是前夫沈永革生日</sbrong></p><p>　　昨天早上6点多，北京朝阳区东坝奥林匹克花园三期701号楼，一名中年女子从9层楼上坠楼身亡。据多名知情者证实，死者是曾凭借<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>而走红乐坛的重庆籍歌手陈琳，终年39岁。目前，警方正对该起案件进行调查。陈琳的丈夫<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/zhanchao/index.html\" target=\"_blank\">张超</a>峰目前身在湖北。面对新婚不久的妻子突然传来的死讯，他心情激动地表示与陈琳失去了联系，“心情很糟糕，现在连呼吸都困难。”而据好友音乐人郭亮透露，事发当天恰巧是其前夫沈永革的生日。</p><p><sbrong>　　业主遛狗发现尸体</sbrong></p><p>　　事发地位于奥林匹克花园701楼1层一业主家的小花园内。昨天中午10点多，事发地四周已拉起警戒线，由10多名保安进行看守，一旦有陌生人靠近几名保安上前阻拦，记者远远看到，死者已被盖上一块白布。</p><p>　　据了解，最先发现的是701楼2单元的一名女业主，据女业主的丈夫讲，早上6点多，他爱人在小区内遛他家的小狗笨笨，笨笨一边跑一边闻，随后一阵狂吠，他爱人闻声跑过去，看到一名中年女子头朝下趴在地上一动不动，当时他爱人被吓坏了，赶忙将这一情况告诉了小区保安。“一上午都在配合警方做笔录，要不然早该回家吃饭了。”该男子说。随后，记者看到一名中年女子在警车内做笔录。</p><p><sbrong>　　同屋女人睡觉不知情</sbrong></p><p>　　一名不愿透露姓名的保安说，保安赶到时大概7点，看到一中年女子，个头不高，穿着整齐地面朝下躺在地上一动不动，在她的下巴处贴有一块口罩大小的白纱布，从外貌上看，好像是个歌手，随后一名保安拨打急救和报警电话。该保安又说，事发后保安与警方人员在4单元逐层询问，后经发现女子是从9层坠下，同屋的另一名女子当时还在睡觉，并不知道另一间屋里的女子已经出事。</p><p>　　早上7点多，急救车赶到现场后，医务人员立即对中年女子进行抢救，随后确认女子已经死亡。据一名业主讲，事发后派出所与朝阳分局的警方全来了，并对现场进行查看，过程中他听到，死者70年出生，四川人，是一名陈姓女歌手。</p><p>　　“后来歌手高明骏和妻子赶来了。”居民说，高明骏是小区业主，住在一区。高妻跪倒在女子遗体面前，哭喊“你太傻了。”高明骏已很悲伤，随后离开。多位居民称，听到高妻喊女子为“陈琳”，说是唱歌的，出事原因可能与感情方面有关。下午1点，市局现场勘查人员赶到，多名人员再次对现场进行勘查，30分钟过后，警方人员相继撤离。死者被殡仪馆的车拉走。随后，记者在事发地看到，一层业主家的花园是一片土地，已被死者砸出两个坑，但并未发现血迹。</p><p>　<sbrong>　事发当天是前夫生日</sbrong></p><p>　　陈琳在1993年正式出道，首张专辑《你的柔情我永远不懂》便创下150万张销售纪录。1994年，陈琳与沈永革相识，随后沈永革创办竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子。其间陈琳相继推出过《爱了就爱了》《别怕有我》等脍炙人口的歌曲。2007年年底，陈琳和沈永革被曝离婚。今年7月，陈琳在成都与音乐人张超峰登记结婚。在8月份的EP《陈琳的旅行音乐》新闻发布会现场，陈琳与担任吉他手的张超峰尽显甜蜜和默契。</p><p>　　有媒体报道称，陈琳昨天是去朋友张强家串门。张强是东方歌舞团的歌唱演员，曾演唱过《烛光里的妈妈》。她和陈琳私交甚笃，两人是无话不谈的闺蜜。但张强的电话始终处于无人接听的状态。陈琳坠楼自杀的消息传出后，其身边友人纷纷表示难以接受。据一位对陈琳比较了解的圈内人士透露，自从她与前夫沈永革离婚后一直非常不顺，情绪上相当低落，近两年已逐渐淡出媒体视线。此外，他还透露一个非常重要的信息，昨天是沈永革的生日，在这样的日子传出陈琳自杀的消息，令人唏嘘。《京华时报》《北京晨报》</p><p><sbrong>　　死因猜测</sbrong></p><p><sbrong>　　陈琳生前自曝：我对婚恋很失望</sbrong></p><p>　　导致陈琳自杀的原因有多种版本。一种说法，陈琳对自己多年老是推不出新歌而失望，一种说法是她对娱乐圈竞争激烈感到恐怖、害怕，产生了厌世情绪。其中最普遍的说法是感情不顺。耐人寻味的是：10月31日是陈琳前夫沈永革的生日。据了解，沈永革的生日筹备得很热闹，音乐圈的朋友都前去祝贺，令人不可思议的是，陈琳却选择了前夫生日当天自杀。</p><p><sbrong>　　前夫移情别恋</sbrong></p><p>　　昨晚，一位知情人告诉记者：陈琳自杀还是因为沈永革。陈琳的前夫，是北京竹书文化老总。1998年夏天，应陈琳邀请，本报记者曾与陈琳和沈永革在北京吃了一顿饭，两人的恋情也首次曝光。</p><p>　　沈永革早年留学日本，曾成功运作了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">酒井法子</a>在中国的市场推广。1994年，他在观看“黑豹”乐队演出的时候，认识了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/lhyd/index.html\" target=\"_blank\">轮回乐队</a>和陈琳。当他于一年后创办了北京竹书文化时，陈琳成了他的签约艺人。2003年，陈琳因劳累过度大吐血，沈永革一直陪在她身边细心照顾，随后就传出二人结婚的消息。两人的“夫妻店”曾造就了“黑豹”、“轮回”这样的摇滚乐队，还签下了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">杨坤</a>，一度成为中国唱片行业的中坚力量。记者2006年春节在北京采访央视<a class=\"akey\" href=\"http://ent.sina.com.cn/f/v/cctvcw09/index.shtml\" target=\"_blank\">春晚</a>见到陈琳，陈琳曾深情地对记者说：“沈永革这么多年来帮助我，我要为他写一本书，把我们的爱情故事公布于天下。”但到了2007年6月初，某网站突然爆出猛料，陈琳老公沈永革与旗下艺人有暧昧关系，陈琳正和沈永革闹离婚；还称，杨坤就是忍受不了两人的夫妻店，才转投<a class=\"akey\" href=\"http://huayi.sina.com.cn/\" target=\"_blank\">华谊兄弟</a>的，并且陈琳老公沈永革经营的“竹书文化”公司现在人心涣散，只剩7人。到了2008年3月，陈琳和沈永革真的离婚了。</p><p><sbrong>　　对婚恋很失望</sbrong></p><p>　　陈琳与沈永革离婚后，情绪一直低落，刻意远离公众和媒介的视野，甚至一度寻死，在遇到音乐人张超峰后，才重燃对生活的希望。</p><p>　　尽管今年7月，陈琳与张超峰回到成都正式办理了结婚手续，并宣布夫妻俩今年年初成立了陈琳音乐工作室，有意在音乐方面再闯天下，而前夫沈永革也对她新的婚姻表示过祝福，但与张超峰结婚后，陈琳并没有感到幸福，仍时时思念沈永革。据传，张超峰为此曾回到家里打过陈琳几次，陈琳顿感绝望。不久前，陈琳曾自杀过一次，后来多亏朋友相救才活了过来。今年7月，陈琳回到成都办结婚证，本报记者曾悄悄问陈琳：“婚姻怎么样？”想不到，陈琳小声说：“凑合，其实我对婚恋很失望。”</p><p>　　昨日，另据打通陈琳老公张超峰电话的人透露，被问陈琳自杀一事，张超峰语气急速地说：“我现在的思维很混乱，我脑子一片空白，我无法平静下来。对不起，我没有办法回答你的任何问题，请不要逼我了。”被一再追问之下，他仍然不断重复同样的答案，情绪激动。记者杜恩湖</p><p><sbrong>　　好友痛惜</sbrong></p><p><sbrong>　　还没听到新歌她就走了！</sbrong></p><p>　　陈琳前经纪人李绪明昨晚接受记者采访时泣不成声。他说：“下午6时，陈琳的助手告诉我，陈琳跳楼自杀了。天啦，我简直不相信！今天是我曾经的老板，也是陈琳的前夫沈永革的生日。我还说晚上向老板发祝福短消息呢！我和陈琳都是四川人，又都在一个公司，既是朋友又是老乡，感情很好。我于三年前，离开竹书文化，与陈琳见面少了，但常通电话。陈琳最后一次出席公开活动，是今年七八月份光线公司主办的“音采歌曲风云榜”，陈琳作为颁奖嘉宾亮相。我们见了一次面。当时，陈琳打扮得很时尚，精神状态非常好。我们用四川话摆龙门阵。她告诉我，她正在准备出新歌。她明年40岁了，要回到家乡成都、重庆开一个个唱。当时，我说，我一定会支持你。我想不到，新歌还没听见，她就走了！陈琳真是一个好艺人，好歌手。”记者杜恩湖</p><p><sbrong>　　洛兵：我真的很难过</sbrong></p><p>　　陈琳以一曲《你的柔情我永远不懂》走红歌坛，记者昨日与《你的柔情我永远不懂》的作者洛兵先生取得联系。洛兵表示自己已经得知了这个消息：“知道这个消息后我就四处打电话求证，问了很多她身边关系比较近的朋友，但是没有人知道。这些年我跟她一直有联系，只是见面比较少，她婚变的事我也有所耳闻。”对陈琳的离去，洛兵惋惜地说：“既然人已经不在了，我也不想再说什么‘一路走好’之类的话，她来北京的第一张专辑是我们一起做的，有很深的感情，发生这样的事我心里真的挺难过。”</p><p><sbrong>　　</sbrong><a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\"><sbrong>常宽</sbrong></a><sbrong>：昨天还在K她的歌</sbrong></p><p>　　得知陈琳自杀消息后，常宽表示自己目前正在合肥：“我也是刚刚从别的朋友那里得知这个消息的，我伤心坏了，我昨天在KTV唱歌还点了她的歌呢，怎么这么好的一个妹妹就这样没了呢？”常宽表示自己此前与陈琳的关系很好，但是自陈琳离婚后两人就没有再见面。这件事发生之后，常宽直言陈琳的离开给人以警示：“我们平时应该多关心身边的朋友，因为有时几年不见之后有的人可能就已经再也见不着了。我真的很后悔，如果我能早一点找到她，拉她一起做音乐，多开导她多关心她，可能她就不会这么轻易选择自杀，我想对她说‘哥哥对不起你！”《重庆时报》</p><p><sbrong>　　最新消息</sbrong></p><p><sbrong>　　陈琳母亲请求警方追查死因</sbrong></p><p>　　记者了解到：陈琳的父亲已去世多年。几年前，陈琳在北京买了房，将母亲从重庆接到了北京居住。据知情人披露：对女儿突然跳楼自杀，陈琳的母亲悲痛欲绝。昨晚，陈琳的重庆亲戚已赶往北京，帮其料理后事。陈琳的经纪人已经报警，陈琳的母亲请求北京警方追查陈琳跳楼自杀的真相。记者杜恩湖</p><p>　　<sbrong>爱留人间 曾援建希望小学</sbrong></p><p>　　陈琳是个特别有爱心的人。 2004年4月，身为“希望工程爱心大使”的陈琳，亲临重庆特困乡镇——武隆县桐梓镇，为援建的第一所希望小学做调研，并决定在当地援建一所希望小学。两年后，这所以陈琳命名的希望小学竣工。2006年6月14日，陈琳邀请记者再次行走在桐梓镇的小路上，为两年前她播种的第一颗希望的种子——第一所希望小学落成剪彩。典礼上，中国青基会副秘书长汪敏，为陈琳颁发了“希望工程”建设纪念奖牌，并高度盛赞陈琳的善举。陈琳和德国著名男歌手PeterMaffay先生还为希望小学的孩子们献上了她创作的新歌曲《好孩子》，以表达她对山区孩子们的关爱。典礼结束后，陈琳和学生们合影、签名留念，并接受了中央电视台、重庆电视台和德国媒体的现场采访。记者杜恩湖</p><p><sbrong>　　有一说一</sbrong></p><p><sbrong>　　挣脱爱的枷锁</sbrong></p><p>　　昨天是西方的万圣节，酒吧的派对里，潮男潮女们争相扮鬼玩刺激，歌手陈琳，却用惨烈的一跳，真正成了另一个世界的人。这一跳，如同6年前愚人节那天<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zgr.html\" target=\"_blank\">张国荣</a>的那一跳一样令人惊诧、惊悚、惊心。</p><p>　　娱乐圈永远不会让娱乐版缺头条。涉毒、诈骗、婚变、炒作……刺激着人们的神经，也麻木着人们的神经。以至于再猛的料，都要先打上个“炒作”的问号。网上曾一度流行“被自杀”，即不知哪位网友恶作剧，在网络上发布名人自杀的消息，最后发现是彻头彻尾的假新闻，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">白岩松</a>前几天就遭遇了一次“被自杀”。这种假新闻，最终总会让人舒一口气：幸好是假的。当昨天陈琳自杀的消息传来伊始时，“据传”、“有传闻称”等字眼接踵而来，我依然停留在“被自杀”的思考阶段。后来传来确切消息，陈琳的确用如此惨烈的方式，结束了自己的人生，忍不住叹惜：为什么不是“被自杀”？！</p><p>　　1993年，23岁的陈琳凭借《你的柔情我永远不懂》一炮而红，同名专辑创下销售奇迹，如今再回头看这张专辑里收录的歌曲，《假如爱上别人早点告诉我》、《永远找不到爱你的方式》、《我不愿爱的太疲惫》……每一首都充满宿命感，触目惊心。一位圈内人感叹：陈琳这一跳带走的是歌坛80年代最后的辉煌。从重庆到成都，再从成都北上首都。陈琳代表了改革开放黄金时期北漂族的典型，代表了80年代川军那种北上的气魄。敢于面对人生的挑战，却无法面对感情的困局。陈琳选择前夫生日这天跳离人间，挣脱了爱的枷锁。从此以后，他的快乐永远与她的痛苦血肉相连。就算不爱了，也别想一笑而过。</p><p>　　记得最后一次在电视上看到陈琳，是一个多月前，她参加<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wudw/index.html\" target=\"_blank\">吴大维</a>主持的一个慈善节目。嘉宾们现场品尝下午茶，瘦削的陈琳仔细地品尝着桌子上的甜品，就算接受吴大维采访时，嘴巴仍玩味，毫不顾忌形象，当时觉得她真是可爱。这么爱生活，为什么不多爱自己一点呢？ 吴德玉</p><p><sbrong>　　陈琳档案</sbrong></p><p>　　生日：1970年1月31日星座：水瓶座血型：O型籍贯：重庆</p><p>　　陈琳的第一张专辑《你的柔情我永远不懂》于1993年发行，深受大众喜爱。近年来，她的《爱了就爱了》、《十二种颜色》等单曲也被人们广为传唱。陈琳生前共发行七张专辑，分别为《你的柔情我永远不懂》、《害怕爱上你》、<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">《女人》</a>、《陈琳同名专辑》、<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">《爱就爱了》</a>、《不想骗自己》、《13131》。</p><p>　　你的柔情我永远不懂</p><p>　　我给你爱你总是说不难道我让你真的痛苦哪一种情用不着付出如果你爱就爱得清楚说过的话和走过的路什么是爱又什么是苦你的出现是美丽错误我拥有你却不是幸福你的柔情我永远不懂我无法把你看得清楚你的柔情我永远不懂感觉进入了层层迷雾你的柔情我永远不懂雾中的梦想不是归宿你的柔情我永远不懂我等待着那最后孤独没有心思看你装糊涂也没有机会向你倾诉不想把爱变得太模糊</p><p>　　……</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"陈琳跳楼身亡现场实拍 小区邻居议论纷纷\r\" /></a>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml target=_blank>http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1093','','1092','45','1','1','<p>　　新浪娱乐讯 10月31日上午，曾演唱<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>而红极一时的歌手陈琳跳楼身亡。目前新浪娱乐已经到达陈琳跳楼地点。据小区居民介绍，今早六点小区居民外出遛狗时已发现有人跳楼，具体跳楼时间未知。此外，跳楼者坠入一楼邻居花园，花园被砸坏。</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1094','','1092','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752104.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752102.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752108.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752110.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752101.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752103.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752107.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752112.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752106.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752105.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752109.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752111.shtml\" target=\"_blank\"><img alt=组图：陈琳坠楼现场实拍一楼花园已被清空 src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212.JPG\" /></a></br><p>　　新浪娱乐讯 今日(10月31日)凌晨，曾演唱<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>走红的内地女歌手陈琳坠楼身亡。尸体在北京东坝奥林匹克花园三期701号楼被发现，据称她是跳楼自杀。新浪娱乐赶到陈琳跳楼所在小区，小区居民透露，今早六点有人遛狗时已发现陈琳的尸体。报警后有警察前来处理。但无法核实其具体跳楼时间。冯科/图</p>				  播放器 begin                                          <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1095','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg alt=内地女歌手陈琳跳楼身亡朋友已在料理后事><br><br>陈琳 资料图片  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯 今日(10月31日)凌晨，内地女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>的尸体，在东坝奥林匹克花园三期701号楼被发现，据称她是跳楼自杀，终年39岁。新浪娱乐已向陈琳自杀地所属派出所求证，对方未否认。此外，陈琳的好友黄先生也向新浪娱乐确认了该消息，目前正在为她料理后事。有好友称，陈琳死前为情所困。</p>				  播放器 begin  <p>　<sbrong>　具体死亡时间无法确认</sbrong></p><p>　　新浪娱乐赶到陈琳跳楼所在小区，小区居民透露，今早六点有人遛狗时已发现陈琳的尸体。报警后有警察前来处理。无法核实其具体跳楼时间。陈琳的好友黄先生向新浪娱乐独家确认陈琳已死亡，并自称正在为其料理后事。</p><p>　<sbrong>　有友人称为情所困</sbrong></p><p>　　据《法制晚报》报道：今晨7时许一名女青年被发现死在一居民家的一楼小花园内。死者仰面躺在一层居民自建的小花园内，年龄20多岁，身穿灰色外套、牛仔裤，下巴处贴有一块口罩大小的白色纱布。999急救人员赶到现场后，确认她已经死亡。上午11时，一名自称死者朋友的年轻女子跑过来，当场放声大哭，她说，自己住在奥林匹克花园一期，之前死者因感情问题来找自己，目前暂住在701号楼九层。“神经病！疯了！怎么这么想不开！？”她对着毫无声息的朋友边哭边骂，后来她对警察说，昨天晚上的情况自己不知情，听说这边出事儿了才跑过来的。</p><p>　　据了解，文中所称女青年，即为陈琳。</p><p>　　<sbrong>经纪人称陈琳电话无法接通</sbrong></p><p>　　今天下午北京某著名经纪人从警局朋友口中得到消息，称陈琳在朋友家中跳楼身亡，他们刚刚出警归来，但具体情况和细节并没有透露。该名经纪人随即向圈中记者询问详情，导致陈琳跳楼自杀的消息在圈中很快传播开来。新浪随即联系陈琳的经纪人刘梅。刘梅称她也是今天下午记者电话她才得知此消息，但她并没有接到警方的任何通知。她也试图联系陈琳，但电话始终无法拨通。</p><p>　<sbrong>　前夫暂无回应</sbrong></p><p>　　陈琳曾经是音乐圈著名厂牌竹书文化的签约艺人，并跟老板沈永革有过十多年的恋情。1994年，陈琳与沈永革相识，一年后沈永革创办北京竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子，但十多年的恋情最终在07年走向终点。09年7月，有四川媒体报道了陈琳与音乐人张超峰再婚的消息，证实此前陈琳与沈永革离婚的消息不假。新浪娱乐随即也联系了沈永革，但他的电话也无人接听。据圈中一位对陈琳比较了解的音乐人透露，自从她与前夫沈永革离婚后一直非常不顺，情绪上相当低落，近两年已逐渐淡出媒体视线。此外，他还透露，今天(10月31日)是沈永革的生日。</p><p>　　<sbrong>警方不做回应</sbrong></p><p>　　另据新浪娱乐北京朝阳区东坝派出所了解到，警方承认今天下午在他们的辖区有人跳楼，但具体情况以及当事人的详细情况不便透露。JZB/文</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-10-31/230456330.shtml\r\"><img src=\"http://p2.v.iask.com/348/14/25693044_0.jpg\" width=\"94\" height=\"71\" alt=\"歌手陈琳跳楼自杀身亡 终年39岁\r\" /></a>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1096','','1092','45','1','1','	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752244.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752242.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752240.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752236.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752237.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752246.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752241.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752245.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752235.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752238.shtml\" target=\"_blank\"><img alt=组图：吴彦祖携女友赴万圣派对各种制服女亮相 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443.jpg\" /></a></br><p>　　新浪娱乐讯 2009年11月1日香港讯消息，昨天，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">吴彦祖</a>、尹子维、连凯、陈子聪、Lisa S、Ana R、Cara G等一众艺人举行万圣节派对，大玩变装秀。其中以吴彦祖和女友Lisa.S以迷彩造型现身，延续型男风格，最为抢眼。(TungStar/文并图)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1097','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg alt=法医确认接收陈琳遗体称其亲友已经来过(图)><br><br>法医鉴定中心停尸间，牛振华车祸后尸体也曾被停放此处  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F329DT20091101003200.jpg alt=法医确认接收陈琳遗体称其亲友已经来过(图)><br><br>法医鉴定中心的值班工作人员透露陈琳下午确实被送到这里，其家属还过来认尸<br><br></left>\r<p>　　新浪娱乐讯 女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>于昨日(10月31日)凌晨跳楼自杀身亡。新浪娱乐昨晚赶赴北京市法医鉴定中心，值班的工作人员表示他们在昨天下午接收了陈琳的遗体。陈琳的亲友也已经来过，但都已离开。具体的细节他则表示不便多透露。冯科/图</p>				  播放器 begin                                          <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1098','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg alt=图文：吴彦祖万圣节开派对--吴彦祖和女友><br><br>吴彦祖和女友  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯 2009年11月1日香港讯消息，昨天，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">吴彦祖</a>、尹子维、连凯、陈子聪、Lisa S、Ana R、Cara G等一众艺人举行万圣节派对，大玩变装秀。其中以吴彦祖和女友Lisa.S以迷彩造型现身，延续型男风格，最为抢眼。(TungStar/文并图)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1099','','1092','45','1','1','<left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg\" /></left><left>陈琳从9楼跳下坠入一楼小花园</left><p>&nbsp;</p><left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_eUfDyH.jpg\" /></left><left>陈琳在万圣节化魂而去</left><p>&nbsp;</p>				  播放器 begin  <left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i3.sinaimg.cn/ent/y/p/2009-11-01/1257028533_HIEkDi.jpg\" /></left><left>陈琳前夫沈永革</left><p>&nbsp;</p><left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_NRq7w6.jpg\" /></left><left>年近不惑的陈琳，却未解开自己的情感之惑</left><p>　　<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\"><sbrong>陈琳</sbrong></a><sbrong>之死疑与感情有关，事发当天是前夫沈永革生日</sbrong></p><p>　　昨天早上6点多，北京朝阳区东坝奥林匹克花园三期701号楼，一名中年女子从9层楼上坠楼身亡。据多名知情者证实，死者是曾凭借<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>而走红乐坛的重庆籍歌手陈琳，终年39岁。目前，警方正对该起案件进行调查。陈琳的丈夫<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/zhanchao/index.html\" target=\"_blank\">张超</a>峰目前身在湖北。面对新婚不久的妻子突然传来的死讯，他心情激动地表示与陈琳失去了联系，“心情很糟糕，现在连呼吸都困难。”而据好友音乐人郭亮透露，事发当天恰巧是其前夫沈永革的生日。</p><p><sbrong>　　业主遛狗发现尸体</sbrong></p><p>　　事发地位于奥林匹克花园701楼1层一业主家的小花园内。昨天中午10点多，事发地四周已拉起警戒线，由10多名保安进行看守，一旦有陌生人靠近几名保安上前阻拦，记者远远看到，死者已被盖上一块白布。</p><p>　　据了解，最先发现的是701楼2单元的一名女业主，据女业主的丈夫讲，早上6点多，他爱人在小区内遛他家的小狗笨笨，笨笨一边跑一边闻，随后一阵狂吠，他爱人闻声跑过去，看到一名中年女子头朝下趴在地上一动不动，当时他爱人被吓坏了，赶忙将这一情况告诉了小区保安。“一上午都在配合警方做笔录，要不然早该回家吃饭了。”该男子说。随后，记者看到一名中年女子在警车内做笔录。</p><p><sbrong>　　同屋女人睡觉不知情</sbrong></p><p>　　一名不愿透露姓名的保安说，保安赶到时大概7点，看到一中年女子，个头不高，穿着整齐地面朝下躺在地上一动不动，在她的下巴处贴有一块口罩大小的白纱布，从外貌上看，好像是个歌手，随后一名保安拨打急救和报警电话。该保安又说，事发后保安与警方人员在4单元逐层询问，后经发现女子是从9层坠下，同屋的另一名女子当时还在睡觉，并不知道另一间屋里的女子已经出事。</p><p>　　早上7点多，急救车赶到现场后，医务人员立即对中年女子进行抢救，随后确认女子已经死亡。据一名业主讲，事发后派出所与朝阳分局的警方全来了，并对现场进行查看，过程中他听到，死者70年出生，四川人，是一名陈姓女歌手。</p><p>　　“后来歌手高明骏和妻子赶来了。”居民说，高明骏是小区业主，住在一区。高妻跪倒在女子遗体面前，哭喊“你太傻了。”高明骏已很悲伤，随后离开。多位居民称，听到高妻喊女子为“陈琳”，说是唱歌的，出事原因可能与感情方面有关。下午1点，市局现场勘查人员赶到，多名人员再次对现场进行勘查，30分钟过后，警方人员相继撤离。死者被殡仪馆的车拉走。随后，记者在事发地看到，一层业主家的花园是一片土地，已被死者砸出两个坑，但并未发现血迹。</p><p>　<sbrong>　事发当天是前夫生日</sbrong></p><p>　　陈琳在1993年正式出道，首张专辑《你的柔情我永远不懂》便创下150万张销售纪录。1994年，陈琳与沈永革相识，随后沈永革创办竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子。其间陈琳相继推出过《爱了就爱了》《别怕有我》等脍炙人口的歌曲。2007年年底，陈琳和沈永革被曝离婚。今年7月，陈琳在成都与音乐人张超峰登记结婚。在8月份的EP《陈琳的旅行音乐》新闻发布会现场，陈琳与担任吉他手的张超峰尽显甜蜜和默契。</p><p>　　有媒体报道称，陈琳昨天是去朋友张强家串门。张强是东方歌舞团的歌唱演员，曾演唱过《烛光里的妈妈》。她和陈琳私交甚笃，两人是无话不谈的闺蜜。但张强的电话始终处于无人接听的状态。陈琳坠楼自杀的消息传出后，其身边友人纷纷表示难以接受。据一位对陈琳比较了解的圈内人士透露，自从她与前夫沈永革离婚后一直非常不顺，情绪上相当低落，近两年已逐渐淡出媒体视线。此外，他还透露一个非常重要的信息，昨天是沈永革的生日，在这样的日子传出陈琳自杀的消息，令人唏嘘。《京华时报》《北京晨报》</p><p><sbrong>　　死因猜测</sbrong></p><p><sbrong>　　陈琳生前自曝：我对婚恋很失望</sbrong></p><p>　　导致陈琳自杀的原因有多种版本。一种说法，陈琳对自己多年老是推不出新歌而失望，一种说法是她对娱乐圈竞争激烈感到恐怖、害怕，产生了厌世情绪。其中最普遍的说法是感情不顺。耐人寻味的是：10月31日是陈琳前夫沈永革的生日。据了解，沈永革的生日筹备得很热闹，音乐圈的朋友都前去祝贺，令人不可思议的是，陈琳却选择了前夫生日当天自杀。</p><p><sbrong>　　前夫移情别恋</sbrong></p><p>　　昨晚，一位知情人告诉记者：陈琳自杀还是因为沈永革。陈琳的前夫，是北京竹书文化老总。1998年夏天，应陈琳邀请，本报记者曾与陈琳和沈永革在北京吃了一顿饭，两人的恋情也首次曝光。</p><p>　　沈永革早年留学日本，曾成功运作了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">酒井法子</a>在中国的市场推广。1994年，他在观看“黑豹”乐队演出的时候，认识了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/lhyd/index.html\" target=\"_blank\">轮回乐队</a>和陈琳。当他于一年后创办了北京竹书文化时，陈琳成了他的签约艺人。2003年，陈琳因劳累过度大吐血，沈永革一直陪在她身边细心照顾，随后就传出二人结婚的消息。两人的“夫妻店”曾造就了“黑豹”、“轮回”这样的摇滚乐队，还签下了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">杨坤</a>，一度成为中国唱片行业的中坚力量。记者2006年春节在北京采访央视<a class=\"akey\" href=\"http://ent.sina.com.cn/f/v/cctvcw09/index.shtml\" target=\"_blank\">春晚</a>见到陈琳，陈琳曾深情地对记者说：“沈永革这么多年来帮助我，我要为他写一本书，把我们的爱情故事公布于天下。”但到了2007年6月初，某网站突然爆出猛料，陈琳老公沈永革与旗下艺人有暧昧关系，陈琳正和沈永革闹离婚；还称，杨坤就是忍受不了两人的夫妻店，才转投<a class=\"akey\" href=\"http://huayi.sina.com.cn/\" target=\"_blank\">华谊兄弟</a>的，并且陈琳老公沈永革经营的“竹书文化”公司现在人心涣散，只剩7人。到了2008年3月，陈琳和沈永革真的离婚了。</p><p><sbrong>　　对婚恋很失望</sbrong></p><p>　　陈琳与沈永革离婚后，情绪一直低落，刻意远离公众和媒介的视野，甚至一度寻死，在遇到音乐人张超峰后，才重燃对生活的希望。</p><p>　　尽管今年7月，陈琳与张超峰回到成都正式办理了结婚手续，并宣布夫妻俩今年年初成立了陈琳音乐工作室，有意在音乐方面再闯天下，而前夫沈永革也对她新的婚姻表示过祝福，但与张超峰结婚后，陈琳并没有感到幸福，仍时时思念沈永革。据传，张超峰为此曾回到家里打过陈琳几次，陈琳顿感绝望。不久前，陈琳曾自杀过一次，后来多亏朋友相救才活了过来。今年7月，陈琳回到成都办结婚证，本报记者曾悄悄问陈琳：“婚姻怎么样？”想不到，陈琳小声说：“凑合，其实我对婚恋很失望。”</p><p>　　昨日，另据打通陈琳老公张超峰电话的人透露，被问陈琳自杀一事，张超峰语气急速地说：“我现在的思维很混乱，我脑子一片空白，我无法平静下来。对不起，我没有办法回答你的任何问题，请不要逼我了。”被一再追问之下，他仍然不断重复同样的答案，情绪激动。记者杜恩湖</p><p><sbrong>　　好友痛惜</sbrong></p><p><sbrong>　　还没听到新歌她就走了！</sbrong></p><p>　　陈琳前经纪人李绪明昨晚接受记者采访时泣不成声。他说：“下午6时，陈琳的助手告诉我，陈琳跳楼自杀了。天啦，我简直不相信！今天是我曾经的老板，也是陈琳的前夫沈永革的生日。我还说晚上向老板发祝福短消息呢！我和陈琳都是四川人，又都在一个公司，既是朋友又是老乡，感情很好。我于三年前，离开竹书文化，与陈琳见面少了，但常通电话。陈琳最后一次出席公开活动，是今年七八月份光线公司主办的“音采歌曲风云榜”，陈琳作为颁奖嘉宾亮相。我们见了一次面。当时，陈琳打扮得很时尚，精神状态非常好。我们用四川话摆龙门阵。她告诉我，她正在准备出新歌。她明年40岁了，要回到家乡成都、重庆开一个个唱。当时，我说，我一定会支持你。我想不到，新歌还没听见，她就走了！陈琳真是一个好艺人，好歌手。”记者杜恩湖</p><p><sbrong>　　洛兵：我真的很难过</sbrong></p><p>　　陈琳以一曲《你的柔情我永远不懂》走红歌坛，记者昨日与《你的柔情我永远不懂》的作者洛兵先生取得联系。洛兵表示自己已经得知了这个消息：“知道这个消息后我就四处打电话求证，问了很多她身边关系比较近的朋友，但是没有人知道。这些年我跟她一直有联系，只是见面比较少，她婚变的事我也有所耳闻。”对陈琳的离去，洛兵惋惜地说：“既然人已经不在了，我也不想再说什么‘一路走好’之类的话，她来北京的第一张专辑是我们一起做的，有很深的感情，发生这样的事我心里真的挺难过。”</p><p><sbrong>　　</sbrong><a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\"><sbrong>常宽</sbrong></a><sbrong>：昨天还在K她的歌</sbrong></p><p>　　得知陈琳自杀消息后，常宽表示自己目前正在合肥：“我也是刚刚从别的朋友那里得知这个消息的，我伤心坏了，我昨天在KTV唱歌还点了她的歌呢，怎么这么好的一个妹妹就这样没了呢？”常宽表示自己此前与陈琳的关系很好，但是自陈琳离婚后两人就没有再见面。这件事发生之后，常宽直言陈琳的离开给人以警示：“我们平时应该多关心身边的朋友，因为有时几年不见之后有的人可能就已经再也见不着了。我真的很后悔，如果我能早一点找到她，拉她一起做音乐，多开导她多关心她，可能她就不会这么轻易选择自杀，我想对她说‘哥哥对不起你！”《重庆时报》</p><p><sbrong>　　最新消息</sbrong></p><p><sbrong>　　陈琳母亲请求警方追查死因</sbrong></p><p>　　记者了解到：陈琳的父亲已去世多年。几年前，陈琳在北京买了房，将母亲从重庆接到了北京居住。据知情人披露：对女儿突然跳楼自杀，陈琳的母亲悲痛欲绝。昨晚，陈琳的重庆亲戚已赶往北京，帮其料理后事。陈琳的经纪人已经报警，陈琳的母亲请求北京警方追查陈琳跳楼自杀的真相。记者杜恩湖</p><p>　　<sbrong>爱留人间 曾援建希望小学</sbrong></p><p>　　陈琳是个特别有爱心的人。 2004年4月，身为“希望工程爱心大使”的陈琳，亲临重庆特困乡镇——武隆县桐梓镇，为援建的第一所希望小学做调研，并决定在当地援建一所希望小学。两年后，这所以陈琳命名的希望小学竣工。2006年6月14日，陈琳邀请记者再次行走在桐梓镇的小路上，为两年前她播种的第一颗希望的种子——第一所希望小学落成剪彩。典礼上，中国青基会副秘书长汪敏，为陈琳颁发了“希望工程”建设纪念奖牌，并高度盛赞陈琳的善举。陈琳和德国著名男歌手PeterMaffay先生还为希望小学的孩子们献上了她创作的新歌曲《好孩子》，以表达她对山区孩子们的关爱。典礼结束后，陈琳和学生们合影、签名留念，并接受了中央电视台、重庆电视台和德国媒体的现场采访。记者杜恩湖</p><p><sbrong>　　有一说一</sbrong></p><p><sbrong>　　挣脱爱的枷锁</sbrong></p><p>　　昨天是西方的万圣节，酒吧的派对里，潮男潮女们争相扮鬼玩刺激，歌手陈琳，却用惨烈的一跳，真正成了另一个世界的人。这一跳，如同6年前愚人节那天<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zgr.html\" target=\"_blank\">张国荣</a>的那一跳一样令人惊诧、惊悚、惊心。</p><p>　　娱乐圈永远不会让娱乐版缺头条。涉毒、诈骗、婚变、炒作……刺激着人们的神经，也麻木着人们的神经。以至于再猛的料，都要先打上个“炒作”的问号。网上曾一度流行“被自杀”，即不知哪位网友恶作剧，在网络上发布名人自杀的消息，最后发现是彻头彻尾的假新闻，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">白岩松</a>前几天就遭遇了一次“被自杀”。这种假新闻，最终总会让人舒一口气：幸好是假的。当昨天陈琳自杀的消息传来伊始时，“据传”、“有传闻称”等字眼接踵而来，我依然停留在“被自杀”的思考阶段。后来传来确切消息，陈琳的确用如此惨烈的方式，结束了自己的人生，忍不住叹惜：为什么不是“被自杀”？！</p><p>　　1993年，23岁的陈琳凭借《你的柔情我永远不懂》一炮而红，同名专辑创下销售奇迹，如今再回头看这张专辑里收录的歌曲，《假如爱上别人早点告诉我》、《永远找不到爱你的方式》、《我不愿爱的太疲惫》……每一首都充满宿命感，触目惊心。一位圈内人感叹：陈琳这一跳带走的是歌坛80年代最后的辉煌。从重庆到成都，再从成都北上首都。陈琳代表了改革开放黄金时期北漂族的典型，代表了80年代川军那种北上的气魄。敢于面对人生的挑战，却无法面对感情的困局。陈琳选择前夫生日这天跳离人间，挣脱了爱的枷锁。从此以后，他的快乐永远与她的痛苦血肉相连。就算不爱了，也别想一笑而过。</p><p>　　记得最后一次在电视上看到陈琳，是一个多月前，她参加<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wudw/index.html\" target=\"_blank\">吴大维</a>主持的一个慈善节目。嘉宾们现场品尝下午茶，瘦削的陈琳仔细地品尝着桌子上的甜品，就算接受吴大维采访时，嘴巴仍玩味，毫不顾忌形象，当时觉得她真是可爱。这么爱生活，为什么不多爱自己一点呢？ 吴德玉</p><p><sbrong>　　陈琳档案</sbrong></p><p>　　生日：1970年1月31日星座：水瓶座血型：O型籍贯：重庆</p><p>　　陈琳的第一张专辑《你的柔情我永远不懂》于1993年发行，深受大众喜爱。近年来，她的《爱了就爱了》、《十二种颜色》等单曲也被人们广为传唱。陈琳生前共发行七张专辑，分别为《你的柔情我永远不懂》、《害怕爱上你》、<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">《女人》</a>、《陈琳同名专辑》、<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">《爱就爱了》</a>、《不想骗自己》、《13131》。</p><p>　　你的柔情我永远不懂</p><p>　　我给你爱你总是说不难道我让你真的痛苦哪一种情用不着付出如果你爱就爱得清楚说过的话和走过的路什么是爱又什么是苦你的出现是美丽错误我拥有你却不是幸福你的柔情我永远不懂我无法把你看得清楚你的柔情我永远不懂感觉进入了层层迷雾你的柔情我永远不懂雾中的梦想不是归宿你的柔情我永远不懂我等待着那最后孤独没有心思看你装糊涂也没有机会向你倾诉不想把爱变得太模糊</p><p>　　……</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"陈琳跳楼身亡现场实拍 小区邻居议论纷纷\r\" /></a>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml target=_blank>http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1100','','1092','45','1','1','<p>　　新浪娱乐讯 10月31日上午，曾演唱<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>而红极一时的歌手陈琳跳楼身亡。目前新浪娱乐已经到达陈琳跳楼地点。据小区居民介绍，今早六点小区居民外出遛狗时已发现有人跳楼，具体跳楼时间未知。此外，跳楼者坠入一楼邻居花园，花园被砸坏。</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1101','','1093','45','1','1','<p>&nbsp;&nbsp; 今日(10月31日)凌晨，曾演唱《你的柔情我永远不懂》走红的内地女歌手陈琳坠楼身亡。尸体在北京东坝奥林匹克花园三期701号楼被发现，据称她是跳楼自杀。新浪娱乐赶到陈琳跳楼所在小区，小区居民透露，今早六点有人遛狗时已发现陈琳的尸体。报警后有警察前来处理。但无法核实其具体跳楼时间。冯科</p>\r\n','0');
INSERT INTO `qb_news_content_1` VALUES ('1102','','1094','45','1','1','<p>&nbsp;&nbsp; 今日(10月31日)凌晨，内地女歌手陈琳的尸体，在东坝奥林匹克花园三期701号楼被发现，据称她是跳楼自杀，终年39岁。新浪娱乐已向陈琳自杀地所属派出所求证，对方未否认。此外，陈琳的好友黄先生也向新浪娱乐确认了该消息，目前正在为她料理后事。有好友称，陈琳死前为情所困。</p>\r\n<p>　　具体死亡时间无法确认</p>\r\n<p>　　新浪娱乐赶到陈琳跳楼所在小区，小区居民透露，今早六点有人遛狗时已发现陈琳的尸体。报警后有警察前来处理。无法核实其具体跳楼时间。陈琳的好友黄先生向新浪娱乐独家确认陈琳已死亡，并自称正在为其料理后事。</p>\r\n<p>　　有友人称为情所困</p>\r\n<p>　　据《法制晚报》报道：今晨7时许一名女青年被发现死在一居民家的一楼小花园内。死者仰面躺在一层居民自建的小花园内，年龄20多岁，身穿灰色外套、牛仔裤，下巴处贴有一块口罩大小的白色纱布。999急救人员赶到现场后，确认她已经死亡。上午11时，一名自称死者朋友的年轻女子跑过来，当场放声大哭，她说，自己住在奥林匹克花园一期，之前死者因感情问题来找自己，目前暂住在701号楼九层。“神经病！疯了！怎么这么想不开！？”她对着毫无声息的朋友边哭边骂，后来她对警察说，昨天晚上的情况自己不知情，听说这边出事儿了才跑过来的。</p>\r\n<p>　　据了解，文中所称女青年，即为陈琳。</p>\r\n<p>　　经纪人称陈琳电话无法接通</p>\r\n<p>　　今天下午北京某著名经纪人从警局朋友口中得到消息，称陈琳在朋友家中跳楼身亡，他们刚刚出警归来，但具体情况和细节并没有透露。该名经纪人随即向圈中记者询问详情，导致陈琳跳楼自杀的消息在圈中很快传播开来。新浪随即联系陈琳的经纪人刘梅。刘梅称她也是今天下午记者电话她才得知此消息，但她并没有接到警方的任何通知。她也试图联系陈琳，但电话始终无法拨通。</p>\r\n<p>　　前夫暂无回应</p>\r\n<p>　　陈琳曾经是音乐圈著名厂牌竹书文化的签约艺人，并跟老板沈永革有过十多年的恋情。1994年，陈琳与沈永革相识，一年后沈永革创办北京竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子，但十多年的恋情最终在07年走向终点。09年7月，有四川媒体报道了陈琳与音乐人张超峰再婚的消息，证实此前陈琳与沈永革离婚的消息不假。新浪娱乐随即也联系了沈永革，但他的电话也无人接听。据圈中一位对陈琳比较了解的音乐人透露，自从她与前夫沈永革离婚后一直非常不顺，情绪上相当低落，近两年已逐渐淡出媒体视线。此外，他还透露，今天(10月31日)是沈永革的生日。</p>\r\n<p>　　警方不做回应</p>\r\n<p>　　另据新浪娱乐北京朝阳区东坝派出所了解到，警方承认今天下午在他们的辖区有人跳楼，但具体情况以及当事人的详细情况不便透露。</p>\r\n','0');
INSERT INTO `qb_news_content_1` VALUES ('1103','','1095','45','1','1','<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752244.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752242.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752240.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752236.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752237.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752246.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752241.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752245.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752235.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752238.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443_small_h.jpg\" width=\"106\" height=\"160\" alt=\"组图：吴彦祖携女友赴万圣派对各种制服女亮相\" /></a><br />\r\n<p>　　新浪娱乐讯 2009年11月1日香港讯消息，昨天，<a href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">吴彦祖</a>、尹子维、连凯、陈子聪、Lisa S、Ana R、Cara G等一众艺人举行万圣节派对，大玩变装秀。其中以吴彦祖和女友Lisa.S以迷彩造型现身，延续型男风格，最为抢眼。(TungStar/文并图)</p>\r\n<p>　　<a href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\" width=\"18\" height=\"36\" /></a><br />\r\n<br />\r\n<br />\r\n本文转载于 新浪网:<a href=\"http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml\" target=\"_blank\">http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml</a></p>\r\n','0');
INSERT INTO `qb_news_content_1` VALUES ('1104','','1096','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg alt=法医确认接收陈琳遗体称其亲友已经来过(图)><br><br>法医鉴定中心停尸间，牛振华车祸后尸体也曾被停放此处  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F329DT20091101003200.jpg alt=法医确认接收陈琳遗体称其亲友已经来过(图)><br><br>法医鉴定中心的值班工作人员透露陈琳下午确实被送到这里，其家属还过来认尸<br><br></left>\r<p>　　新浪娱乐讯 女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>于昨日(10月31日)凌晨跳楼自杀身亡。新浪娱乐昨晚赶赴北京市法医鉴定中心，值班的工作人员表示他们在昨天下午接收了陈琳的遗体。陈琳的亲友也已经来过，但都已离开。具体的细节他则表示不便多透露。冯科/图</p>				  播放器 begin                                          <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1105','','1097','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg alt=图文：吴彦祖万圣节开派对--吴彦祖和女友><br><br>吴彦祖和女友  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯 2009年11月1日香港讯消息，昨天，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">吴彦祖</a>、尹子维、连凯、陈子聪、Lisa S、Ana R、Cara G等一众艺人举行万圣节派对，大玩变装秀。其中以吴彦祖和女友Lisa.S以迷彩造型现身，延续型男风格，最为抢眼。(TungStar/文并图)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1106','','1098','45','1','1','<left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg\" /></left><left>陈琳从9楼跳下坠入一楼小花园</left><p>&nbsp;</p><left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_eUfDyH.jpg\" /></left><left>陈琳在万圣节化魂而去</left><p>&nbsp;</p>				  播放器 begin  <left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i3.sinaimg.cn/ent/y/p/2009-11-01/1257028533_HIEkDi.jpg\" /></left><left>陈琳前夫沈永革</left><p>&nbsp;</p><left><img alt=歌手陈琳跳楼身亡陈母请求警方追查死因(组图) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_NRq7w6.jpg\" /></left><left>年近不惑的陈琳，却未解开自己的情感之惑</left><p>　　<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\"><sbrong>陈琳</sbrong></a><sbrong>之死疑与感情有关，事发当天是前夫沈永革生日</sbrong></p><p>　　昨天早上6点多，北京朝阳区东坝奥林匹克花园三期701号楼，一名中年女子从9层楼上坠楼身亡。据多名知情者证实，死者是曾凭借<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>而走红乐坛的重庆籍歌手陈琳，终年39岁。目前，警方正对该起案件进行调查。陈琳的丈夫<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/zhanchao/index.html\" target=\"_blank\">张超</a>峰目前身在湖北。面对新婚不久的妻子突然传来的死讯，他心情激动地表示与陈琳失去了联系，“心情很糟糕，现在连呼吸都困难。”而据好友音乐人郭亮透露，事发当天恰巧是其前夫沈永革的生日。</p><p><sbrong>　　业主遛狗发现尸体</sbrong></p><p>　　事发地位于奥林匹克花园701楼1层一业主家的小花园内。昨天中午10点多，事发地四周已拉起警戒线，由10多名保安进行看守，一旦有陌生人靠近几名保安上前阻拦，记者远远看到，死者已被盖上一块白布。</p><p>　　据了解，最先发现的是701楼2单元的一名女业主，据女业主的丈夫讲，早上6点多，他爱人在小区内遛他家的小狗笨笨，笨笨一边跑一边闻，随后一阵狂吠，他爱人闻声跑过去，看到一名中年女子头朝下趴在地上一动不动，当时他爱人被吓坏了，赶忙将这一情况告诉了小区保安。“一上午都在配合警方做笔录，要不然早该回家吃饭了。”该男子说。随后，记者看到一名中年女子在警车内做笔录。</p><p><sbrong>　　同屋女人睡觉不知情</sbrong></p><p>　　一名不愿透露姓名的保安说，保安赶到时大概7点，看到一中年女子，个头不高，穿着整齐地面朝下躺在地上一动不动，在她的下巴处贴有一块口罩大小的白纱布，从外貌上看，好像是个歌手，随后一名保安拨打急救和报警电话。该保安又说，事发后保安与警方人员在4单元逐层询问，后经发现女子是从9层坠下，同屋的另一名女子当时还在睡觉，并不知道另一间屋里的女子已经出事。</p><p>　　早上7点多，急救车赶到现场后，医务人员立即对中年女子进行抢救，随后确认女子已经死亡。据一名业主讲，事发后派出所与朝阳分局的警方全来了，并对现场进行查看，过程中他听到，死者70年出生，四川人，是一名陈姓女歌手。</p><p>　　“后来歌手高明骏和妻子赶来了。”居民说，高明骏是小区业主，住在一区。高妻跪倒在女子遗体面前，哭喊“你太傻了。”高明骏已很悲伤，随后离开。多位居民称，听到高妻喊女子为“陈琳”，说是唱歌的，出事原因可能与感情方面有关。下午1点，市局现场勘查人员赶到，多名人员再次对现场进行勘查，30分钟过后，警方人员相继撤离。死者被殡仪馆的车拉走。随后，记者在事发地看到，一层业主家的花园是一片土地，已被死者砸出两个坑，但并未发现血迹。</p><p>　<sbrong>　事发当天是前夫生日</sbrong></p><p>　　陈琳在1993年正式出道，首张专辑《你的柔情我永远不懂》便创下150万张销售纪录。1994年，陈琳与沈永革相识，随后沈永革创办竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子。其间陈琳相继推出过《爱了就爱了》《别怕有我》等脍炙人口的歌曲。2007年年底，陈琳和沈永革被曝离婚。今年7月，陈琳在成都与音乐人张超峰登记结婚。在8月份的EP《陈琳的旅行音乐》新闻发布会现场，陈琳与担任吉他手的张超峰尽显甜蜜和默契。</p><p>　　有媒体报道称，陈琳昨天是去朋友张强家串门。张强是东方歌舞团的歌唱演员，曾演唱过《烛光里的妈妈》。她和陈琳私交甚笃，两人是无话不谈的闺蜜。但张强的电话始终处于无人接听的状态。陈琳坠楼自杀的消息传出后，其身边友人纷纷表示难以接受。据一位对陈琳比较了解的圈内人士透露，自从她与前夫沈永革离婚后一直非常不顺，情绪上相当低落，近两年已逐渐淡出媒体视线。此外，他还透露一个非常重要的信息，昨天是沈永革的生日，在这样的日子传出陈琳自杀的消息，令人唏嘘。《京华时报》《北京晨报》</p><p><sbrong>　　死因猜测</sbrong></p><p><sbrong>　　陈琳生前自曝：我对婚恋很失望</sbrong></p><p>　　导致陈琳自杀的原因有多种版本。一种说法，陈琳对自己多年老是推不出新歌而失望，一种说法是她对娱乐圈竞争激烈感到恐怖、害怕，产生了厌世情绪。其中最普遍的说法是感情不顺。耐人寻味的是：10月31日是陈琳前夫沈永革的生日。据了解，沈永革的生日筹备得很热闹，音乐圈的朋友都前去祝贺，令人不可思议的是，陈琳却选择了前夫生日当天自杀。</p><p><sbrong>　　前夫移情别恋</sbrong></p><p>　　昨晚，一位知情人告诉记者：陈琳自杀还是因为沈永革。陈琳的前夫，是北京竹书文化老总。1998年夏天，应陈琳邀请，本报记者曾与陈琳和沈永革在北京吃了一顿饭，两人的恋情也首次曝光。</p><p>　　沈永革早年留学日本，曾成功运作了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">酒井法子</a>在中国的市场推广。1994年，他在观看“黑豹”乐队演出的时候，认识了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/lhyd/index.html\" target=\"_blank\">轮回乐队</a>和陈琳。当他于一年后创办了北京竹书文化时，陈琳成了他的签约艺人。2003年，陈琳因劳累过度大吐血，沈永革一直陪在她身边细心照顾，随后就传出二人结婚的消息。两人的“夫妻店”曾造就了“黑豹”、“轮回”这样的摇滚乐队，还签下了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">杨坤</a>，一度成为中国唱片行业的中坚力量。记者2006年春节在北京采访央视<a class=\"akey\" href=\"http://ent.sina.com.cn/f/v/cctvcw09/index.shtml\" target=\"_blank\">春晚</a>见到陈琳，陈琳曾深情地对记者说：“沈永革这么多年来帮助我，我要为他写一本书，把我们的爱情故事公布于天下。”但到了2007年6月初，某网站突然爆出猛料，陈琳老公沈永革与旗下艺人有暧昧关系，陈琳正和沈永革闹离婚；还称，杨坤就是忍受不了两人的夫妻店，才转投<a class=\"akey\" href=\"http://huayi.sina.com.cn/\" target=\"_blank\">华谊兄弟</a>的，并且陈琳老公沈永革经营的“竹书文化”公司现在人心涣散，只剩7人。到了2008年3月，陈琳和沈永革真的离婚了。</p><p><sbrong>　　对婚恋很失望</sbrong></p><p>　　陈琳与沈永革离婚后，情绪一直低落，刻意远离公众和媒介的视野，甚至一度寻死，在遇到音乐人张超峰后，才重燃对生活的希望。</p><p>　　尽管今年7月，陈琳与张超峰回到成都正式办理了结婚手续，并宣布夫妻俩今年年初成立了陈琳音乐工作室，有意在音乐方面再闯天下，而前夫沈永革也对她新的婚姻表示过祝福，但与张超峰结婚后，陈琳并没有感到幸福，仍时时思念沈永革。据传，张超峰为此曾回到家里打过陈琳几次，陈琳顿感绝望。不久前，陈琳曾自杀过一次，后来多亏朋友相救才活了过来。今年7月，陈琳回到成都办结婚证，本报记者曾悄悄问陈琳：“婚姻怎么样？”想不到，陈琳小声说：“凑合，其实我对婚恋很失望。”</p><p>　　昨日，另据打通陈琳老公张超峰电话的人透露，被问陈琳自杀一事，张超峰语气急速地说：“我现在的思维很混乱，我脑子一片空白，我无法平静下来。对不起，我没有办法回答你的任何问题，请不要逼我了。”被一再追问之下，他仍然不断重复同样的答案，情绪激动。记者杜恩湖</p><p><sbrong>　　好友痛惜</sbrong></p><p><sbrong>　　还没听到新歌她就走了！</sbrong></p><p>　　陈琳前经纪人李绪明昨晚接受记者采访时泣不成声。他说：“下午6时，陈琳的助手告诉我，陈琳跳楼自杀了。天啦，我简直不相信！今天是我曾经的老板，也是陈琳的前夫沈永革的生日。我还说晚上向老板发祝福短消息呢！我和陈琳都是四川人，又都在一个公司，既是朋友又是老乡，感情很好。我于三年前，离开竹书文化，与陈琳见面少了，但常通电话。陈琳最后一次出席公开活动，是今年七八月份光线公司主办的“音采歌曲风云榜”，陈琳作为颁奖嘉宾亮相。我们见了一次面。当时，陈琳打扮得很时尚，精神状态非常好。我们用四川话摆龙门阵。她告诉我，她正在准备出新歌。她明年40岁了，要回到家乡成都、重庆开一个个唱。当时，我说，我一定会支持你。我想不到，新歌还没听见，她就走了！陈琳真是一个好艺人，好歌手。”记者杜恩湖</p><p><sbrong>　　洛兵：我真的很难过</sbrong></p><p>　　陈琳以一曲《你的柔情我永远不懂》走红歌坛，记者昨日与《你的柔情我永远不懂》的作者洛兵先生取得联系。洛兵表示自己已经得知了这个消息：“知道这个消息后我就四处打电话求证，问了很多她身边关系比较近的朋友，但是没有人知道。这些年我跟她一直有联系，只是见面比较少，她婚变的事我也有所耳闻。”对陈琳的离去，洛兵惋惜地说：“既然人已经不在了，我也不想再说什么‘一路走好’之类的话，她来北京的第一张专辑是我们一起做的，有很深的感情，发生这样的事我心里真的挺难过。”</p><p><sbrong>　　</sbrong><a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\"><sbrong>常宽</sbrong></a><sbrong>：昨天还在K她的歌</sbrong></p><p>　　得知陈琳自杀消息后，常宽表示自己目前正在合肥：“我也是刚刚从别的朋友那里得知这个消息的，我伤心坏了，我昨天在KTV唱歌还点了她的歌呢，怎么这么好的一个妹妹就这样没了呢？”常宽表示自己此前与陈琳的关系很好，但是自陈琳离婚后两人就没有再见面。这件事发生之后，常宽直言陈琳的离开给人以警示：“我们平时应该多关心身边的朋友，因为有时几年不见之后有的人可能就已经再也见不着了。我真的很后悔，如果我能早一点找到她，拉她一起做音乐，多开导她多关心她，可能她就不会这么轻易选择自杀，我想对她说‘哥哥对不起你！”《重庆时报》</p><p><sbrong>　　最新消息</sbrong></p><p><sbrong>　　陈琳母亲请求警方追查死因</sbrong></p><p>　　记者了解到：陈琳的父亲已去世多年。几年前，陈琳在北京买了房，将母亲从重庆接到了北京居住。据知情人披露：对女儿突然跳楼自杀，陈琳的母亲悲痛欲绝。昨晚，陈琳的重庆亲戚已赶往北京，帮其料理后事。陈琳的经纪人已经报警，陈琳的母亲请求北京警方追查陈琳跳楼自杀的真相。记者杜恩湖</p><p>　　<sbrong>爱留人间 曾援建希望小学</sbrong></p><p>　　陈琳是个特别有爱心的人。 2004年4月，身为“希望工程爱心大使”的陈琳，亲临重庆特困乡镇——武隆县桐梓镇，为援建的第一所希望小学做调研，并决定在当地援建一所希望小学。两年后，这所以陈琳命名的希望小学竣工。2006年6月14日，陈琳邀请记者再次行走在桐梓镇的小路上，为两年前她播种的第一颗希望的种子——第一所希望小学落成剪彩。典礼上，中国青基会副秘书长汪敏，为陈琳颁发了“希望工程”建设纪念奖牌，并高度盛赞陈琳的善举。陈琳和德国著名男歌手PeterMaffay先生还为希望小学的孩子们献上了她创作的新歌曲《好孩子》，以表达她对山区孩子们的关爱。典礼结束后，陈琳和学生们合影、签名留念，并接受了中央电视台、重庆电视台和德国媒体的现场采访。记者杜恩湖</p><p><sbrong>　　有一说一</sbrong></p><p><sbrong>　　挣脱爱的枷锁</sbrong></p><p>　　昨天是西方的万圣节，酒吧的派对里，潮男潮女们争相扮鬼玩刺激，歌手陈琳，却用惨烈的一跳，真正成了另一个世界的人。这一跳，如同6年前愚人节那天<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zgr.html\" target=\"_blank\">张国荣</a>的那一跳一样令人惊诧、惊悚、惊心。</p><p>　　娱乐圈永远不会让娱乐版缺头条。涉毒、诈骗、婚变、炒作……刺激着人们的神经，也麻木着人们的神经。以至于再猛的料，都要先打上个“炒作”的问号。网上曾一度流行“被自杀”，即不知哪位网友恶作剧，在网络上发布名人自杀的消息，最后发现是彻头彻尾的假新闻，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">白岩松</a>前几天就遭遇了一次“被自杀”。这种假新闻，最终总会让人舒一口气：幸好是假的。当昨天陈琳自杀的消息传来伊始时，“据传”、“有传闻称”等字眼接踵而来，我依然停留在“被自杀”的思考阶段。后来传来确切消息，陈琳的确用如此惨烈的方式，结束了自己的人生，忍不住叹惜：为什么不是“被自杀”？！</p><p>　　1993年，23岁的陈琳凭借《你的柔情我永远不懂》一炮而红，同名专辑创下销售奇迹，如今再回头看这张专辑里收录的歌曲，《假如爱上别人早点告诉我》、《永远找不到爱你的方式》、《我不愿爱的太疲惫》……每一首都充满宿命感，触目惊心。一位圈内人感叹：陈琳这一跳带走的是歌坛80年代最后的辉煌。从重庆到成都，再从成都北上首都。陈琳代表了改革开放黄金时期北漂族的典型，代表了80年代川军那种北上的气魄。敢于面对人生的挑战，却无法面对感情的困局。陈琳选择前夫生日这天跳离人间，挣脱了爱的枷锁。从此以后，他的快乐永远与她的痛苦血肉相连。就算不爱了，也别想一笑而过。</p><p>　　记得最后一次在电视上看到陈琳，是一个多月前，她参加<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wudw/index.html\" target=\"_blank\">吴大维</a>主持的一个慈善节目。嘉宾们现场品尝下午茶，瘦削的陈琳仔细地品尝着桌子上的甜品，就算接受吴大维采访时，嘴巴仍玩味，毫不顾忌形象，当时觉得她真是可爱。这么爱生活，为什么不多爱自己一点呢？ 吴德玉</p><p><sbrong>　　陈琳档案</sbrong></p><p>　　生日：1970年1月31日星座：水瓶座血型：O型籍贯：重庆</p><p>　　陈琳的第一张专辑《你的柔情我永远不懂》于1993年发行，深受大众喜爱。近年来，她的《爱了就爱了》、《十二种颜色》等单曲也被人们广为传唱。陈琳生前共发行七张专辑，分别为《你的柔情我永远不懂》、《害怕爱上你》、<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">《女人》</a>、《陈琳同名专辑》、<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">《爱就爱了》</a>、《不想骗自己》、《13131》。</p><p>　　你的柔情我永远不懂</p><p>　　我给你爱你总是说不难道我让你真的痛苦哪一种情用不着付出如果你爱就爱得清楚说过的话和走过的路什么是爱又什么是苦你的出现是美丽错误我拥有你却不是幸福你的柔情我永远不懂我无法把你看得清楚你的柔情我永远不懂感觉进入了层层迷雾你的柔情我永远不懂雾中的梦想不是归宿你的柔情我永远不懂我等待着那最后孤独没有心思看你装糊涂也没有机会向你倾诉不想把爱变得太模糊</p><p>　　……</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"陈琳跳楼身亡现场实拍 小区邻居议论纷纷\r\" /></a>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml target=_blank>http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1107','','1099','45','1','1','<p>　　新浪娱乐讯 10月31日上午，曾演唱<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>而红极一时的歌手陈琳跳楼身亡。目前新浪娱乐已经到达陈琳跳楼地点。据小区居民介绍，今早六点小区居民外出遛狗时已发现有人跳楼，具体跳楼时间未知。此外，跳楼者坠入一楼邻居花园，花园被砸坏。</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1108','','1100','45','1','1','<left><img alt=陈琳跳楼身亡暂未排除他杀可能3个月前刚再嫁 border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/2009-11-01/U3996P28T3D2752350F326DT20091101083502.jpg\" /></left><left>陈琳跳楼身亡的事发地为九层板楼。</left><p>　　以一曲<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>而走红的内地歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>，昨日在北京朝阳区东坝乡奥林匹克花园内跳楼身亡，终年39岁。有传闻称其是因为第二次感情遭遇挫折而自杀，也有消息称，因其颈部有伤，所以警方暂未排除他杀可能。目前警方已介入调查。</p>				  播放器 begin  <p>　　<sbrong>现任老公张超峰：我的脑子一片空白</sbrong></p><p>　　昨日有圈内人爆料说陈琳在《烛光里的妈妈》演唱者张强的家中跳楼自杀，记者立刻致电陈琳的经纪人刘小姐，她表示自从10月25日的活动与陈琳在机场分手后，也与她失去联系，“她的电话我也打不通，刚才我也给张强打电话了，但她不接。我们已经报警了，也在等消息。”</p><p>　　随后记者联系到一位歌手的经纪人，他表示自己刚听说了这件事情，“是自杀了，好像是感情出现了问题”。此外，十三月公司老板卢中强在打听之后证实了陈琳自杀的消息，并表示“现在特别难受，细节我不多说了”。</p><p>　　有媒体连线陈琳现任老公张超峰。电话响了很久之后，张超峰才接听电话，被问陈琳是否自杀一事，他语气急速地说：“我现在的思维很混乱，我脑子现在一片空白，我无法平静下来，对不起，我无法回答你的任何问题。”被一再追问之下，他仍然不断重复同样的答案，情绪激动。被问陈琳现状，他说：“我不知道，不知道，我也联系不上她，对不起，请你不要再逼我了。”截至昨晚9时许，有消息称，陈琳现任丈夫张超峰已经证实陈琳死亡的消息。</p><p>　　另有消息称，昨日是陈琳前夫沈永革的生日。</p><p>　　<sbrong>邻居遛狗发现尸体高明骏妻子跪地哭喊</sbrong></p><p>　　据悉，陈琳尸体是早上7时被发现。事发点在北京朝阳区东五环东坝乡的奥林匹克花园小区内。当时是小区内居民外出遛狗时发现的，随即报警。据称，死者当时头戴一顶帽子，身穿灰色外套、牛仔裤，脚上还穿着一双红皮鞋，穿着整齐，下巴靠近颈部处贴有一块口罩大小的白色纱布。急救人员赶到后，给女子做了心电图，但女子已无生命体征。</p><p>　　一位居民告诉记者，地面被砸了一个坑，有人曾听到重物砸地的声音，分析女子应该是坠楼。“后来歌手高明骏和妻子赶来了。”居民说，高明骏是小区业主。高妻跪倒在女子遗体前，哭喊：“你太傻了，神经病！疯了！怎么这么想不开！？”高明骏也很悲伤，随后离开。多位居民称，听到高妻喊女子为“陈琳”，说是唱歌的。她对着毫无声息的朋友边哭边骂，后来她对警察说，情况自己不知情，听说这边出事了才跑过来的。</p><p>　　小区居民还透露，尸体一上午都无人认领，直到下午遗体才被运走，十分悲惨。据小区保安透露，目前陈琳坠落的事发小花园里草坪已全部连根移走，只剩下空空泥地。</p><p>　　<sbrong>确切死因有待警方公布</sbrong></p><p>　　记者昨日稍晚时候致电此次处警的北京东坝派出所，值班的民警承认早上有人跳楼的事情，但不肯公布跳楼者的身份。记者表示想确认是不是陈琳时，值班民警表示：“我不能回应这个问题，打来电话的都说是她的朋友。”</p><p>　　有媒体同行向记者介绍说，陈琳不久刚刚新婚，心情应该还不错，自杀的说法有些牵强。但陈琳并不住在该小区，为什么尸体会出现在另一位歌手张强所在的小区，原因令人费解，有消息称陈琳生前可能去找过张强，但张强始终未接电话。截至记者截稿时，陈琳死亡原因依然不明。 本报记者 罗媛媛王彬 王琳</p><p>　　<sbrong>死因分析</sbrong></p><p>　　<sbrong>或因二次婚姻失败</sbrong></p><p>　　究竟为何原因，年仅39岁的陈琳选择轻生这条路？并且惨案还发生在新婚后的第三个月里？据知情人士向记者透露，陈琳被外界看好的第二次婚姻其实并非一帆风顺，陈琳的精神和心理承受着极大的压力。</p><p>　　昨日，一位知情人士告诉记者，张超峰一开始对陈琳还是百般疼爱的，但后来他开始向陈琳伸手要钱买乐器，陈琳的银行卡一直由张超峰掌握并使用，经济上的纠葛给这对新婚夫妇蒙上了阴影。与此同时，前夫沈永革的生活就比她好得多，对比之下，陈琳精神压力骤然增大，而结束生命的10月31日，正好就是前夫沈永革的生日。 实习记者 任奕洁</p><p>　　<sbrong>情感生活</sbrong></p><p>　　<sbrong>三个月前再嫁</sbrong></p><p>　　陈琳的第一任丈夫是“竹书文化”老总沈永革，他早年留学日本，曾成功运作了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">酒井法子</a>在中国的市场推广。1994年，陈琳与沈永革相识，一年后沈永革创办北京竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子。两人的“夫妻店”曾造就了“黑豹”、“轮回”这样的摇滚乐队，还签下了<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">杨坤</a>，一度成为中国唱片行业的中坚力量。</p><p>　　2007年5月，有媒体爆出沈永革与签约新人岳夏关系暧昧，陈琳不仅警告过岳夏，还当着员工的面与沈永革吵架。同年，两人离婚。一向把婚姻看得很重的陈琳婚变后大病一场。</p><p>　　之后的两年时间，陈琳与音乐人张超峰结识并于2009年7月在成都领取结婚证。当天陈琳虽然拒绝了媒体的追问，但是站在舞台上她大声宣布：“我和张超峰在这两年中一起感受到很多东西，分享给大家。” 综合</p><p>　　<sbrong>陈琳档案</sbrong></p><p>　　1970年1月31日生于重庆。</p><p>　　1993年发行第一张专辑 《你的柔情我永远不懂》，创造150万张销售纪录；荣获中央人民广播电台最佳演唱奖和新人奖。随后几年中又发行了 《害怕爱上你》、<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">《女人》</a>、<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">《爱就爱了》</a>、《不想骗自己》等专辑。2003年12月获得 “广电总局——— 中国原创歌曲榜”的“年度最佳女歌手奖”。2006年获得第五届中国金碟奖最佳女歌手奖。</p><p>　　杂志评价：《时尚·中国时装》：她是一位在着装上非常有个性的、时尚的、受人喜爱的实力派歌手。《时装》：歌如其人，她是个毫不掩饰自己内心真实感受的人。《明星周刊》：从《你的柔情我永远不懂》到<a class=\"akey\" href=\"http://ent.sina.com.cn/v/f/bianlian/index.html\" target=\"_blank\">《变脸》</a>再到《爱就爱了》……听陈琳，听女人最真的心声，听她们的理想和爱情，她们的坚强和温柔，她们的蛮横和细腻。 综合</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"陈琳跳楼身亡现场实拍 小区邻居议论纷纷\r\" /></a>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-11-01/08352752350.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/08352752350.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1109','','1101','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752065F326DT20091031194116.jpg alt=女歌手陈琳跳楼自杀身亡曾前往闺蜜张强家><br><br>陈琳 资料图片  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯 新浪娱乐今天下午得到消息，称著名女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>今天下午跳楼自杀身亡，具体原因不详。</p><p>　　今天下午北京某著名经纪人从警局朋友口中得到消息，称陈琳在朋友家中跳楼身亡，他们刚刚出警归来，但具体情况和细节并没有透露。该名经纪人随即向圈中记者询问详情，导致陈琳跳楼自杀的消息在圈中很快传播开来。</p><p>　　新浪随即联系陈琳的经纪人刘梅。刘梅称她也是今天下午记者电话她才得知此消息，但她并没有接到警方的任何通知。她也试图联系陈琳，但电话始终无法拨通。</p><p>　　据新浪娱乐了解到，陈琳今天去朋友张强家串门。据圈中知情人士介绍，张强是东方歌舞团的歌唱演员，曾经演唱过一首脍炙人口的歌曲《烛光里的妈妈》。她和陈琳私交甚笃，两人是无话不谈的闺蜜。新浪娱乐随即联系张强，但她的电话也始终处于无人接听的状态。</p><p>　　陈琳曾经是音乐圈著名厂牌竹书文化的签约艺人，并跟老板沈永革有过十多年的恋情。1994年，陈琳与沈永革相识，一年后沈永革创办北京竹书文化，陈琳不仅成为他的签约艺人，也成了他的妻子，但十多年的恋情最终在07年走向终点。09年7月，有四川媒体报道了陈琳与音乐人张超峰再婚的消息，证实此前陈琳与沈永革离婚的消息不假。新浪娱乐随即也联系了沈永革，但他的电话也无人接听。</p><p>　　由于今天是西方的万圣节，且之前圈中流传过“<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">白岩松</a>自杀”的假消息，因此大多数人对该消息的真实性报以质疑。但据圈中一位对陈琳比较了解的音乐人透露，自从她与前夫沈永革离婚后一直非常不顺，情绪上相当低落，近两年已逐渐淡出媒体视线。此外，他还透露一个非常重要的信息，今天(10月31日)是沈永革的生日，在这样的日子传出陈琳自杀的消息，让人不能不有所联想。</p><p>　　另据新浪娱乐北京朝阳区东坝派出所了解到，警方承认今天下午在他们的辖区有人跳楼，但具体情况以及当事人的详细情况不便透露。截至目前新浪娱乐也无法从任何官方的渠道确认陈琳自杀身亡的消息。张少/文</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/19412752065.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/19412752065.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1110','','1102','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752406.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752406F346DT20091101102944_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752406F346DT20091101102944.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752401.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752401F346DT20091101102929_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752401F346DT20091101102929.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752397.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752397F346DT20091101102914_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752397F346DT20091101102914.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752399.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752399F346DT20091101102921_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752399F346DT20091101102921.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752400.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752400F346DT20091101102925_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752400F346DT20091101102925.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752402.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752402F346DT20091101102932_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752402F346DT20091101102932.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752398.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752398F346DT20091101102917_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752398F346DT20091101102917.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752404.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752404F346DT20091101102937_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752404F346DT20091101102937.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752405.shtml\" target=\"_blank\"><img alt=关心妍发放甜蜜结婚照扬言两年后生孩子(组图) src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752405F346DT20091101102941_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752405F346DT20091101102941.jpg\" /></a></br><p>　　新浪娱乐讯&nbsp;北京时间11月1日消息，据香港媒体报道，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/guanxinyan/index.html\" target=\"_blank\">关心妍</a>与拍拖3年的男友杨长智10月24日在印尼巴厘岛举行婚礼，关心妍在逾百亲友见证下与老公情深一吻，并高呼：“好幸福、好感动。”新娘关心妍更扬言两年后才生孩子。</p><p>　　关心妍3年前在蔡一智介绍下认识现时老公杨长智，两人一拍即合，于10月24日假巴厘岛举行300万元豪华婚礼，姐妹团全是其加拿大的同学，兄弟团则有蔡一智与陆恭和等，蔡一智女儿China担当花女，其他出席的嘉宾还包括<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/siufaimak/index.html\" target=\"_blank\">麦兆辉</a>夫妇及杨受成女儿<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/daisy/index.html\" target=\"_blank\">Daisy</a>，关心妍在逾百亲友见证下成为杨太太。</p><p><sbrong>　　中式裙褂拍照</sbrong></p><p>　　身在外地的关心妍昨日向香港媒体发放多张结婚照，当中包括穿西式婚纱及中式裙褂之相片，曾抗拒穿中式礼服的扬长智为哄老婆最终以呆佬拜寿造型出现，令关心妍感动得眼泛泪光。</p><p>　　关心妍透露婚礼前当地不停下雨，曾一度担心结婚当日的天气，她说：“因为要放烟花，幸好天公作美，注册时阳光灿烂，晚上没有云朵，没影响放烟花，真是要感恩，知道自己好幸福，婚礼让人感动。”</p><p><sbrong>　　香港补办派对</sbrong></p><p>　　问到会否努力造人？关心妍说：“跟老公有共识，两年后再生BB。”关心妍又谓会将婚纱留给女儿。另外，她又自曝两夫妇为以最佳状态示人，事前努力做运动减肥：“老公瘦了整整4.5公斤，不过婚后留了在巴厘岛玩，狂吃之下大家都胖了。”关心妍又决定11月14日假香港中环私人会所Roxie补办派对。(俐俐/文)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/h/p/2009-11-01/08242752348.shtml target=_blank>http://ent.sina.com.cn/s/h/p/2009-11-01/08242752348.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1111','','1103','45','1','1','	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752257.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752257F346DT20091101050325_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752257F346DT20091101050325.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752256.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752256F346DT20091101050320_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752256F346DT20091101050320.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752251.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752251F346DT20091101050249_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752251F346DT20091101050249.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752255.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752255F346DT20091101050312_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752255F346DT20091101050312.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752259.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752259F346DT20091101050334_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752259F346DT20091101050334.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752252.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752252F346DT20091101050253_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752252F346DT20091101050253.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752263.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752263F346DT20091101050354_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752263F346DT20091101050354.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752248.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752248F346DT20091101050227_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752248F346DT20091101050227.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752262.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752262F346DT20091101050349_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752262F346DT20091101050349.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752254.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752254F346DT20091101050309_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752254F346DT20091101050309.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752253.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752253F346DT20091101050303_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752253F346DT20091101050303.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752258.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752258F346DT20091101050330_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752258F346DT20091101050330.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752250.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752250F346DT20091101050243_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752250F346DT20091101050243.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752261.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752261F346DT20091101050344_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752261F346DT20091101050344.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752249.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752249F346DT20091101050238_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752249F346DT20091101050238.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752260.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752260F346DT20091101050339_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752260F346DT20091101050339.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752264.shtml\" target=\"_blank\"><img alt=组图：大S罗志祥T台走秀恭喜张柏芝再度怀孕 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752264F346DT20091101050359_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752264F346DT20091101050359.jpg\" /></a></br><p>　　新浪娱乐讯 2009年11月1日台北消息，坐台女，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/xuxy.html\" target=\"_blank\">大S徐熙媛</a>牵手小猪<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/louzhx/index.html\" target=\"_blank\">罗志祥</a>，为两人合作代言的牛仔裤新款走秀，多年的合作让两人默契十足，在台上合作展示了数十套情侣衫，让台下观众大饱眼福。</p><p>　　虽然刚从内地回来，不过台湾的温度还保持在三十度左右，在T台上，两人大热天穿著羽绒服走秀，吃了不少苦头，不过两人默契十足，尽显专业精神。</p><p>　　近日<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/xtf.html\" target=\"_blank\">谢霆锋</a>公开承认<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zbz.html\" target=\"_blank\">张柏芝</a>以怀孕两个多月，大S则称，早前约张柏芝吃饭时有预感对方已在怀孕，现在两人公开消息，她自然替对方开心，并为两人送上祝福。(TungStar/文并图)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/05072752265.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/05072752265.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1112','','1104','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F326DT20091101082716.jpg alt=伏明霞与老公梁锦松做慈善坦言不再生孩子(图)><br><br>伏明霞专心照顾子女，不打算再生育  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i3.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F329DT20091101082716.jpg alt=伏明霞与老公梁锦松做慈善坦言不再生孩子(图)><br><br>李小鹏与刘璇以二人三足形式踢球，甚有默契<br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F328DT20091101082716.jpg alt=伏明霞与老公梁锦松做慈善坦言不再生孩子(图)><br><br>梁锦松发现妻子戴错名牌，即细心地为小伏除下<br><br></left>\r<p>　　新浪娱乐讯&nbsp; 北京时间11月1日消息，据香港媒体报道，“跳水王后”伏明霞昨日(10月31日)与老公梁锦松在香港出席小母牛“竞步善行2009”慈善比赛，育有一女两子的她坦言肚子要收工，不再添丁！</p><p><sbrong>　　做慈善不遗余力</sbrong></p><p>　　一直致力协助内地贫困家庭自力更生的国际小母牛香港分会，昨日于维多利亚公园举行小母牛“竞步善行2009”慈善比赛，来自零售、银行等多个界别的企业自发组成队伍，参加别开生面、以10人11足形式的比赛，筹款金额达港币630万元。</p><p>　　昨日国际小母牛香港分会董事局主席梁锦松、董事局成员叶澍堃、小母牛爱心大使伏明霞，以及体操运动员刘璇及李小鹏一起出席活动。罗杰承的bma不但是活动统筹赞助商，为善不甘后人的罗杰承，更与吴守基各以10万元投得由酒商以特惠价卖给小母牛、全球产量只有50瓶的香槟，为小母牛共筹得20万元善款。</p><p><sbrong>　　旧战友见面兴奋拥抱</sbrong></p><p>　　一直专心照顾子女的伏明霞，昨日为慈善暂时抛下儿女，在烈日当空下与丈夫梁锦松恩爱到场。期间梁锦松发现妻子错挂他人的名牌，即细心提点及为她除下。很少出席公开场合的小伏成为全场焦点，不少来宾争相找她合照。小伏除了拿着捐款箱呼吁捐钱外，更即场购买数件由著名插画师Carrie Chau设计的T恤，更体贴地叫在场传媒吃雪糕消暑。</p><p>　　刚于安徽探访回来的小伏，坦言佩服当地人民能够坚强面对困境，并感到自己很幸褔。她说：“他们很辛苦很穷，小孩每天上学要划船1小时，我划了10分钟就已腰酸背痛。可能因为现在要照顾小孩，少做运动。我拍了很多照片，会给孩子们看。”小伏透露长女已就读小学一年级，老二则读幼儿园，至于会否再添第四名子女，小伏闻言即说：“够了，不会吧。”</p><p>　　小伏又称平时会替孩子温习功课，不会聘请补习老师：“他们已经有很多东西要做要学，我不会再给他们压力。”他们有有跳水天分吗？“不知道，但他们都喜欢水。”老公教他们算术？“在培养当中。”梁锦松被问到妻子在探访时，模仿当地人民挑水会否感到心痛？他笑道：“不心痛，让她锻炼一下也好。”</p><p><sbrong>　　刘璇李小鹏有默契</sbrong></p><p>　　另外，刘璇及李小鹏参与“小母牛小小世界杯”，以二人三足形式跟其他队友比赛射门。刘璇指已有半年未见过小伏，故一见面即送上拥抱。李小鹏则称自从安徽之行见到小伏，上一次见面已是2000年。(俐俐/文)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/m/2009-11-01/08272752349.shtml target=_blank>http://ent.sina.com.cn/s/m/2009-11-01/08272752349.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1113','','1105','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i3.sinaimg.cn/ent/s/h/2009-11-01/U2231P28T3D2752338F326DT20091101081157.jpg alt=麦浚龙力撑阿娇不需要隆胸(图)><br><br>麦浚龙坦言不抗拒女友隆胸，说内在美才是最重要的  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯&nbsp;北京时间11月1日消息，据香港媒体报道，昨日(10月31日)麦浚龙、农夫组合、星光二少周定纬及许仁杰等在香港出席“Wild Day Out”音乐会，麦浚龙对有传其绯闻女友<a class=\"akey\" href=\"http://ent.sina.com.cn/s/s/f/twins.html\" target=\"_blank\">钟欣桐</a>将以千万元代言隆胸广告，力撑<a class=\"akey\" href=\"http://data.ent.sina.com.cn/star/8874.html\" target=\"_blank\">阿娇</a>不需要隆胸。</p><p>　　麦浚龙先是表示不知情，他说：“我们有联络，不过没讲这个话题。”他坦言不抗拒女友隆胸，因内在美才是首要的，但认为阿娇不需要隆胸。</p><p>　　而周定纬及许仁杰指台湾较少万圣节活动，有意完秀后到兰桂坊玩一玩，感受香港的万圣节气氛。(俐俐/文)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/08112752338.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/08112752338.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1114','','1106','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10332752414.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752414F346DT20091101103309_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752414F346DT20091101103309.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752411.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752411F346DT20091101103258_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752411F346DT20091101103258.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752407.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752407F346DT20091101103240_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752407F346DT20091101103240.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752410.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752410F346DT20091101103253_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752410F346DT20091101103253.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10332752413.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752413F346DT20091101103305_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752413F346DT20091101103305.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752409.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752409F346DT20091101103249_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752409F346DT20091101103249.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10332752412.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752412F346DT20091101103301_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752412F346DT20091101103301.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752408.shtml\" target=\"_blank\"><img alt=组图：李小鹏刘璇亮相香港与伏明霞重聚很兴奋 src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752408F346DT20091101103245_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752408F346DT20091101103245.jpg\" /></a></br><p>　　新浪娱乐讯 10月31日中午，香港小母牛“竞步善行2009慈善比赛”在港举行，小母牛爱心大使<a class=\"akey\" href=\"http://sports.sina.com.cn/star/fu_mingxia/index.shtml\" target=\"_blank\">伏明霞</a>、中国国家体操队金牌运动员<a class=\"akey\" href=\"http://sports.sina.com.cn/star/liu_xuan/index.shtml\" target=\"_blank\">刘璇</a>、李小鹏以及众多明星、嘉宾出席了活动。伏明霞、刘璇、李小鹏三位好友久未见面，当天重聚非常兴奋。</p><p>　　同是运动员的李小鹏和刘璇聊得非常开心。慈善仪式启动后，两人更是同一班艺人大玩竞技游戏，共同为慈善筹款刘璇和李小鹏，表示难得和伏明霞见面，这次机会十分难得，刘璇表示已半年没见过小伏，所以当天见到小伏特别兴奋。李小鹏表示，自2000年后再没有见过小伏，今次难得碰头也感到高兴。他透露退役后便专心修读硕士课程，并学习外语。</p><p>　　小母牛香港分会董事局主席梁锦松、董事局成员叶树堃、活动主礼嘉宾唐英年及中联办副主任黄志民、无线艺员黄长兴、<a class=\"akey\" href=\"http://ent.sina.com.cn/v/p/2006-07-04/01251145075.html\" target=\"_blank\">吕慧仪</a>、陈倩扬和胡诺言等嘉宾也出席了本次活动，共筹得超过六百万元。TUNGSTAR/文并图</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/m/2009-11-01/10342752415.shtml target=_blank>http://ent.sina.com.cn/s/m/2009-11-01/10342752415.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1115','','1107','45','1','1','<p>　　新浪娱乐讯 10月31日消息，新浪娱乐今天下午得到消息，称凭借<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>成名的著名女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>今天下午跳楼自杀身亡，具体原因不详。好友<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\">常宽</a>得知这个消息后直言自己“伤心坏了”，“我昨天在KTV还点了她的歌，怎么说走就走了呢？”</p><p>　　得知陈琳自杀消息后，新浪娱乐第一时间与其好友常宽取得联系，常宽表示自己目前正在合肥：“我也是刚刚从别的朋友那里得知这个消息的，我伤心坏了，我昨天在KTV唱歌还点了她的歌呢，怎么这么好的一个妹妹就这样没了呢？”</p><p>　　常宽与陈琳渊源颇深，当初19岁的陈琳初到北京出的《你的柔情我永远不懂》那张专辑就是常宽与现在的<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/nzyf/index.html\" target=\"_blank\">女子十二乐坊</a>创始人王晓京一起制作的：“陈琳最早是经过我乐队鼓手的引荐来到北京的，她的那张《你的柔情我永远不懂》的专辑也是我和王晓京一起制作的，当时我还在那首歌里帮她吹口琴，我们确实有很深的渊源，后来陈琳结婚之后还曾推荐我去竹书文化公司呢。”</p><p>　　常宽表示自己此前与陈琳的关系很好，但是自陈琳离婚后两人就没有再见面：“几年之前我拍了一部电视剧，那时候跟陈琳经常有很深入的聊天，那时候大家几乎是无话不谈的好朋友，但是就从5年前她离婚之后我就再也没有见到她。去年5.12汶川地震的时候我策划了一些公益演出，当时我曾注意到，所有关于汶川地震的歌曲和演出之类的都看不到陈琳的名字，我觉得很奇怪，因为在我看来她应该算是四川最有名气的女歌手了，所以我就让我的经纪人帮忙找她，希望能邀请她一起做音乐。”</p><p>　　在常宽印象中，陈琳是一个很洁身自好的人：“她从来都不多言多语，很容易被别人所左右，但是却有很善良的内心。我也曾因为离婚的事情纠结，所以能体会到陈琳的心情，人被感情的事所纠缠，到了一定的阶段就会不开心，就会陷入低潮，找不到她的那段时间我猜测她一定是过的不开心了。在我心里陈琳一直是一个内心很强大的人，从那么小的地方来到北京，登上流行音乐天后的宝座真的很不容易，因为她拿过内地最佳女艺人的奖项，所以可以说她称得上是天后级的歌手。”</p><p>　　这件事发生之后，常宽心情很不好，直言陈琳的离开给人以警示：“我一直把陈琳当成像自己的妹妹一样，她的离开给人很大的警示作用，我们平时应该多关心身边的朋友，因为有时几年不见之后有的人可能就已经再也见不着了。我真的很后悔，如果我能早一点找到她，拉她一起做音乐，多开导她多关心她，可能她就不会这么轻易选择自杀，我想对她说‘哥哥对不起她！”常宽还表示，如果陈琳的追悼会日期确定，自己一定会赶去送她最后一程。李青/文</p>					<p>　　<font class=title12><b>声明：新浪网独家稿件，转载请注明出处。</b></A></font></p><p> </p> 	\r                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/22112752120.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/22112752120.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1116','','1108','45','1','1','<p>　　新浪娱乐讯 10月31日消息，新浪娱乐今天下午得到消息，称凭借<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">《你的柔情我永远不懂》</a>成名的著名女歌手<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">陈琳</a>今天下午跳楼自杀身亡，具体原因不详。新浪娱乐第一时间与该曲作者洛兵取得联系，洛兵表示自己之前对于陈琳婚变的消息有所耳闻：“如果她自杀这件事是真的，我真的觉得心里挺难过的。”</p><p>　　陈琳最初在广州作为一名歌手出道，19岁时她凭借一首《你的柔情我永远不懂》成名并来到北京发展。得知陈琳跳楼自杀的消息之后，新浪娱乐第一时间与《你的柔情我永远不懂》的作者洛兵先生取得了联系，洛兵表示自己已经得知了这个消息：“但也是从别人口里得知的，知道这个消息后我就四处打电话求证，问了很多她身边关系比较近的朋友，但是没有人知道。”</p><p>　　陈琳今年7月底再度结婚并且发行了新EP，在这个时候突然自杀不免让人吃惊，洛兵表示：“这些年我跟她一直有联系，只是见面比较少，她婚变的事我也有所耳闻，但还是不愿意相信她自杀的事是真的。”</p><p>　　目前新浪娱乐已经确认陈琳自杀的事实，其好友黄先生正在帮其料理后事，对此洛兵表示“既然人已经不在了，我也不想再说什么‘一路走好’之类的话，她来北京的第一张专辑是我们一起做的，有很深的感情，发生这样的事我心里真的挺难过的。”李青/文</p>					<p>　　<font class=title12><b>声明：新浪网独家稿件，转载请注明出处。</b></A></font></p><p> </p> 	\r                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/y/2009-10-31/21072752083.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/21072752083.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1117','','1109','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg alt=图文：吴彦祖万圣节开派对--吴彦祖女友Lisa.S><br><br>吴彦祖女友Lisa.S  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>　　新浪娱乐讯 2009年11月1日香港讯消息，昨天，<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">吴彦祖</a>、尹子维、连凯、陈子聪、Lisa S、Ana R、Cara G等一众艺人举行万圣节派对，大玩变装秀。其中以吴彦祖和女友Lisa.S以迷彩造型现身，延续型男风格，最为抢眼。(TungStar/文并图)</p>                                        <p>　　<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>本文转载于 新浪网:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml</A>','0');
INSERT INTO `qb_news_sort` VALUES ('1','0','0','新闻中心','1','6','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:11:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:14:\"label_bencandy\";s:0:\"\";s:10:\"channelDir\";s:4:\"nnew\";s:13:\"channelDomain\";s:0:\"\";s:10:\"label_list\";s:2:\"33\";s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/4\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('3','1','0','统计资料','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/6\";s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";s:14:\"label_bencandy\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('4','36','0','建筑钢材价格行情','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','31','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:11:\"list_tpl/10\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('9','0','100','图片中心','1','1','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";s:1:\"0\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('10','9','100','美女欣赏','2','0','0','','0','0','','','22','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','11','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('11','0','101','下载中心','1','3','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('12','11','101','建站软件','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('13','0','102','影视频道','1','1','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('14','13','102','网友视频','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:14:\"label_bencandy\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('43','0','106','客服中心','1','1','1','','-1','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('44','43','106','新手入门指导','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `qb_news_sort` VALUES ('26','11','101','装机软件','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `qb_news_sort` VALUES ('27','11','101','办公软件','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('31','1','0','宏观经济','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/3\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('32','1','0','钢厂动态','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('33','1','0','钢厂信息','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('34','1','0','市场研究','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/2\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('35','1','0','工程建筑','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('38','36','0','建筑钢材每日分析','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/4\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('36','0','0','每日动态','1','5','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('37','36','0','冷轧钢板价格行情','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('39','36','0','冷轧钢板每日分析','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/8\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('45','36','0','社会新闻','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_sell_config` VALUES ('sort_layout','1,75,5#2,71,4,65#54,3#','');
INSERT INTO `qb_sell_config` VALUES ('order_send_mail','1','');
INSERT INTO `qb_sell_config` VALUES ('order_send_msg','1','');
INSERT INTO `qb_sell_config` VALUES ('UpdatePostTime','1','');
INSERT INTO `qb_sell_config` VALUES ('Info_index_cache','','');
INSERT INTO `qb_sell_config` VALUES ('Info_list_cache','','');
INSERT INTO `qb_sell_config` VALUES ('showNoPassComment','0','');
INSERT INTO `qb_sell_config` VALUES ('Info_TopMoney','20','');
INSERT INTO `qb_sell_config` VALUES ('Info_TopDay','15','');
INSERT INTO `qb_sell_config` VALUES ('Info_TopNum','8','');
INSERT INTO `qb_sell_config` VALUES ('Info_ShowNoYz','1','');
INSERT INTO `qb_sell_config` VALUES ('PostInfoMoney','10','');
INSERT INTO `qb_sell_config` VALUES ('Info_allowGuesSearch','1','');
INSERT INTO `qb_sell_config` VALUES ('module_pre','sell_','');
INSERT INTO `qb_sell_config` VALUES ('Index_listsortnum','20','');
INSERT INTO `qb_sell_config` VALUES ('Info_metakeywords','产品','');
INSERT INTO `qb_sell_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_sell_config` VALUES ('Info_webname','产品供应','');
INSERT INTO `qb_sell_config` VALUES ('Info_ReportDB','非法信息\r\n虚假信息\r\n过期信息','');
INSERT INTO `qb_sell_config` VALUES ('module_id','34','');
INSERT INTO `qb_sell_config` VALUES ('Info_TopColor','#FF0000','');
INSERT INTO `qb_sell_config` VALUES ('module_close','0','');
INSERT INTO `qb_sell_content` VALUES ('1','无缝管厚壁合金管','1','11','螺纹钢','4','0','1288610057','1288610057','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/267/882/137288762_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610134','0','1','4900');
INSERT INTO `qb_sell_content` VALUES ('2','外径273mm20#45#20G无缝管钢管','1','11','螺纹钢','1','0','1288610257','1288610257','1','admin','','http://i01.c.aliimg.com/img/ibank/2010/143/884/202488341_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610258','0','1','5454');
INSERT INTO `qb_sell_content` VALUES ('3','20#45#20G外径89mm小口径厚壁无缝流体管','1','11','螺纹钢','1','0','1288610394','1288610394','1','admin','','http://i05.c.aliimg.com/img/ibank/2010/127/864/202468721_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610397','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('4','钢管焊管螺旋管q235直缝焊管Q235','1','12','普线','1','0','1288610490','1288610490','1','admin','','http://i05.c.aliimg.com/img/ibank/2010/755/984/198489557_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610492','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('5','T1-3TU1紫铜管H62黄铜管方铜管铜棒','1','13','高线','0','0','1288610569','1288610569','1','admin','','http://i01.c.aliimg.com/img/ibank/2010/157/174/198471751_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','0','0','1','5645');
INSERT INTO `qb_sell_content` VALUES ('6','T1T3紫铜管宜兴H62黄铜管','1','14','圆钢','1','0','1288610654','1288610654','1','admin','','http://i03.c.aliimg.com/img/ibank/2010/223/454/198454322_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610655','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('7','美标20#45#无锡公司精拔锅炉钢管外径12','1','15','线材','3','0','1288610745','1288610745','1','admin','','http://i02.c.aliimg.com/img/ibank/2010/004/377/201773400_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1292982676','0','1','5343');
INSERT INTO `qb_sell_content` VALUES ('8','双面埋弧电弧螺旋直逢焊管Q235工业焊管','1','16','二级螺纹钢','4','0','1288610830','1288610830','1','admin','','http://i03.c.aliimg.com/img/ibank/2010/472/005/198500274_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300343964','0','1','453');
INSERT INTO `qb_sell_content` VALUES ('9','20#合金管钢管152*12---28无缝流体','1','17','三级螺纹钢','2','0','1288610899','1288610899','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/423/442/133244324_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300338715','0','1','4343');
INSERT INTO `qb_sell_content` VALUES ('10','201301321不锈钢管合金管','1','21','带钢','1','0','1288611012','1288611012','1','admin','','http://i05.c.aliimg.com/img/ibank/2010/710/902/149209017_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288680845','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('11','200*200*10方管|天津方管现货','1','33','冷轧板','2','0','1288611083','1288611083','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/673/938/124839376_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288675144','0','1','5435');
INSERT INTO `qb_sell_content` VALUES ('12','630*12现货螺旋钢管','1','46','船板','1','0','1288611221','1288611221','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/733/921/124129337_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611222','0','1','654');
INSERT INTO `qb_sell_content_1` VALUES ('1','1','11','1','<p>专业生产不锈钢非标无缝工业管/厚壁管/。主要材质有201、202、301、304、304L、TP304、316、316L、TP316、TP316L、321、TP321、317L、309S、310S、410、430、316Ti、347H、2205、430F、17-4PH、17-7PH、2520、904L、347H等.</p>\r\n<p>&nbsp;不锈钢厚壁管：φ20×7—830*50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不锈钢常规管：φ5×0.8—630×15</p>\r\n<p>&nbsp;不锈钢异型管: 12×12×1—120×120×12扁管：40×20×2—200×100×10</p>\r\n<p>不锈钢冷板0.4mm-0.9mm*1m*2m/4寸*8寸，</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.0mm-3.0mm*1m*2m/4寸*8寸</p>\r\n<p>不锈钢热板3.0mm-4.0mm*1250*6000</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.0mm-60mm*1250*6000</p>\r\n<p>&nbsp;另备有各种不锈钢法兰、冲压弯头、截止阀、球阀、各种不锈钢管件</p>\r\n<p>&nbsp;</p>\r\n<p>201、202、301、304、304L、TP304、316、316L、TP316、TP316L、321、TP321、317L309S、310S等.<br />\r\n</p>\r\n','TS','吨','12','222','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('2','2','11','1','<p>钢管行业领导者聊城市金峰钢材有限公司以卓越的产品，一流的服务，合理的价格服务于广大客户。公司拥有富于开拓精<br />\r\n聊城市金峰钢材有限公司集生产、销售、科研与一体的综合性钢铁公司，公司在钢铁行业中有较高的信誉，常年经营成都、包钢 、冶钢、鲁宝、鞍钢、安阳、宝钢、天津等几大钢厂的的优质无缝钢管，规格齐全，保质保量。公司一贯以服务第一、质量第一、价格合理、客户至上、服务周到、让利客户、薄利多销为原则，诚实守信为宗旨。经过多年的经营，已经同全国各大钢厂建立了稳固的供货体系，同使用单位建立了良好的销售体系。 </p>\r\n<p>现有无缝钢管冷轧机组六条，无缝管穿孔机组生产线两条，冷拔无缝钢管生产线六条，精密无缝钢管生产线四条，热轧钢管生产线一条，常年生产10#、20#、35#、45#、16mn、27simn等规格的厚壁结构用无缝钢管、流体用无缝钢管、高压锅炉用无缝钢管、船舶用无缝钢管、化肥生产专用无缝钢管、输油用无缝钢管、高压锅炉管... </p>\r\n<p>本公司常年销售成都、包钢 、冶钢、鲁宝、鞍钢、安阳、宝钢、天津等几大钢厂的现货无缝管，常备资源材质为：20＃、35＃、 45＃、20G 、16Mn 、27SiMn 、12Cr1MoV 、15CrMo 、35CrMo 、T91 、ST45.8-3 、SA106B 、A335P22 、 A335P11、STFA23 、10CrMo910等。执行标准为：结构管 GB8162-1999 、流体管 GB8163-1999 、低中压锅炉管 3087-1999 、高压锅炉管 GB5310-1995 、化肥专用管 GB6479-2000 、石油裂化管 GB9948-88 、船舶专用管GB5312-99、我公司以现货供应的方式销售： 201 、 202 、 304 、 321 、 316 、 316L 、 310S 不锈钢板， 304 、 321 、 316 、、 316L 、 310S 不锈钢管， 1Cr17Ni2 、 0Cr13 、 1Cr13 、 2Cr13 、 3Cr13 、 4Cr1 3 、 304 、 321 、 316 、、 316L 、 310S 不锈钢棒,同时我公司备有千吨合金管。 欢迎新老客户前来洽谈业务。<br />\r\n</p>\r\n','u7','吨','34','54','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('3','3','11','1','<p>聊城市金峰钢材有限公司，成立于2005年9月注册资金1160万元；<br />\r\n金峰公司是聊城市较大的钢管生产、经营企业。有两家分公司。<br />\r\n其中金鹏钢管制造有限公司为现代化中型生产企业，<br />\r\n金峰钢材有限公司和北京亚通永发商贸有限公司为钢材经销流通企业。<br />\r\n固定资产达3400万元，职工980余人；是当今集钢材制造加工销售于一体的大型钢材流通企业。<br />\r\n一、金鹏钢管制造有限公司<br />\r\n&nbsp;公司注册资金500万元，现拥有穿孔机组两套，冷拔机组六套，职工600余人，<br />\r\n主要生产φ5-φ2860?-100钢管年生产能力为10万吨以上。</p>\r\n<p>二、金峰钢材有限公司 <br />\r\n&nbsp;<br />\r\n公司不但经营本厂生产各种型号的钢管，而且经营包钢、樊钢、天津大无缝钢管厂生产的大口径、厚壁的无缝钢管。代理各大厂家的螺旋管、直缝管、不锈钢管、高压管件、高压电站弯管、封头、高压法兰、阀门等。</p>\r\n<p>&nbsp;公司经营的结构用无缝钢管、输送流体用无缝钢管、低中压锅炉用无缝钢管、高压锅炉用无缝钢管、合金结构用无缝钢管、石油裂化用无缝钢管和冷轧精密无缝钢管等七大系列产品广泛应用于军工、锅炉、石油化工、机械制造和液压流动基础件行业。</p>\r\n<p>三、北京亚通永发商贸有限公司<br />\r\n&nbsp;<br />\r\n北京亚通永发商贸有限公司注册资金500万元，位于北京市大兴区黄材镇大兴矿物局储运公司，是集钢材流通、销售于一体的大型货物流通公司，本公司不仅经营国内多家公司制造的各种型号型钢、槽钢、圆钢还可根据客户需求订制、调运各种管材、特殊钢材。<br />\r\n&nbsp;公司国际流通业务部，能够及时为您提供国际各钢材市场的时价，并以良好的信誉将本公司产品远销日本、泰国、台湾及欧洲，深受国内外用户的好评。<br />\r\n&nbsp;<br />\r\n致此向多年来一直支持、关心和帮助我公司发展的各界朋友及新老客户致意：并以满足客户的需求为己任，将更优的产品，更周到的服务奉献给您！竭诚欢迎国内外客户惠顾。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n','f34','吨','2','43','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('4','4','12','1','聊城市金峰钢材有限公司销售部位于中国聊城开发区辽河路东首路南，聊城市金峰钢材有限公司销售部是一家钢管、板材、管件、圆钢、型材、不锈钢材等产品的经销批发的有限责任公司。聊城市金峰钢材有限公司销售部经营的钢管、板材、管件、圆钢、型材、不锈钢材畅销消费者市场。聊城市金峰钢材有限公司销售部的产品在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。聊城市金峰钢材有限公司销售部经销的钢管、板材、管件、圆钢、型材、不锈钢材品种齐全、价格合理。聊城市金峰钢材有限公司销售部实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。','Q235','吨','43','54','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('5','5','13','1','聊城市金峰钢材有限公司销售部位于中国聊城开发区辽河路东首路南，聊城市金峰钢材有限公司销售部是一家钢管、板材、管件、圆钢、型材、不锈钢材等产品的经销批发的有限责任公司。聊城市金峰钢材有限公司销售部经营的钢管、板材、管件、圆钢、型材、不锈钢材畅销消费者市场。聊城市金峰钢材有限公司销售部的产品在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。聊城市金峰钢材有限公司销售部经销的钢管、板材、管件、圆钢、型材、不锈钢材品种齐全、价格合理。聊城市金峰钢材有限公司销售部实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。','f3','吨','43','434','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('6','6','14','1','<p>聊城市金峰钢材有限公司销售部位于中国聊城开发区辽河路东首路南，聊城市金峰钢材有限公司销售部是一家钢管、板材、管件、圆钢、型材、不锈钢材等产品的经销批发的有限责任公司。聊城市金峰钢材有限公司销售部经营的钢管、板材、管件、圆钢、型材、不锈钢材畅销消费者市场。聊城市金峰钢材有限公司销售部的产品在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。聊城市金峰钢材有限公司销售部经销的钢管、板材、管件、圆钢、型材、不锈钢材品种齐全、价格合理。聊城市金峰钢材有限公司销售部实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n','g4','吨','43','433','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('7','7','15','1','<p>我公司可生产30-273*2-40的无缝管并长期代理包钢、天津、西宁、冶钢、鲁宝、衡阳、攀钢等各大钢厂的产品，主要材质有：20#、45#、20G、20Cr、40Cr、15CrMoG、12Cr1MoVG、16Mn、27SiMn、30-42CrMo、10CrMo910、T12、T22、T91、P12、P91、15Mo3、Cr5Mo、1Cr5Mo等</p>\r\n<p>另可定做30*30*3-500*500*25的焊接方管、无缝方管，</p>\r\n<p>&nbsp;</p>\r\n','d3','吨','23','54','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('8','8','16','1','<div><p><span style=\"color:#333333;font-size:9pt;font-family:\'宋体\';\">聊城市金峰钢材有限公司销售部位于中国聊城开发区辽河路东首路南，聊城市金峰钢材有限公司销售部是一家钢管、板材、管件、圆钢、型材、不锈钢材等产品的经销批发的有限责任公司。聊城市金峰钢材有限公司销售部经营的钢管、板材、管件、圆钢、型材、不锈钢材畅销消费者市场。聊城市金峰钢材有限公司销售部的产品在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。聊城市金峰钢材有限公司销售部经销的钢管、板材、管件、圆钢、型材、不锈钢材品种齐全、价格合理。聊城市金峰钢材有限公司销售部实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。</span></p>\r\n<p><span style=\"font-size:24pt;\"><span style=\"color:#008000;\"><span style=\"font-family:\'宋体\';\">电</span><span style=\"font-family:\'Arial\';\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:\'宋体\';\">话：</span><span style=\"font-family:\'Arial\';\">&nbsp;86&nbsp;0635&nbsp;8877058&nbsp;&nbsp;&nbsp;8877059</span></span></span><span style=\"color:#333333;font-size:10pt;font-family:\'Arial\';\"><br />\r\n</span><span style=\"font-size:24pt;\"><span style=\"color:#008000;\"><span style=\"font-family:\'宋体\';\">移动电话：</span><span style=\"font-family:\'Arial\';\">&nbsp;13561235169&nbsp;&nbsp;&nbsp;13306356318</span></span></span><span style=\"color:#333333;font-size:10pt;font-family:\'Arial\';\"><br />\r\n</span><span style=\"font-size:24pt;\"><span style=\"color:#008000;\"><span style=\"font-family:\'宋体\';\">传</span><span style=\"font-family:\'Arial\';\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:\'宋体\';\">真：</span><span style=\"font-family:\'Arial\';\">&nbsp;86&nbsp;0635&nbsp;2188782</span></span></span></p>\r\n</div>\r\n','g5','吨','6','76','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('9','9','17','1','<span style=\"color:#333333;font-family:宋体;\">本公司常年代理首钢，邯钢，宝钢、成都、天钢、包钢、鞍钢、、冶钢、安钢、衡钢等各大钢厂的产品。</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">现公司有以下主要产品，</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">一、不锈钢管、不锈钢棒材、不锈钢板材系列</span><span style=\"color:#333333;font-family:Arial;\">.<br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">结构用不锈钢管（</span><span style=\"color:#333333;font-family:Arial;\">GB/T14975</span><span style=\"color:#333333;font-family:宋体;\">），流体用不锈钢管</span><span style=\"color:#333333;font-family:Arial;\">(GB/T14975)</span><span style=\"color:#333333;font-family:宋体;\">等</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">不锈钢无缝管材质有</span><span style=\"color:#333333;font-family:Arial;\">;201,202,301,310,310S,304,304L,316,316L,321,439,436,437..<br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">不锈钢棒材材质有</span><span style=\"color:#333333;font-family:Arial;\">;201,202,301,310S,321,304,304L,316,316L,321,1Cr13,2Cr13,3Cr13<br />\r\n&nbsp;</span><span style=\"color:#333333;font-family:宋体;\">二、</span><span style=\"color:#333333;font-family:Arial;\"><span style=\"color:#333333;font-family:宋体;\">合金管、无缝管系列。</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">结</span><span style=\"color:#333333;font-family:Arial;\"><span style=\"color:#333333;font-family:宋体;\">构</span><span style=\"color:#333333;font-family:Arial;\"><span style=\"color:#333333;font-family:宋体;\">管</span><span style=\"color:#333333;font-family:Arial;\">GB8162---99,</span><span style=\"color:#333333;font-family:宋体;\">流体管</span><span style=\"color:#333333;font-family:Arial;\">GB8163---99,</span><span style=\"color:#333333;font-family:宋体;\">低中压锅炉管</span><span style=\"color:#333333;font-family:Arial;\">GB3087—2000<br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">高压锅炉管</span><span style=\"color:#333333;font-family:Arial;\">GB5310--95</span><span style=\"color:#333333;font-family:宋体;\">化肥专用管</span><span style=\"color:#333333;font-family:Arial;\">GB6479—86</span><span style=\"color:#333333;font-family:宋体;\">石油裂化管</span><span style=\"color:#333333;font-family:Arial;\">GB9948-----1988<br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">液压支柱管</span><span style=\"color:#333333;font-family:Arial;\">GB/T17396-98</span><span style=\"color:#333333;font-family:宋体;\">地质钻探管</span><span style=\"color:#333333;font-family:Arial;\">YB235-70</span><span style=\"color:#333333;font-family:宋体;\">汽车半轴套管</span><span style=\"color:#333333;font-family:Arial;\">YB/T5035-99<br />\r\n</span><span style=\"color:#333333;font-family:宋体;\">具体材质；</span><span style=\"color:#333333;font-family:Arial;\">10#</span><span style=\"color:#333333;font-family:宋体;\">，</span><span style=\"color:#333333;font-family:Arial;\">20#</span><span style=\"color:#333333;font-family:宋体;\">，</span><span style=\"color:#333333;font-family:Arial;\">45#</span><span style=\"color:#333333;font-family:宋体;\">，</span><span style=\"color:#333333;font-family:Arial;\">20G</span><span style=\"color:#333333;font-family:宋体;\">，</span><span style=\"color:#333333;font-family:Arial;\">16Mn,27SiMn,15CrMo,15CrMoG,12Cr1MoV<br />\r\n20CrMo, 35CrMo, 42CrMo, 12Cr1MoVG, Cr5Mo, 10CrMo910, WB36,<br />\r\n13CrMo44,34CrMo4,P5,12Cr2MoV,P11 P12.,P22,P91</span><span style=\"color:#333333;font-family:宋体;\">等</span></span>','tt4','吨','43','555','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('10','10','21','1','<p>我公司库存规格齐全，批发、零售均可少收，价格低量、带发运输。</p>\r\n<p>专业生产不锈钢非标无缝工业管/厚壁管/。主要材质有201、202、301、304、304L、TP304、316、316L、TP316、TP316L、321、TP321、317L、309S、310S、410、430、316Ti、347H、2205、430F、17-4PH、17-7PH、2520、904L、347H等.</p>\r\n<p>&nbsp;不锈钢厚壁管：φ20×7—830*50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不锈钢常规管：φ5×0.8—630×15</p>\r\n<p>&nbsp;不锈钢异型管: 12×12×1—120×120×12扁管：40×20×2—200×100×10</p>\r\n<p>不锈钢冷板0.4mm-0.9mm*1m*2m/4寸*8寸，</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.0mm-3.0mm*1m*2m/4寸*8寸</p>\r\n<p>不锈钢热板3.0mm-4.0mm*1250*6000</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.0mm-60mm*1250*6000</p>\r\n<p>&nbsp;另备有各种不锈钢法兰、冲压弯头、截止阀、球阀、各种不锈钢管件</p>\r\n<p>&nbsp;</p>\r\n<p>201、202、301、304、304L、TP304、316、316L、TP316、TP316L、321、TP321、317L309S、310S等.</p>\r\n<p>&nbsp;</p>\r\n','t54','吨','6','54','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('11','11','33','1','聊城市金峰钢材有限公司销售部位于中国聊城开发区辽河路东首路南，聊城市金峰钢材有限公司销售部是一家钢管、板材、管件、圆钢、型材、不锈钢材等产品的经销批发的有限责任公司。聊城市金峰钢材有限公司销售部经营的钢管、板材、管件、圆钢、型材、不锈钢材畅销消费者市场。聊城市金峰钢材有限公司销售部的产品在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。聊城市金峰钢材有限公司销售部经销的钢管、板材、管件、圆钢、型材、不锈钢材品种齐全、价格合理。聊城市金峰钢材有限公司销售部实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。','g54','吨','5','34','3天以内发货');
INSERT INTO `qb_sell_content_1` VALUES ('12','12','46','1','<p>聊城市金峰钢材有限公司销售部位于中国聊城开发区辽河路东首路南，聊城市金峰钢材有限公司销售部是一家钢管、板材、管件、圆钢、型材、不锈钢材等产品的经销批发的有限责任公司。聊城市金峰钢材有限公司销售部经营的钢管、板材、管件、圆钢、型材、不锈钢材畅销消费者市场。聊城市金峰钢材有限公司销售部的产品在消费者当中享有较高的地位，公司与多家零售商和代理商建立了长期稳定的合作关系。聊城市金峰钢材有限公司销售部经销的钢管、板材、管件、圆钢、型材、不锈钢材品种齐全、价格合理。聊城市金峰钢材有限公司销售部实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任。</p>\r\n<p>电&nbsp;&nbsp;&nbsp; 话： 86 0635 8877058&nbsp;&nbsp; 8877059<br />\r\n移动电话： 13561235169&nbsp;&nbsp; 13306356318<br />\r\n传&nbsp;&nbsp;&nbsp; 真： 86 0635 2188782</p>\r\n<p>&nbsp;</p>\r\n','g54','吨','5','65','3天以内发货');
INSERT INTO `qb_sell_db` VALUES ('1','11','0','1');
INSERT INTO `qb_sell_db` VALUES ('2','11','0','1');
INSERT INTO `qb_sell_db` VALUES ('3','11','0','1');
INSERT INTO `qb_sell_db` VALUES ('4','12','0','1');
INSERT INTO `qb_sell_db` VALUES ('5','13','0','1');
INSERT INTO `qb_sell_db` VALUES ('6','14','0','1');
INSERT INTO `qb_sell_db` VALUES ('7','15','0','1');
INSERT INTO `qb_sell_db` VALUES ('8','16','0','1');
INSERT INTO `qb_sell_db` VALUES ('9','17','0','1');
INSERT INTO `qb_sell_db` VALUES ('10','21','0','1');
INSERT INTO `qb_sell_db` VALUES ('11','33','0','1');
INSERT INTO `qb_sell_db` VALUES ('12','46','0','1');
INSERT INTO `qb_sell_db` VALUES ('13','11','0','34');
INSERT INTO `qb_sell_field` VALUES ('86','1','详细介绍','content','mediumtext','0','-1','ieeditsimp','600','250','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('159','2','期望价格','hope_price','varchar','20','18','text','50','0','','','单价','','1','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('160','2','还想了解','hope_know','varchar','255','17','checkbox','0','0','单价\r\n产品规格、型号\r\n价格条款\r\n原产地\r\n能否提供样品\r\n最小订货量\r\n交货期\r\n供货能力\r\n销售条款及附加条件\r\n包装方式\r\n质量/安全认证','单价','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('158','2','订货总量','order_num','int','6','19','text','50','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('80','1','型号','shoptype','varchar','50','6','text','10','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `qb_sell_field` VALUES ('142','2','补充信息','content','mediumtext','0','15','textarea','500','70','','','','','0','0','0','0','','','','','0','<br><select name=\'autoSelect\' onchange=\"changeaddContent(this);\">\r\n<option value=\'\'>(懒得打字？“快速填写”帮您忙！) </option>\r\n<option value=\'我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？\'>我对贵公司的产品非常感兴趣，能否发一些详细资料给我参考？</option> \r\n<option value=\'请您发一份比较详细的产品规格说明，谢谢！\'>请您发一份比较详细的产品规格说明，谢谢！</option> \r\n<option value=\'请问贵公司产品是否可以代理？代理条件是什么？\'>请问贵公司产品是否可以代理？代理条件是什么？</option> \r\n<option value=\'我公司有意购买此产品，可否提供此产品的报价单和最小起订量？\'>我公司有意购买此产品，可否提供此产品的报价单和最小起订量？</option> \r\n</select>\r\n<SCRIPT language=\"javascript\">\r\n            function changeaddContent(autoSelect){\r\n			 	if (autoSelect.selectedIndex !=0){			 		\r\n			 		document.getElementById(\"atc_content\").value = autoSelect[autoSelect.selectedIndex].value;\r\n					autoSelect.selectedIndex=0;\r\n			 	}\r\n				\r\n			 }\r\n	     </SCRIPT>');
INSERT INTO `qb_sell_field` VALUES ('154','1','最小起订','order_min','int','7','8','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('153','1','计量单位','my_units','varchar','10','9','text','50','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('145','2','联系电话','ask_phone','varchar','20','8','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('144','2','联系人姓名','ask_username','varchar','20','9','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('146','2','联系手机','ask_mobphone','varchar','15','7','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('147','2','联系邮箱','ask_email','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('148','2','联系QQ','ask_qq','varchar','11','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('155','1','最大供货','order_max','varchar','7','7','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('156','1','发货期限','send_day','varchar','30','5','select','0','0','3天以内发货\r\n3-7天内发货\r\n7-10天内发货\r\n10天以上发货\r\n待商议','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('157','2','询价标题','ask_title','varchar','100','20','text','300','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('161','2','我希望','hope_reply','varchar','25','14','time','0','0','','','之前回复','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_module` VALUES ('2','0','询价单模型','1','','','','0','0','a:4:{s:4:\"list\";s:12:\"joinlist.htm\";s:4:\"show\";s:12:\"joinshow.htm\";s:4:\"post\";s:8:\"join.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `qb_sell_module` VALUES ('1','0','产品模型','4','','','','1','0','');
INSERT INTO `qb_sell_pic` VALUES ('1','1','11','0','1','0','http://i00.c.aliimg.com/img/ibank/2010/267/882/137288762_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('2','2','11','0','1','0','http://i01.c.aliimg.com/img/ibank/2010/143/884/202488341_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('3','3','11','0','1','0','http://i05.c.aliimg.com/img/ibank/2010/127/864/202468721_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('4','4','12','0','1','0','http://i05.c.aliimg.com/img/ibank/2010/755/984/198489557_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('5','5','13','0','1','0','http://i01.c.aliimg.com/img/ibank/2010/157/174/198471751_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('6','6','14','0','1','0','http://i03.c.aliimg.com/img/ibank/2010/223/454/198454322_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('7','7','15','0','1','0','http://i02.c.aliimg.com/img/ibank/2010/004/377/201773400_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('8','8','16','0','1','0','http://i03.c.aliimg.com/img/ibank/2010/472/005/198500274_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('9','9','17','0','1','0','http://i00.c.aliimg.com/img/ibank/2010/423/442/133244324_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('10','10','21','0','1','0','http://i05.c.aliimg.com/img/ibank/2010/710/902/149209017_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('11','11','33','0','1','0','http://i00.c.aliimg.com/img/ibank/2010/673/938/124839376_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_pic` VALUES ('12','12','46','0','1','0','http://i00.c.aliimg.com/img/ibank/2010/733/921/124129337_1108421225.310x310.jpg','');
INSERT INTO `qb_sell_sort` VALUES ('1','0','钢材','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('2','0','钢板卷','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('3','0','板材','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('4','0','中厚板','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('5','0','钢管','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('6','0','型钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('7','0','特钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('8','0','不锈钢','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('9','0','炉料','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('10','0','生铁','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('11','1','螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('12','1','普线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('13','1','高线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('14','1','圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('15','1','线材','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('16','1','二级螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('17','1','三级螺纹钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('18','1','盘螺','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('19','1','优线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('20','1','带肋钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('21','2','带钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('22','2','热板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('23','2','冷板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('24','2','不锈板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('25','2','镀锌板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('26','2','彩涂板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('27','2','花纹板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('28','2','低合金板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('29','2','镀锡板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('30','2','镀铝锌板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('31','2','酸洗板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('32','2','轧硬卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('33','3','冷轧板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('34','3','热轧板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('35','3','容器板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('36','3','合金板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('37','3','高强板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('38','3','耐腐蚀板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('39','3','马口铁基板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('40','3','镀锡板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('41','3','镀铝板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('42','3','硅钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('43','3','镀锌板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('44','3','彩涂板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('45','3','管线钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('46','4','船板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('47','4','大梁板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('48','4','模具板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('49','4','锅炉板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('50','4','翼缘板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('51','4','四切平板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('52','4','花纹板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('53','4','低合金板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('54','4','锰板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('55','4','碳结板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('56','4','合结板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('57','4','开平板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('58','4','耐磨板','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('59','5','无缝管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('60','5','镀锌管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('61','5','方管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('62','5','螺旋管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('63','5','焊管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('64','5','直缝管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('65','5','圆管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('66','5','锅炉管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('67','5','球墨管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('68','5','矩型管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('69','5','化肥用管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('70','5','结构管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('71','5','铸铁管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('72','5','脚手架','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('73','6','H型钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('74','6','槽钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('75','6','工字钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('76','6','角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('77','6','扁钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('78','6','轻轨','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('79','6','重轨','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('80','6','方钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('81','6','不等边角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('82','6','型钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('83','6','六角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('84','6','拉光圆','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('85','6','碳圆','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('86','6','等边角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('87','7','焊线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('88','7','圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('89','7','轴承钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('90','7','碳结钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('91','7','弹簧钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('92','7','高工钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('93','7','模具钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('94','7','钢纹线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('95','7','齿轮钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('96','7','合结钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('97','7','耐腐蚀钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('98','7','耐磨钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('99','7','碳工钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('100','7','碳素钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('101','7','耐热钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('102','7','冷镦钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('103','7','工模钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('104','7','结构钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('105','8','不锈板卷','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('106','8','不锈钢管','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('107','8','不锈钢线材','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('108','8','不锈钢带','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('109','8','不锈钢圆钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('110','8','不锈钢角钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('111','8','不锈钢槽钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('112','8','不锈钢扁钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('113','8','不锈钢坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('114','8','优焊线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('115','8','拉丝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('116','8','硬线','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('117','8','耐热钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('118','8','钢丝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('119','9','矿石','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('120','9','煤焦','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('121','9','精铁粉','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('122','9','废钢','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('123','9','焦炭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('124','9','煤炭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('125','9','耐火材料','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('126','9','碳素材料','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('127','9','球墨铸铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('128','9','钢锭','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('129','9','硅锰','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('130','9','方坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('131','9','管坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('132','9','钢坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('133','9','板坯','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('134','9','球磨生铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('135','9','辅料副产品','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('136','10','硅铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('137','10','铬铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('138','10','钼铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('139','10','钒铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('140','10','钨铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('141','10','铌铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('142','10','钛铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('143','10','锰铁','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('144','10','镍矿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('145','10','有色','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('146','10','铜','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('147','10','铝','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('148','10','锌','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('149','10','金','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('150','10','银','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('151','10','镍','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('152','10','铅','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('153','10','锡','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('154','10','稀土','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('155','10','贵金属','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
