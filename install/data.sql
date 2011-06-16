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
INSERT INTO `qb_memberdata` VALUES ('1','admin','','','3','1','','1','0','','3000','0','79287218','3355378','1306905411','127.0.0.1','1253678332','127.0.0.1','1','1890-00-00','http://v7.com/upload_files/icon/1.jpg','','95','1294910515','888888','','','54325@qq.com','20','345','cvbnmmm','','13399999999','','','��ѧ��','a:1:{s:7:\"endtime\";s:0:\"\";}','5','0','0','0');
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
INSERT INTO `qb_group` VALUES ('2','1','�ο���','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `qb_group` VALUES ('3','1','��������Ա','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"999\";s:12:\"post_buy_num\";s:3:\"999\";s:13:\"post_news_num\";s:3:\"999\";s:14:\"post_photo_num\";s:3:\"999\";s:11:\"post_hr_num\";s:3:\"999\";s:17:\"post_zhanghui_num\";s:3:\"999\";s:12:\"post_ZLG_num\";s:3:\"999\";s:16:\"post_pingpai_num\";s:3:\"999\";s:19:\"post_baojiadian_num\";s:3:\"999\";s:19:\"post_xunjiadian_num\";s:3:\"999\";s:24:\"post_info_collection_num\";s:3:\"999\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:109:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:12:\"company_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:14:\"moneycard_make\";s:1:\"1\";s:14:\"limitword_list\";s:1:\"1\";s:12:\"propagandize\";s:1:\"1\";s:11:\"jfadmin_mod\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:8:\"adminmap\";s:1:\"1\";s:8:\"moneylog\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:25:\"Module_news_center_config\";s:1:\"1\";s:24:\"Module_news_center_label\";s:1:\"1\";s:21:\"Module_news_sort_post\";s:1:\"1\";s:16:\"Module_news_list\";s:1:\"1\";s:19:\"Module_news_comment\";s:1:\"1\";s:25:\"Module_news_sort_listsort\";s:1:\"1\";s:23:\"Module_hy_center_config\";s:1:\"1\";s:14:\"Module_hy_sort\";s:1:\"1\";s:17:\"Module_hy_company\";s:1:\"1\";s:17:\"Module_hy_comment\";s:1:\"1\";s:18:\"Module_hy_renzheng\";s:1:\"1\";s:22:\"Module_hy_center_label\";s:1:\"1\";s:21:\"Module_hy_companynews\";s:1:\"1\";s:20:\"Module_hy_companypic\";s:1:\"1\";s:25:\"Module_sell_center_config\";s:1:\"1\";s:24:\"Module_sell_center_label\";s:1:\"1\";s:16:\"Module_sell_list\";s:1:\"1\";s:19:\"Module_sell_comment\";s:1:\"1\";s:16:\"Module_sell_sort\";s:1:\"1\";s:18:\"Module_sell_report\";s:1:\"1\";s:17:\"Module_sell_order\";s:1:\"1\";s:18:\"Module_sell_module\";s:1:\"1\";s:24:\"Module_buy_center_config\";s:1:\"1\";s:23:\"Module_buy_center_label\";s:1:\"1\";s:15:\"Module_buy_list\";s:1:\"1\";s:18:\"Module_buy_comment\";s:1:\"1\";s:15:\"Module_buy_sort\";s:1:\"1\";s:17:\"Module_buy_report\";s:1:\"1\";s:16:\"Module_buy_order\";s:1:\"1\";s:17:\"Module_buy_module\";s:1:\"1\";s:23:\"Module_hr_center_config\";s:1:\"1\";s:22:\"Module_hr_center_label\";s:1:\"1\";s:14:\"Module_hr_sort\";s:1:\"1\";s:19:\"Module_hr_list_list\";s:1:\"1\";s:18:\"Module_hr_joinlist\";s:1:\"1\";s:25:\"Module_hr_list_listmember\";s:1:\"1\";s:20:\"Module_hr_collection\";s:1:\"1\";s:14:\"Module_hr_city\";s:1:\"1\";s:16:\"Module_hr_module\";s:1:\"1\";s:29:\"Module_showroom_center_config\";s:1:\"1\";s:28:\"Module_showroom_center_label\";s:1:\"1\";s:20:\"Module_showroom_list\";s:1:\"1\";s:20:\"Module_showroom_room\";s:1:\"1\";s:20:\"Module_showroom_sort\";s:1:\"1\";s:20:\"Module_showroom_join\";s:1:\"1\";s:20:\"Module_showroom_city\";s:1:\"1\";s:22:\"Module_showroom_module\";s:1:\"1\";s:26:\"Module_brand_center_config\";s:1:\"1\";s:25:\"Module_brand_center_label\";s:1:\"1\";s:17:\"Module_brand_list\";s:1:\"1\";s:17:\"Module_brand_sort\";s:1:\"1\";s:17:\"Module_brand_join\";s:1:\"1\";s:19:\"Module_brand_module\";s:1:\"1\";s:16:\"Module_ad_center\";s:1:\"1\";s:21:\"Module_ad_norm_listad\";s:1:\"1\";s:25:\"Module_ad_norm_listuserad\";s:1:\"1\";s:24:\"Module_ad_compete_listad\";s:1:\"1\";s:26:\"Module_ad_compete_listuser\";s:1:\"1\";s:18:\"Module_vote_center\";s:1:\"1\";s:20:\"Module_vote_vote_add\";s:1:\"1\";s:21:\"Module_vote_vote_list\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `qb_group` VALUES ('4','1','ǰ̨����Ա','0','0','0','a:6:{s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";}','0','a:1:{s:6:\"mymenu\";N;}');
INSERT INTO `qb_group` VALUES ('8','0','��ͨ��Ա','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_group` VALUES ('9','0','VIP��Ա','10000','0','0','a:54:{s:17:\"SearchArticleType\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:2:\"30\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:9:\"topmyinfo\";s:0:\"\";s:12:\"topmyinfoday\";s:0:\"\";s:13:\"topcompanyday\";s:0:\"\";s:13:\"post_sell_num\";s:2:\"50\";s:12:\"post_buy_num\";s:2:\"50\";s:13:\"post_news_num\";s:2:\"50\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:2:\"20\";s:17:\"post_zhanghui_num\";s:2:\"20\";s:12:\"post_ZLG_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:2:\"50\";s:19:\"post_xunjiadian_num\";s:2:\"50\";s:16:\"post_pingpai_num\";s:2:\"10\";s:24:\"post_info_collection_num\";s:3:\"100\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_group` VALUES ('10','0','��ʯ��Ա','30000','0','0','a:50:{s:17:\"SearchArticleType\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:16:\"PassContributeSP\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"100\";s:12:\"post_buy_num\";s:3:\"100\";s:13:\"post_news_num\";s:3:\"100\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:3:\"100\";s:17:\"post_zhanghui_num\";s:3:\"100\";s:12:\"post_ZLG_num\";s:2:\"10\";s:16:\"post_pingpai_num\";s:2:\"10\";s:19:\"post_baojiadian_num\";s:3:\"100\";s:19:\"post_xunjiadian_num\";s:3:\"100\";s:24:\"post_info_collection_num\";s:3:\"300\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `qb_menu` VALUES ('9','0','�Ҳ�Ʒ','/sell/','','0','0','0','0','18','34');
INSERT INTO `qb_menu` VALUES ('10','0','����','/buy/','','0','0','0','0','16','35');
INSERT INTO `qb_menu` VALUES ('11','0','���̼�','/hy/','','0','0','0','0','14','16');
INSERT INTO `qb_menu` VALUES ('52','0','��Ѷ����','/news/','','0','0','0','0','13','20');
INSERT INTO `qb_menu` VALUES ('51','0','��վ��ҳ','/','','0','0','0','0','20','0');
INSERT INTO `qb_admin_menu` VALUES ('12','0','���ݹ���','','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('83','0','��ǩ����','','','0','100','3','0');
INSERT INTO `qb_admin_menu` VALUES ('84','83','��Ѷ��ҳ','../news/index.php?jobs=show','','0','18','3','1');
INSERT INTO `qb_admin_menu` VALUES ('140','111','����','index.php?lfj=module_admin&dirname=hy&file=sort&job=listsort','','0','-2','3','1');
INSERT INTO `qb_admin_menu` VALUES ('85','83','��Ӧ��ҳ','index.php?lfj=module_admin&dirname=sell&file=center&job=label','','0','17','3','0');
INSERT INTO `qb_admin_menu` VALUES ('86','83','������ҳ','index.php?lfj=module_admin&dirname=hy&file=center&job=label','','0','15','3','0');
INSERT INTO `qb_admin_menu` VALUES ('87','0','���۹���','','','0','7','3','0');
INSERT INTO `qb_admin_menu` VALUES ('88','87','��Ʒ��Ӧ','index.php?lfj=module_admin&dirname=sell&file=comment&job=list','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('89','87','����Ϣ','index.php?lfj=module_admin&dirname=buy&file=comment&job=list','','0','97','3','1');
INSERT INTO `qb_admin_menu` VALUES ('112','111','������Ѷ','index.php?lfj=module_admin&dirname=news&file=sort&job=listsort&type=all','','0','-1','3','0');
INSERT INTO `qb_admin_menu` VALUES ('111','0','�������','','','0','88','3','0');
INSERT INTO `qb_admin_menu` VALUES ('75','12','������Ѷ','index.php?lfj=module_admin&dirname=news&file=list&job=list','','0','-1','3','0');
INSERT INTO `qb_admin_menu` VALUES ('116','12','����','index.php?lfj=module_admin&dirname=hy&file=company&job=list','','0','-2','3','1');
INSERT INTO `qb_admin_menu` VALUES ('117','12','��Ʒ��Ӧ','index.php?lfj=module_admin&dirname=sell&file=list&job=list','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('118','12','����Ϣ','index.php?lfj=module_admin&dirname=buy&file=list&job=list','','0','98','3','1');
INSERT INTO `qb_admin_menu` VALUES ('130','111','��Ʒ��Ӧ','index.php?lfj=module_admin&dirname=sell&file=sort&job=listsort','','0','99','3','0');
INSERT INTO `qb_admin_menu` VALUES ('101','83','����ҳ','index.php?lfj=module_admin&dirname=buy&file=center&job=label','','0','16','3','1');
INSERT INTO `qb_admin_menu` VALUES ('102','83','��վ��ҳ','../index.php?&ch=1&chtype=0&jobs=show','','0','19','3','0');
INSERT INTO `qb_admin_menu` VALUES ('143','87','��Ѷ����','index.php?lfj=module_admin&dirname=news&file=comment&job=list','','0','69','3','0');
INSERT INTO `qb_admin_menu` VALUES ('131','111','����Ϣ','index.php?lfj=module_admin&dirname=buy&file=sort&job=listsort','','0','98','3','1');
INSERT INTO `qb_module` VALUES ('16','2','��ҳ����','hy_','hy','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','101','','','0','1');
INSERT INTO `qb_module` VALUES ('18','2','���Ա�','guestbook_','guestbook','','','','-1','','','0','0');
INSERT INTO `qb_module` VALUES ('21','2','���ܱ�','form_','form','','','','-2','','','0','0');
INSERT INTO `qb_module` VALUES ('20','2','������Ѷ','news_','news','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','102','','','0','1');
INSERT INTO `qb_module` VALUES ('23','2','ͶƱϵͳ','vote_','vote','','','','0','','','0','0');
INSERT INTO `qb_module` VALUES ('24','2','���ϵͳ','ad_','a_d','','','','2','','','0','0');
INSERT INTO `qb_module` VALUES ('34','2','��Ӧģ��','sell_','sell','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','100','','','0','1');
INSERT INTO `qb_module` VALUES ('35','2','��ģ��','buy_','buy','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','99','','','0','1');
INSERT INTO `qb_alonepage` VALUES ('1','0','��������','��������','1229507597','0','','','','','','friendlink.htm','','','','<table cellSpacing=4 cellPadding=4 width=\"100%\" border=0>\r\n<tbody>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.mmcbbs.com/\" target=_blank>ݼݼ��̳</a></td>\r\n<td width=\"20%\"><a href=\"http://www.liuv.net/\" target=_blank>��ˮ���</a></td>\r\n<td width=\"20%\"><a href=\"http://pic.goodod.com/\" target=_blank>ŷ���ֻ�ͼƬ</a></td>\r\n<td width=\"20%\"><a href=\"http://www.tianyakezhan.com/\" target=_blank>���Ŀ�ջ</a></td>\r\n<td width=\"20%\"><a href=\"http://www.czin.cn/\" target=_blank>��������</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.jneg.com.cn/\" target=_blank>���ܼ�԰</a></td>\r\n<td width=\"20%\"><a href=\"http://www.wyrj.com/\" target=_blank>�����˼�</a></td>\r\n<td width=\"20%\"><a href=\"http://www.nenbei.com/\" target=_blank>�۱���</a></td>\r\n<td width=\"20%\"><a href=\"http://www.photosbar.com/\" target=_blank>ͼ��</a></td>\r\n<td width=\"20%\"><a href=\"http://www.ok586.cn/\" target=_blank>��������</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.51solo.net/\" target=_blank>�Ұ���������</a></td>\r\n<td width=\"20%\"><a href=\"http://www.toopd.com/\" target=_blank>�������</a></td>\r\n<td width=\"20%\"><a href=\"http://www.qiqig.com/\" target=_blank>����</a></td>\r\n<td width=\"20%\"><a href=\"http://www.jxsrjys.com.cn/\" target=_blank>���Ľ���</a></td>\r\n<td width=\"20%\"><a href=\"http://www.unok.net/\" target=_blank>������</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://mmm.pudou.com/\" target=_blank>�˶��й�</a></td>\r\n<td width=\"20%\"><a href=\"http://www.itzhan.com/\" target=_blank>IT����</a></td>\r\n<td width=\"20%\"><a href=\"http://www.hkwtv.com/\" target=_blank>�������</a></td>\r\n<td width=\"20%\">&nbsp;</td>\r\n<td width=\"20%\">&nbsp;</td></tr></tbody></table>','54','0');
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
INSERT INTO `qb_config` VALUES ('PostNotice','<font face=SimSun>\r\n<p><font face=SimSun>1�������ת�����ݣ��������д�����Դ��ַ��������<br />2��������İ�Ȩ�����뷨�������ɷ����߳е���</font></p></font>','');
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
INSERT INTO `qb_config` VALUES ('ArticleHeart','Ƿ��|1.gif\r\n֧��|2.gif\r\n�ܰ�|3.gif\r\n����|4.gif\r\n��Ц|5.gif\r\n����|6.gif\r\n����|7.gif\r\n�Ծ�|8.gif','');
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
INSERT INTO `qb_config` VALUES ('companyTrade','��е����ҵ�豸\r\n��ͨ��е����\r\nͨ���㲿��\r\n������\r\n��������\r\n�綯����\r\n����Ԫ��\r\n��������\r\n��������������\r\n��ȫ�����豸\r\n��װ\r\n��ֽ��ֽ��Ʒ\r\n������繤����\r\n�繤����\r\nͨ�������Ǳ�\r\nר�������Ǳ�\r\n��ͨ�����豸���㲿��\r\n�칫���Ľ���Ʒ\r\n���롢���Լ��������\r\n�ճ��Ҿ���Ʒ\r\nľ�ġ�ľ��Ʒ\r\n�Ҿ�\r\n���õ���\r\n��Ʒ����������Ʒ\r\nʳƷ������\r\nͨ�Ų�Ʒ\r\n���\r\nӡˢ�豸\r\n�˶������С�������Ʒ\r\nЬ��ñ\r\n��װ\r\n���û�ѧƷ\r\nũ�û�ѧƷ\r\n��ճ��\r\nȾ�ϡ����ϡ�Ϳ�Ϻ���ī\r\n�߻���������\r\n��澫ϸ��ѧƷ\r\nʳƷ��������Ӽ�\r\n����\r\n����Ʒ\r\n�����������豸\r\n����������\r\n��Դ\r\n���͡�ũ��Ʒ\r\n����\r\nҽҩ��������ҽ���豸\r\n��֯\r\nƤ��\r\nú������Ʒ\r\n�ճ�����\r\n������\r\n������ѵ\r\n��֤\r\n�������\r\n��������\r\n�����ڴ���\r\nά�޼���װ����\r\n��桢չ������\r\nרҵ¼���������豸\r\n��ѧ��Ӱ����\r\n�༭�����豸\r\n������ǰ���豸\r\n������װ��ҵ\r\n���ز�\r\n��װ����\r\n�ʵ�ͨ��\r\n����������֤\r\n��������������ᡢ����\r\n��������ҵ\r\n���ڡ�����\r\nʵҵ��˾����ҵó��\r\n���¼���������\r\n�����г�','');
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
INSERT INTO `qb_config` VALUES ('memberNotice','��ӭ���ӻԾͶ��,Ͷ��ɵû��ֽ���!!','');
INSERT INTO `qb_config` VALUES ('member_contact',' <div class=t>020-88888888</div>\r\n            <div class=t>020-88888888</div>\r\n            <div class=q>qq:123456</div>\r\n','');
INSERT INTO `qb_config` VALUES ('copyright','','');
INSERT INTO `qb_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `qb_config` VALUES ('miibeian_gov_cn','��ICP��10080701��','');
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
INSERT INTO `qb_config` VALUES ('close_why','��վά������,\r\n��ͣ����.','');
INSERT INTO `qb_config` VALUES ('web_open','1','');
INSERT INTO `qb_config` VALUES ('MoneyDW','��','');
INSERT INTO `qb_config` VALUES ('MoneyName','����','');
INSERT INTO `qb_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `qb_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `qb_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `qb_config` VALUES ('webmail','admin@admin.com','');
INSERT INTO `qb_config` VALUES ('description','�ṩ���µ���ҵ����','');
INSERT INTO `qb_config` VALUES ('metakeywords','b2b ��ҵ�Ż� ��������','');
INSERT INTO `qb_config` VALUES ('webname','�벩B2B��ֱ��ҵ��������ϵͳ','');
INSERT INTO `qb_config` VALUES ('QQ_appid','','');
INSERT INTO `qb_config` VALUES ('forbidRegIp','','');
INSERT INTO `qb_config` VALUES ('yzImgReg','1','');
INSERT INTO `qb_config` VALUES ('RegYz','1','');
INSERT INTO `qb_config` VALUES ('regmoney','5','');
INSERT INTO `qb_config` VALUES ('forbidRegName','','');
INSERT INTO `qb_config` VALUES ('QQ_appkey','','');
INSERT INTO `qb_config` VALUES ('QQ_QBappid','1','');
INSERT INTO `qb_config` VALUES ('QQ_QBappkey','d12100d9366fbd6d92c9','');
INSERT INTO `qb_config` VALUES ('guide_word','��վ��ҳ|/|0||51|0\r\n�Ҳ�Ʒ|/sell/|0||9|34\r\n����|/buy/|0||10|35\r\n���̼�|/hy/|0||11|16\r\n��Ѷ����|/news/|0||52|20','');
INSERT INTO `qb_hack` VALUES ('login','�û���¼���','0','','a:3:{s:10:\"systemType\";s:6:\"�벩CMS\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `qb_hack` VALUES ('adminmap','��̨�˵�','0','','','','','','index.php?lfj=adminmap&job=list','','other','�����ȫ','0','','0');
INSERT INTO `qb_hack` VALUES ('moneylog','�û����ѻ��ּ�¼','0','','','','','','index.php?lfj=moneylog&job=list','','other','�����ȫ','0','','0');
INSERT INTO `qb_hack` VALUES ('alipay_set','���߳�ֵ֧������','0','','','','','','index.php?lfj=alipay&job=list','','other','�����������','9','','0');
INSERT INTO `qb_hack` VALUES ('template_list','ģ������','0','','','','','','index.php?lfj=template&job=list','','other','���/ģ������','1','','0');
INSERT INTO `qb_hack` VALUES ('style_editstyle','������','0','','','','','','index.php?lfj=style&job=edittpl','','other','���/ģ������','2','','0');
INSERT INTO `qb_hack` VALUES ('propagandize','�ƹ�׬ȡ���ֹ���','0','','','','','','index.php?lfj=propagandize&job=list','','other','��������','8','','0');
INSERT INTO `qb_hack` VALUES ('jfadmin_mod','���ֽ��ܹ���','0','','','','','','index.php?lfj=jfadmin&job=listjf','','other','��������','7','','0');
INSERT INTO `qb_hack` VALUES ('attachment_list','��������','0','','','','','','index.php?lfj=attachment&job=list','','other','��������','6','','0');
INSERT INTO `qb_hack` VALUES ('upgrade_ol','ϵͳ��������','0','','','','','','index.php?lfj=upgrade&job=get','','other','��������','4','','0');
INSERT INTO `qb_hack` VALUES ('mail_send','�ʼ�Ⱥ��','0','','','','','','index.php?lfj=mail&job=send','','other','��Ϣ/�ʼ�Ⱥ��','2','','0');
INSERT INTO `qb_hack` VALUES ('message_send','վ����ϢȺ��','0','','','','','','index.php?lfj=message&job=send','','other','��Ϣ/�ʼ�Ⱥ��','3','','0');
INSERT INTO `qb_hack` VALUES ('sms_send','�ֻ�����Ⱥ��','0','','','','','','index.php?lfj=sms&job=send','','other','��Ϣ/�ʼ�Ⱥ��','1','','0');
INSERT INTO `qb_hack` VALUES ('cnzz_set','CNZZ����ͳ��','0','','','','','','index.php?lfj=cnzz&job=ask','','other','վ�⹦��','3','','0');
INSERT INTO `qb_hack` VALUES ('limitword_list','�����������','0','','','','','','index.php?lfj=limitword&job=list','','other','����ģ�Ͳ������','9','','0');
INSERT INTO `qb_hack` VALUES ('moneycard_make','�㿨��ֵ����','0','','','','','','index.php?lfj=moneycard&job=make','','other','�����������','7','','1');
INSERT INTO `qb_hack` VALUES ('logs_login_logs','��̨��¼��־','0','','','','','','index.php?lfj=logs&job=login_logs','','other','��־����','2','','0');
INSERT INTO `qb_hack` VALUES ('logs_admin_do_logs','��̨������־','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','��־����','1','','0');
INSERT INTO `qb_hack` VALUES ('area_list','��������','0','','','','','','index.php?lfj=area&job=list','','other','��������','5','','0');
INSERT INTO `qb_hack` VALUES ('crontab','��ʱ����','0','','','','','','index.php?lfj=crontab&job=list','','other','�����ȫ','0','','0');
INSERT INTO `qb_label` VALUES ('1','','0','0','show_right_top_picad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=show_right_top_picad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"110\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893892','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('2','','0','0','show_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=show_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893880','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('3','','0','0','list_page_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=list_page_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"130\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893815','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('4','','0','0','article_list','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=article_list\'> </SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"263\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893832','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('5','','0','0','article_list_tag','code','0','���λ','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279418','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('6','','0','0','bbsifmark_tag','code','0','��̳������','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('7','','0','0','bbsifmark','pwbbs','1','a:28:{s:13:\"tplpart_1code\";s:162:\"<div style=\"padding-top:6px;\">��<A HREF=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" target=\'_blank\'  style=\"$fontcolor;$fontweight\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"pwbbs\";s:6:\"digest\";s:3:\"all\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"ifmark\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:176:\" SELECT T.*,T.tid AS id,T.author AS username,T.authorid AS uid,T.subject AS title,T.postdate AS posttime FROM pw_threads T  WHERE 1  ORDER BY T.ifmark DESC,T.tid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"282\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240202279','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('8','','0','0','article_show','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=article_show\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893904','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('9','','0','0','article_show_tag','code','0','���λ','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279430','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('10','','0','0','view_article_bbs_tag','code','0','��̳�Ƽ�ͼ��','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('11','','0','0','view_article_bbs','pwbbs','1','a:28:{s:13:\"tplpart_1code\";s:370:\"<div  class=\"listpic\"> \r\n              <p class=img><a href=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\"text-align:center;\"><A HREF=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"pwbbs\";s:6:\"digest\";s:3:\"all\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"tid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:252:\" SELECT T.*,T.tid AS id,T.author AS username,T.authorid AS uid,T.subject AS title,T.postdate AS posttime,A.attachurl FROM pw_attachs A LEFT JOIN pw_threads T ON A.tid=T.tid  WHERE 1  AND A.type=\'img\' GROUP BY tid ORDER BY T.tid DESC,T.tid DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"650\";s:5:\"div_h\";s:3:\"100\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893928','3','0','0','0','default');
INSERT INTO `qb_label` VALUES ('413','','0','0','news_k14','code','0','����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047359','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('414','','0','0','news_k15','code','0','����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047373','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('415','','0','0','news_k16','code','0','��ѧ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047384','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('416','','0','0','news_k17','code','0','��װ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047399','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('417','','0','0','news_k18','code','0','װ��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047409','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('418','','0','0','news_k19','code','0','�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('419','','0','0','news_k2','code','0','�ɹ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('13','','0','0','list_top_ad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_php168_com/do/a_d_s.php?job=js&ad_id=AD_list_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:2:\"51\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893857','2','0','0','0','default');
INSERT INTO `qb_label` VALUES ('225','','0','0','shop_a2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:77:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338718','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('226','','0','0','shop_a3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:655:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                        <span class=\"prica\">�г��ۣ�<strike>��{$market_price}</strike></span>\r\n                        <span class=\"pricb\">����ۣ�<em>��{$price}</em></span>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"430\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338688','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('220','','0','0','shop_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"480\";s:6:\"height\";s:3:\"150\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101029141056_pgxoy.jpg\";i:2;s:32:\"label/1_20101029141000_syjv2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288332865','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('221','','0','0','shop_hot','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">ԭ��<strike>��{$market_price}</strike> �ּ�<em>��{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">�鿴����</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338654','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('222','','0','0','shop_new','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">ԭ��<strike>��{$market_price}</strike> �ּ�<em>��{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">�鿴����</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338640','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('407','','0','0','news_banner2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('408','','0','0','news_k1','code','0','�Ƽ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047266','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('409','','0','0','news_k10','code','0','��Ʒ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047445','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('410','','0','0','news_k11','code','0','���۴���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047521','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('411','','0','0','news_k12','code','0','����Ҫ��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047503','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('412','','0','0','news_k13','code','0','��ʳ�Ƽ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047468','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('224','','0','0','shop_a1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:532:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"list1\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>�ּ�:<span>��{$price}</span>Ԫ</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338921','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('406','','0','0','news_banner1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475674','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('405','','0','0','news_9','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:535:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnew\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content <a href=\"$url\" target=\"_blank\">[��ϸ]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\r\n                \";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"65\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"209\";s:5:\"div_h\";s:3:\"221\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909958','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('404','','0','0','news_8_5','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM qb_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('403','','0','0','news_8_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909968','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('402','','0','0','news_8_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909975','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('401','','0','0','news_8_2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909980','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('400','','0','0','news_8_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"334\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909961','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('399','','0','0','news_7','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:83:\"<div class=\"l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>$hits</span></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"218\";s:5:\"div_h\";s:3:\"230\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909954','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('398','','0','0','news_6','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:114:\" SELECT A.* FROM qb_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665814','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('397','','0','0','news_5','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:538:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listzt\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"75\" border=\"0\"/></a></td>\r\n                    \r\n              <td class=\"word\"><a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content<a href=\"$url\" target=\"_blank\">[��ϸ]</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:163:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"209\";s:5:\"div_h\";s:3:\"179\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909936','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('396','','0','0','news_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:543:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtv\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"60\" height=\"50\" border=\"0\"/></a></td>\r\n                    <td class=\"word\">\r\n                <div><a href=\"$url\" target=\"_blank\">{$title}</a></div>\r\n                <div>��ע��: <span>{$hits}</span> �˴�</div></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:110:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"188\";s:5:\"div_h\";s:3:\"111\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909932','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('395','','0','0','news_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:69:\"<div class=\"l$i\"><a href=\"{$url}\" target=\"_blank\">{$title}</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"284\";s:5:\"div_h\";s:2:\"95\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909950','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('394','','0','0','news_2_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:114:\" SELECT A.* FROM qb_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665747','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('393','','0','0','news_2_0','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"24\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"313\";s:5:\"div_h\";s:2:\"94\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909929','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('392','','0','0','news_1_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"346\";s:5:\"div_h\";s:2:\"73\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909943','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('391','','0','0','news_1_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"364\";s:5:\"div_h\";s:3:\"114\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909946','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('389','','0','0','news_1_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"372\";s:5:\"div_h\";s:3:\"112\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909926','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('390','','0','0','news_1_2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:79:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:3:\"102\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909939','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('40','','1','0','news_0','code','0',' <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">�ֲ�Ƶ��</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">ÿ������</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�۸����</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�����۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�ɹ��۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">������Ϣ</a></dd>\r\n        </dl>        \r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">�ֲ�Ƶ��</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">ÿ������</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�۸��</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�����۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�ɹ��۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">������Ϣ</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">�ֲ�Ƶ��</a></dt>        \r\n            <dd><a href=\"#\" target=\"_blank\">ÿ������</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�۸����</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�����۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�ɹ��۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">������Ϣ</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">�ֲ�Ƶ��</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">ÿ������</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�۸����</a></dd>        \r\n            <dd><a href=\"#\" target=\"_blank\">�����۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�ɹ��۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">������Ϣ</a></dd>\r\n        </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"800\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475864','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('388','','0','0','news_13','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>��$content<a href=\"$url\" target=\"_blank\">[��ϸ]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:132:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";s:145:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"340\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910020','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('387','','0','0','news_12','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>��$content<a href=\"$url\" target=\"_blank\">[��ϸ]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"339\";s:5:\"div_h\";s:3:\"185\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910014','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('386','','0','0','news_11','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"189\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910009','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('44','','0','0','index_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:258:\" <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr><td class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                    <td class=\"d\">{$time_y}-{$time_m}-{$time_d}</td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"24\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:3:\"161\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909340','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('45','','0','0','index_2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:151:\"<div class=\"listr\"> <a>[{$time_m}-{$time_d}]</a> <a href=\"$url\" target=\"_blank\">{$title}</a> \r\n              <span>{$price}Ԫ/{$my_units}</span> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:122:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"327\";s:5:\"div_h\";s:3:\"151\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724131','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('46','','0','0','index_3','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:151:\"<div class=\"listr\"> <a>[{$time_m}-{$time_d}]</a> <a href=\"$url\" target=\"_blank\">{$title}</a> \r\n              <span>{$price}Ԫ/{$my_units}</span> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"353\";s:5:\"div_h\";s:3:\"188\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724139','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('47','','0','0','index_4','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:267:\" <div class=\"list\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">{$title}</a> <br>{$price}Ԫ/{$my_units}</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:131:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"702\";s:5:\"div_h\";s:3:\"270\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724175','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('48','','0','0','index_5','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:267:\" <div class=\"list\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">{$title}</a> <br>{$price}Ԫ/{$my_units}</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:128:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list ASC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287031404','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('49','','0','0','index_L_1','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:90:\"<div class=\"l$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:64:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"222\";s:5:\"div_h\";s:3:\"134\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724165','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('50','','0','0','index_L_2','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:90:\"<div class=\"l$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:64:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"214\";s:5:\"div_h\";s:3:\"134\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291724157','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('51','','0','0','index_L_3','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:256:\"<div class=\"listc\"> <a href=\"$url\" class=\"p$i img\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> \r\n              <a href=\"$url\" class=\"title\">$title</a>\r\n			  </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"229\";s:5:\"div_h\";s:3:\"333\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904993','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('52','','0','0','index_L_4','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:91:\"<div class=\"listt_d\"><a href=\"$url\" target=\"_blank\">$title</a><span>$day_begin</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:77:\" SELECT A.* FROM qb_news_content A  WHERE 1   ORDER BY A.list DESC LIMIT 0,4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:2:\"87\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904880','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('53','','0','0','index_L_5','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:446:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_w\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"50\"/></a></td>\r\n                    <td class=\"word\"><a href=\"$url\" target=\"_blank\">$title</a><br>��չ����:$day_begin</td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:2:\"62\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904873','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('54','','0','0','index_L_6','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:236:\"<div class=\"listd\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> \r\n              <a href=\"$url\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"228\";s:5:\"div_h\";s:3:\"235\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904863','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('55','','0','0','index_L_7','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:160:\" <div class=\"liste\"><a href=\"$url\" class=\"t\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/home/?uid=$uid\" class=\"c\" target=\"_blank\">$companyname</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:77:\" SELECT A.* FROM qb_news_content A  WHERE 1   ORDER BY A.list DESC LIMIT 0,9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"175\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904948','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('57','','0','0','index_L_8','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:177:\" <div class=\"liste\">����:<a href=\"$webdb[www_url]/{$ModuleDB[hr_][dirname]}/joinshow.php?id=$id\" class=\"t\" target=\"_blank\">$truename</a> רҵ:<a class=\"c\" >$speciality</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:77:\" SELECT A.* FROM qb_news_content A  WHERE 1   ORDER BY A.list DESC LIMIT 0,9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306904908','9','0','0','0','blue');
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
INSERT INTO `qb_label` VALUES ('73','','1','0','news_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"1\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"276\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161028_pjjzu.jpg\";i:2;s:32:\"label/1_20101018161051_jfeu1.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:24:\"�ҵ��ۿۼ�Ʒ�Ƽҵ�32Ԫ��\";i:2;s:20:\"��Ԫ���º決�������\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287389936','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('74','','0','0','index_t1','code','0','<a href=\"#\">ҵ�綯̬</a> | <a href=\"#\">��Ʒ����</a> | <a href=\"#\">��ҵ����</a> | <a href=\"#\">����Ի�</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('75','','0','0','index_t2','code','0','<a href=\"#\">��������</a> | <a href=\"#\">ҵ�綯̬</a> | <a href=\"#\">��Ʒ����</a> | <a href=\"#\">��ҵ����</a> | <a href=\"#\">����Ի�</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('76','','0','0','hy_title1','code','0','<a href=\"http://www_php168_com/do/bencandy.php?fid=44&aid=940\" target=\"_blank\">ΪʲôҪ������ƻ�Ա?</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287391917','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('77','','0','0','hy_title2','code','0','	| <a href=\"../do/bencandy.php?fid=44&aid=947\" target=\"_blank\">���ƻ�Ա��ͨ����</a><br/>\r\n                        | <a href=\"../do/bencandy.php?fid=44&aid=948\" target=\"_blank\">�������뿪ͨ���ƻ�Ա</a><br/>\r\n                        | <a href=\"../do/bencandy.php?fid=44&aid=949\" target=\"_blank\">���ƻ�Ա�������</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"149\";s:5:\"div_h\";s:2:\"62\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291723956','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('78','','0','0','index_p1','code','0','�����챨','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('79','','0','0','index_p2','code','0','������̬','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('80','','0','0','index_p3','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('81','','0','0','index_bannerad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019091059_atxxl.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"70\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287451536','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('82','','0','0','index_more1','code','0','<a href=\"/sell/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('83','','0','0','index_more2','code','0','<a href=\"/buy/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('84','','0','0','index_more3','code','0','<a href=\"/sell/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('85','','0','0','index_more4','code','0','<a href=\"/showroom/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('86','','0','0','index_more5','code','0','<a href=\"/brand/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('87','','0','0','index_more6','code','0','<a href=\"/showroom/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('88','','0','0','index_more7','code','0','<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('89','','0','0','index_more8','code','0','<a href=\"/sell/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('90','','0','0','index_more9','code','0','<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('91','','0','0','index_more10','code','0','<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('92','','0','0','sell_tt1','code','0','���¹�Ӧ��Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('93','','0','0','sell_tt2','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('94','','0','0','sell_tt3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019091036_2nwif.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('95','','0','0','sell_tt4','code','0','�Ƽ���Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('96','','0','0','sell_tt5','code','0','<a href=\"list.php?fid=2\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('97','','0','0','sell_ts4','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:450:\"<div class=\"list\">\r\n                	<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span style=\"line-height:20px;\">����:<font color=\"#FF0000\">{$price}</font>Ԫ/{$my_units}<br>\r\n��С�� <font color=\"#FF0000\">{$order_min}</font> {$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:130:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287454001','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('98','','0','0','sell_tt6','code','0','���Ų�Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('99','','0','0','sell_tt7','code','0','<a href=\"list.php?fid=3\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('100','','0','0','sell_tt8','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:162:\"<div class=\"listr\">\r\n                   <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span>{$price}Ԫ/{$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:122:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('101','','0','0','sell_newss','code','0','��Ʒ��Ѷ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('102','','0','0','sell_news2','code','0','<A href=\"/do/\" target=\"_blank\">����&gt;&gt;</A>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287454483','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('103','','0','0','sell_newss3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:69:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909646','0','34','0','0','default');
INSERT INTO `qb_label` VALUES ('104','','0','0','sell_v3','code','0','Ʒ��չʾ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('105','','0','0','sell_v4','code','0','<a href=\"/brand/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','yellow');
INSERT INTO `qb_label` VALUES ('106','','0','0','sell_v5','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpinpai\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"40\"/></a> \r\n              <a href=\"$url\" target=\"_blank\">$title</a> </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306905053','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('107','','0','0','sell_tb3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:55:\"<span><a href=\"$url\" target=\"_blank\">$title</a></span> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909639','0','34','0','0','default');
INSERT INTO `qb_label` VALUES ('108','','0','0','buy_adpic','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019101005_utjpw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"730\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287461438','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('109','','0','0','buy_n1','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:373:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>\r\n                            <td class=\"t\"> <a href=\"$url\" target=\"_blank\">$title</a></td>                            \r\n                    <td class=\"d\"><font color=\"#FF0000\">{$price}</font>Ԫ/{$my_units}</td>\r\n                          </tr>\r\n                        </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('110','','0','0','buy_n2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:55:\"<span><a href=\"$url\" target=\"_blank\">$title</a></span> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909601','0','35','0','0','default');
INSERT INTO `qb_label` VALUES ('111','','0','0','buy_n3','code','0','����115������,��ʼ������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('112','','0','0','buy_n4','code','0','������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('113','','0','0','buy_n5','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('114','','0','0','buy_n6','code','0','�Ƽ�����Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('115','','0','0','buy_n7','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('116','','0','0','buy_n8','code','0','��������Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('117','','0','0','buy_n9','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('118','','0','0','buy_n10','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:162:\"<div class=\"listr\">\r\n                   <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span>{$price}Ԫ/{$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('119','','0','0','buy_c1','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:434:\"<div class=\"list\">\r\n                	<a href=\"$url\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span style=\"line-height:20px;\">����:<font color=\"#FF0000\">{$price}</font>Ԫ/{$my_units}<br>\r\n��С�� <font color=\"#FF0000\">{$order_min}</font> {$my_units}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:128:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('120','','0','0','buy_c2','code','0','����Ѷ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('121','','0','0','buy_c3','code','0','<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('122','','0','0','buy_c4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\" <div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909614','0','35','0','0','default');
INSERT INTO `qb_label` VALUES ('123','','0','0','buy_c5','code','0','Ʒ��չʾ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('124','','0','0','buy_c6','code','0','<a href=\"/brand/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','yellow');
INSERT INTO `qb_label` VALUES ('125','','0','0','buy_c7','Info_news_','1','a:36:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpinpai\"> <a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"40\"/></a> \r\n              <a href=\"$url\" target=\"_blank\">$title</a> </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:107:\" SELECT A.* FROM qb_news_content A  WHERE 1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 0,4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:9:\"start_num\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1306905078','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('126','','0','0','hy_tb1','code','0','<a href=\"../do/bencandy.php?fid=44&aid=946\" target=\"_blank\">�����������?</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287467061','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('127','','0','0','hy_j1','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">���� \r\n            &gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('128','','0','0','hy_j2','code','0','�Ƽ���ҵ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('129','','0','0','hy_j3','code','0','������ҵ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('130','','0','0','hy_j4','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('131','','0','0','hy_j5','code','0','������ҵ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('132','','0','0','hy_j6','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('133','','0','0','hy_j8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019141039_qrv6e.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:3:\"120\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"120\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287469480','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('134','','0','0','hy_j9','code','0','���¼���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('135','','0','0','hy_j10','code','0','<a href=\"list.php?fid=1\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('136','','0','0','hy_d1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:74:\"<div class=\"n$i\"><a href=\"$url\" class=\"a\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"261\";s:5:\"div_h\";s:3:\"219\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909586','0','16','0','0','default');
INSERT INTO `qb_label` VALUES ('137','','0','0','hy_d3','code','0','<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('138','','0','0','hy_d2','code','0','�ɹ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','yellow');
INSERT INTO `qb_label` VALUES ('160','','1','0','news_k1','code','0','��ҵ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('161','','1','0','news_k2','code','0','�ɹ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('162','','1','0','news_k3','code','0','������ҵ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('163','','1','0','news_k4','code','0','����/�������ĵ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('164','','1','0','news_k5','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('165','','1','0','news_k7','code','0','�г���̬','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('166','','1','0','news_k8','code','0','�۸��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('167','','1','0','news_k9','code','0','������Ѷ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('168','','1','0','news_k10','code','0','�����ο�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('169','','1','0','news_k11','code','0','������̳','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('170','','1','0','news_k12','code','0','�ο���Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('171','','1','0','news_k13','code','0','�ȵ��Ѷ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('172','','1','0','news_k14','code','0','����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('173','','1','0','news_k15','code','0','�ֲ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('174','','1','0','news_k16','code','0','�ظ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('175','','1','0','news_k17','code','0','��ɫ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('176','','1','0','news_k18','code','0','¯��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('177','','1','0','news_k19','code','0','�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('178','','1','0','news_banner1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475674','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('179','','1','0','news_banner2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `qb_label` VALUES ('180','','0','99','head_menu','code','0','<a href=\"http://www_php168_com/member/?main=http://www_php168_com/hy/member/homepage_ctrl.php?atn=info\" target=\"_blank\">��������</a> \r\n<a href=\"http://www_php168_com/member/?main=http://www_php168_com/sell/member/post_choose.php\" target=\"_blank\">������Ʒ</a> \r\n<a href=\"http://www_php168_com/member/?main=http://www_php168_com/buy/member/post_choose.php\" target=\"_blank\">������</a> \r\n<a href=\"http://www_php168_com/buy/\" target=\"_blank\">Ѱ���̻�</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"300\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554487','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('181','','0','99','head_topmenu','code','0','<a href=\"http://www_php168_com/do/jf.php\" target=\"_blank\">���׬����</a> | <a href=\"http://www_php168_com/do/list.php?fid=43\" target=\"_blank\">��������</a> \r\n| <a href=\"http://www_php168_com/guestbook/\" target=\"_blank\">��������</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"200\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554775','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('182','','0','99','head_tel','code','0','400-45874147','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554818','9','0','0','0','default');
INSERT INTO `qb_label` VALUES ('183','','0','0','gift_left1','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:455:\"<div class=\"lista\"> <a href=\"$url\" class=\"img\" target=\"_blank\"><img src=\"$picurl\" onError=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"75\" height=\"75\" border=\"0\"></a> \r\n            <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n            <span class=\"price\">ԭ��{$mart_price}Ԫ</span> <span class=\"zf\">��{$money}{$webdb[MoneyName]}</span> \r\n            <a href=\"$url\" class=\"goto\" target=\"_blank\">ȥ����</a> \r\n          </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:67:\"SELECT * FROM qb_gift_content  WHERE 1  ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('184','','0','0','gift_pic1','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:507:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"120\"></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <div><span>��{$mart_price}</span><em>$money</em>���ֶһ�</div>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"butter\"><img src=\"$webdb[www_url]/images/yellow/gift_butter.gif\"></a>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:68:\"SELECT * FROM qb_gift_content  WHERE 1  ORDER BY list DESC LIMIT 15 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('185','','0','0','gift_news','code','0',' <div class=\"l1\"><a >���ע��һ���ʺ�</a></div>\r\n                <div class=\"l2\"><a >Ŭ��ͨ�����ַ�ʽ׬����</a></div>\r\n                <div class=\"l3\"><a >��ѡ��Ʒ,����һ�</a></div>\r\n                <div class=\"l4\"><a >�ȴ����,������Ʒ</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287981570','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('186','','0','0','gift_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:3:\"220\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025121017_53fhc.jpg\";i:2;s:32:\"label/1_20101025121026_yiimn.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `qb_label` VALUES ('385','','0','0','news_10','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:236:\"<div class=\"listpic\"> <a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"150\" height=\"120\" border=\"0\"/></a> \r\n        <a href=\"$url\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:110:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"973\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294910026','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('188','','0','0','tuangou_hot','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:99:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}-{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:70:\"SELECT * FROM qb_tuangou_content  WHERE 1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287990144','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('189','','0','0','tuangou_xz1','code','0','�Ƽ��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('190','','0','0','tuangou_xz2','code','0','�Ƽ��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('191','','0','0','tuangou_vz1','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:97:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:70:\"SELECT * FROM qb_tuangou_content  WHERE 1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287992234','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('192','','0','0','tuangou_xz3','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:263:\" <div class=\"listpic\"> <a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" border=\"0\"></a> \r\n            <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:76:\"SELECT * FROM qb_tuangou_content  WHERE ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('193','','0','0','tuangou_hy1','pic','0','a:4:{s:6:\"imgurl\";s:65:\"http://i05.c.aliimg.com/news/upload/0831/116x58_1250072543719.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('194','','0','0','tuangou_hy2','pic','0','a:4:{s:6:\"imgurl\";s:72:\"http://i05.c.aliimg.com/news/upload/5003817/114x56love_1262239807514.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('195','','0','0','tuangou_hy3','pic','0','a:4:{s:6:\"imgurl\";s:66:\"http://i04.c.aliimg.com/news/upload/!!!!!!/92-60_1280974834710.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('196','','0','0','tuangou_hy4','pic','0','a:4:{s:6:\"imgurl\";s:71:\"http://i02.c.aliimg.com/news/upload/rain/banner114x56_1258530967195.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('197','','0','0','tuangou_hy0','code','0','������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('198','','0','0','tuangou_main','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:890:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tablelist\">\r\n          <tr>\r\n            <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"></a></td>\r\n            <td class=\"word\">\r\n            	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                &nbsp;&nbsp;$content\r\n            </td>\r\n            <td class=\"info\">\r\n            	<div>\r\n                	<a href=\"$webdb[www_url]/member/?main=$GLOBALS[Murl]/member/join.php?fid=$fid&cid=$id\" target=\"_blank\">��Ҫ����</a>\r\n                    <span>�μ�����:<em>{$totaluser}��</em></span>\r\n                    <span>����ʱ��:<em>{$time_Y}-{$time_m}-{$time_d}</em></span>\r\n                    <span>�������:<em>{$hits}��</em></span>\r\n                </div>\r\n            </td>\r\n          </tr>\r\n        </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:3:\"120\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:76:\"SELECT * FROM qb_tuangou_content  WHERE ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"700\";s:5:\"div_h\";s:3:\"550\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287994729','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('199','','0','0','tuangou_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"420\";s:6:\"height\";s:3:\"182\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025161030_dn3nk.jpg\";i:2;s:32:\"label/1_20101025161027_ybvq3.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287994981','0','28','0','0','default');
INSERT INTO `qb_label` VALUES ('200','','0','0','coupon_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"650\";s:6:\"height\";s:3:\"190\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025161019_tkw1v.jpg\";i:2;s:32:\"label/1_20101025161026_bvtim.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287998816','0','27','0','0','default');
INSERT INTO `qb_label` VALUES ('201','','0','0','coupon_new1','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:419:\"<div class=\"listpic\">\r\n                	<div class=\"t\"><a href=\"$url\" target=\"_blank\" class=\"title\">$title</a></div>\r\n                    <div class=\"m\">ԭ��:<strike>{$mart_price}Ԫ</strike> �Żݼ�:{$price}Ԫ</div>\r\n                	<div class=\"p\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"170\" height=\"125\"></a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:74:\"SELECT * FROM qb_coupon_content  WHERE ispic=1  ORDER BY list DESC LIMIT 9\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"650\";s:5:\"div_h\";s:3:\"580\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288094795','0','27','0','0','default');
INSERT INTO `qb_label` VALUES ('202','','0','0','coupon_new23','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:123:\"<div class=\"list\"><span>$username</span>��<em>{$time_m}-{$time_d}</em>������<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:68:\"SELECT * FROM qb_coupon_content  WHERE 1  ORDER BY list DESC LIMIT 5\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','27','0','0','default');
INSERT INTO `qb_label` VALUES ('203','','0','0','fenlei_a1','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:71:\"(SELECT * FROM qb_fenlei_content  WHERE 1 ) ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288171281','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('204','','0','0','fenlei_a2','code','0','����<br/>�Ƽ���Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('205','','0','0','fenlei_a3','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:67:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">��$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:71:\"(SELECT * FROM qb_fenlei_content  WHERE 1 ) ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"620\";s:5:\"div_h\";s:2:\"48\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288169903','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('384','','0','0','news_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:67:\" <div class=\"s\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:13:\"tplpart_2code\";s:66:\"<div class=\"b\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"381\";s:5:\"div_h\";s:2:\"76\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294909921','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('207','','0','0','fenlei_a5','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:593:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_title\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\" border=\"0\"/></a></td>\r\n                    \r\n              <td class=\"word\"> <a href=\"$url\" target=\"_blank\">$title</a> \r\n                <a href=\"$list_url\" target=\"_blank\" class=\"sort\">$fname</a> <span>{$posttime} </span> </td>\r\n                  </tr>\r\n                </table>\r\n                \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:77:\"(SELECT * FROM qb_fenlei_content  WHERE ispic=1 ) ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"233\";s:5:\"div_h\";s:3:\"223\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170216','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('208','','0','0','fenlei_a6','code','0','������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('209','','0','0','fenlei_a7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171018_bzfar.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170047','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('210','','0','0','fenlei_a8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171006_q2b2q.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('211','','0','0','fenlei_a9','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171021_fndoi.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('212','','0','0','fenlei_a10','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171047_wrbq9.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"485\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"65\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('213','','0','0','fenlei_a11','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171005_mcr01.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"65\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('214','','0','0','fenlei_b1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171059_0i0zi.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"720\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"720\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170330','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('215','','0','0','fenlei_b2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171042_twc8g.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"250\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('216','','0','0','fenlei_b3','code','0','ͼ����Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('217','','0','0','fenlei_b4','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:272:\"<div class=\"list_fpic\">\r\n        	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n            <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:6:\"fenlei\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"16\";s:3:\"sql\";s:78:\"(SELECT * FROM qb_fenlei_content  WHERE ispic=1 ) ORDER BY list DESC LIMIT 16 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('218','','0','0','fenlei_ab11','code','0','������Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('219','','0','0','fenlei_ab5','code','0','������Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `qb_label` VALUES ('383','','0','0','news_0','code','0',' <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">������ʳ</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">���\\ɰ��</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">��������</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">ͥԺ����</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">ʯ���跹</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">������Ϣ</a></dd>\r\n        </dl>        \r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">��������</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">KTV���ֲ�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�����</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�ư�/SPA��</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">ͥԺ����</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�ձ�����</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">���ξƵ�</a></dt>        \r\n            <dd><a href=\"#\" target=\"_blank\">ϴԡɣ��</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">ũ�Ҳ�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">��ԡ��Ħ</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">����������</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">��ͯ��Ӱ</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">�������</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">����ӰԺ</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�ͱ�Ϻ</a></dd>        \r\n            <dd><a href=\"#\" target=\"_blank\">�����۸�</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">�٤��</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">���ΰ�</a></dd>\r\n        </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"800\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292050226','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('228','','0','0','shop_b1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:494:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tbb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>��{$price}Ԫ</div>\r\n                    </td>\r\n                  </tr></table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:89:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338753','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('229','','0','0','shop_x1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:78:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"300\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338778','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('230','','0','0','shop_x2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:77:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list ASC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338001','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('231','','0','0','shop_x3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:78:\"SELECT * FROM qb_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('232','','0','0','shop_tt1','code','0','�̳ǹ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('233','','0','0','shop_tt2','code','0','�����Ƽ���Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('234','','0','0','shop_tt3','code','0','������Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('235','','0','0','shop_tt4','code','0','ע������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('236','','0','0','shop_tt5','code','0','������Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('237','','0','0','shop_tt7','code','0','������Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('238','','0','0','shop_tt8','code','0','������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('239','','0','0','shop_tt9','code','0','���õ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('240','','0','0','shop_tt10','code','0','��ױƷ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('241','','0','0','shop_tt11','code','0','������Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('242','','0','0','shop_m1','code','0','<a href=\"#\" target=\"_blank\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('243','','0','0','shop_m2','code','0','<a href=\"#\" target=\"_blank\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('244','','0','0','shop_m3','code','0','<a href=\"#\" target=\"_blank\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('245','','0','0','shop_m4','code','0','<a href=\"#\" target=\"_blank\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `qb_label` VALUES ('246','','0','0','shop_m5','code','0','<a href=\"#\" target=\"_blank\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
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
INSERT INTO `qb_label` VALUES ('420','','0','0','news_k3','code','0','��ʳ��Ѷ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047289','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('421','','0','0','news_k4','code','0','������Ѷ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047302','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('422','','0','0','news_k5','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `qb_label` VALUES ('423','','0','0','news_k7','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047324','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('424','','0','0','news_k8','code','0','�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047338','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('425','','0','0','news_k9','code','0','���մ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047427','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('426','','0','0','news_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"1\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"276\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161028_pjjzu.jpg\";i:2;s:32:\"label/1_20101018161051_jfeu1.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:24:\"�ҵ��ۿۼ�Ʒ�Ƽҵ�32Ԫ��\";i:2;s:20:\"��Ԫ���º決�������\";}}','a:3:{s:5:\"div_w\";s:3:\"328\";s:5:\"div_h\";s:3:\"274\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292053991','0','20','0','0','default');
INSERT INTO `qb_label` VALUES ('427','','0','0','blue_indext1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:109:\"<div class=\"list$i\"><A HREF=\"$url\" target=\'_blank\'>$title</a><span>{$time_y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:80:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299127892','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('428','','0','0','blue_indext2','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:265:\"<div class=\"list\"> \r\n<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n<a href=\"$url\" target=\"_blank\">{$title}</a> \r\n<span>{$price}Ԫ/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:131:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299139448','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('429','','0','0','blue_indext3','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:265:\"<div class=\"list\"> \r\n<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> \r\n<a href=\"$url\" target=\"_blank\">{$title}</a> \r\n<span>{$price}Ԫ/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:129:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','9','0','0','0','blue');
INSERT INTO `qb_label` VALUES ('430','','0','0','blue_sellgotosell','code','0','<li class=\"l1\"><span>������</span>�ؼ���������һ����λ��</li>\r\n<li class=\"l2\"><span>������</span>�㲻���������������������ţ�<a href=\"http://www_qibosoft_com/member/?main=http://www_qibosoft_com/buy/member/post_choose.php\" target=\"_blank\">��������Ϣ</a></li>\r\n<li class=\"l3\"><span>������Ǣ̸</span>����������Ǣ̸�������ֿ�ݣ�</li>\r\n<li class=\"l4\"><span>��ɽ���</span>�����ݣ�����˫Ӯ��</li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('431','','0','0','blue_sellpiclist','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:344:\"<div class=\"listpic\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n<a href=\"$url\" target=\"_blank\" class=\"t\">$title</a>\r\n<span>����:<em>{$price}</em>Ԫ/{$my_units}</span>\r\n<span>��С��<em> {$order_min}</em>{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:130:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('432','','0','0','blue_sellhotlist','Info_sell_','1','a:29:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list$i\">\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span>{$price}Ԫ/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:5:\"sell_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:122:\"(SELECT A.*,B.* FROM qb_sell_content A LEFT JOIN qb_sell_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','34','0','0','blue');
INSERT INTO `qb_label` VALUES ('433','','0','0','blue_buynewlist','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:117:\"<div class=\"list$i\">\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span><em>{$price}</em>Ԫ/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.list DESC LIMIT 7 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299490988','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('434','','0','0','blue_hotbuy','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list$i\">\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span>{$price}Ԫ/{$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:120:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE 1 ) ORDER BY A.hits DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"22\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('435','','0','0','blue_picbuy','Info_buy_','1','a:29:{s:13:\"tplpart_1code\";s:332:\"<div class=\"list\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n<span>����:<em>{$price}</em>Ԫ/{$my_units}</span>\r\n<span>��С�� <em>{$order_min}</em> {$my_units}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:7:\"typefid\";N;s:9:\"noReadMid\";i:1;s:6:\"wninfo\";s:4:\"buy_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:128:\"(SELECT A.*,B.* FROM qb_buy_content A LEFT JOIN qb_buy_content_1 B ON A.id=B.id  WHERE A.ispic=1 ) ORDER BY A.list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','35','0','0','blue');
INSERT INTO `qb_label` VALUES ('436','','0','0','blue_howjoinhy','code','0','1.<a href=\"../do/bencandy.php?fid=44&aid=947\" target=\"_blank\">���ƻ�Ա��ͨ����</a><br/>\r\n2.<a href=\"../do/bencandy.php?fid=44&aid=948\" target=\"_blank\">�������뿪ͨ���ƻ�Ա</a><br/>\r\n3.<a href=\"../do/bencandy.php?fid=44&aid=949\" target=\"_blank\">���ƻ�Ա�������</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','blue');
INSERT INTO `qb_label` VALUES ('437','','0','0','blue_whyjoinhy','code','0','<a href=\"#\" target=\"_blank\"><span>ΪʲôҪ������ƻ�Ա?</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299565949','0','16','0','0','blue');
INSERT INTO `qb_label` VALUES ('438','','0','0','blue_newsmenu','code','0','   <li class=\"begin\">\r\n        <a href=\"#\" target=\"_blank\"><span>������ʳ</span></a>\r\n        <a href=\"#\" target=\"_blank\">���\\ɰ��</a>\r\n        <a href=\"#\" target=\"_blank\">��������</a>\r\n        <a href=\"#\" target=\"_blank\">ͥԺ����</a>\r\n        <a href=\"#\" target=\"_blank\">ʯ���跹</a>\r\n        <a href=\"#\" target=\"_blank\">������Ϣ</a>\r\n    </li>        \r\n    <li>\r\n        <a href=\"#\" target=\"_blank\"><span>��������</span></a>\r\n        <a href=\"#\" target=\"_blank\">KTV���ֲ�</a>\r\n        <a href=\"#\" target=\"_blank\">�����</a>\r\n        <a href=\"#\" target=\"_blank\">�ư�/SPA��</a>\r\n        <a href=\"#\" target=\"_blank\">ͥԺ����</a>\r\n        <a href=\"#\" target=\"_blank\">�ձ�����</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#\" target=\"_blank\"><span>���ξƵ�</span></a>        \r\n        <a href=\"#\" target=\"_blank\">ϴԡɣ��</a>\r\n        <a href=\"#\" target=\"_blank\">ũ�Ҳ�</a>\r\n        <a href=\"#\" target=\"_blank\">��ԡ��Ħ</a>\r\n        <a href=\"#\" target=\"_blank\">����������</a>\r\n        <a href=\"#\" target=\"_blank\">��ͯ��Ӱ</a>\r\n    </li>\r\n    <li>\r\n        <a href=\"#\" target=\"_blank\"><span>�������</span></a>\r\n        <a href=\"#\" target=\"_blank\">����ӰԺ</a>\r\n        <a href=\"#\" target=\"_blank\">�ͱ�Ϻ</a>        \r\n        <a href=\"#\" target=\"_blank\">�����۸�</a>\r\n        <a href=\"#\" target=\"_blank\">�٤��</a>\r\n        <a href=\"#\" target=\"_blank\">���ΰ�</a>\r\n    </li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('439','','0','0','blue_secondnews','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:195:\"<div class=\"list$i\">\r\n   <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n   <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n   <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"20\";s:3:\"sql\";s:81:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 20 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"22\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299642881','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('440','','0','0','blue_listsortynews','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:430:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listzt\">\r\n  <tr>\r\n    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"80\" height=\"60\"/></a></td>\r\n    <td class=\"word\">\r\n    	<a href=\"$url\" target=\"_blank\">$title</a></div>\r\n        <div>$content<a href=\"$url\" target=\"_blank\">[��ϸ]</a></div>\r\n   </td>\r\n </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:163:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('441','','0','0','blue_newsad1','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('442','','0','0','blue_news9','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:374:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnew\">\r\n<tr>\r\n<td> \r\n<a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"80\" height=\"60\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n$content <a href=\"$url\" target=\"_blank\">[��ϸ]</a> \r\n</td>\r\n</tr>\r\n</table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299655106','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('443','','0','0','blue_newslistpic','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:251:\"<div class=\"listpic\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\"/></a></div> \r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:110:\" SELECT A.* FROM qb_news_content A  WHERE A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299656296','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('444','','0','0','blue_news13','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"listm\"><A HREF=\"$url\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:394:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpw\">\r\n<tr>\r\n<td class=\"img\"><div><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\"/></a></div></td> \r\n<td class=\"word\">\r\n<a href=\"$url\" target=\"_blank\">$title</a><br/>��\r\n$content<a href=\"$url\" target=\"_blank\">[��ϸ]</a>\r\n</td>\r\n</tr>\r\n</table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:146:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"80\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299659078','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('445','','0','0','blue_news12','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"listm\"><A HREF=\"$url\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:394:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpw\">\r\n<tr>\r\n<td class=\"img\"><div><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\"/></a></div></td> \r\n<td class=\"word\">\r\n<a href=\"$url\" target=\"_blank\">$title</a><br/>��\r\n$content<a href=\"$url\" target=\"_blank\">[��ϸ]</a>\r\n</td>\r\n</tr>\r\n</table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:132:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1   ORDER BY A.hits ASC LIMIT 7 \";s:4:\"sql2\";s:145:\" SELECT A.*,R.content FROM qb_news_content A LEFT JOIN qb_news_content_1 R ON A.id=R.id  WHERE A.yz=1  AND A.ispic=1 ORDER BY A.hits ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1299659352','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('446','','0','0','blue_newsad2','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"93\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `qb_label` VALUES ('451','','0','0','blue_hotcompany','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list\"><A HREF=\"$webdb[www_url]/home/?uid=$uid\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:65:\"SELECT * FROM qb_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','16','0','0','blue');
INSERT INTO `qb_form_config` VALUES ('module_pre','form_','');
INSERT INTO `qb_form_config` VALUES ('module_id','21','');
INSERT INTO `qb_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_form_config` VALUES ('Info_webname','���ܱ�','');
INSERT INTO `qb_form_config` VALUES ('module_close','0','');
INSERT INTO `qb_form_content` VALUES ('27','','3','1','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `qb_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `qb_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `qb_form_content_3` VALUES ('18','1','�ۺ�ͷ�','','222223','54325@qq.com','133444444443');
INSERT INTO `qb_form_content_3` VALUES ('25','1','�ۺ�ͷ�','hhhhhhhhhhhhhhhhhh','222223','54325@qq.com','13377777777');
INSERT INTO `qb_form_content_3` VALUES ('27','1','�ۺ�ͷ�','192.168.0.99/55 all righ\nts reserved \n��ICP��05047353�� \nPowered by PHP168','222223','54325@qq.com','13377777777');
INSERT INTO `qb_form_module` VALUES ('1','��������','0','','a:3:{s:8:\"field_db\";a:8:{s:8:\"sortname\";a:14:{s:5:\"title\";s:18:\"�����ĸ���Ŀ�İ���\";s:10:\"field_name\";s:8:\"sortname\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:8:\"checkbox\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:38:\"����Ƶ��\r\n����Ƶ��\r\nͼƬƵ��\r\n��ƵƵ��\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:2:\"11\";s:9:\"allowview\";N;}s:7:\"webtime\";a:15:{s:5:\"title\";s:16:\"ÿ����������Сʱ\";s:10:\"field_name\";s:7:\"webtime\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"4\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:4:\"Сʱ\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"��ʵ����\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"9\";s:9:\"allowview\";N;}s:3:\"sex\";a:15:{s:5:\"title\";s:4:\"�Ա�\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|��\r\n2|Ů\r\n0|����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"��ϵQQ\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:8:\"�ֻ�����\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:8:\"interest\";a:14:{s:5:\"title\";s:8:\"��Ȥ����\";s:10:\"field_name\";s:8:\"interest\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:9:\"introduce\";a:14:{s:5:\"title\";s:8:\"���ҽ���\";s:10:\"field_name\";s:9:\"introduce\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"����\";}s:11:\"listshow_db\";a:2:{s:8:\"truename\";s:8:\"��ʵ����\";s:3:\"sex\";s:4:\"�Ա�\";}}','3,4,8,9','0','<p><strong>������м���,������,�������������ǵİ�����!</strong></p>','0','0','����','');
INSERT INTO `qb_form_module` VALUES ('3','Ͷ�߽���','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:15:{s:5:\"title\";s:8:\"Ͷ������\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"��ǰ�ͷ�\r\n�ۺ�ͷ�\r\n��Ʒ����\r\n����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"��ĵ绰\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"�������\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:15:{s:5:\"title\";s:8:\"Ͷ������\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"��ĳƺ�\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:8:\"Ͷ������\";s:8:\"truename\";s:8:\"��ĳƺ�\";}}','','0','','0','1','����','3,4');
INSERT INTO `qb_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `qb_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `qb_friendlink` VALUES ('12','0','PHPWIND�ٷ���̳','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND�ٷ���̳','32','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('5','0','�벩CMS','http://www.qibosoft.com','../images/default/friendlink.gif','����������CMS��վϵͳ�ṩ��!','40','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('16','3','��������','http://www.sudu.cn/','','','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('17','3','������̳','http://www.dvbbs.net/','','������̳','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('21','2','�ױ�֧��','http://www.yeepay.com/','friendlink/1_20090418160410_UxB8E.gif','�ױ�֧��','39','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('25','2','վ����','http://admin5.com/','friendlink/1_20090418160400_wqpAk.gif','վ����','37','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('26','2','�й�վ��վ','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','�й�վ��վ','38','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('27','2','WEB������','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB������','34','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('29','2','�е绪ͨ','http://www.chinaccnet.com/','','�е绪ͨ','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('32','2','�쳵����','http://union.flashget.com/','','�쳵����','0','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink` VALUES ('34','3','CNZZ','http://www.cnzz.cn/','','CNZZ','26','0','0','0','0','0','','1','0');
INSERT INTO `qb_friendlink_sort` VALUES ('2','��������','0');
INSERT INTO `qb_friendlink_sort` VALUES ('3','�������','0');
INSERT INTO `qb_pm` VALUES ('4','11','','0','<font color=\"re','rebox','1','���пͻ��¶�����','1286873754','�뾡��鿴<A HREF=\'http://v7.com/buy/joinshow.php?fid=8&id=4\' target=\'_blank\'>http://v7.com/buy/joinshow.php?fid=8&id=4</A>');
INSERT INTO `qb_pm` VALUES ('10','1','','0','SYSTEM','rebox','1','�пͻ����㱨����','1287630209','�뾡��鿴<A HREF=\'http://v7.com/buy/member/joinshow.php?id=5\' target=\'_blank\'>http://v7.com/buy/member/joinshow.php?id=5</A>');
INSERT INTO `qb_pm` VALUES ('9','1','','0','SYSTEM','rebox','0','�пͻ�����ѯ����','1287628221','�뾡��鿴<A HREF=\'http://v7.com/sell/member/joinshow.php?fid=102&id=6\' target=\'_blank\'>http://v7.com/sell/member/joinshow.php?id=6</A>');
INSERT INTO `qb_pm` VALUES ('11','1','','0','SYSTEM','rebox','0','���пͻ��¶�����','1288143909','�뾡��鿴<A HREF=\'http://v7.com/shop/joinshow.php?fid=32&id=1\' target=\'_blank\'>http://v7.com/shop/joinshow.php?fid=32&id=1</A>');
INSERT INTO `qb_guestbook_content` VALUES ('12','0','1','','','','','1','admin','192.168.0.99','��������ǿ�ƽ�����վ��̨�ķ�����:�޸�/admin/global.php�ļ�,����$ForceEnter=0;��0�ĳ�1����,ǿ�ƽ�����վ�ĺ�̨.','1','1240206881','1240206881','','');
INSERT INTO `qb_guestbook_content` VALUES ('13','0','1','','','','','1','admin','192.168.0.99','��ͨ����Ա��Ϊ��������Ա�ķ�����,�޸��ļ�/php168/admin.php,����ߵ��ʺŸ���һ�¼���','1','1240206958','1240206958','','');
INSERT INTO `qb_guestbook_content` VALUES ('14','0','1','','','','','1','admin','192.168.0.99','��վϵͳ�����ݿ������ļ���/php168/mysql_config.php','1','1240207079','1240207079','','');
INSERT INTO `qb_guestbook_content` VALUES ('15','0','1','','','','','1','admin','192.168.0.99','������Ĭ�������ϴ��ļ���СΪ2M,��������޸ķ���������.��������վϵͳ�ϴ�����2M���ļ�.�ǲ����Ե�.�������޸ķ���������.һ����˵��������PHP�����ļ�����c:\\windows\\php.ini����.','1','1240207216','1240207216','','');
INSERT INTO `qb_guestbook_content` VALUES ('16','0','1','','','','','1','admin','192.168.0.99','�����������������.���޷�ʹ�òɼ�����.','1','1240207330','1240207330','','');
INSERT INTO `qb_guestbook_content` VALUES ('22','1','1','','','','','1','admin','127.0.0.1','fsdafds\r\nwfdsafd','1','1283393799','1283393799','a:4:{s:8:\"username\";s:5:\"admin\";s:7:\"content\";s:20:\"wfdsa\r\nfd\r\n3511\r\n999\";s:8:\"posttime\";i:1283394570;s:3:\"uid\";s:1:\"1\";}','');
INSERT INTO `qb_guestbook_content` VALUES ('23','2','1','','','','','1','admin','127.0.0.1','42452424','1','1283395885','1283395885','a:4:{s:7:\"content\";s:7:\"1111144\";s:3:\"uid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:8:\"posttime\";i:1283395894;}','');
INSERT INTO `qb_guestbook_sort` VALUES ('1','0','��չ����','0','1','0','0','','0','0','','','','','','','0','','','','0','','','','','0','b:0;','0','0','','','0');
INSERT INTO `qb_guestbook_sort` VALUES ('2','0','���Ͷ��','0','1','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `qb_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `qb_guestbook_config` VALUES ('groupPassPassGuestBook','3,4','');
INSERT INTO `qb_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `qb_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `qb_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `qb_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `qb_guestbook_config` VALUES ('Info_webname','���Ա�','');
INSERT INTO `qb_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_limitword` VALUES ('1','�췴','��**');
INSERT INTO `qb_limitword` VALUES ('2','���ֹ�','��**��');
INSERT INTO `qb_ad_norm_place` VALUES ('1','article_list','�����б�ҳ������','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `qb_ad_norm_place` VALUES ('10','article_content','����������ߵĹ��','pic','1','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:32:\"other/1_20090326120324_mnfIi.jpg\";s:7:\"linkurl\";s:22:\"http://www.php168.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','5','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('2','article_show','��������ҳ����·����','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:1782:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.zxx6.com/\" target=_blank><font color=#ff0000><strong>վ��ѧϰ��</strong></font></a> ����<a href=\"http://www.angelyyl.cn/\" target=_blank>��������</a><a href=\"http://www.czin.cn/\" target=_blank><br />�������ߡ������˵����ϼ�԰</a> <br /><a href=\"http://www.sy50.com/\" target=_blank>�������� �˽����� ��������</a> <br /><a href=\"http://www.771881.cn/\" target=_blank>�����㱧����-����Ůͬ������-�ܼ�Ů��վ </a><br /><a href=\"http://www.aihut.com/\" target=_blank>���С��ԭ����������� </a><br /><a href=\"http://www.popyule.com/\" target=_blank>����������--�����ۺ�վPHP168����</a> <br /><a href=\"http://www.china551.cn/\" target=_blank><font color=#ff0000>����������</font></a> ����<a href=\"http://www.ym988.com/\" target=_blank>Բ��ģ�幤���� </a><br /><a href=\"http://www.welights.com/\" target=_blank>���ʵƾ���</a> ����<a href=\"http://www.hnmssy.cn/\" target=_blank>����������Ӱ��</a> <br /><a href=\"http://www.nuoyue.net/\" target=_blank><font color=#ff0000>ŵԾվ������ - վ��������ѧϰ�ĺõط�</font></a> <br /><a href=\"http://www.qzfl.com/\" target=_blank>Ȫ�ݷ��� ����Ȫ����Ϣ�������������</a> <br /><a href=\"http://www.stmsn.com/\" target=_blank>�й���������</a> ����<a href=\"http://www.downcc.cn/\" target=_blank>�󵱼����վ </a><br /><a href=\"http://www.yt12333.cn/\" target=_blank>�Ͷ��籣֮��-��ͤ�Ͷ�������</a> <br /><a href=\"http://www.gooyi.cn/\" target=_blank>������ - ��������Ż��� </a><br /><a href=\"http://www.idercn.com/\" target=_blank>I.D.����</a> ����<a href=\"http://www.tz0632.com/\" target=_blank>���ݳ�����</a> ����<a href=\"http://www.doubar.com/\" target=_blank>���� </a></div>\r\n<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.wfseo.org/\" target=_blank><font color=#d2691e>������վ�Ż�</font><br /></a><br /></div>\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('11','digg_list','�������а��߹��','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:813:\"<div style=\"LINE-HEIGHT: 200%\"><a href=\"http://www.ibioo.com/\" target=_blank><font color=#ff0000>�̹�������--������߻�������վ!</font> </a><br /><a href=\"http://www.51solo.net/\" target=_blank>���������Ż�����������������ҿ�ʼ </a><br /><a href=\"http://1.com/45/admin/www.china-highway.com\" target=_blank>�����·�߾����й����ٹ�·�� </a><br /><a href=\"http://www.nenbei.com/\" target=_blank><font color=#ff0000>�۱��ۺ���������ӭ���ĵ��� </font></a><br /><a href=\"http://www.liuv.net/\" target=_blank><font color=#ff0000>��ˮ���</font></a> <br /><a href=\"http://www.fming.net/\" target=_blank>����ԭ�� ��ѧ����Ӱ�Ĵ���ƽ̨ </a><br /><a href=\"http://www.netchinatown.com/\" target=_blank>ʱ���Ƴ�-���⻪�˾�Ӣ�������԰ </a><br /><a href=\"http://frp.ok586.cn/\" target=_blank>�Ϻ���������ȴ��רҵ��������. </a></div>\";}','0','0','0','0','0','5','0','1','/do/digg.php');
INSERT INTO `qb_ad_norm_place` VALUES ('19','list_page_topad','�б�ҳ��߶������λ','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:13:\"ad/listad.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"130\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','2','0','10','1','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `qb_ad_norm_place` VALUES ('18','show_topad','����ҳ����������','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:18:\"ad/ad_show_top.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','10','1','1','../do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('17','show_right_top_picad','����ҳ��߶���ͼƬ���λ','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:15:\"ad/qyshowad.jpg\";s:7:\"linkurl\";s:43:\"http://www.qy.com.cn/idc/product_double.asp\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"110\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','29','0','10','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `qb_ad_norm_place` VALUES ('20','AD_list_topad','�б�ҳ����������','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:14:\"ad/cnidca1.gif\";s:7:\"linkurl\";s:21:\"http://www.cnidc.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','4','0','10','1','1','/do/list.php?fid=1');
INSERT INTO `qb_ad_norm_place` VALUES ('21','sp_show_ad','ר��ҳ���λ','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:943:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://3cq.org/\" target=_blank>�����׶����� һ��Ϊ�����ǵĺ���</a> <br /><a href=\"http://www.liuv.net/\" target=_blank>��ˮ���</a> <br /><a href=\"http://www.21yao.com/\" target=_blank>����ҽҩ��</a><br /><a href=\"http://www.fming.net/\" target=_blank>����ԭ��</a> <br /><a href=\"http://www.jnrx.net/\" target=_blank>��������</a> <br /><a href=\"http://www.7mt.cn/\" target=_blank>��Ħ��-�й���һĦ�г�����ý�� </a><br /><a href=\"http://www.hnpolice.net/\" target=_blank>���Ϲ����ߵ�ר��ѧУУ�ѻ� </a><br /><a href=\"http://www.seo178.com/\" target=_blank>SEO��ѵѡ��--����SEO��ѵ����</a> <br /><a href=\"http://www.51solo.net/\" target=_blank>Ʒ���ƹ�,SEO��վ�Ż� </a><br /><a href=\"http://www.kljy.cn/\" target=_blank>�����ڶ�ͯ���� </a><br /><a href=\"http://www.eia8.com/job/\" target=_blank>�й���������Ƹ��ְ��</a> <br /><a href=\"http://www.wenzhang8.com/\" target=_blank>���°� ������þ��������� </a>�� </div>\";}','0','0','0','0','0','0','0','1','/do/showsp.php?fid=1&id=23');
INSERT INTO `qb_ad_norm_place` VALUES ('22','AD_6112','��ҳ����ͼ1','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:12:\"label/t1.gif\";s:7:\"linkurl\";s:1:\"#\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"33\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','0','1','1','');
INSERT INTO `qb_ad_norm_place` VALUES ('23','AD_9996','��ҳ����ͼ2','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:12:\"label/t2.gif\";s:7:\"linkurl\";s:1:\"#\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"33\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','0','1','1','');
INSERT INTO `qb_ad_config` VALUES ('module_id','24','');
INSERT INTO `qb_ad_config` VALUES ('Info_webname','���ϵͳ','');
INSERT INTO `qb_ad_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_ad_config` VALUES ('module_pre','ad_','');
INSERT INTO `qb_ad_compete_place` VALUES ('3','����ҳ���۹��','0','0','50','5','8','36','1','/do/digg.php');
INSERT INTO `qb_ad_compete_user` VALUES ('11','1','admin','1239277578','1239709578','50','3','1','http://www.php168.com/','P8�ٷ�վ','0','','0');
INSERT INTO `qb_ad_compete_user` VALUES ('12','1','admin','1239279810','1239711810','50','3','1','http://www.php168.com/bbs','P8�ٷ���̳','0','','0');
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
INSERT INTO `qb_vote_element` VALUES ('37','6','������','4','10','','','');
INSERT INTO `qb_vote_element` VALUES ('38','6','����','4','7','','','');
INSERT INTO `qb_vote_element` VALUES ('39','6','����','2','5','','','');
INSERT INTO `qb_vote_element` VALUES ('41','6','�����','6','6','','','');
INSERT INTO `qb_vote_element` VALUES ('81','11','����������Ա��ϲ�','0','4','vote/1_20090418220434_DSazk.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('80','11','Chinaz֮CNIDC����������','0','9','vote/1_20090419090435_51j39.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('68','6','����','12','9','','','');
INSERT INTO `qb_vote_element` VALUES ('70','10','�ٶȷ�˿��','6','0','vote/1_20090317160304_1cyPh.gif','���ǰٶȷ�˿��','http://www.baidu.com');
INSERT INTO `qb_vote_element` VALUES ('71','10','�ȸ��˿��','1','0','vote/1_20090317160317_NO50S.gif','���ǹȸ��˿��','http://www.google.cn');
INSERT INTO `qb_vote_element` VALUES ('72','11','����������SNS����','1','8','vote/1_20090419090425_nkqeB.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('73','11','CN�����ײ˵�����','2','10','vote/1_20090419090455_L5Iz8.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('74','11','�ž�����������','1','3','vote/1_20090419090414_BVe9o.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('75','11','���ѻ�԰����','2','6','vote/1_20090419090445_qQiaW.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('76','11','����ȫ��վ�����','2','5','vote/1_20090419090445_QVf6M.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `qb_vote_element` VALUES ('77','11','��������','0','7','vote/1_20090419090459_1MkWx.jpg','','http://bbs.chinaz.com/Shuiba/thread-1240750-1-1.html');
INSERT INTO `qb_vote_comment` VALUES ('11','10','0','1','admin','1237279209','rrrrrrrrrrrrrrr','192.168.0.99','0','1');
INSERT INTO `qb_vote_comment` VALUES ('12','10','0','1','admin','1237279223','dddddddddddddddd','192.168.0.99','0','1');
INSERT INTO `qb_vote_comment` VALUES ('14','6','0','1','admin','1239025849','&nbsp;֤&nbsp;��:','127.0.0.1','0','1');
INSERT INTO `qb_vote_comment` VALUES ('22','6','0','1','admin','1283825218','fdsadf','127.0.0.1','0','1');
INSERT INTO `qb_vote_comment` VALUES ('19','11','0','1','admin','1240210890','����ѽ','192.168.0.99','0','1');
INSERT INTO `qb_vote_comment` VALUES ('20','11','0','1','admin','1255082863','fdsa','127.0.0.1','0','1');
INSERT INTO `qb_vote_comment` VALUES ('21','11','0','1','admin','1283823884','ll','127.0.0.1','0','1');
INSERT INTO `qb_vote_topic` VALUES ('6','��������Щǰ������֧�ֵ�','��������Щǰ������֧�ֺ�Ӱ�쵽��ģ�','2','600','0','','1164793927','','1233749543','1265256743','0','1','<div class=\"voteid\" title=\"$describes\">{$button}{$title}({$votenum})</div>','0','0','0');
INSERT INTO `qb_vote_topic` VALUES ('11','2008���й�վ��ʮ�������¼�ͶƱ','-------��Ϊ�����2008�������ŵ�վ���¼�Ͷ��һƱ.','2','500','0','','1237281523','','1233749543','1580789543','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:118px;float:left;margin-top:4px;\" class=\"voteid\">\r\n  <tr> \r\n    <td align=\"center\"><A HREF=\"$url\" target=\"_blank\" style=\"border:1px solid #ccc;display:block;width:100px;height:75px;\"><img alt=\"{$title}\" style=\"border:1px solid #fff;\" src=\"$img\" border=\"0\" width=\"100\" height=\"75\"></A></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\">\r\n      <div  style=\"width:110px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;\">{$button}(<b><font color=\"#FF0000\" >{$votenum}</font></b>)<a HREF=\"$url\" target=\"_blank\" title=\"{$title}\">{$title}</a></div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td>{$describes}</td>\r\n  </tr>\r\n  <tr> \r\n    <td></td>\r\n  </tr>\r\n</table>\r\n\r\n','1','0','0');
INSERT INTO `qb_vote_topic` VALUES ('10','�ĸ����������?','��ϲ��ʹ���ĸ�����������,��Ͷ��һƱ?','1','15','0','','1237275830','','0','0','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:90px;float:left;\">\r\n  <tr> \r\n    <td align=\"center\" valign=\"middle\" style=\"line-height:40px;\"> <a href=\"$url\" target=_blank> \r\n      <b>$title</b></a> </td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\"><a href=\"$url\" target=\"_blank\"><img alt=\"$describes\" src=\"$img\" width=\"80\" height=\"30\" border=\"0\"></a></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:20px;\"> <font color=\"#990000\">�� <b><font color=\"#FF0000\">$votenum</font> Ʊ \r\n      </b></font></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:40px;\"><a href=\"$webdb[www_url]/do/vote.php?action=vote&voteId=$id\" target=\"_blank\"><u>ͶһƱ</u></a> \r\n      <a href=\"$webdb[www_url]/do/vote.php?job=show&cid=$cid#postcomment\" target=\"_blank\"><u>��һ��</u></a></td>\r\n  </tr>\r\n</table>','2','0','0');
INSERT INTO `qb_vote_config` VALUES ('module_id','23','');
INSERT INTO `qb_vote_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_vote_config` VALUES ('Info_webname','ͶƱϵͳ','');
INSERT INTO `qb_vote_config` VALUES ('module_pre','vote_','');
INSERT INTO `qb_area` VALUES ('1','0','������','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('2','0','�Ϻ���','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('3','0','�����','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('4','0','������','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('5','0','�ӱ�ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('6','0','ɽ��ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('7','0','���ɹ�������','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('8','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('9','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('10','0','������ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('11','0','����ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('12','0','�㽭ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('13','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('14','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('15','0','����ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('16','0','ɽ��ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('17','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('18','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('19','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('20','0','�㶫ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('21','0','����׳��������','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('22','0','����ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('23','0','�Ĵ�ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('24','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('25','0','����ʡ','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('26','0','����������','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('27','0','����ʡ','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('28','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('29','0','�ຣʡ','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('30','0','���Ļ���������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('31','0','�½�ά���������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('32','0','̨��ʡ','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('33','0','����ر�������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('34','0','�����ر�������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('35','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('36','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('37','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('38','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('39','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('40','1','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('41','1','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('42','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('43','1','��ͷ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('44','1','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('45','1','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('46','1','˳����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('47','1','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('48','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('49','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('50','1','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('51','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('52','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('53','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('54','2','¬����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('55','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('56','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('57','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('58','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('59','2','բ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('60','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('61','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('62','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('63','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('64','2','�ζ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('65','2','�ֶ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('66','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('67','2','�ɽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('68','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('69','2','�ϻ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('70','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('71','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('72','3','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('73','3','�Ӷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('74','3','������','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_area` VALUES ('75','3','�Ͽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('76','3','�ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('77','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('78','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('79','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('80','3','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('81','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('82','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('83','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('84','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('85','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('86','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('87','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('88','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('89','3','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('90','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('91','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('92','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('93','4','��ɿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('94','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('95','4','ɳƺ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('96','4','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('97','4','�ϰ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('98','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('99','4','��ʢ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('100','4','˫����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('101','4','�山��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('102','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('103','4','ǭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('104','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('105','4','�뽭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('106','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('107','4','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('108','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('109','4','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('110','4','�ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('111','4','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('112','4','�ǿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('113','4','�ᶼ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('114','4','�潭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('115','4','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('116','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('117','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('118','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('119','4','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('120','4','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('121','4','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('122','4','ʯ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('123','4','��ɽ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('124','4','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('125','4','��ˮ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('126','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('127','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('128','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('129','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('130','5','ʯ��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('131','5','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('132','5','�ػʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('133','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('134','5','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('135','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('136','5','�żҿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('137','5','�е���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('138','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('139','5','�ȷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('140','5','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('141','6','̫ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('142','6','��ͬ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('143','6','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('144','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('145','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('146','6','˷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('147','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('148','6','�˳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('149','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('150','6','�ٷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('151','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('152','7','���ͺ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('153','7','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('154','7','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('155','7','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('156','7','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('157','7','������˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('158','7','���ױ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('159','7','�����׶���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('160','7','�����첼��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('161','7','�˰���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('162','7','���ֹ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('163','7','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('164','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('165','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('166','8','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('167','8','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('168','8','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('169','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('170','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('171','8','Ӫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('172','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('173','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('174','8','�̽���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('175','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('176','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('177','8','��«����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('178','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('179','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('180','9','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('181','9','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('182','9','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('183','9','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('184','9','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('185','9','�׳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('186','9','�ӱ߳�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('187','10','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('188','10','���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('189','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('190','10','�׸���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('191','10','˫Ѽɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('192','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('193','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('194','10','��ľ˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('195','10','��̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('196','10','ĵ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('197','10','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('198','10','�绯��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('199','10','���˰������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('200','11','�Ͼ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('201','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('202','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('203','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('204','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('205','11','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('206','11','���Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('207','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('208','11','�γ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('209','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('210','11','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('211','11','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('212','11','��Ǩ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('213','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('214','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('215','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('216','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('217','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('218','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('219','12','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('220','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('221','12','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('222','12','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('223','12','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('224','13','�Ϸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('225','13','�ߺ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('226','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('227','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('228','13','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('229','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('230','13','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('231','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('232','13','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('233','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('234','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('235','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('236','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('237','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('238','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('239','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('240','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('241','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('242','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('243','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('244','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('245','14','Ȫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('246','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('247','14','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('248','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('249','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('250','15','�ϲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('251','15','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('252','15','Ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('253','15','�Ž���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('254','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('255','15','ӥ̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('256','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('257','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('258','15','�˴���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('259','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('260','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('261','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('262','16','�ൺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('263','16','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('264','16','��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('265','16','��Ӫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('266','16','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('267','16','Ϋ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('268','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('269','16','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('270','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('271','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('272','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('273','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('274','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('275','16','�ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('276','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('277','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('278','17','֣����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('279','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('280','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('281','17','ƽ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('282','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('283','17','�ױ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('284','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('285','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('286','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('287','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('288','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('289','17','����Ͽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('290','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('291','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('292','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('293','17','�ܿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('294','17','פ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('295','18','�人��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('296','18','��ʯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('297','18','ʮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('298','18','�˲���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('299','18','�差��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('300','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('301','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('302','18','Т����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('303','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('304','18','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('305','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('306','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('307','18','��ʩ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('308','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('309','18','Ǳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('310','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('311','18','��ũ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('312','19','��ɳ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('313','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('314','19','��̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('315','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('316','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('317','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('318','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('319','19','�żҽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('320','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('321','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('322','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('323','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('324','19','¦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('325','19','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('326','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('327','20','�ع���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('328','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('329','20','�麣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('330','20','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('331','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('332','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('333','20','տ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('334','20','ï����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('335','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('336','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('337','20','÷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('338','20','��β��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('339','20','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('340','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('341','20','��Զ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('342','20','��ݸ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('343','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('344','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('345','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('346','20','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('347','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('348','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('349','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('350','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('351','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('352','21','���Ǹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('353','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('354','21','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('355','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('356','21','��ɫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('357','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('358','21','�ӳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('359','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('360','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('361','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('362','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('363','22','��ָɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('364','22','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('365','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('366','22','�Ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('367','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('368','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('369','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('370','22','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('371','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('372','22','�ٸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('373','22','��ɳ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('374','22','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('375','22','�ֶ�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('376','22','��ˮ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('377','22','��ͤ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('378','22','������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('379','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('380','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('381','22','��ɳȺ���ĵ������亣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('382','23','�ɶ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('383','23','�Թ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('384','23','��֦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('385','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('386','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('387','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('388','23','��Ԫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('389','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('390','23','�ڽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('391','23','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('392','23','�ϳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('393','23','üɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('394','23','�˱���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('395','23','�㰲��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('396','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('397','23','�Ű���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('398','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('399','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('400','23','���Ӳ���Ǽ��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('401','23','���β���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('402','23','��ɽ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('403','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('404','24','����ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('405','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('406','24','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('407','24','ͭ�ʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('408','24','ǭ���ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('409','24','�Ͻڵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('410','24','ǭ�������嶱��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('411','24','ǭ�ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('412','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('413','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('414','25','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('415','25','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('416','25','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('417','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('418','25','˼é��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('419','25','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('420','25','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('421','25','��ӹ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('422','25','��ɽ׳������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('423','25','��˫���ɴ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('424','25','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('425','25','�º���徰����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('426','25','ŭ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('427','25','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('428','26','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('429','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('430','26','ɽ�ϵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('431','26','�տ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('432','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('433','26','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('434','26','��֥����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('435','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('436','27','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('437','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('438','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('439','27','μ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('440','27','�Ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('441','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('442','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('443','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('444','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('445','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('446','28','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('447','28','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('448','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('449','28','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('450','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('451','28','��Ҵ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('452','28','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('453','28','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('454','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('455','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('456','28','¤����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('457','28','���Ļ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('458','28','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('459','29','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('460','29','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('461','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('462','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('463','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('464','29','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('465','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('466','29','�����ɹ������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('467','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('468','30','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('469','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('470','30','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('471','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('472','31','��³ľ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('473','31','����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('474','31','��³������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('475','31','���ܵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('476','31','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('477','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('478','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('479','31','�����յ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('480','31','�������տ¶�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('481','31','��ʲ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('482','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('483','31','���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('484','31','���ǵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('485','31','����̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('486','31','ʯ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('487','31','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('488','31','ͼľ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('489','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('490','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('491','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('492','32','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('493','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('494','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('495','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('496','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('497','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('498','32','��԰��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('499','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('500','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('501','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('502','32','�û���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('503','32','��Ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('504','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('505','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('506','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('507','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('508','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('509','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('510','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('511','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('512','32','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('513','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('514','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('515','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('516','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('517','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('518','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('519','33','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('520','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('521','33','��ˮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('522','33','�ƴ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('523','33','�ͼ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('524','33','�뵺��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('525','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('526','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('527','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('528','33','ɳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('529','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('530','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('531','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('532','33','Ԫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('533','34','�����л���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('534','34','������ʥ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('535','34','�����д�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('536','34','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `qb_area` VALUES ('537','34','�����з�˳����','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `qb_jfabout` VALUES ('6','2','�������¿ɵ�{$webdb[postArticleMoney]}������','ֻ����˺�����²ſɵû���,û��˵����²��û���.','0');
INSERT INTO `qb_jfabout` VALUES ('7','2','ɾ�����¿۳�{$webdb[deleteArticleMoney]}������','','0');
INSERT INTO `qb_jfabout` VALUES ('5','1','�û�ע��ɵ�{$webdb[regmoney]}������','','0');
INSERT INTO `qb_jfabout` VALUES ('8','2','���±�����Ϊ�����ɵ�{$webdb[comArticleMoney]}������','','0');
INSERT INTO `qb_jfabout` VALUES ('9','1','ÿ���㿨�ɶһ�{$webdb[MoneyRatio]}������,�㿨����ͨ�����߳�ֵ���.','','0');
INSERT INTO `qb_jfsort` VALUES ('1','��Ա����','0');
INSERT INTO `qb_jfsort` VALUES ('2','��������','0');
INSERT INTO `qb_olpay` VALUES ('33','0','08nyzxrb9a','10','0','1284605041','1','admin','1','0','0','yeepay','0');
INSERT INTO `qb_template` VALUES ('5','ͷ���װ�','7','template/default/none.htm','','0');
INSERT INTO `qb_template` VALUES ('6','�ײ��װ�','8','template/default/none.htm','','0');
INSERT INTO `qb_template` VALUES ('23','�����б�ҳ(�����խ)','2','template/default/list.htm','','0');
INSERT INTO `qb_template` VALUES ('22','����ҳ(�����խ)','3','template/default/bencandy.htm','','0');
INSERT INTO `qb_template` VALUES ('24','��ҳ(�����խ)','1','template/default/index.htm','','0');
INSERT INTO `qb_template` VALUES ('20','����ҳ(������)','3','template/default/bencandy_tpl_2.htm','','0');
INSERT INTO `qb_template` VALUES ('21','����ҳ','9','template/default/alonepage.htm','','0');
INSERT INTO `qb_template` VALUES ('25','ר��ģ��һ(ͷ���Ҫ�װ�)','11','template/special/showsp2.htm','','0');
INSERT INTO `qb_template` VALUES ('26','ר��ģ���(ͷ���Ҫ�װ�)','11','template/special/special_sport.htm','','0');
INSERT INTO `qb_template` VALUES ('27','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/special_car.htm','','0');
INSERT INTO `qb_template` VALUES ('28','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/special_finance.htm','','0');
INSERT INTO `qb_template` VALUES ('29','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/sp1.htm','','0');
INSERT INTO `qb_crontab` VALUES ('2','�������ݿ�','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `qb_crontab` VALUES ('3','���CK�༭�����������ͼ','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `qb_crontab` VALUES ('4','��ո�����','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `qb_moneylog` VALUES ('1','38','5','ע��÷�','1300684107');
INSERT INTO `qb_moneylog` VALUES ('2','39','5','ע��÷�','1303355221');
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
INSERT INTO `qb_buy_config` VALUES ('Info_metakeywords','��Ʒ','');
INSERT INTO `qb_buy_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_buy_config` VALUES ('Info_webname','�󹺲�Ʒ','');
INSERT INTO `qb_buy_config` VALUES ('order_send_mail','1','');
INSERT INTO `qb_buy_config` VALUES ('Info_ReportDB','�Ƿ���Ϣ\r\n�����Ϣ\r\n������Ϣ','');
INSERT INTO `qb_buy_config` VALUES ('module_pre','buy_','');
INSERT INTO `qb_buy_config` VALUES ('Info_TopColor','#FF0000','');
INSERT INTO `qb_buy_config` VALUES ('module_close','0','');
INSERT INTO `qb_buy_content` VALUES ('1','��ͭ��ͭ��','1','11','���Ƹ�','1','0','1288611664','1288611664','1','admin','','http://i00.c.aliimg.com/img/product/70/97/31/70973167.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611665','0','1','43');
INSERT INTO `qb_buy_content` VALUES ('2','����Ǧ������˿','1','11','���Ƹ�','1','0','1288611793','1288611793','1','admin','','http://i01.c.aliimg.com/img/product/33/21/99/33219975.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611794','0','1','43');
INSERT INTO `qb_buy_content` VALUES ('3','�����߷�������-Ǧ�� ����ֱ�� ���ż���','1','21','����','1','0','1288611864','1288611864','1','admin','','http://i02.c.aliimg.com/img/offer/19/39/46/69/19394669-2.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611865','0','1','654');
INSERT INTO `qb_buy_content` VALUES ('4','��20g�ֹ� 20g��ѹ��¯�� �������͸�ʴ','1','33','������','1','0','1288611943','1288611943','1','admin','','http://i04.c.aliimg.com/img/ibank/2010/562/548/203845265_1777718237.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611946','0','1','54');
INSERT INTO `qb_buy_content` VALUES ('5','�󹺲����Բ�� 316L�����Բ��','1','46','����','1','0','1288612043','1288612043','1','admin','','http://i03.c.aliimg.com/img/offer/33/24/15/40/7/332415407-2.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288612044','0','1','43');
INSERT INTO `qb_buy_content` VALUES ('6','�󹺷�ɽ����ֹܳ�','1','59','�޷��','2','0','1288612132','1288612132','1','admin','','http://i00.c.aliimg.com/img/offer/56/28/57/26/7/562857267.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288680842','0','1','434');
INSERT INTO `qb_buy_content` VALUES ('7','�󹺻�ͭ��','1','87','����','7','0','1288612333','1288612333','1','admin','','http://i04.c.aliimg.com/img/offer/50/94/67/51/2/509467512.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300690932','0','1','54');
INSERT INTO `qb_buy_content` VALUES ('8','�󹺴���,������ר�ô���,������','1','87','����','5','0','1288612560','1288612560','1','admin','','http://i01.c.aliimg.com/img/offer2/2010/075/210/91075210_0eb64d7b2064ea5f5cfc34ecfd9156af.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300338705','0','1','434');
INSERT INTO `qb_buy_content_1` VALUES ('1','1','11','1','<p><span style=\"color:#0000ff;\"><span style=\"font-size:15pt;\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://i00.c.aliimg.com/img/product/70/97/31/70973167.jpg\" width=\"768\" height=\"576\" /><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ͭ��ͭ���ŵ� ����й�����Ӧ�÷�Χ. ��Ʒ�㷺������·����·��������ͨѶ���ӵ���ҵ�� ��õ���չ�ԺͿɼӹ���: ���Խ�һ������(ϸ)�ӹ���ͭ�������ֹ������߼�������.�����.������. �����Եľ���Ч��: ��ʹ��ͭ��ͭ�������ͭ�ߣ��ܹ�����Ƚ�Լԭ���ϳɱ����Դ����ƣ�ͭ�����ߡ�ͭ�������Լ�����Ʒ�Ķ�����Ҳ�������ͭ���ߵ������Ʒ�� �����������Ч��ͻ���Ч�� ��ʡ����ϡȱ��ͭ��Դ,����������,�������������ʩ��,���Ṥ���Ͷ�ǿ�ȡ�</span></span></p>\r\n<p><span style=\"font-size:15pt;\"><span style=\"color:#0000ff;\">������˾ӵ���Ƚ����ռ����������豸��ӵ�ж���������������������0.10-��1.60���ͭ��ͭ�߸����Ʒ������ ��������ϣ������������³��ҽ������ں��������ݻ�������ͬ��չ��ս�Ի���ϵ�����ȳ���ӭ���Ա���˾��Ʒ���������������ģ�߱ؽ�Ϊ����������ҵ�����ɱ����߳�Ŭ��!</span></span></p>\r\n','��','43','2010-11-30');
INSERT INTO `qb_buy_content_1` VALUES ('2','2','11','1','<p>��Ǧ���ߣ�˿�����</p>\r\n<p>�� ��ͭ��Ǧ����/˿��Sn99.3CU0.7��</p>\r\n<p>�� 0.3����Ǧ����/˿��Sn99.0Ag0.3Cu0.7��</p>\r\n<p>�� ����ͭ��Ǧ����/˿��Sn96.5Ag3.0Cu0.5��</p>\r\n<p>�� ʵо����Ǧ����/˿��������������</p>\r\n<p>�� С������Ǧ����/˿����1.4%���㣩</p>\r\n<p>&nbsp;</p>\r\n<p>��Ǧ����˿/˿�����ࣺ</p>\r\n<p>�� ��Ǧ����о������/˿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����Ǧ��ϴ������/˿</p>\r\n<p>�� ��Ǧ������/˿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����Ǧˮ���Ժ�����/˿</p>\r\n<p>�� ��Ǧ����������/˿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����Ǧ����ֺ�����/˿</p>\r\n<p>�� ��Ǧ����������/˿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����Ǧ����������/˿</p>\r\n<p>�� ��±�غ�����/˿</p>\r\n<p>&nbsp;</p>\r\n<p>��Ǧ���ߣ�˿���ص㣺</p>\r\n<p>�� ���õ�ʪ���Ե������ȵ���������</p>\r\n<p>�� ���ͻ����趩�����㺬�����Ӳ��ɽ�</p>\r\n<p>�� �������ֲ�������о���޶�����������</p>\r\n<p>�� ���߾��Ȳ���������ٶȿ������</p>\r\n<p>�� ��˿�߾���С�ɣ�0.5--3.0mm���ɶ���</p>\r\n<p>&nbsp;</p>\r\n','��','3','2010-11-27');
INSERT INTO `qb_buy_content_1` VALUES ('3','3','21','1','<div><p>��� ���0.5-15mm ���1000mm ����2000-8000mm ͬʱ�ɰ��û��ṩ�Ĺ��������Ӧ���ֹ���Ǧ�塣 Ҳ���԰��û���Ҫ������Ǧ�Ʒ��������Ʒ���豸��</p>\r\n</div>\r\n','��','4','2010-11-26');
INSERT INTO `qb_buy_content_1` VALUES ('4','4','33','1','<p>Ʒ����20g��ѹ��¯��</p>\r\n<p>&nbsp;</p>\r\n<p>���ԣ��־�ǿ�ȸߡ����������͸�ʴ���������õ���֯�ȶ��ԡ�</p>\r\n<p>&nbsp;</p>\r\n<p>��;����Ҫ���������ѹ�ͳ���ѹ��¯�Ĺ������ܡ��������ܡ������ܡ��������ܵȡ�</p>\r\n<p>&nbsp;</p>\r\n<p>��Ӫ����⾶10-530mm���ں�2-70mm��</p>\r\n<p>&nbsp;</p>\r\n<p>���ȣ�4-11��</p>\r\n<p>&nbsp;</p>\r\n<p>���أ���򡢰�ͷ</p>\r\n<p>&nbsp;</p>\r\n<p>ִ�б�׼��GB/T5310-1995</p>\r\n<p>&nbsp;</p>\r\n<p>�ֻ���ǧ������</p>\r\n<p>&nbsp;</p>\r\n<p>��װ��ʽ������</p>\r\n<p>&nbsp;</p>\r\n<p>��Ӧ��λ���ĳ��������ֹ����޹�˾</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ������2005�꣬ԭ�����ĳ����д��ֹ����޹�˾��</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����˾���꾭Ӫ��򡢰�ͷ�������ȴ�ֳ�������20g��ѹ��¯�ܣ��ֻ��࣬���ȫ���۸��Żݡ���ӭ����û���������Ǣ̸������ָ�������� </p>\r\n<p>&nbsp;</p>\r\n','��','45','2010-11-19');
INSERT INTO `qb_buy_content_1` VALUES ('5','5','46','1','<div><p>껺����ó���Ǿ�Ӫ����ֵ�רҵ��˾��Ŀǰ��˾���żҸۡ�ɽ��̫ԭ��̨���ǹ������¡�<br />\r\n�Ϻ��ȸ���ֳ����������õĹ����ϵ�����Ŷ����ҵ����������˾��Ӫ��ϵ�в���ֲ�Ʒ�㷺Ӧ���ڻ���<br />\r\nʯ�͡���Ȼ������������ҩ��ʳƷ��е����ˮ��ů������ͬʱ����˾����ӹ������ɰ��û�����������<br />\r\n�Ͳģ��������ӹ�����ּ�����Ʒ��<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; ����������˾���š�������һ��������һ���������ϡ���ı��չ���ľ�Ӫ��ּ���������Ĺ��ͻ��ṩ<br />\r\n�����ʵĲ�Ʒ�������ܵ��ķ��񡣱���˾֣�س�ŵ�����ֲ��ʡ����ֹ��Ĳ�Ʒ�����г���ͼ۹�Ӧ����ӭ��<br />\r\nѯ���٣�&nbsp;</p>\r\n</div>\r\n','��','4','2010-11-26');
INSERT INTO `qb_buy_content_1` VALUES ('6','6','59','1','<div><p>��ɽ�����к������������޹�˾<br />\r\n�ҹ�˾λ�����в��������֮�Ƶķ�ɽ����ʯ��ˮ½��ͨ��Ϊ����,��һ�Ҳ����ִ�����Ӫ����ģʽ������רҵ����ֹ�˾��<br />\r\n��˾��Ӫ���ֹ���ͺŲ���ֹܣ���Ʒ�漰200��300ϵ�С�<br />\r\n�ҹ�˾ƾ��������г����������õ�ҵ��ڱ����ۺ���ʽ�ʵ���Լ����õĿ����ϵ���ڲ������ҵ�����˹㷺��֪����,��ҵ������ʢ����</p>\r\n<p>��˾������ֲ������ۡ��ӹ�������Ϊһ��,����רӪ���ֲ���ֹܲ�,,�����ȫ,���в����߿���,<br />\r\n��ӭ������ʿ������Я�ֺ�������˾�����Żݵļ۸��ŻݵĲ��ϡ������ķ���������ͻ���Ҫ��<br />\r\n�߳ϻ�ӭ������Ͽͻ���ѯ�ݹˡ�Ը��������Ѿ��Ϻ�������ͬ��չ��&nbsp;</p>\r\n<p>רҵ�ֻ���Ӧ���ֲ����װ���ù�,��е�ṹ�͹�ҵ�ܲ�<br />\r\n�����ȫ���۸��Żݻ�ӭ������ѯ��лл����</p>\r\n</div>\r\n','��','43','2010-11-27');
INSERT INTO `qb_buy_content_1` VALUES ('7','7','87','1','����з����ƹ����޹�˾-���ڽ��ǡ��������١���������¸���ͷ���������ʻ������������ٽ�ͨ��ݱ�������ȫ��������ҵ�������֪����ҵ��ʼ����1995�꣬����ְ��1800�ˣ�����רҵ������Ա236�ˣ�����ռ�����1200Ķ������22��ERW����Ƶ���������ߣ�6���ȶ�п�����ߣ�12�����������ߣ�4�����������ߣ�1��ʯ�͡���Ȼ���������׹������ߡ���Ʒ��Ҫ����ʯ�͡���Ȼ����ú����ú������е���й�����������������������������¯��ũ�����衢���Ҵ����ܡ��ֹ���ܡ��������ߡ�����ҵ����Ʒִ��API\\SPEC5L��API\\SPEC5CT��ASTA53��EN10217����GB/T9711.1��GP/T9711.2��GB/T3091-2008��GB/T13793-9292��GB/14291-2006���ȹ��������±�׼���ҹ�˾��Ʒͨ��ISO9001��ISO14001��API��PED-CE���¹�AD2000-WO�����ꡢӢ�ꡢ�ձꡢŷ�ˡ����������������ϵҪ�󡣿����ֱ��20mm-426mm����150��֣�����ڸ���ֹ�10��֡�<br />\r\n���ܡ��عܣ�15*15--300*500<br />\r\n��п�ܡ�ţͷ�ơ�����Ƶ���ܡ����κ��ܣ�ֱ��4�֡�6�֡�1�硢1.2�硢1.5�硢2�硢76��89��102��108��114��121��127��133��140��152��159��165��168��180��194��203��219��245��250��273��299��306��325��351��355��377��406��426��530.����4mm-16mm���ں�0.8mm-14mm<br />\r\n�����ֹ�:245��250��273��299��325��351��377��406��426.<br />\r\nʯ����Ȼ���������׹ܣ�57��73��114.3��127��168.3��139.7��177.8��219.1��244.5��273.1.&nbsp;&nbsp;&nbsp; ��񡢱ں񡢿ھ��ɸ��ݿͻ�Ҫ������<br />\r\n','��','43','2010-11-27');
INSERT INTO `qb_buy_content_1` VALUES ('8','8','87','1','<div><p><span style=\"font-size:10pt;font-family:����;\">̫�����ҹ��������к���������Ҫ���أ�Ҳ���ҹ��������ƺ�������������ҵ����<span>1955</span>�꿪ʼ�����ڣ�������ʮ������о����������Ѿ��γ�һ���׶��ص��������պͶ���;����Ʒ�֡�����Ĵ���ϵ�в�Ʒ��̫��������������ḻ���豸���������������ۺ񡢼���ֶ�����<span>,</span>��������·���Ƚ���</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size:small;\"><font size=\"2\"><span style=\"color:red;font-family:����;\">��Ӫ��Ʒ</span><span><span style=\"font-family:Times New Roman;\">:</span></span></font></span></p>\r\n<p><span style=\"font-size:small;\"><font size=\"2\"><span style=\"font-family:����;\">����</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:����;\">ԭ�ϴ���</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:����;\">�繤����</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:����;\">������</span><span><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"font-family:����;\">������</span><span style=\"font-family:Times New Roman;\"><span>.</span></span><span style=\"color:black;font-family:����;\">�ߴ���ԭ�ϴ���</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;YTO/YTO1;</span></span><span style=\"color:black;font-family:����;\">�����ܵ�Ŵ���</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;DT4 /DT4A;DT4E/DT4C;DT8/DT9;</span></span><span style=\"color:black;font-family:����;\">����</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">����</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">��Բ</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">���</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">���ܻ�е�ӹ�</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">��������</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">��Ŵ�����������</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">��Ŵ��������а�</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">��������ֱ��</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">��������</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">�����Ͳ�</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">;</span></span><span style=\"color:black;font-family:����;\">���촿��</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:����;\">������ר�ô���</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:����;\">��ҵ������</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:����;\">��������</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:����;\">����</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:����;\">��о�õ�Ŵ���</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">,</span></span><span style=\"color:black;font-family:����;\">����</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">70</span></span><span style=\"color:black;font-family:����;\">����</span><span style=\"color:black;\"><span style=\"font-family:Times New Roman;\">.</span></span></font></span></p>\r\n</div>\r\n','��','34','2010-11-20');
INSERT INTO `qb_buy_db` VALUES ('1','11','0','1');
INSERT INTO `qb_buy_db` VALUES ('2','11','0','1');
INSERT INTO `qb_buy_db` VALUES ('3','21','0','1');
INSERT INTO `qb_buy_db` VALUES ('4','33','0','1');
INSERT INTO `qb_buy_db` VALUES ('5','46','0','1');
INSERT INTO `qb_buy_db` VALUES ('6','59','0','1');
INSERT INTO `qb_buy_db` VALUES ('7','87','0','1');
INSERT INTO `qb_buy_db` VALUES ('8','87','0','1');
INSERT INTO `qb_buy_field` VALUES ('86','1','����Ҫ��','content','mediumtext','0','-1','ieeditsimp','600','250','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('159','2','�����۸�','sell_price','varchar','20','18','text','50','0','','','����','','1','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('158','2','��������','order_num','int','6','19','text','50','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('142','2','����˵��','content','mediumtext','0','15','textarea','500','70','','','','','0','0','0','0','','','','','0','<br><select name=\'autoSelect\' onchange=\"changeaddContent(this);\">\r\n<option value=\'\'>(���ô��֣���������д������æ��) </option>\r\n<option value=\'������һ�ݱȽ���ϸ�Ĳ�Ʒ���˵����лл��\'>������һ�ݱȽ���ϸ�Ĳ�Ʒ���˵����лл��</option> \r\n<option value=\'�������Դ˲�Ʒ�ǳ�����������\'>�������Դ˲�Ʒ�ǳ�����������</option> \r\n<option value=\'�������Դ˲�Ʒ�ж�����������\'>�������Դ˲�Ʒ�ж�����������</option> \r\n</select>\r\n<SCRIPT language=\"javascript\">\r\n            function changeaddContent(autoSelect){\r\n			 	if (autoSelect.selectedIndex !=0){			 		\r\n			 		document.getElementById(\"atc_content\").value = autoSelect[autoSelect.selectedIndex].value;\r\n					autoSelect.selectedIndex=0;\r\n			 	}\r\n				\r\n			 }\r\n	     </SCRIPT>');
INSERT INTO `qb_buy_field` VALUES ('154','1','������','order_num','int','7','8','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('153','1','������λ','my_units','varchar','10','9','text','50','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('145','2','��ϵ�绰','ask_phone','varchar','20','8','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('144','2','��ϵ������','ask_username','varchar','20','9','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('146','2','��ϵ�ֻ�','ask_mobphone','varchar','15','7','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('147','2','��ϵ����','ask_email','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('148','2','��ϵQQ','ask_qq','varchar','11','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('156','1','��ֹ����','end_day','varchar','30','5','time','0','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('157','2','���۱���','ask_title','varchar','100','20','text','300','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_buy_field` VALUES ('161','2','��ϣ��','hope_reply','varchar','25','14','time','0','0','','','֮ǰ�ظ�','','0','0','0','0','','','','','0','');
INSERT INTO `qb_buy_module` VALUES ('2','0','���۵�ģ��','1','','','','0','0','a:4:{s:4:\"list\";s:12:\"joinlist.htm\";s:4:\"show\";s:12:\"joinshow.htm\";s:4:\"post\";s:8:\"join.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `qb_buy_module` VALUES ('1','0','��ģ��','4','','','','1','0','');
INSERT INTO `qb_buy_pic` VALUES ('1','1','11','0','1','0','http://i00.c.aliimg.com/img/product/70/97/31/70973167.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('2','2','11','0','1','0','http://i01.c.aliimg.com/img/product/33/21/99/33219975.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('3','3','21','0','1','0','http://i02.c.aliimg.com/img/offer/19/39/46/69/19394669-2.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('4','4','33','0','1','0','http://i04.c.aliimg.com/img/ibank/2010/562/548/203845265_1777718237.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('5','5','46','0','1','0','http://i03.c.aliimg.com/img/offer/33/24/15/40/7/332415407-2.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('6','6','59','0','1','0','http://i00.c.aliimg.com/img/offer/56/28/57/26/7/562857267.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('7','7','87','0','1','0','http://i04.c.aliimg.com/img/offer/50/94/67/51/2/509467512.310x310.jpg','');
INSERT INTO `qb_buy_pic` VALUES ('8','8','87','0','1','0','http://i01.c.aliimg.com/img/offer2/2010/075/210/91075210_0eb64d7b2064ea5f5cfc34ecfd9156af.310x310.jpg','');
INSERT INTO `qb_buy_sort` VALUES ('1','0','�ֲ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('2','0','�ְ��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('3','0','���','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('4','0','�к��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('5','0','�ֹ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('6','0','�͸�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('7','0','�ظ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('8','0','�����','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('9','0','¯��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('10','0','����','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('11','1','���Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('12','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('13','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('14','1','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('15','1','�߲�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('16','1','�������Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('17','1','�������Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('18','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('19','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('20','1','���߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('21','2','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('22','2','�Ȱ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('23','2','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('24','2','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('25','2','��п���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('26','2','��Ϳ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('27','2','���ư��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('28','2','�ͺϽ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('29','2','�������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('30','2','����п���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('31','2','��ϴ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('32','2','��Ӳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('33','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('34','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('35','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('36','3','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('37','3','��ǿ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('38','3','�͸�ʴ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('39','3','���������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('40','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('41','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('42','3','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('43','3','��п��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('44','3','��Ϳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('45','3','���߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('46','4','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('47','4','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('48','4','ģ�߰�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('49','4','��¯��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('50','4','��Ե��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('51','4','����ƽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('52','4','���ư�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('53','4','�ͺϽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('54','4','�̰�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('55','4','̼���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('56','4','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('57','4','��ƽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('58','4','��ĥ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('59','5','�޷��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('60','5','��п��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('61','5','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('62','5','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('63','5','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('64','5','ֱ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('65','5','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('66','5','��¯��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('67','5','��ī��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('68','5','���͹�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('69','5','�����ù�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('70','5','�ṹ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('71','5','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('72','5','���ּ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('73','6','H�͸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('74','6','�۸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('75','6','���ָ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('76','6','�Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('77','6','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('78','6','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('79','6','�ع�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('80','6','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('81','6','���ȱ߽Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('82','6','�͸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('83','6','���Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('84','6','����Բ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('85','6','̼Բ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('86','6','�ȱ߽Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('87','7','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('88','7','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('89','7','��и�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('90','7','̼���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('91','7','���ɸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('92','7','�߹���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('93','7','ģ�߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('94','7','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('95','7','���ָ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('96','7','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('97','7','�͸�ʴ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('98','7','��ĥ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('99','7','̼����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('100','7','̼�ظ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('101','7','���ȸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('102','7','�����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('103','7','��ģ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('104','7','�ṹ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('105','8','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('106','8','����ֹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('107','8','������߲�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('108','8','����ִ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('109','8','�����Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('110','8','����ֽǸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('111','8','����ֲ۸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('112','8','����ֱ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('113','8','�������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('114','8','�ź���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('115','8','��˿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('116','8','Ӳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('117','8','���ȸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('118','8','��˿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('119','9','��ʯ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('120','9','ú��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('121','9','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('122','9','�ϸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('123','9','��̿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('124','9','ú̿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('125','9','�ͻ����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('126','9','̼�ز���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('127','9','��ī����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('128','9','�ֶ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('129','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('130','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('131','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('132','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('133','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('134','9','��ĥ����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('135','9','���ϸ���Ʒ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('136','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('137','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('138','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('139','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('140','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('141','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('142','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('143','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('144','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('145','10','��ɫ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('146','10','ͭ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('147','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('148','10','п','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('149','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('150','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('151','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('152','10','Ǧ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('153','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('154','10','ϡ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_buy_sort` VALUES ('155','10','�����','1','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','guijinshu','0');
INSERT INTO `qb_hy_company` VALUES ('17','����Э������Ƽ����޹�˾','','���Ƹ�,����,����,�Ȱ��,������,����,�޷��,H�͸�,����,������','1','admin','3','0','0','1282284007','0','0','homepage/logo/1/1_20101102091111_ybuoq.gif','','1','','1282284007','455','1','1282719160','0','&nbsp;&nbsp;&nbsp;&nbsp;PHP168���й����ȵĿ�ԴCMSƽ̨������ṩ�̣�����רע�ڻ�����������ƽ̨����������������з�����˾��Ա70%����Ϊ������Ա��ӵ���й�רҵ��WebӦ��ƽ̨�����з��Ŷӣ�PHP168ӵ�й㷺�����Ӱ������Ϊ����Ӧ����㷺��ϵͳ֮һ��Ҳ���й��Ϸ�PHP�������Ŀ�Դϵͳ�ṩ����<br /><br /><a style=\"FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #990000\">��չ����</a><br />&nbsp;&nbsp;&nbsp;&nbsp;��2003��10��PHP168 V1.0�����������γ�������վ����Vϵ�к�����ý�屨���Ż����������������Sharpϵ�У����Sϵ�У���Sϵ����ǧ�򼶺�������Ӧ��ý�屨��������վȺӦ�����γ����õ�Ʒ�ƿڱ����ԡ�����+ϵͳ+ģ��+������ܹ���ϵ����Ϊ���ڸ����ܡ�ģ�黯�Ŀ�ԴPHPϵͳ���漰������������ý�������Ż���������ҵ��Ϣ����վȺϵͳ����������B2B����ҵ�ڲ�OA�Ⱥ������ݸ߶˻�����Ӧ�ã���Ϊ��ʮ�����û��ṩ��Ӧ��ƽ̨�� ','0','0','0','0','���˶�����ҵ','������','100','2007-10-02','�㶫ʡ�����������','1111','000222','CMS��վ���� ����������� �ط��Ż����� ������Ϣϵͳ','PHP�˲�','���롢���Լ��������','����','�ܲ�','0','020','15920222222','0106665555','0342@fdsg.cn','http://112','65284322','125@erw.cn','','1451','','0','1','company/renzheng/1_20101016111001_krbfo.jpg','company/renzheng/1_20101016111026_ienzi.jpg','company/renzheng/1_20101016111030_dbedh.jpg','company/renzheng/1_20101016111032_g2s7m.jpg','company/renzheng/1_20101016111035_nlvue.jpg','');
INSERT INTO `qb_hy_company` VALUES ('22','���ж���ʵҵ��˾','','���Ƹ�,����,������,ģ�߰�,�޷��,H�͸�,����,������','27','test1','0','0','0','1288661741','0','0','homepage/logo/1/27_20101102091141_e1uuj.jpg','','1','','1288661741','5','1','1288663982','0','    ��˾������1992�꣬ռ��5000ƽ���ף��������8900ƽ���ף��Ը��ӻ�е����ľ���ģ�ͼ���������Ϊ��,�����жͼ��Ļ�е�ӹ���Ӳ�ʺϽ𹤾ߵ�ǥ����   ��Ӧ��е�������Ħ�䣩�ͼ������ص�������𹤾ߡ�ǥ��Ӳ�ʺϽ𹤾ߡ����泵���ߡ�G�ּС�����Ħ�г����ּ��������ͼ���','0','0','0','0','���徭Ӫ','������','999','2010-11-03','�㶫ʡ','','','�ֲ�','��','��е����ҵ�豸','����','','0','020555444','','','gfds@afds.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('23','������۴����Ϫ������𹤾߳�','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','28','test2','0','0','0','1288662180','0','0','homepage/logo/1/logo_28_20101102091100_6jeu7.jpg','','1','','1288662180','19','1','1288663984','0','    ������һ��ӵ��ʮ������ʷ��רҵ����԰�ֹ��ߵ�Ƭ��ϵ����֦����Ƭ���ĳ��� ��  ���������Ƽ�������ͨ������������Ա�Ŀ̿๥�أ��ֿ������������Ƚ�ˮƽ�ĸ�Ӳ�ȣ������Ե�ϵ�в�Ʒ����������˹��ڵ�Ƭ����������ûӲ�ȣ���Ӳ��û���Եļ������֣��������˵�Ƭ��ʹ�������� �õ��ܶ��������̵��׿ϣ�ֱ�ӳ���ŷ�޺�������  ������Ʒ�ɽ��ϵ���Ʒ��������ȫ�߲�Ʒһ���������������������ӹ������������ܵõ��������󻯡��ֽ߳����������磬���������ǽ������������ڴ����Ĺ��١�','0','0','0','0','���徭Ӫ','������','900','2010-11-13','����','','','����','��','��е����ҵ�豸','ţ��','','0','0205544447','','','fds@ds.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('24','�Ͼ�����ֽ��ģ�����޹�˾','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','29','test3','0','0','0','1288662327','0','0','homepage/logo/1/29_20101102091127_bcl6e.jpg','','1','','1288662327','1','1','1288663984','0','   �Ͼ�����ֽ��ģ�����޹�˾�����й���װ�¼�������������˾�����齨���ɣ��������°�����˾��ֽ��ģ�ܼ����о����豸���졢��Ʒ�ƹ��רҵ��˾�����ж��������ʸ񡢿ơ�����óһ�廯�������͹ɷ�����ҵ��   ��˾Χ��ֽ��ģ�ܼ����������м�����������ģ�����ġ���е�ӹ�������Ʒʾ���������̰�װ���Ȳ��ţ�����ֽ�ܼ���������רҵ���̼�����Առ35%���߼�����ʦ3��(����һ������ֽ��ģ�ܷ��������⹱�ס����ܹ���Ժ����������䷢֤��)������ʦ8�ˣ����������ۺ���ʩ��ȫ�����ж��������Ŀ����о�������ʾ�����������۵ľ���ʵ�塣���ѹ�˾�����˰�����˾��������˲ţ�ȫ��̳С������о���ȫ�濪����ֽ��ģ�ܼ�������ˣ���ֽ��ģ�����򱣳��˼�����ȫ�桢�豸���Ƚ���Ʒ������ȫ�����ƣ�','0','0','0','0','���徭Ӫ','������','600','2010-11-06','�Ϻ�','','','����Ļǽ','����','��е����ҵ�豸','����','','0','0204448554','','','fdsg@sda.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('25','�Ϻ���������������޹�˾','','���Ƹ�,����,����,�Ȱ��,������,����,�޷��,H�͸�,����,������','30','test4','0','0','0','1288662567','0','0','homepage/logo/1/30_20101102091127_ibn2r.jpg','','1','','1288662567','26','1','1288663985','0','    �㽭˫������������޹�˾�����й�רҵ�����������ϵ�в�Ʒ����ͷ��ҵ���㽭ʡ��AAA�����غ�ͬ����������ҵ���㽭ʡ���¼�����ҵ��ISO9001��QS9000������ϵ��֤��λ�� ��˾��һ֧ǿ�����²�Ʒ�з���������Ƶ�������ʩ������Ϊ�㽭ʡ�������ġ���Ʒ50%���ϳ��ڵ¹�����������ձ����¼��¡����������ô�̨���20������Һ͵����� �Ѿ����������õĹ���������   ��˾Ŀǰ��Ҫ��Ʒ�У�SFϵ����������С�JF˫������С�FB��ͭ��С�JDB��Ƕ��������е�12��ϵ��16000���Ʒ�֣���Ӧ�����¡����ٵȸ��ֳ��ϵ�ʹ�á���˾�����Ƶļ���豸����֤100%�ĺϸ��Ʒ�ṩ���˿ͣ���ÿλ��ZOB��','0','0','0','0','���徭Ӫ','������','600','2010-11-04','�Ϻ�','','','����','��','��е����ҵ�豸','����','','0','02054477877','','','fds@sda.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('26','��������������޹�˾','','���Ƹ�,����,����,������,����,H�͸�,����,������,��ʯ','31','test5','0','0','0','1288662786','0','0','homepage/logo/1/31_20101102091106_ijzou.jpg','','1','','1288662786','0','1','1288663985','0','    ��˾��רҵ����������𡢻���������ܽ���Ʒ�����̼��Ȳ�Ʒ�ĳ�����������ҵ�����й����翪��DIY����������ϵ�в�Ʒ��֪����ҵ����ҵ��������ʼ�ռ��������Ч����֮·��ǿ��ȫ��������Ч��Ӫ��ע����ҵ����Ͳ�Ʒ���󣬲�ƷԶ��������أ���ù�����ͻ��������������ڷ׷����ӵ��г������У�ʼ�ռ��س��š����ڴ��¡�  ��˾��������չ������г���չ���ƣ������졢������������𡢱�׼�����Ǳ�׼�������̼����ܽ���Ʒ����������Ȳ�Ʒ����Ϊ�����г���飬����DIY���������װ���γ�30��ϵ�н�1000��Ʒ�֣�ƾ���ϸ���������ͳ��ڵ���������Ʒ�ڹ����г���������ŷ�����������г����γ����õ�������ͷ���г�ռ��','0','0','0','0','���徭Ӫ','������','300','2010-11-06','����','','','��','�Ҳ�','��е����ҵ�豸','����','','0','0204544744','','','fds@fsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('27','��������������綯���߳�','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','32','test6','0','0','0','1288662947','0','0','homepage/logo/1/32_20101102091147_9pqhn.jpg','','1','','1288662947','1','1','1288663986','0','  �㽭˫������������޹�˾�����й�רҵ�����������ϵ�в�Ʒ����ͷ��ҵ���㽭ʡ��AAA�����غ�ͬ����������ҵ���㽭ʡ���¼�����ҵ��ISO9001��QS9000������ϵ��֤��λ�� ��˾��һ֧ǿ�����²�Ʒ�з���������Ƶ�������ʩ������Ϊ�㽭ʡ�������ġ���Ʒ50%���ϳ��ڵ¹�����������ձ����¼��¡����������ô�̨���20������Һ͵����� �Ѿ����������õĹ���������   ��˾Ŀǰ��Ҫ��Ʒ�У�SFϵ����������С�JF˫������С�FB��ͭ��С�JDB��Ƕ��������е�12��ϵ��16000���Ʒ�֣���Ӧ�����¡����ٵȸ��ֳ��ϵ�ʹ�á���˾�����Ƶļ���豸����֤100%�ĺϸ��Ʒ�ṩ���˿ͣ���ÿλ��ZOB���Ĺ˿����⡣   �����ϸ��� ISO-TS16949 ��������ϵ����ԭ����Ͷ�롢ģ�����졢���Ρ��սᡭ��ֱ������ȫ���̼��Կ��ơ����������Ƚ����Լ죬רְ������Ա����Ѳ�ؼ죬ÿ�����򶼽����ϸ�ѹأ�ÿ�����������оݿɲ顣ͬʱ���Ƚ��ļ���豸��֤�˲�Ʒ100%�ĳ����ϸ��ʣ�','0','0','0','0','���徭Ӫ','������','300','2010-11-04','','','','','','��е����ҵ�豸','����','','0','020544777','','','fda@dsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('28','��ͼ����Ƽ������ڣ����޹�˾','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','33','test7','0','0','0','1288663129','0','0','homepage/logo/1/33_20101102091149_ofqqf.jpg','','1','','1288663129','1','1','1288663987','0','   רҵ����һ�廯��ӡ��ӡˢ�Ĳ���ƿ�������������̶�����ҵ����˾���ж����Ľ�����Ȩ���ṩ�˺�����ֱ�����ɵ�ó��ƽ̨����˾ӵ��5000ƽ���׵��ִ������������ȫ��յ��޳������¡���ʪ���������䡣�����豸ȫ�����õ��Ի��Զ����ơ��Ƚ��������������̣���֤�˲�Ʒ׿Խ��Ʒ�ʣ���������2003��ͨ����ISO9001-2000����������ϵ��֤����˾ʼ����ѭ���Կͻ�Ϊ������Ʒ��ȡʤ���Է������ȡ��ķ�չ�����ֲ�Ʒ��רҵ����ϸ�»��ľ�Ӫģ�⡣ͨ������Ŭ������и׷�󣬳������ͻ��ĸ��Ի�Ҫ��Ӯ���˿ͻ��ĳ���Ͽ���϶���ʹ��˾��Ϊ����ͬ�������֪���ȵĹ�Ӧ�̡�','0','0','0','0','���徭Ӫ','������','600','2010-11-13','����','','','','','��е����ҵ�豸','����','','0','02087744454','','','dfsafs@dsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('29','������ʵҵ��չ���޹�˾','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','34','test8','0','0','0','1288663299','0','0','homepage/logo/1/34_20101102101139_apfdl.jpg','','1','','1288663299','3','1','1288663987','0','    һ�Ҽ���Ʒ��������ơ�������������һ�壬���������𡢵��ɡ����ѵ������з������������ۣ�ӵ�н����ھ�ӪȨ�ĸ߿Ƽ���Ӫ��ҵ����˾ʵ���ۺ��з��������죬���ù����Ƚ��Ĺ���ģʽ����Ʒ������Ӳ�������������ƣ��ۺ�������ʡ� ��������˾��ӵ�г������600ƽ���ף��̶��ʲ�500����Ԫ��Ա��60���ˣ����й��̼�����Ա��10�ˣ������۶�500����Ԫ����˾��ͨ��ISO9001-2000������ϵ��֤������Ŀǰ���ƹ�ISO/TS16949-2002��ϵ�����С���һ���걸�Ĳ�Ʒ��������豸�ͼ���Ա���飬ȷ����Ʒ�������ȶ��ɿ������û����нϸߵ����������� ','0','0','0','0','���徭Ӫ','������','100','','������','','','���','����','��е����ҵ�豸','����','','0','02054787741','','','fsgfd@dsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('30','�������������������ι�˾','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','35','test9','0','0','0','1288663462','0','0','homepage/logo/1/35_20101102101122_jvufs.jpg','','1','','1288663462','1','1','1288663988','0','    �������������������ι�˾�ش��㽭ʡ�����أ������Ϻ�80������ຼ��65������ڷ羰�������ϱ����羰�������������������뻦�����ٹ�·������ڴ�7���ˮ½��ͨʮ�ֱ�������˾��ȫ��Ա��ʮ��������ĬĬ�����£�������ӵ���ʲ�300����Ԫ��ռ�����30000ƽ���ף����г���20000��ƽ���ף����������豸120��̨�ף�����ȫ��������豸���Ƚ�������������ϵ����Ҫ�豸��250KG��Ƶ��¯3�׼���ģ����������ˮ��������10�ּ����ּ��ȴ���¯������������ӹ��豸80��̨��Ŀǰ��ҵԱ��130�������и��๤�̼�����Ա38��','0','0','0','0','���徭Ӫ','������','300','2010-11-06','�㽭ʡ������','','','��','����','��е����ҵ�豸','����','','0','02045789654','','','safsa@dfsa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('31','��ݸ�л����������������޹�˾','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','36','test10','0','0','0','1288663617','0','0','homepage/logo/1/36_20101102101157_jugc3.jpg','','1','','1288663617','28','1','1288663988','0','     ��һ�Ҽ��������з������ۺͷ�����һ����ۺ��͵���������ҵ����˾λ�ڹ㶫ʡ��ݸ�лƽ��򣬾�ݸ����ٹ�·3�����ݸ��վ10�������ң���ͨʮ�ֱ�ݡ���˾ռ��2000ƽ���ף�ӵ��ȫ��һ��������������豸����Ŀǰ������ѡ����ʮ�������µ�CNC�����Զ����ɻ��������������߾���С0.08MM-10MM���Ƕ�ݸ���׼�ӵ�п�������10mm�����߾���CNC���ɻ�е�����ɴ�������ʽ�����ػ�¯����ϴ�������ɼ���豸������ȫ���磺����ԪͶӰ�ǡ�Ť�����Ի���ѹ�������Ի���������Ի��ȣ�ȫ����Ч�ؿ����˵��ɵ�������������������Ʒ�и��ྫ�ܵ��ɣ�������í������˿������ѹ������Ʒ�㷺���ڵ��ӡ���������ߡ����ߡ��ľߡ�ͯ�������г�����Ʒ������Ʒ�������ߡ����������ӡ�����칫�豸�������豸�����ཻͨ���ߵȡ�����˾�������ĵ��ɲ�Ʒ�磺��������ɡ����ϵ��ɡ��������ɡ���λ���ɡ����浯�ɵ� ������������ҵ��','0','0','0','0','���徭Ӫ','������','350','2010-11-04','��ݸ��','','','�ֲ�','��','��е����ҵ�豸','����','','0','02054484444','','','fsdafd@sa.cn','','','','','','','0','1','','','','','','');
INSERT INTO `qb_hy_company` VALUES ('32','���ݽ��Ҷ������Ʒ���޹�˾','','���Ƹ�,����,������,����,�޷��,H�͸�,����,������,��ʯ,����','37','test11','0','0','0','1288663816','0','0','homepage/logo/1/37_20101102101116_xmwaa.jpg','','1','','1288663816','4','1','1288663989','0','    ǰ�����ݺ�������棩���ɳ�������רҵ�������桢���浯�����ĳ��ҡ�����ʮ���꣬һ��һ��ӡ����չ�����죬ӵ�г�����ǧ��ƽ���ף������Ƚ��ĵ��ɡ����������߼�ѹ���豸�� �������ճ�Ⱥ�������������ˣ���Ʒ�����о���Ա ���ϸ��������ϵ���ϸ���ISO9001��2000������ϵ��ISO14000������ϵ��׼���У���Ʒͨ���й�����������֤������CFR1633��׼��Ӣ��BS5852��׼��Ϊ�������缶Ʒ�Ʋ�Ʒ�м�ʵ��֤��Ŀǰ�����Ҷ��˾�����Ĵ��桢����о��Ʒ�ɾ�ѹ����װ��������������ؿ��̵����估�ִ���ƾ������������浯�ɳ���������صľ��飬��ȫ�������ƴ���֮�������������о���Ա�����о���ƣ���������й�����ĸ߶�Ʒ�ƴ��桪�������Ҷ��ϵ�в�Ʒ��','0','0','0','0','���徭Ӫ','������','200','2010-11-04','����','','','����','������','��е����ҵ�豸','����','','0','0205447777','','','dfsaf@dsa.cn','','','','','','','0','1','','','','','','');
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
INSERT INTO `qb_hy_config` VALUES ('Info_webname','��ҳģ��','');
INSERT INTO `qb_hy_config` VALUES ('vipselfdomain','','');
INSERT INTO `qb_hy_config` VALUES ('vipselfdomaincannot','','');
INSERT INTO `qb_hy_config` VALUES ('gg_map_api','','');
INSERT INTO `qb_hy_home` VALUES ('1','admin','vip_1','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";s:1:\"4\";s:7:\"visitor\";s:2:\"10\";s:8:\"newslist\";s:2:\"10\";s:10:\"friendlink\";s:2:\"10\";s:10:\"Mguestbook\";s:2:\"10\";s:9:\"Mnewslist\";s:2:\"10\";s:8:\"Mvisitor\";s:2:\"40\";}','','','0','0	127.0.0.1	1305595243\r\n9	fdsafsdw	1282633598','455','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:9;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:10;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";s:1:\"3\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('30','test4','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1290389920','26','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('29','test3','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('28','test2','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1290389819','19','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('27','test1','red','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";s:1:\"4\";s:7:\"visitor\";s:2:\"10\";s:8:\"newslist\";s:2:\"10\";s:10:\"friendlink\";s:2:\"10\";s:10:\"Mguestbook\";s:2:\"10\";s:9:\"Mnewslist\";s:2:\"10\";s:8:\"Mvisitor\";s:2:\"40\";}','','','0','','5','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"6\";s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"3\";s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('31','test5','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','0','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('32','test6','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('33','test7','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('34','test8','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1303349703\r\n1	admin	1303349692','3','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('35','test9','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('36','test10','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	127.0.0.1	1305595056','28','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_home` VALUES ('37','test11','default','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1294113347','4','a:8:{i:0;a:4:{s:5:\"title\";s:8:\"��˾��ҳ\";s:3:\"url\";s:1:\"?\";s:5:\"order\";i:8;s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";i:7;s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"��˾����\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";i:6;s:6:\"ifshow\";i:1;}i:3;a:4:{s:5:\"title\";s:8:\"��Ӧ��Ϣ\";s:3:\"url\";s:7:\"?m=sell\";s:5:\"order\";i:5;s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"����Ϣ\";s:3:\"url\";s:6:\"?m=buy\";s:5:\"order\";i:4;s:6:\"ifshow\";i:1;}i:5;a:4:{s:5:\"title\";s:8:\"ͼƬչʾ\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";i:3;s:6:\"ifshow\";i:1;}i:6;a:4:{s:5:\"title\";s:6:\"���Ա�\";s:3:\"url\";s:6:\"?m=msg\";s:5:\"order\";i:2;s:6:\"ifshow\";i:1;}i:7;a:4:{s:5:\"title\";s:8:\"��ϵ����\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";i:1;s:6:\"ifshow\";i:1;}}','');
INSERT INTO `qb_hy_picsort` VALUES ('1','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','27','test1','0','1288661741','2','');
INSERT INTO `qb_hy_picsort` VALUES ('2','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','27','test1','0','1288661741','1','');
INSERT INTO `qb_hy_picsort` VALUES ('3','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','28','test2','0','1288662180','2','');
INSERT INTO `qb_hy_picsort` VALUES ('4','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','28','test2','0','1288662180','1','');
INSERT INTO `qb_hy_picsort` VALUES ('5','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','29','test3','0','1288662327','2','');
INSERT INTO `qb_hy_picsort` VALUES ('6','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','29','test3','0','1288662327','1','');
INSERT INTO `qb_hy_picsort` VALUES ('7','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','30','test4','0','1288662567','2','');
INSERT INTO `qb_hy_picsort` VALUES ('8','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','30','test4','0','1288662567','1','');
INSERT INTO `qb_hy_picsort` VALUES ('9','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','31','test5','0','1288662786','2','');
INSERT INTO `qb_hy_picsort` VALUES ('10','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','31','test5','0','1288662786','1','');
INSERT INTO `qb_hy_picsort` VALUES ('11','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','32','test6','0','1288662947','2','');
INSERT INTO `qb_hy_picsort` VALUES ('12','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','32','test6','0','1288662947','1','');
INSERT INTO `qb_hy_picsort` VALUES ('13','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','33','test7','0','1288663129','2','');
INSERT INTO `qb_hy_picsort` VALUES ('14','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','33','test7','0','1288663129','1','');
INSERT INTO `qb_hy_picsort` VALUES ('15','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','34','test8','0','1288663299','2','');
INSERT INTO `qb_hy_picsort` VALUES ('16','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','34','test8','0','1288663299','1','');
INSERT INTO `qb_hy_picsort` VALUES ('17','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','35','test9','0','1288663462','2','');
INSERT INTO `qb_hy_picsort` VALUES ('18','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','35','test9','0','1288663462','1','');
INSERT INTO `qb_hy_picsort` VALUES ('19','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','36','test10','0','1288663617','2','');
INSERT INTO `qb_hy_picsort` VALUES ('20','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','36','test10','0','1288663617','1','');
INSERT INTO `qb_hy_picsort` VALUES ('21','0','��Ʒͼ��','��¼��Ʒ�෽��ͼƬ����','37','test11','0','1288663816','2','');
INSERT INTO `qb_hy_picsort` VALUES ('22','0','����˵��','����֤�飬��֤�飬Ӫҵִ��','37','test11','0','1288663816','1','');
INSERT INTO `qb_hy_sort` VALUES ('1','0','�ֲ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('2','0','�ְ��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('3','0','���','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('4','0','�к��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('5','0','�ֹ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('6','0','�͸�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('7','0','�ظ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('8','0','�����','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('9','0','¯��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('10','0','����','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('11','1','���Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('12','1','����','0','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('13','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('14','1','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('15','1','�߲�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('16','1','�������Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('17','1','�������Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('18','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('19','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('20','1','���߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('21','2','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('22','2','�Ȱ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('23','2','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('24','2','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('25','2','��п���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('26','2','��Ϳ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('27','2','���ư��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('28','2','�ͺϽ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('29','2','�������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('30','2','����п���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('31','2','��ϴ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('32','2','��Ӳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('33','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('34','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('35','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('36','3','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('37','3','��ǿ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('38','3','�͸�ʴ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('39','3','���������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('40','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('41','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('42','3','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('43','3','��п��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('44','3','��Ϳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('45','3','���߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('46','4','����','0','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('47','4','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('48','4','ģ�߰�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('49','4','��¯��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('50','4','��Ե��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('51','4','����ƽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('52','4','���ư�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('53','4','�ͺϽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('54','4','�̰�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('55','4','̼���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('56','4','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('57','4','��ƽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('58','4','��ĥ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('59','5','�޷��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('60','5','��п��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('61','5','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('62','5','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('63','5','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('64','5','ֱ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('65','5','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('66','5','��¯��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('67','5','��ī��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('68','5','���͹�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('69','5','�����ù�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('70','5','�ṹ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('71','5','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('72','5','���ּ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('73','6','H�͸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('74','6','�۸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('75','6','���ָ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('76','6','�Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('77','6','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('78','6','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('79','6','�ع�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('80','6','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('81','6','���ȱ߽Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('82','6','�͸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('83','6','���Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('84','6','����Բ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('85','6','̼Բ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('86','6','�ȱ߽Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('87','7','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('88','7','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('89','7','��и�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('90','7','̼���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('91','7','���ɸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('92','7','�߹���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('93','7','ģ�߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('94','7','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('95','7','���ָ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('96','7','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('97','7','�͸�ʴ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('98','7','��ĥ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('99','7','̼����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('100','7','̼�ظ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('101','7','���ȸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('102','7','�����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('103','7','��ģ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('104','7','�ṹ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('105','8','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('106','8','����ֹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('107','8','������߲�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('108','8','����ִ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('109','8','�����Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('110','8','����ֽǸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('111','8','����ֲ۸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('112','8','����ֱ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('113','8','�������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('114','8','�ź���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('115','8','��˿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('116','8','Ӳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('117','8','���ȸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('118','8','��˿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('119','9','��ʯ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('120','9','ú��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('121','9','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('122','9','�ϸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('123','9','��̿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('124','9','ú̿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('125','9','�ͻ����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('126','9','̼�ز���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('127','9','��ī����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('128','9','�ֶ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('129','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('130','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('131','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('132','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('133','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('134','9','��ĥ����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('135','9','���ϸ���Ʒ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('136','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('137','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('138','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('139','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('140','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('141','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('142','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('143','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('144','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('145','10','��ɫ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('146','10','ͭ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('147','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('148','10','п','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('149','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('150','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('151','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('152','10','Ǧ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('153','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('154','10','ϡ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_hy_sort` VALUES ('155','10','�����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
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
INSERT INTO `qb_news_config` VALUES ('Info_webname','��ѶƵ��','');
INSERT INTO `qb_news_content` VALUES ('1060','11��1�պ����ֲ��г��ͺϽ��۸�����','','4','0','�����ֲļ۸�����','1','1','0','1288588437','1288588437','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579066','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1061','11��1�չ������ֲ��г����Ƹּ۸�����','','4','0','�����ֲļ۸�����','1','1','0','1288588439','1288588439','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579066','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1062','11��1�չ������ֲ��г����ݼ۸�����','','4','0','�����ֲļ۸�����','2','1','0','1288588441','1288588441','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579069','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1063','11��1�չ������ֲ��г�Բ�ּ۸�����','','4','0','�����ֲļ۸�����','2','1','0','1288588444','1288588444','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579068','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1064','11��1�չ������ֲ��г��Ǹּ۸�����','','4','0','�����ֲļ۸�����','2','1','0','1288588446','1288588446','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579068','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1065','11��1�չ������ֲ��г��۸ּ۸�����','','4','0','�����ֲļ۸�����','1','1','0','1288588448','1288588448','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302579067','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1066','10��29��ʯ��ׯ�г��Ⱦ�۸�����ȶ�','','38','0','�����ֲ�ÿ�շ���','0','1','0','1288588472','1288588472','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1067','10��29�ձ����г��������۸�����','','38','0','�����ֲ�ÿ�շ���','1','1','0','1288588475','1288588475','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578481','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1068','10��29�ձ����г��к��۸�����','','38','0','�����ֲ�ÿ�շ���','1','1','0','1288588480','1288588480','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578480','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1069','10��29�������г������۸�����','','38','0','�����ֲ�ÿ�շ���','1','1','0','1288588486','1288588486','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578480','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1070','10��29�ղ����г���п���ɽ��ȶ�','','38','0','�����ֲ�ÿ�շ���','1','1','0','1288588496','1288588496','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578479','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1071','10��29���Ϻ��г��������ּ۸�ƽ��','','38','0','�����ֲ�ÿ�շ���','0','1','0','1288588498','1288588498','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1072','10��29�������г��к��۸�����','','38','0','�����ֲ�ÿ�շ���','0','1','0','1288588502','1288588502','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1073','10��29�հ�ɽ�г��Ⱦ�۸������������','','38','0','�����ֲ�ÿ�շ���','0','1','0','1288588510','1288588510','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1074','10��29�������г������Ͳļ۸�����','','38','0','�����ֲ�ÿ�շ���','1','1','0','1288588515','1288588515','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1302578478','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1075','11��1�ռ��ϸֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588552','1288588552','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1076','11��1�������ֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588556','1288588556','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1077','11��1��Ȫ�ݸֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588560','1288588560','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1078','11��1�ո��ݸֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588567','1288588567','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1079','11��1���Ͼ��ֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588572','1288588572','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1080','11��1��̫ԭ�ֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588575','1288588575','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1081','11��1�ճ��ݸֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588578','1288588578','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1082','11��1�չ����ֲ��г�������۸�����','','37','0','�����ְ�۸�����','0','1','0','1288588580','1288588580','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1083','9��16�ն��������г��۸�ƽ��','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588604','1288588604','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1084','9��17���Ϻ������г��۸�ֵ�','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588607','1288588607','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1085','9��17���ִ��г����������������','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588610','1288588610','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1086','9��20������г������۸񲿷��µ�','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588612','1288588612','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1087','9��20�չ��������г��۸����','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588615','1288588615','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1088','9��26��̫ԭ�г������۸�����','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588618','1288588618','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1089','9��26�չ����г������۸���������','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588620','1288588620','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1090','9��27�������г��������۸����ƽ��','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588623','1288588623','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1091','9��27����³ľ���������۸��𵴵���','','39','0','�����ְ�ÿ�շ���','0','1','0','1288588625','1288588625','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1092','9��28�ձ��������г��۸�ƽ��','','39','0','�����ְ�ÿ�շ���','1','1','0','1288588628','1288588628','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','1288588697','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1093','��ͼ������׹¥�ֳ�ʵ�� һ¥��԰�ѱ����','','45','0','�������','10','1','0','1288590004','1288590004','1','admin','','','','','0','http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1288590669','0','0','','1302578177','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1094','�ڵ�Ů���ֳ�����¥���� ���������������','','45','0','�������','1','1','0','1288589906','1288589906','1','admin','','','','','0','http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1288590807','0','0','','1300338689','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1095','��ͼ��������ЯŮ�Ѹ���ʥ�ɶ� �����Ʒ�Ů����','','45','0','�������','1','1','0','1288589807','1288589807','1','admin','','','','','0','http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','1288590689','0','0','','1302579234','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1096','��ҽȷ�Ͻ��ճ������� ���������Ѿ�����(ͼ)','','45','0','�������','2','1','0','1288589709','1288589709','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1306905095','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1097','ͼ�ģ���������ʥ�ڿ��ɶ�--�������Ů��','','45','0','�������','1','1','0','1288589610','1288589610','1','admin','','','','','0','http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1306905103','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1098','���ֳ�����¥���� ��ĸ���󾯷�׷������(��ͼ)','','45','0','�������','0','1','0','1288589512','1288589512','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1099','����ʬ�屻�޹��ھӷ���','','45','0','�������','0','1','0','1288589414','1288589414','1','admin','','','','','0','htt','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1100','������¥������δ�ų���ɱ���� 3����ǰ���ټ�','','45','0','�������','2','1','0','1288589316','1288589316','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/2009-11-01/U3996P28T3D2752350F326DT20091101083502.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579226','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1101','Ů���ֳ�����¥��ɱ���� ��ǰ��������ǿ��','','45','0','�������','0','1','0','1288589217','1288589217','1','admin','','','','','0','http://i1.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752065F326DT20091031194116.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1102','�������������۽���� ���������������(��ͼ)','','45','0','�������','0','1','0','1288589119','1288589119','1','admin','','','','','0','http://ent.sina.com.cn/s/p/2009-11-01/10292752406.shtml&quot; target=&quot;_blank&quot;&gt;&lt;img alt=�������������۽�������������������(��ͼ) src=','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1103','��ͼ����S��־��T̨���� ��ϲ�Ű�֥�ٶȻ���','','45','0','�������','0','1','0','1288589021','1288589021','1','admin','','','','','0','http://ent.sina.com.cn/s/p/2009-11-01/05032752257.shtml&quot; target=&quot;_blank&quot;&gt;&lt;img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=&q','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1104','����ϼ���Ϲ������������� ̹�Բ���������(ͼ)','','45','0','�������','1','1','0','1288588923','1288588923','1','admin','','','','','0','http://i0.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F326DT20091101082716.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579087','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1105','�������Ű�������Ҫ¡��(ͼ)','','45','0','�������','0','1','0','1288588825','1288588825','1','admin','','','','','0','http://i3.sinaimg.cn/ent/s/h/2009-11-01/U2231P28T3D2752338F326DT20091101081157.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1106','��ͼ����С������������ �����ϼ�ؾۺ��˷�','','45','0','�������','0','1','0','1288588728','1288588728','1','admin','','','','','0','http://ent.sina.com.cn/s/p/2009-11-01/10332752414.shtml&quot; target=&quot;_blank&quot;&gt;&lt;img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1107','�������Ļ��� ������KTV�����˳��յĸ�','','45','0','�������','0','1','0','1288588630','1288588630','1','admin','','','','','0','htt','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1108','����ƶԳ��ջ���������� ��Ը�����������ɱ','','45','0','�������','1','1','0','1288588532','1288588532','1','admin','','','','','0','htt','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579052','0','0','0','0','','','0');
INSERT INTO `qb_news_content` VALUES ('1109','ͼ�ģ���������ʥ�ڿ��ɶ�--������Ů��Lisa.S','','45','0','�������','1','1','0','1288588434','1288588434','1','admin','','','','','0','http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg','1','1','','0','0','0','','','','','','0','','0','0','','','','','','0','0','0','','1302579022','0','0','0','0','','','0');
INSERT INTO `qb_news_content_1` VALUES ('1054','','1060','4','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1055','','1061','4','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1056','','1062','4','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1057','','1063','4','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1058','','1064','4','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1059','','1065','4','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1060','','1066','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1061','','1067','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1062','','1068','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1063','','1069','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1064','','1070','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1065','','1071','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1066','','1072','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1067','','1073','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1068','','1074','38','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1069','','1075','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1070','','1076','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1071','','1077','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1072','','1078','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1073','','1079','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1074','','1080','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1075','','1081','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1076','','1082','37','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1077','','1083','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1078','','1084','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1079','','1085','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1080','','1086','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1081','','1087','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1082','','1088','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1083','','1089','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1084','','1090','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1085','','1091','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1086','','1092','39','1','1','���գ��㽭ʡ����ί���ͨ���˺��ݸ������Ź�˾�ύ�ġ����ݸ������Ź�˾��ҵȷ�������������������������ݸ������Ź�˾����ҵΪ5�������У������ɿ�ұ����ѹ�Ӽӹ�ҵ����������ҵ�����ز������뾭ӪҵΪ����ҵ�񣬷�����Դ�ͷϾɲ��ϻ��ռӹ�ҵ��ˮ�������빩ӦҵΪ����ҵ��\n \n','0');
INSERT INTO `qb_news_content_1` VALUES ('1087','','1092','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752104.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752102.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752108.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752110.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752101.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752103.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752107.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752112.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752106.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752105.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752109.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752111.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212.JPG\" /></a></br><p>������������Ѷ ����(10��31��)�賿�����ݳ�<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>�ߺ���ڵ�Ů���ֳ���׹¥������ʬ���ڱ������Ӱ���ƥ�˻�԰����701��¥�����֣��ݳ�������¥��ɱ���������ָϵ�������¥����С����С������͸¶���������������޹�ʱ�ѷ��ֳ��յ�ʬ�塣�������о���ǰ���������޷���ʵ�������¥ʱ�䡣���/ͼ</p>				  ������ begin                                          <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1088','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg alt=�ڵ�Ů���ֳ�����¥�������������������><br><br>���� ����ͼƬ  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ ����(10��31��)�賿���ڵ�Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>��ʬ�壬�ڶ��Ӱ���ƥ�˻�԰����701��¥�����֣��ݳ�������¥��ɱ������39�ꡣ�����������������ɱ�������ɳ�����֤���Է�δ���ϡ����⣬���յĺ��ѻ�����Ҳ����������ȷ���˸���Ϣ��Ŀǰ����Ϊ��������¡��к��ѳƣ�������ǰΪ��������</p>				  ������ begin  <p>��<sbrong>����������ʱ���޷�ȷ��</sbrong></p><p>�����������ָϵ�������¥����С����С������͸¶���������������޹�ʱ�ѷ��ֳ��յ�ʬ�塣�������о���ǰ�������޷���ʵ�������¥ʱ�䡣���յĺ��ѻ��������������ֶ���ȷ�ϳ��������������Գ�����Ϊ��������¡�</p><p>��<sbrong>�������˳�Ϊ������</sbrong></p><p>�����ݡ�����������������7ʱ��һ��Ů���걻��������һ����ҵ�һ¥С��԰�ڡ�������������һ������Խ���С��԰�ڣ�����20���꣬����ɫ���ס�ţ�п㣬�°ʹ�����һ����ִ�С�İ�ɫɴ����999������Ա�ϵ��ֳ���ȷ�����Ѿ�����������11ʱ��һ���Գ��������ѵ�����Ů���ܹ���������������ޣ���˵���Լ�ס�ڰ���ƥ�˻�԰һ�ڣ�֮ǰ������������������Լ���Ŀǰ��ס��701��¥�Ų㡣���񾭲������ˣ���ô��ô�벻�������������ź�����Ϣ�����ѱ߿ޱ���������Ծ���˵���������ϵ�����Լ���֪�飬��˵��߳��¶��˲��ܹ����ġ�</p><p>�������˽⣬��������Ů���꣬��Ϊ���ա�</p><p>����<sbrong>�����˳Ƴ��յ绰�޷���ͨ</sbrong></p><p>�����������籱��ĳ���������˴Ӿ������ѿ��еõ���Ϣ���Ƴ��������Ѽ�����¥���������Ǹոճ��������������������ϸ�ڲ�û��͸¶�������������漴��Ȧ�м���ѯ�����飬���³�����¥��ɱ����Ϣ��Ȧ�кܿ촫�������������漴��ϵ���յľ�������÷����÷����Ҳ�ǽ���������ߵ绰���ŵ�֪����Ϣ��������û�нӵ��������κ�֪ͨ����Ҳ��ͼ��ϵ���գ����绰ʼ���޷���ͨ��</p><p>��<sbrong>��ǰ�����޻�Ӧ</sbrong></p><p>������������������Ȧ�������������Ļ���ǩԼ���ˣ������ϰ��������й�ʮ��������顣1994�꣬��������������ʶ��һ��������ﴴ�챱�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӣ���ʮ���������������07�������յ㡣09��7�£����Ĵ�ý�屨���˳������������ų����ٻ����Ϣ��֤ʵ��ǰ������������������Ϣ���١����������漴Ҳ��ϵ������������ĵ绰Ҳ���˽�������Ȧ��һλ�Գ��ձȽ��˽��������͸¶���Դ�����ǰ������������һֱ�ǳ���˳���������൱���䣬���������𽥵���ý�����ߡ����⣬����͸¶������(10��31��)������������ա�</p><p>����<sbrong>����������Ӧ</sbrong></p><p>��������������ֱ��������������ɳ����˽⵽���������Ͻ������������ǵ�Ͻ��������¥������������Լ������˵���ϸ�������͸¶��JZB/��</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-10-31/230456330.shtml\r\"><img src=\"http://p2.v.iask.com/348/14/25693044_0.jpg\" width=\"94\" height=\"71\" alt=\"���ֳ�����¥��ɱ���� ����39��\r\" /></a>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1089','','1092','45','1','1','	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752244.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752242.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752240.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752236.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752237.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752246.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752241.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752245.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752235.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752238.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443.jpg\" /></a></br><p>������������Ѷ 2009��11��1�����Ѷ��Ϣ�����죬<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">������</a>������ά�����������Ӵϡ�Lisa S��Ana R��Cara G��һ�����˾�����ʥ���ɶԣ������װ�㡣�������������Ů��Lisa.S���Բ����������������з����Ϊ���ۡ�(TungStar/�Ĳ�ͼ)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1090','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg alt=��ҽȷ�Ͻ��ճ���������������Ѿ�����(ͼ)><br><br>��ҽ��������ͣʬ�䣬ţ�񻪳�����ʬ��Ҳ����ͣ�Ŵ˴�  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F329DT20091101003200.jpg alt=��ҽȷ�Ͻ��ճ���������������Ѿ�����(ͼ)><br><br>��ҽ�������ĵ�ֵ�๤����Ա͸¶��������ȷʵ���͵�����������������ʬ<br><br></left>\r<p>������������Ѷ Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>������(10��31��)�賿��¥��ɱ������������������ϸ������з�ҽ�������ģ�ֵ��Ĺ�����Ա��ʾ������������������˳��յ����塣���յ�����Ҳ�Ѿ��������������뿪�������ϸ�������ʾ�����͸¶�����/ͼ</p>				  ������ begin                                          <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1091','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg alt=ͼ�ģ���������ʥ�ڿ��ɶ�--�������Ů��><br><br>�������Ů��  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ 2009��11��1�����Ѷ��Ϣ�����죬<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">������</a>������ά�����������Ӵϡ�Lisa S��Ana R��Cara G��һ�����˾�����ʥ���ɶԣ������װ�㡣�������������Ů��Lisa.S���Բ����������������з����Ϊ���ۡ�(TungStar/�Ĳ�ͼ)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1092','','1092','45','1','1','<left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg\" /></left><left>���մ�9¥����׹��һ¥С��԰</left><p>&nbsp;</p><left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_eUfDyH.jpg\" /></left><left>��������ʥ�ڻ����ȥ</left><p>&nbsp;</p>				  ������ begin  <left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i3.sinaimg.cn/ent/y/p/2009-11-01/1257028533_HIEkDi.jpg\" /></left><left>����ǰ��������</left><p>&nbsp;</p><left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_NRq7w6.jpg\" /></left><left>�������ĳ��գ�ȴδ�⿪�Լ������֮��</left><p>����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\"><sbrong>����</sbrong></a><sbrong>֮����������йأ��·�������ǰ������������</sbrong></p><p>������������6��࣬�������������Ӱ���ƥ�˻�԰����701��¥��һ������Ů�Ӵ�9��¥��׹¥�������ݶ���֪����֤ʵ����������ƾ��<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>���ߺ���̳�����켮���ֳ��գ�����39�ꡣĿǰ���������Ը��𰸼����е��顣���յ��ɷ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/zhanchao/index.html\" target=\"_blank\">�ų�</a>��Ŀǰ���ں���������»鲻�õ�����ͻȻ��������Ѷ�������鼤���ر�ʾ�����ʧȥ����ϵ�����������⣬���������������ѡ������ݺ��������˹���͸¶���·�����ǡ������ǰ������������ա�</p><p><sbrong>����ҵ���޹�����ʬ��</sbrong></p><p>�����·���λ�ڰ���ƥ�˻�԰701¥1��һҵ���ҵ�С��԰�ڡ���������10��࣬�·������������𾯽��ߣ���10�����������п��أ�һ����İ���˿�������������ǰ����������ԶԶ�����������ѱ�����һ��ײ���</p><p>�������˽⣬���ȷ��ֵ���701¥2��Ԫ��һ��Ůҵ������Ůҵ�����ɷ򽲣�����6��࣬��������С���������ҵ�С������������һ����һ���ţ����һ���ͣ������������ܹ�ȥ������һ������Ů��ͷ����ſ�ڵ���һ����������ʱ�����˱��Ż��ˣ���æ����һ���������С����������һ���綼����Ͼ�������¼��Ҫ��Ȼ��ûؼҳԷ��ˡ���������˵����󣬼��߿���һ������Ů���ھ���������¼��</p><p><sbrong>����ͬ��Ů��˯����֪��</sbrong></p><p>����һ����Ը͸¶�����ı���˵�������ϵ�ʱ���7�㣬����һ����Ů�ӣ���ͷ���ߣ�����������泯�����ڵ���һ���������������°ʹ�����һ����ִ�С�İ�ɴ��������ò�Ͽ��������Ǹ����֣����һ���������򼱾Ⱥͱ����绰���ñ�����˵���·��󱣰��뾯����Ա��4��Ԫ���ѯ�ʣ��󾭷���Ů���Ǵ�9��׹�£�ͬ�ݵ���һ��Ů�ӵ�ʱ����˯��������֪����һ�������Ů���Ѿ����¡�</p><p>��������7��࣬���ȳ��ϵ��ֳ���ҽ����Ա����������Ů�ӽ������ȣ����ȷ��Ů���Ѿ���������һ��ҵ�������·����ɳ����볯���־ֵľ���ȫ���ˣ������ֳ����в鿴��������������������70��������Ĵ��ˣ���һ������Ů���֡�</p><p>�������������ָ����������Ӹ����ˡ�������˵����������С��ҵ����ס��һ�������޹���Ů��������ǰ���޺�����̫ɵ�ˡ����������Ѻܱ��ˣ�����뿪����λ����ƣ��������޺�Ů��Ϊ�����ա���˵�ǳ���ģ�����ԭ���������鷽���йء�����1�㣬�о��ֳ�������Ա�ϵ���������Ա�ٴζ��ֳ����п��飬30���ӹ��󣬾�����Ա��̳��롣���߱����ǹݵĳ����ߡ���󣬼������·��ؿ�����һ��ҵ���ҵĻ�԰��һƬ���أ��ѱ������ҳ������ӣ�����δ����Ѫ����</p><p>��<sbrong>���·�������ǰ������</sbrong></p><p>����������1993����ʽ����������ר���������������Զ�������㴴��150�������ۼ�¼��1994�꣬��������������ʶ����������ﴴ�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӡ�����������Ƴ��������˾Ͱ��ˡ����������ҡ��������˿ڵĸ�����2007����ף����պ������ﱻ����顣����7�£������ڳɶ����������ų���Ǽǽ�顣��8�·ݵ�EP�����յ��������֡����ŷ������ֳ��������뵣�μ����ֵ��ų��御�����ۺ�Ĭ����</p><p>������ý�屨���ƣ�����������ȥ������ǿ�Ҵ��š���ǿ�Ƕ��������ŵĸ質��Ա�����ݳ��������������衷�����ͳ���˽�����ƣ��������޻���̸�Ĺ��ۡ�����ǿ�ĵ绰ʼ�մ������˽�����״̬������׹¥��ɱ����Ϣ��������������˷׷ױ�ʾ���Խ��ܡ���һλ�Գ��ձȽ��˽��Ȧ����ʿ͸¶���Դ�����ǰ������������һֱ�ǳ���˳���������൱���䣬���������𽥵���ý�����ߡ����⣬����͸¶һ���ǳ���Ҫ����Ϣ������������������գ������������Ӵ���������ɱ����Ϣ���������ꡣ������ʱ����������������</p><p><sbrong>��������²�</sbrong></p><p><sbrong>����������ǰ���أ��ҶԻ�����ʧ��</sbrong></p><p>�������³�����ɱ��ԭ���ж��ְ汾��һ��˵�������ն��Լ����������Ʋ����¸��ʧ����һ��˵������������Ȧ�������Ҹе��ֲ������£������������������������ձ��˵���Ǹ��鲻˳������Ѱζ���ǣ�10��31���ǳ���ǰ������������ա����˽⣬����������ճﱸ�ú����֣�����Ȧ�����Ѷ�ǰȥף�أ����˲���˼����ǣ�����ȴѡ����ǰ�����յ�����ɱ��</p><p><sbrong>����ǰ���������</sbrong></p><p>��������һλ֪���˸��߼��ߣ�������ɱ������Ϊ��������յ�ǰ���Ǳ��������Ļ����ܡ�1998�����죬Ӧ�������룬��������������պ��������ڱ�������һ�ٷ������˵�����Ҳ�״��ع⡣</p><p>����������������ѧ�ձ������ɹ�������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">�ƾ�����</a>���й����г��ƹ㡣1994�꣬���ڹۿ����ڱ����ֶ��ݳ���ʱ����ʶ��<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/lhyd/index.html\" target=\"_blank\">�ֻ��ֶ�</a>�ͳ��ա�������һ��󴴰��˱��������Ļ�ʱ�����ճ�������ǩԼ���ˡ�2003�꣬���������۹��ȴ���Ѫ��������һֱ���������ϸ���չˣ����ʹ������˽�����Ϣ�����˵ġ����޵ꡱ������ˡ��ڱ��������ֻء�������ҡ���ֶӣ���ǩ����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">����</a>��һ�ȳ�Ϊ�й���Ƭ��ҵ���м�����������2006�괺���ڱ����ɷ�����<a class=\"akey\" href=\"http://ent.sina.com.cn/f/v/cctvcw09/index.shtml\" target=\"_blank\">����</a>�������գ�����������ضԼ���˵������������ô�����������ң���ҪΪ��дһ���飬�����ǵİ�����¹��������¡���������2007��6�³���ĳ��վͻȻ�������ϣ������Ϲ�������������������������ϵ��������������������飻���ƣ������������ܲ������˵ķ��޵꣬��תͶ<a class=\"akey\" href=\"http://huayi.sina.com.cn/\" target=\"_blank\">�����ֵ�</a>�ģ����ҳ����Ϲ������ﾭӪ�ġ������Ļ�����˾�������Ļ�ɢ��ֻʣ7�ˡ�����2008��3�£����պ��������������ˡ�</p><p><sbrong>�����Ի�����ʧ��</sbrong></p><p>������������������������һֱ���䣬����Զ�빫�ں�ý�����Ұ������һ��Ѱ�����������������ų���󣬲���ȼ�������ϣ����</p><p>�������ܽ���7�£��������ų���ص��ɶ���ʽ�����˽��������������������������������˳������ֹ����ң����������ַ����ٴ����£���ǰ��������Ҳ�����µĻ�����ʾ��ף���������ų�����󣬳��ղ�û�ие��Ҹ�����ʱʱ˼��������ݴ����ų���Ϊ�����ص����������ռ��Σ����նٸо���������ǰ����������ɱ��һ�Σ��������������ȲŻ��˹���������7�£����ջص��ɶ�����֤�����������������ʳ��գ���������ô�������벻��������С��˵�����պϣ���ʵ�ҶԻ�����ʧ������</p><p>�������գ���ݴ�ͨ�����Ϲ��ų���绰����͸¶�����ʳ�����ɱһ�£��ų����������ٵ�˵���������ڵ�˼ά�ܻ��ң�������һƬ�հף����޷�ƽ���������Բ�����û�а취�ش�����κ����⣬�벻Ҫ�����ˡ�����һ��׷��֮�£�����Ȼ�����ظ�ͬ���Ĵ𰸣��������������߶Ŷ���</p><p><sbrong>��������ʹϧ</sbrong></p><p><sbrong>������û�����¸��������ˣ�</sbrong></p><p>��������ǰ������������������ܼ��߲ɷ�ʱ������������˵��������6ʱ�����յ����ָ����ң�������¥��ɱ�ˡ��������Ҽ�ֱ�����ţ����������������ϰ壬Ҳ�ǳ��յ�ǰ������������ա��һ�˵�������ϰ巢ף������Ϣ�أ��Һͳ��ն����Ĵ��ˣ��ֶ���һ����˾�����������������磬����ܺá���������ǰ���뿪�����Ļ�������ռ������ˣ�����ͨ�绰���������һ�γ�ϯ��������ǽ����߰��·ݹ��߹�˾����ġ����ɸ������ư񡱣�������Ϊ�佱�α����ࡣ���Ǽ���һ���档��ʱ�����մ��ú�ʱ�У�����״̬�ǳ��á��������Ĵ������������������ң�������׼�����¸衣������40���ˣ�Ҫ�ص�����ɶ������쿪һ����������ʱ����˵����һ����֧���㡣���벻�����¸軹û�������������ˣ���������һ�������ˣ��ø��֡������߶Ŷ���</p><p><sbrong>�������������ĺ��ѹ�</sbrong></p><p>����������һ���������������Զ�������ߺ��̳�����������롶�����������Զ�������������������ȡ����ϵ�������ʾ�Լ��Ѿ���֪�������Ϣ����֪�������Ϣ���Ҿ��Ĵ���绰��֤�����˺ܶ�����߹�ϵ�ȽϽ������ѣ�����û����֪������Щ���Ҹ���һֱ����ϵ��ֻ�Ǽ���Ƚ��٣�����������Ҳ�������š����Գ��յ���ȥ�������ϧ��˵������Ȼ���Ѿ������ˣ���Ҳ������˵ʲô��һ·�ߺá�֮��Ļ������������ĵ�һ��ר��������һ�����ģ��к���ĸ��飬���������������������ͦ�ѹ�����</p><p><sbrong>����</sbrong><a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\"><sbrong>����</sbrong></a><sbrong>�����컹��K���ĸ�</sbrong></p><p>������֪������ɱ��Ϣ�󣬳����ʾ�Լ�Ŀǰ���ںϷʣ�����Ҳ�Ǹոմӱ�����������֪�����Ϣ�ģ������Ļ��ˣ���������KTV���軹�������ĸ��أ���ô��ô�õ�һ�����þ�����û���أ��������ʾ�Լ���ǰ����յĹ�ϵ�ܺã������Գ����������˾�û���ټ��档����·���֮�󣬳���ֱ�Գ��յ��뿪�����Ծ�ʾ��������ƽʱӦ�ö������ߵ����ѣ���Ϊ��ʱ���겻��֮���е��˿��ܾ��Ѿ���Ҳ�������ˡ�����ĺܺ�ڣ����������һ���ҵ���������һ�������֣��࿪��������������������Ͳ�����ô����ѡ����ɱ���������˵�����Բ����㣡��������ʱ����</p><p><sbrong>����������Ϣ</sbrong></p><p><sbrong>��������ĸ�����󾯷�׷������</sbrong></p><p>���������˽⵽�����յĸ�����ȥ�����ꡣ����ǰ�������ڱ������˷�����ĸ�״�����ӵ��˱�����ס����֪������¶����Ů��ͻȻ��¥��ɱ�����յ�ĸ�ױ�ʹ�������������յ����������Ѹ�������������������¡����յľ������Ѿ����������յ�ĸ�����󱱾�����׷�������¥��ɱ�����ࡣ���߶Ŷ���</p><p>����<sbrong>�����˼� ��Ԯ��ϣ��Сѧ</sbrong></p><p>���������Ǹ��ر��а��ĵ��ˡ� 2004��4�£���Ϊ��ϣ�����̰��Ĵ�ʹ���ĳ��գ����������������򡪡���¡��ͩ����ΪԮ���ĵ�һ��ϣ��Сѧ�����У��������ڵ���Ԯ��һ��ϣ��Сѧ������������Գ���������ϣ��Сѧ������2006��6��14�գ�������������ٴ�������ͩ�����С·�ϣ�Ϊ����ǰ�����ֵĵ�һ��ϣ�������ӡ�����һ��ϣ��Сѧ��ɼ��ʡ������ϣ��й�����ḱ���鳤������Ϊ���հ䷢�ˡ�ϣ�����̡��������ƣ����߶�ʢ�޳��յ��ƾ١����պ͵¹������и���PeterMaffay������Ϊϣ��Сѧ�ĺ��������������������¸������ú��ӡ����Ա������ɽ�������ǵĹذ�����������󣬳��պ�ѧ���Ǻ�Ӱ��ǩ��������������������̨���������̨�͵¹�ý����ֳ��ɷá����߶Ŷ���</p><p><sbrong>������һ˵һ</sbrong></p><p><sbrong>�������Ѱ��ļ���</sbrong></p><p>������������������ʥ�ڣ��ưɵ��ɶ�����г�Ů����������̼������ֳ��գ�ȴ�ò��ҵ�һ��������������һ��������ˡ���һ������ͬ6��ǰ���˽�����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zgr.html\" target=\"_blank\">�Ź���</a>����һ��һ�����˾����㤡����ġ�</p><p>��������Ȧ��Զ���������ְ�ȱͷ�����涾��թƭ����䡢���������̼������ǵ��񾭣�Ҳ��ľ�����ǵ��񾭡����������͵��ϣ���Ҫ�ȴ��ϸ������������ʺš�������һ�����С�����ɱ��������֪��λ���Ѷ����磬�������Ϸ���������ɱ����Ϣ��������ǳ�ͷ��β�ļ����ţ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">������</a>ǰ�����������һ�Ρ�����ɱ�������ּ����ţ������ܻ�������һ�������Һ��Ǽٵġ������������ɱ����Ϣ������ʼʱ�����ݴ��������д��ųơ������۽������������Ȼͣ���ڡ�����ɱ����˼���׶Ρ���������ȷ����Ϣ�����յ�ȷ����˲��ҵķ�ʽ���������Լ����������̲�ס̾ϧ��Ϊʲô���ǡ�����ɱ������</p><p>����1993�꣬23��ĳ���ƾ�衶�����������Զ������һ�ڶ��죬ͬ��ר�����������漣������ٻ�ͷ������ר������¼�ĸ����������簮�ϱ����������ҡ�������Զ�Ҳ�������ķ�ʽ�������Ҳ�Ը����̫ƣ��������ÿһ�׶����������У���Ŀ���ġ�һλȦ���˸�̾��������һ�����ߵ��Ǹ�̳80������ĻԻ͡������쵽�ɶ����ٴӳɶ������׶������մ����˸ĸ￪�Żƽ�ʱ�ڱ�Ư��ĵ��ͣ�������80����������ֱ��ϵ����ǡ����������������ս��ȴ�޷���Ը�������֡�����ѡ��ǰ���������������˼䣬�����˰��ļ������Ӵ��Ժ����Ŀ�����Զ������ʹ��Ѫ�����������㲻���ˣ�Ҳ����һЦ������</p><p>�����ǵ����һ���ڵ����Ͽ������գ���һ������ǰ�����μ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wudw/index.html\" target=\"_blank\">���ά</a>���ֵ�һ�����ƽ�Ŀ���α����ֳ�Ʒ������裬�����ĳ�����ϸ��Ʒ���������ϵ���Ʒ������������ά�ɷ�ʱ���������ζ�������˼����󣬵�ʱ���������ǿɰ�����ô�����Ϊʲô���మ�Լ�һ���أ� �����</p><p><sbrong>�������յ���</sbrong></p><p>�������գ�1970��1��31��������ˮƿ��Ѫ�ͣ�O�ͼ��᣺����</p><p>�������յĵ�һ��ר���������������Զ��������1993�귢�У����ܴ���ϲ���������������ġ����˾Ͱ��ˡ�����ʮ������ɫ���ȵ���Ҳ�����ǹ�Ϊ������������ǰ����������ר�����ֱ�Ϊ�������������Զ�������������°����㡷��<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">��Ů�ˡ�</a>��������ͬ��ר������<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">�����Ͱ��ˡ�</a>��������ƭ�Լ�������13131����</p><p>���������������Զ����</p><p>�����Ҹ��㰮������˵���ѵ����������ʹ����һ�����ò��Ÿ�������㰮�Ͱ������˵���Ļ����߹���·ʲô�ǰ���ʲô�ǿ���ĳ���������������ӵ����ȴ�����Ҹ������������Զ�������޷����㿴����������������Զ�����о������˲�����������������Զ�������е����벻�ǹ��������������Զ�����ҵȴ��������¶�û����˼����װ��ͿҲû�л����������߲���Ѱ����̫ģ��</p><p>��������</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"������¥�����ֳ�ʵ�� С���ھ����۷׷�\r\" /></a>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml target=_blank>http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1093','','1092','45','1','1','<p>������������Ѷ 10��31�����磬���ݳ�<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>���켫һʱ�ĸ��ֳ�����¥������Ŀǰ���������Ѿ����������¥�ص㡣��С��������ܣ���������С����������޹�ʱ�ѷ���������¥��������¥ʱ��δ֪�����⣬��¥��׹��һ¥�ھӻ�԰����԰���һ���</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1094','','1092','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752104.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752104F346DT20091031215144.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752102.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752102F346DT20091031215136.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752108.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752108F346DT20091031215200.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752110.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752110F346DT20091031215208.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752101.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752101F346DT20091031215132.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752103.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752103F346DT20091031215140.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752107.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752107F346DT20091031215156.JPG\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752112.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752112F346DT20091031215216.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752106.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752106F346DT20091031215152.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21512752105.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i2.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752105F346DT20091031215148.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752109.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752109F346DT20091031215204.JPG\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/y/p/2009-10-31/21522752111.shtml\" target=\"_blank\"><img alt=��ͼ������׹¥�ֳ�ʵ��һ¥��԰�ѱ���� src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212.JPG\" /></a></br><p>������������Ѷ ����(10��31��)�賿�����ݳ�<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>�ߺ���ڵ�Ů���ֳ���׹¥������ʬ���ڱ������Ӱ���ƥ�˻�԰����701��¥�����֣��ݳ�������¥��ɱ���������ָϵ�������¥����С����С������͸¶���������������޹�ʱ�ѷ��ֳ��յ�ʬ�塣�������о���ǰ���������޷���ʵ�������¥ʱ�䡣���/ͼ</p>				  ������ begin                                          <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/21572752114.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1095','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg alt=�ڵ�Ů���ֳ�����¥�������������������><br><br>���� ����ͼƬ  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ ����(10��31��)�賿���ڵ�Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>��ʬ�壬�ڶ��Ӱ���ƥ�˻�԰����701��¥�����֣��ݳ�������¥��ɱ������39�ꡣ�����������������ɱ�������ɳ�����֤���Է�δ���ϡ����⣬���յĺ��ѻ�����Ҳ����������ȷ���˸���Ϣ��Ŀǰ����Ϊ��������¡��к��ѳƣ�������ǰΪ��������</p>				  ������ begin  <p>��<sbrong>����������ʱ���޷�ȷ��</sbrong></p><p>�����������ָϵ�������¥����С����С������͸¶���������������޹�ʱ�ѷ��ֳ��յ�ʬ�塣�������о���ǰ�������޷���ʵ�������¥ʱ�䡣���յĺ��ѻ��������������ֶ���ȷ�ϳ��������������Գ�����Ϊ��������¡�</p><p>��<sbrong>�������˳�Ϊ������</sbrong></p><p>�����ݡ�����������������7ʱ��һ��Ů���걻��������һ����ҵ�һ¥С��԰�ڡ�������������һ������Խ���С��԰�ڣ�����20���꣬����ɫ���ס�ţ�п㣬�°ʹ�����һ����ִ�С�İ�ɫɴ����999������Ա�ϵ��ֳ���ȷ�����Ѿ�����������11ʱ��һ���Գ��������ѵ�����Ů���ܹ���������������ޣ���˵���Լ�ס�ڰ���ƥ�˻�԰һ�ڣ�֮ǰ������������������Լ���Ŀǰ��ס��701��¥�Ų㡣���񾭲������ˣ���ô��ô�벻�������������ź�����Ϣ�����ѱ߿ޱ���������Ծ���˵���������ϵ�����Լ���֪�飬��˵��߳��¶��˲��ܹ����ġ�</p><p>�������˽⣬��������Ů���꣬��Ϊ���ա�</p><p>����<sbrong>�����˳Ƴ��յ绰�޷���ͨ</sbrong></p><p>�����������籱��ĳ���������˴Ӿ������ѿ��еõ���Ϣ���Ƴ��������Ѽ�����¥���������Ǹոճ��������������������ϸ�ڲ�û��͸¶�������������漴��Ȧ�м���ѯ�����飬���³�����¥��ɱ����Ϣ��Ȧ�кܿ촫�������������漴��ϵ���յľ�������÷����÷����Ҳ�ǽ���������ߵ绰���ŵ�֪����Ϣ��������û�нӵ��������κ�֪ͨ����Ҳ��ͼ��ϵ���գ����绰ʼ���޷���ͨ��</p><p>��<sbrong>��ǰ�����޻�Ӧ</sbrong></p><p>������������������Ȧ�������������Ļ���ǩԼ���ˣ������ϰ��������й�ʮ��������顣1994�꣬��������������ʶ��һ��������ﴴ�챱�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӣ���ʮ���������������07�������յ㡣09��7�£����Ĵ�ý�屨���˳������������ų����ٻ����Ϣ��֤ʵ��ǰ������������������Ϣ���١����������漴Ҳ��ϵ������������ĵ绰Ҳ���˽�������Ȧ��һλ�Գ��ձȽ��˽��������͸¶���Դ�����ǰ������������һֱ�ǳ���˳���������൱���䣬���������𽥵���ý�����ߡ����⣬����͸¶������(10��31��)������������ա�</p><p>����<sbrong>����������Ӧ</sbrong></p><p>��������������ֱ��������������ɳ����˽⵽���������Ͻ������������ǵ�Ͻ��������¥������������Լ������˵���ϸ�������͸¶��JZB/��</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-10-31/230456330.shtml\r\"><img src=\"http://p2.v.iask.com/348/14/25693044_0.jpg\" width=\"94\" height=\"71\" alt=\"���ֳ�����¥��ɱ���� ����39��\r\" /></a>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/19502752070.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1096','','1092','45','1','1','	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752244.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752242.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752240.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752236.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752237.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752246.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752241.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752245.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752235.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752238.shtml\" target=\"_blank\"><img alt=��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů���� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443.jpg\" /></a></br><p>������������Ѷ 2009��11��1�����Ѷ��Ϣ�����죬<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">������</a>������ά�����������Ӵϡ�Lisa S��Ana R��Cara G��һ�����˾�����ʥ���ɶԣ������װ�㡣�������������Ů��Lisa.S���Բ����������������з����Ϊ���ۡ�(TungStar/�Ĳ�ͼ)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1097','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg alt=��ҽȷ�Ͻ��ճ���������������Ѿ�����(ͼ)><br><br>��ҽ��������ͣʬ�䣬ţ�񻪳�����ʬ��Ҳ����ͣ�Ŵ˴�  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F329DT20091101003200.jpg alt=��ҽȷ�Ͻ��ճ���������������Ѿ�����(ͼ)><br><br>��ҽ�������ĵ�ֵ�๤����Ա͸¶��������ȷʵ���͵�����������������ʬ<br><br></left>\r<p>������������Ѷ Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>������(10��31��)�賿��¥��ɱ������������������ϸ������з�ҽ�������ģ�ֵ��Ĺ�����Ա��ʾ������������������˳��յ����塣���յ�����Ҳ�Ѿ��������������뿪�������ϸ�������ʾ�����͸¶�����/ͼ</p>				  ������ begin                                          <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1098','','1092','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg alt=ͼ�ģ���������ʥ�ڿ��ɶ�--�������Ů��><br><br>�������Ů��  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ 2009��11��1�����Ѷ��Ϣ�����죬<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">������</a>������ά�����������Ӵϡ�Lisa S��Ana R��Cara G��һ�����˾�����ʥ���ɶԣ������װ�㡣�������������Ů��Lisa.S���Բ����������������з����Ϊ���ۡ�(TungStar/�Ĳ�ͼ)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1099','','1092','45','1','1','<left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg\" /></left><left>���մ�9¥����׹��һ¥С��԰</left><p>&nbsp;</p><left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_eUfDyH.jpg\" /></left><left>��������ʥ�ڻ����ȥ</left><p>&nbsp;</p>				  ������ begin  <left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i3.sinaimg.cn/ent/y/p/2009-11-01/1257028533_HIEkDi.jpg\" /></left><left>����ǰ��������</left><p>&nbsp;</p><left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_NRq7w6.jpg\" /></left><left>�������ĳ��գ�ȴδ�⿪�Լ������֮��</left><p>����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\"><sbrong>����</sbrong></a><sbrong>֮����������йأ��·�������ǰ������������</sbrong></p><p>������������6��࣬�������������Ӱ���ƥ�˻�԰����701��¥��һ������Ů�Ӵ�9��¥��׹¥�������ݶ���֪����֤ʵ����������ƾ��<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>���ߺ���̳�����켮���ֳ��գ�����39�ꡣĿǰ���������Ը��𰸼����е��顣���յ��ɷ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/zhanchao/index.html\" target=\"_blank\">�ų�</a>��Ŀǰ���ں���������»鲻�õ�����ͻȻ��������Ѷ�������鼤���ر�ʾ�����ʧȥ����ϵ�����������⣬���������������ѡ������ݺ��������˹���͸¶���·�����ǡ������ǰ������������ա�</p><p><sbrong>����ҵ���޹�����ʬ��</sbrong></p><p>�����·���λ�ڰ���ƥ�˻�԰701¥1��һҵ���ҵ�С��԰�ڡ���������10��࣬�·������������𾯽��ߣ���10�����������п��أ�һ����İ���˿�������������ǰ����������ԶԶ�����������ѱ�����һ��ײ���</p><p>�������˽⣬���ȷ��ֵ���701¥2��Ԫ��һ��Ůҵ������Ůҵ�����ɷ򽲣�����6��࣬��������С���������ҵ�С������������һ����һ���ţ����һ���ͣ������������ܹ�ȥ������һ������Ů��ͷ����ſ�ڵ���һ����������ʱ�����˱��Ż��ˣ���æ����һ���������С����������һ���綼����Ͼ�������¼��Ҫ��Ȼ��ûؼҳԷ��ˡ���������˵����󣬼��߿���һ������Ů���ھ���������¼��</p><p><sbrong>����ͬ��Ů��˯����֪��</sbrong></p><p>����һ����Ը͸¶�����ı���˵�������ϵ�ʱ���7�㣬����һ����Ů�ӣ���ͷ���ߣ�����������泯�����ڵ���һ���������������°ʹ�����һ����ִ�С�İ�ɴ��������ò�Ͽ��������Ǹ����֣����һ���������򼱾Ⱥͱ����绰���ñ�����˵���·��󱣰��뾯����Ա��4��Ԫ���ѯ�ʣ��󾭷���Ů���Ǵ�9��׹�£�ͬ�ݵ���һ��Ů�ӵ�ʱ����˯��������֪����һ�������Ů���Ѿ����¡�</p><p>��������7��࣬���ȳ��ϵ��ֳ���ҽ����Ա����������Ů�ӽ������ȣ����ȷ��Ů���Ѿ���������һ��ҵ�������·����ɳ����볯���־ֵľ���ȫ���ˣ������ֳ����в鿴��������������������70��������Ĵ��ˣ���һ������Ů���֡�</p><p>�������������ָ����������Ӹ����ˡ�������˵����������С��ҵ����ס��һ�������޹���Ů��������ǰ���޺�����̫ɵ�ˡ����������Ѻܱ��ˣ�����뿪����λ����ƣ��������޺�Ů��Ϊ�����ա���˵�ǳ���ģ�����ԭ���������鷽���йء�����1�㣬�о��ֳ�������Ա�ϵ���������Ա�ٴζ��ֳ����п��飬30���ӹ��󣬾�����Ա��̳��롣���߱����ǹݵĳ����ߡ���󣬼������·��ؿ�����һ��ҵ���ҵĻ�԰��һƬ���أ��ѱ������ҳ������ӣ�����δ����Ѫ����</p><p>��<sbrong>���·�������ǰ������</sbrong></p><p>����������1993����ʽ����������ר���������������Զ�������㴴��150�������ۼ�¼��1994�꣬��������������ʶ����������ﴴ�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӡ�����������Ƴ��������˾Ͱ��ˡ����������ҡ��������˿ڵĸ�����2007����ף����պ������ﱻ����顣����7�£������ڳɶ����������ų���Ǽǽ�顣��8�·ݵ�EP�����յ��������֡����ŷ������ֳ��������뵣�μ����ֵ��ų��御�����ۺ�Ĭ����</p><p>������ý�屨���ƣ�����������ȥ������ǿ�Ҵ��š���ǿ�Ƕ��������ŵĸ質��Ա�����ݳ��������������衷�����ͳ���˽�����ƣ��������޻���̸�Ĺ��ۡ�����ǿ�ĵ绰ʼ�մ������˽�����״̬������׹¥��ɱ����Ϣ��������������˷׷ױ�ʾ���Խ��ܡ���һλ�Գ��ձȽ��˽��Ȧ����ʿ͸¶���Դ�����ǰ������������һֱ�ǳ���˳���������൱���䣬���������𽥵���ý�����ߡ����⣬����͸¶һ���ǳ���Ҫ����Ϣ������������������գ������������Ӵ���������ɱ����Ϣ���������ꡣ������ʱ����������������</p><p><sbrong>��������²�</sbrong></p><p><sbrong>����������ǰ���أ��ҶԻ�����ʧ��</sbrong></p><p>�������³�����ɱ��ԭ���ж��ְ汾��һ��˵�������ն��Լ����������Ʋ����¸��ʧ����һ��˵������������Ȧ�������Ҹе��ֲ������£������������������������ձ��˵���Ǹ��鲻˳������Ѱζ���ǣ�10��31���ǳ���ǰ������������ա����˽⣬����������ճﱸ�ú����֣�����Ȧ�����Ѷ�ǰȥף�أ����˲���˼����ǣ�����ȴѡ����ǰ�����յ�����ɱ��</p><p><sbrong>����ǰ���������</sbrong></p><p>��������һλ֪���˸��߼��ߣ�������ɱ������Ϊ��������յ�ǰ���Ǳ��������Ļ����ܡ�1998�����죬Ӧ�������룬��������������պ��������ڱ�������һ�ٷ������˵�����Ҳ�״��ع⡣</p><p>����������������ѧ�ձ������ɹ�������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">�ƾ�����</a>���й����г��ƹ㡣1994�꣬���ڹۿ����ڱ����ֶ��ݳ���ʱ����ʶ��<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/lhyd/index.html\" target=\"_blank\">�ֻ��ֶ�</a>�ͳ��ա�������һ��󴴰��˱��������Ļ�ʱ�����ճ�������ǩԼ���ˡ�2003�꣬���������۹��ȴ���Ѫ��������һֱ���������ϸ���չˣ����ʹ������˽�����Ϣ�����˵ġ����޵ꡱ������ˡ��ڱ��������ֻء�������ҡ���ֶӣ���ǩ����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">����</a>��һ�ȳ�Ϊ�й���Ƭ��ҵ���м�����������2006�괺���ڱ����ɷ�����<a class=\"akey\" href=\"http://ent.sina.com.cn/f/v/cctvcw09/index.shtml\" target=\"_blank\">����</a>�������գ�����������ضԼ���˵������������ô�����������ң���ҪΪ��дһ���飬�����ǵİ�����¹��������¡���������2007��6�³���ĳ��վͻȻ�������ϣ������Ϲ�������������������������ϵ��������������������飻���ƣ������������ܲ������˵ķ��޵꣬��תͶ<a class=\"akey\" href=\"http://huayi.sina.com.cn/\" target=\"_blank\">�����ֵ�</a>�ģ����ҳ����Ϲ������ﾭӪ�ġ������Ļ�����˾�������Ļ�ɢ��ֻʣ7�ˡ�����2008��3�£����պ��������������ˡ�</p><p><sbrong>�����Ի�����ʧ��</sbrong></p><p>������������������������һֱ���䣬����Զ�빫�ں�ý�����Ұ������һ��Ѱ�����������������ų���󣬲���ȼ�������ϣ����</p><p>�������ܽ���7�£��������ų���ص��ɶ���ʽ�����˽��������������������������������˳������ֹ����ң����������ַ����ٴ����£���ǰ��������Ҳ�����µĻ�����ʾ��ף���������ų�����󣬳��ղ�û�ие��Ҹ�����ʱʱ˼��������ݴ����ų���Ϊ�����ص����������ռ��Σ����նٸо���������ǰ����������ɱ��һ�Σ��������������ȲŻ��˹���������7�£����ջص��ɶ�����֤�����������������ʳ��գ���������ô�������벻��������С��˵�����պϣ���ʵ�ҶԻ�����ʧ������</p><p>�������գ���ݴ�ͨ�����Ϲ��ų���绰����͸¶�����ʳ�����ɱһ�£��ų����������ٵ�˵���������ڵ�˼ά�ܻ��ң�������һƬ�հף����޷�ƽ���������Բ�����û�а취�ش�����κ����⣬�벻Ҫ�����ˡ�����һ��׷��֮�£�����Ȼ�����ظ�ͬ���Ĵ𰸣��������������߶Ŷ���</p><p><sbrong>��������ʹϧ</sbrong></p><p><sbrong>������û�����¸��������ˣ�</sbrong></p><p>��������ǰ������������������ܼ��߲ɷ�ʱ������������˵��������6ʱ�����յ����ָ����ң�������¥��ɱ�ˡ��������Ҽ�ֱ�����ţ����������������ϰ壬Ҳ�ǳ��յ�ǰ������������ա��һ�˵�������ϰ巢ף������Ϣ�أ��Һͳ��ն����Ĵ��ˣ��ֶ���һ����˾�����������������磬����ܺá���������ǰ���뿪�����Ļ�������ռ������ˣ�����ͨ�绰���������һ�γ�ϯ��������ǽ����߰��·ݹ��߹�˾����ġ����ɸ������ư񡱣�������Ϊ�佱�α����ࡣ���Ǽ���һ���档��ʱ�����մ��ú�ʱ�У�����״̬�ǳ��á��������Ĵ������������������ң�������׼�����¸衣������40���ˣ�Ҫ�ص�����ɶ������쿪һ����������ʱ����˵����һ����֧���㡣���벻�����¸軹û�������������ˣ���������һ�������ˣ��ø��֡������߶Ŷ���</p><p><sbrong>�������������ĺ��ѹ�</sbrong></p><p>����������һ���������������Զ�������ߺ��̳�����������롶�����������Զ�������������������ȡ����ϵ�������ʾ�Լ��Ѿ���֪�������Ϣ����֪�������Ϣ���Ҿ��Ĵ���绰��֤�����˺ܶ�����߹�ϵ�ȽϽ������ѣ�����û����֪������Щ���Ҹ���һֱ����ϵ��ֻ�Ǽ���Ƚ��٣�����������Ҳ�������š����Գ��յ���ȥ�������ϧ��˵������Ȼ���Ѿ������ˣ���Ҳ������˵ʲô��һ·�ߺá�֮��Ļ������������ĵ�һ��ר��������һ�����ģ��к���ĸ��飬���������������������ͦ�ѹ�����</p><p><sbrong>����</sbrong><a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\"><sbrong>����</sbrong></a><sbrong>�����컹��K���ĸ�</sbrong></p><p>������֪������ɱ��Ϣ�󣬳����ʾ�Լ�Ŀǰ���ںϷʣ�����Ҳ�Ǹոմӱ�����������֪�����Ϣ�ģ������Ļ��ˣ���������KTV���軹�������ĸ��أ���ô��ô�õ�һ�����þ�����û���أ��������ʾ�Լ���ǰ����յĹ�ϵ�ܺã������Գ����������˾�û���ټ��档����·���֮�󣬳���ֱ�Գ��յ��뿪�����Ծ�ʾ��������ƽʱӦ�ö������ߵ����ѣ���Ϊ��ʱ���겻��֮���е��˿��ܾ��Ѿ���Ҳ�������ˡ�����ĺܺ�ڣ����������һ���ҵ���������һ�������֣��࿪��������������������Ͳ�����ô����ѡ����ɱ���������˵�����Բ����㣡��������ʱ����</p><p><sbrong>����������Ϣ</sbrong></p><p><sbrong>��������ĸ�����󾯷�׷������</sbrong></p><p>���������˽⵽�����յĸ�����ȥ�����ꡣ����ǰ�������ڱ������˷�����ĸ�״�����ӵ��˱�����ס����֪������¶����Ů��ͻȻ��¥��ɱ�����յ�ĸ�ױ�ʹ�������������յ����������Ѹ�������������������¡����յľ������Ѿ����������յ�ĸ�����󱱾�����׷�������¥��ɱ�����ࡣ���߶Ŷ���</p><p>����<sbrong>�����˼� ��Ԯ��ϣ��Сѧ</sbrong></p><p>���������Ǹ��ر��а��ĵ��ˡ� 2004��4�£���Ϊ��ϣ�����̰��Ĵ�ʹ���ĳ��գ����������������򡪡���¡��ͩ����ΪԮ���ĵ�һ��ϣ��Сѧ�����У��������ڵ���Ԯ��һ��ϣ��Сѧ������������Գ���������ϣ��Сѧ������2006��6��14�գ�������������ٴ�������ͩ�����С·�ϣ�Ϊ����ǰ�����ֵĵ�һ��ϣ�������ӡ�����һ��ϣ��Сѧ��ɼ��ʡ������ϣ��й�����ḱ���鳤������Ϊ���հ䷢�ˡ�ϣ�����̡��������ƣ����߶�ʢ�޳��յ��ƾ١����պ͵¹������и���PeterMaffay������Ϊϣ��Сѧ�ĺ��������������������¸������ú��ӡ����Ա������ɽ�������ǵĹذ�����������󣬳��պ�ѧ���Ǻ�Ӱ��ǩ��������������������̨���������̨�͵¹�ý����ֳ��ɷá����߶Ŷ���</p><p><sbrong>������һ˵һ</sbrong></p><p><sbrong>�������Ѱ��ļ���</sbrong></p><p>������������������ʥ�ڣ��ưɵ��ɶ�����г�Ů����������̼������ֳ��գ�ȴ�ò��ҵ�һ��������������һ��������ˡ���һ������ͬ6��ǰ���˽�����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zgr.html\" target=\"_blank\">�Ź���</a>����һ��һ�����˾����㤡����ġ�</p><p>��������Ȧ��Զ���������ְ�ȱͷ�����涾��թƭ����䡢���������̼������ǵ��񾭣�Ҳ��ľ�����ǵ��񾭡����������͵��ϣ���Ҫ�ȴ��ϸ������������ʺš�������һ�����С�����ɱ��������֪��λ���Ѷ����磬�������Ϸ���������ɱ����Ϣ��������ǳ�ͷ��β�ļ����ţ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">������</a>ǰ�����������һ�Ρ�����ɱ�������ּ����ţ������ܻ�������һ�������Һ��Ǽٵġ������������ɱ����Ϣ������ʼʱ�����ݴ��������д��ųơ������۽������������Ȼͣ���ڡ�����ɱ����˼���׶Ρ���������ȷ����Ϣ�����յ�ȷ����˲��ҵķ�ʽ���������Լ����������̲�ס̾ϧ��Ϊʲô���ǡ�����ɱ������</p><p>����1993�꣬23��ĳ���ƾ�衶�����������Զ������һ�ڶ��죬ͬ��ר�����������漣������ٻ�ͷ������ר������¼�ĸ����������簮�ϱ����������ҡ�������Զ�Ҳ�������ķ�ʽ�������Ҳ�Ը����̫ƣ��������ÿһ�׶����������У���Ŀ���ġ�һλȦ���˸�̾��������һ�����ߵ��Ǹ�̳80������ĻԻ͡������쵽�ɶ����ٴӳɶ������׶������մ����˸ĸ￪�Żƽ�ʱ�ڱ�Ư��ĵ��ͣ�������80����������ֱ��ϵ����ǡ����������������ս��ȴ�޷���Ը�������֡�����ѡ��ǰ���������������˼䣬�����˰��ļ������Ӵ��Ժ����Ŀ�����Զ������ʹ��Ѫ�����������㲻���ˣ�Ҳ����һЦ������</p><p>�����ǵ����һ���ڵ����Ͽ������գ���һ������ǰ�����μ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wudw/index.html\" target=\"_blank\">���ά</a>���ֵ�һ�����ƽ�Ŀ���α����ֳ�Ʒ������裬�����ĳ�����ϸ��Ʒ���������ϵ���Ʒ������������ά�ɷ�ʱ���������ζ�������˼����󣬵�ʱ���������ǿɰ�����ô�����Ϊʲô���మ�Լ�һ���أ� �����</p><p><sbrong>�������յ���</sbrong></p><p>�������գ�1970��1��31��������ˮƿ��Ѫ�ͣ�O�ͼ��᣺����</p><p>�������յĵ�һ��ר���������������Զ��������1993�귢�У����ܴ���ϲ���������������ġ����˾Ͱ��ˡ�����ʮ������ɫ���ȵ���Ҳ�����ǹ�Ϊ������������ǰ����������ר�����ֱ�Ϊ�������������Զ�������������°����㡷��<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">��Ů�ˡ�</a>��������ͬ��ר������<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">�����Ͱ��ˡ�</a>��������ƭ�Լ�������13131����</p><p>���������������Զ����</p><p>�����Ҹ��㰮������˵���ѵ����������ʹ����һ�����ò��Ÿ�������㰮�Ͱ������˵���Ļ����߹���·ʲô�ǰ���ʲô�ǿ���ĳ���������������ӵ����ȴ�����Ҹ������������Զ�������޷����㿴����������������Զ�����о������˲�����������������Զ�������е����벻�ǹ��������������Զ�����ҵȴ��������¶�û����˼����װ��ͿҲû�л����������߲���Ѱ����̫ģ��</p><p>��������</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"������¥�����ֳ�ʵ�� С���ھ����۷׷�\r\" /></a>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml target=_blank>http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1100','','1092','45','1','1','<p>������������Ѷ 10��31�����磬���ݳ�<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>���켫һʱ�ĸ��ֳ�����¥������Ŀǰ���������Ѿ����������¥�ص㡣��С��������ܣ���������С����������޹�ʱ�ѷ���������¥��������¥ʱ��δ֪�����⣬��¥��׹��һ¥�ھӻ�԰����԰���һ���</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1101','','1093','45','1','1','<p>&nbsp;&nbsp; ����(10��31��)�賿�����ݳ��������������Զ�������ߺ���ڵ�Ů���ֳ���׹¥������ʬ���ڱ������Ӱ���ƥ�˻�԰����701��¥�����֣��ݳ�������¥��ɱ���������ָϵ�������¥����С����С������͸¶���������������޹�ʱ�ѷ��ֳ��յ�ʬ�塣�������о���ǰ���������޷���ʵ�������¥ʱ�䡣���</p>\r\n','0');
INSERT INTO `qb_news_content_1` VALUES ('1102','','1094','45','1','1','<p>&nbsp;&nbsp; ����(10��31��)�賿���ڵ�Ů���ֳ��յ�ʬ�壬�ڶ��Ӱ���ƥ�˻�԰����701��¥�����֣��ݳ�������¥��ɱ������39�ꡣ�����������������ɱ�������ɳ�����֤���Է�δ���ϡ����⣬���յĺ��ѻ�����Ҳ����������ȷ���˸���Ϣ��Ŀǰ����Ϊ��������¡��к��ѳƣ�������ǰΪ��������</p>\r\n<p>������������ʱ���޷�ȷ��</p>\r\n<p>�����������ָϵ�������¥����С����С������͸¶���������������޹�ʱ�ѷ��ֳ��յ�ʬ�塣�������о���ǰ�������޷���ʵ�������¥ʱ�䡣���յĺ��ѻ��������������ֶ���ȷ�ϳ��������������Գ�����Ϊ��������¡�</p>\r\n<p>���������˳�Ϊ������</p>\r\n<p>�����ݡ�����������������7ʱ��һ��Ů���걻��������һ����ҵ�һ¥С��԰�ڡ�������������һ������Խ���С��԰�ڣ�����20���꣬����ɫ���ס�ţ�п㣬�°ʹ�����һ����ִ�С�İ�ɫɴ����999������Ա�ϵ��ֳ���ȷ�����Ѿ�����������11ʱ��һ���Գ��������ѵ�����Ů���ܹ���������������ޣ���˵���Լ�ס�ڰ���ƥ�˻�԰һ�ڣ�֮ǰ������������������Լ���Ŀǰ��ס��701��¥�Ų㡣���񾭲������ˣ���ô��ô�벻�������������ź�����Ϣ�����ѱ߿ޱ���������Ծ���˵���������ϵ�����Լ���֪�飬��˵��߳��¶��˲��ܹ����ġ�</p>\r\n<p>�������˽⣬��������Ů���꣬��Ϊ���ա�</p>\r\n<p>���������˳Ƴ��յ绰�޷���ͨ</p>\r\n<p>�����������籱��ĳ���������˴Ӿ������ѿ��еõ���Ϣ���Ƴ��������Ѽ�����¥���������Ǹոճ��������������������ϸ�ڲ�û��͸¶�������������漴��Ȧ�м���ѯ�����飬���³�����¥��ɱ����Ϣ��Ȧ�кܿ촫�������������漴��ϵ���յľ�������÷����÷����Ҳ�ǽ���������ߵ绰���ŵ�֪����Ϣ��������û�нӵ��������κ�֪ͨ����Ҳ��ͼ��ϵ���գ����绰ʼ���޷���ͨ��</p>\r\n<p>����ǰ�����޻�Ӧ</p>\r\n<p>������������������Ȧ�������������Ļ���ǩԼ���ˣ������ϰ��������й�ʮ��������顣1994�꣬��������������ʶ��һ��������ﴴ�챱�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӣ���ʮ���������������07�������յ㡣09��7�£����Ĵ�ý�屨���˳������������ų����ٻ����Ϣ��֤ʵ��ǰ������������������Ϣ���١����������漴Ҳ��ϵ������������ĵ绰Ҳ���˽�������Ȧ��һλ�Գ��ձȽ��˽��������͸¶���Դ�����ǰ������������һֱ�ǳ���˳���������൱���䣬���������𽥵���ý�����ߡ����⣬����͸¶������(10��31��)������������ա�</p>\r\n<p>��������������Ӧ</p>\r\n<p>��������������ֱ��������������ɳ����˽⵽���������Ͻ������������ǵ�Ͻ��������¥������������Լ������˵���ϸ�������͸¶��</p>\r\n','0');
INSERT INTO `qb_news_content_1` VALUES ('1103','','1095','45','1','1','<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752244.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752244F346DT20091101044523_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752242.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752242F346DT20091101044515_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752240.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752240F346DT20091101044455_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752236.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752236F346DT20091101044431_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752237.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752246.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752246F346DT20091101044534_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752241.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752241F346DT20091101044502_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04452752245.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752245F346DT20091101044529_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752235.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752235F346DT20091101044422_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<br />\r\n<a href=\"http://ent.sina.com.cn/s/p/2009-11-01/04442752238.shtml\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752238F346DT20091101044443_small_h.jpg\" width=\"106\" height=\"160\" alt=\"��ͼ��������ЯŮ�Ѹ���ʥ�ɶԸ����Ʒ�Ů����\" /></a><br />\r\n<p>������������Ѷ 2009��11��1�����Ѷ��Ϣ�����죬<a href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">������</a>������ά�����������Ӵϡ�Lisa S��Ana R��Cara G��һ�����˾�����ʥ���ɶԣ������װ�㡣�������������Ů��Lisa.S���Բ����������������з����Ϊ���ۡ�(TungStar/�Ĳ�ͼ)</p>\r\n<p>����<a href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\" target=\"_blank\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\" width=\"18\" height=\"36\" /></a><br />\r\n<br />\r\n<br />\r\n����ת���� ������:<a href=\"http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml\" target=\"_blank\">http://ent.sina.com.cn/s/h/2009-11-01/04472752247.shtml</a></p>\r\n','0');
INSERT INTO `qb_news_content_1` VALUES ('1104','','1096','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg alt=��ҽȷ�Ͻ��ճ���������������Ѿ�����(ͼ)><br><br>��ҽ��������ͣʬ�䣬ţ�񻪳�����ʬ��Ҳ����ͣ�Ŵ˴�  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F329DT20091101003200.jpg alt=��ҽȷ�Ͻ��ճ���������������Ѿ�����(ͼ)><br><br>��ҽ�������ĵ�ֵ�๤����Ա͸¶��������ȷʵ���͵�����������������ʬ<br><br></left>\r<p>������������Ѷ Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>������(10��31��)�賿��¥��ɱ������������������ϸ������з�ҽ�������ģ�ֵ��Ĺ�����Ա��ʾ������������������˳��յ����塣���յ�����Ҳ�Ѿ��������������뿪�������ϸ�������ʾ�����͸¶�����/ͼ</p>				  ������ begin                                          <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/00282752164.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1105','','1097','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg alt=ͼ�ģ���������ʥ�ڿ��ɶ�--�������Ů��><br><br>�������Ů��  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ 2009��11��1�����Ѷ��Ϣ�����죬<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">������</a>������ά�����������Ӵϡ�Lisa S��Ana R��Cara G��һ�����˾�����ʥ���ɶԣ������װ�㡣�������������Ů��Lisa.S���Բ����������������з����Ϊ���ۡ�(TungStar/�Ĳ�ͼ)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04452752243.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1106','','1098','45','1','1','<left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg\" /></left><left>���մ�9¥����׹��һ¥С��԰</left><p>&nbsp;</p><left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_eUfDyH.jpg\" /></left><left>��������ʥ�ڻ����ȥ</left><p>&nbsp;</p>				  ������ begin  <left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i3.sinaimg.cn/ent/y/p/2009-11-01/1257028533_HIEkDi.jpg\" /></left><left>����ǰ��������</left><p>&nbsp;</p><left><img alt=���ֳ�����¥������ĸ���󾯷�׷������(��ͼ) border=\"1\" src=\"http://i2.sinaimg.cn/ent/y/p/2009-11-01/1257028533_NRq7w6.jpg\" /></left><left>�������ĳ��գ�ȴδ�⿪�Լ������֮��</left><p>����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\"><sbrong>����</sbrong></a><sbrong>֮����������йأ��·�������ǰ������������</sbrong></p><p>������������6��࣬�������������Ӱ���ƥ�˻�԰����701��¥��һ������Ů�Ӵ�9��¥��׹¥�������ݶ���֪����֤ʵ����������ƾ��<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>���ߺ���̳�����켮���ֳ��գ�����39�ꡣĿǰ���������Ը��𰸼����е��顣���յ��ɷ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/zhanchao/index.html\" target=\"_blank\">�ų�</a>��Ŀǰ���ں���������»鲻�õ�����ͻȻ��������Ѷ�������鼤���ر�ʾ�����ʧȥ����ϵ�����������⣬���������������ѡ������ݺ��������˹���͸¶���·�����ǡ������ǰ������������ա�</p><p><sbrong>����ҵ���޹�����ʬ��</sbrong></p><p>�����·���λ�ڰ���ƥ�˻�԰701¥1��һҵ���ҵ�С��԰�ڡ���������10��࣬�·������������𾯽��ߣ���10�����������п��أ�һ����İ���˿�������������ǰ����������ԶԶ�����������ѱ�����һ��ײ���</p><p>�������˽⣬���ȷ��ֵ���701¥2��Ԫ��һ��Ůҵ������Ůҵ�����ɷ򽲣�����6��࣬��������С���������ҵ�С������������һ����һ���ţ����һ���ͣ������������ܹ�ȥ������һ������Ů��ͷ����ſ�ڵ���һ����������ʱ�����˱��Ż��ˣ���æ����һ���������С����������һ���綼����Ͼ�������¼��Ҫ��Ȼ��ûؼҳԷ��ˡ���������˵����󣬼��߿���һ������Ů���ھ���������¼��</p><p><sbrong>����ͬ��Ů��˯����֪��</sbrong></p><p>����һ����Ը͸¶�����ı���˵�������ϵ�ʱ���7�㣬����һ����Ů�ӣ���ͷ���ߣ�����������泯�����ڵ���һ���������������°ʹ�����һ����ִ�С�İ�ɴ��������ò�Ͽ��������Ǹ����֣����һ���������򼱾Ⱥͱ����绰���ñ�����˵���·��󱣰��뾯����Ա��4��Ԫ���ѯ�ʣ��󾭷���Ů���Ǵ�9��׹�£�ͬ�ݵ���һ��Ů�ӵ�ʱ����˯��������֪����һ�������Ů���Ѿ����¡�</p><p>��������7��࣬���ȳ��ϵ��ֳ���ҽ����Ա����������Ů�ӽ������ȣ����ȷ��Ů���Ѿ���������һ��ҵ�������·����ɳ����볯���־ֵľ���ȫ���ˣ������ֳ����в鿴��������������������70��������Ĵ��ˣ���һ������Ů���֡�</p><p>�������������ָ����������Ӹ����ˡ�������˵����������С��ҵ����ס��һ�������޹���Ů��������ǰ���޺�����̫ɵ�ˡ����������Ѻܱ��ˣ�����뿪����λ����ƣ��������޺�Ů��Ϊ�����ա���˵�ǳ���ģ�����ԭ���������鷽���йء�����1�㣬�о��ֳ�������Ա�ϵ���������Ա�ٴζ��ֳ����п��飬30���ӹ��󣬾�����Ա��̳��롣���߱����ǹݵĳ����ߡ���󣬼������·��ؿ�����һ��ҵ���ҵĻ�԰��һƬ���أ��ѱ������ҳ������ӣ�����δ����Ѫ����</p><p>��<sbrong>���·�������ǰ������</sbrong></p><p>����������1993����ʽ����������ר���������������Զ�������㴴��150�������ۼ�¼��1994�꣬��������������ʶ����������ﴴ�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӡ�����������Ƴ��������˾Ͱ��ˡ����������ҡ��������˿ڵĸ�����2007����ף����պ������ﱻ����顣����7�£������ڳɶ����������ų���Ǽǽ�顣��8�·ݵ�EP�����յ��������֡����ŷ������ֳ��������뵣�μ����ֵ��ų��御�����ۺ�Ĭ����</p><p>������ý�屨���ƣ�����������ȥ������ǿ�Ҵ��š���ǿ�Ƕ��������ŵĸ質��Ա�����ݳ��������������衷�����ͳ���˽�����ƣ��������޻���̸�Ĺ��ۡ�����ǿ�ĵ绰ʼ�մ������˽�����״̬������׹¥��ɱ����Ϣ��������������˷׷ױ�ʾ���Խ��ܡ���һλ�Գ��ձȽ��˽��Ȧ����ʿ͸¶���Դ�����ǰ������������һֱ�ǳ���˳���������൱���䣬���������𽥵���ý�����ߡ����⣬����͸¶һ���ǳ���Ҫ����Ϣ������������������գ������������Ӵ���������ɱ����Ϣ���������ꡣ������ʱ����������������</p><p><sbrong>��������²�</sbrong></p><p><sbrong>����������ǰ���أ��ҶԻ�����ʧ��</sbrong></p><p>�������³�����ɱ��ԭ���ж��ְ汾��һ��˵�������ն��Լ����������Ʋ����¸��ʧ����һ��˵������������Ȧ�������Ҹе��ֲ������£������������������������ձ��˵���Ǹ��鲻˳������Ѱζ���ǣ�10��31���ǳ���ǰ������������ա����˽⣬����������ճﱸ�ú����֣�����Ȧ�����Ѷ�ǰȥף�أ����˲���˼����ǣ�����ȴѡ����ǰ�����յ�����ɱ��</p><p><sbrong>����ǰ���������</sbrong></p><p>��������һλ֪���˸��߼��ߣ�������ɱ������Ϊ��������յ�ǰ���Ǳ��������Ļ����ܡ�1998�����죬Ӧ�������룬��������������պ��������ڱ�������һ�ٷ������˵�����Ҳ�״��ع⡣</p><p>����������������ѧ�ձ������ɹ�������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">�ƾ�����</a>���й����г��ƹ㡣1994�꣬���ڹۿ����ڱ����ֶ��ݳ���ʱ����ʶ��<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/lhyd/index.html\" target=\"_blank\">�ֻ��ֶ�</a>�ͳ��ա�������һ��󴴰��˱��������Ļ�ʱ�����ճ�������ǩԼ���ˡ�2003�꣬���������۹��ȴ���Ѫ��������һֱ���������ϸ���չˣ����ʹ������˽�����Ϣ�����˵ġ����޵ꡱ������ˡ��ڱ��������ֻء�������ҡ���ֶӣ���ǩ����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">����</a>��һ�ȳ�Ϊ�й���Ƭ��ҵ���м�����������2006�괺���ڱ����ɷ�����<a class=\"akey\" href=\"http://ent.sina.com.cn/f/v/cctvcw09/index.shtml\" target=\"_blank\">����</a>�������գ�����������ضԼ���˵������������ô�����������ң���ҪΪ��дһ���飬�����ǵİ�����¹��������¡���������2007��6�³���ĳ��վͻȻ�������ϣ������Ϲ�������������������������ϵ��������������������飻���ƣ������������ܲ������˵ķ��޵꣬��תͶ<a class=\"akey\" href=\"http://huayi.sina.com.cn/\" target=\"_blank\">�����ֵ�</a>�ģ����ҳ����Ϲ������ﾭӪ�ġ������Ļ�����˾�������Ļ�ɢ��ֻʣ7�ˡ�����2008��3�£����պ��������������ˡ�</p><p><sbrong>�����Ի�����ʧ��</sbrong></p><p>������������������������һֱ���䣬����Զ�빫�ں�ý�����Ұ������һ��Ѱ�����������������ų���󣬲���ȼ�������ϣ����</p><p>�������ܽ���7�£��������ų���ص��ɶ���ʽ�����˽��������������������������������˳������ֹ����ң����������ַ����ٴ����£���ǰ��������Ҳ�����µĻ�����ʾ��ף���������ų�����󣬳��ղ�û�ие��Ҹ�����ʱʱ˼��������ݴ����ų���Ϊ�����ص����������ռ��Σ����նٸо���������ǰ����������ɱ��һ�Σ��������������ȲŻ��˹���������7�£����ջص��ɶ�����֤�����������������ʳ��գ���������ô�������벻��������С��˵�����պϣ���ʵ�ҶԻ�����ʧ������</p><p>�������գ���ݴ�ͨ�����Ϲ��ų���绰����͸¶�����ʳ�����ɱһ�£��ų����������ٵ�˵���������ڵ�˼ά�ܻ��ң�������һƬ�հף����޷�ƽ���������Բ�����û�а취�ش�����κ����⣬�벻Ҫ�����ˡ�����һ��׷��֮�£�����Ȼ�����ظ�ͬ���Ĵ𰸣��������������߶Ŷ���</p><p><sbrong>��������ʹϧ</sbrong></p><p><sbrong>������û�����¸��������ˣ�</sbrong></p><p>��������ǰ������������������ܼ��߲ɷ�ʱ������������˵��������6ʱ�����յ����ָ����ң�������¥��ɱ�ˡ��������Ҽ�ֱ�����ţ����������������ϰ壬Ҳ�ǳ��յ�ǰ������������ա��һ�˵�������ϰ巢ף������Ϣ�أ��Һͳ��ն����Ĵ��ˣ��ֶ���һ����˾�����������������磬����ܺá���������ǰ���뿪�����Ļ�������ռ������ˣ�����ͨ�绰���������һ�γ�ϯ��������ǽ����߰��·ݹ��߹�˾����ġ����ɸ������ư񡱣�������Ϊ�佱�α����ࡣ���Ǽ���һ���档��ʱ�����մ��ú�ʱ�У�����״̬�ǳ��á��������Ĵ������������������ң�������׼�����¸衣������40���ˣ�Ҫ�ص�����ɶ������쿪һ����������ʱ����˵����һ����֧���㡣���벻�����¸軹û�������������ˣ���������һ�������ˣ��ø��֡������߶Ŷ���</p><p><sbrong>�������������ĺ��ѹ�</sbrong></p><p>����������һ���������������Զ�������ߺ��̳�����������롶�����������Զ�������������������ȡ����ϵ�������ʾ�Լ��Ѿ���֪�������Ϣ����֪�������Ϣ���Ҿ��Ĵ���绰��֤�����˺ܶ�����߹�ϵ�ȽϽ������ѣ�����û����֪������Щ���Ҹ���һֱ����ϵ��ֻ�Ǽ���Ƚ��٣�����������Ҳ�������š����Գ��յ���ȥ�������ϧ��˵������Ȼ���Ѿ������ˣ���Ҳ������˵ʲô��һ·�ߺá�֮��Ļ������������ĵ�һ��ר��������һ�����ģ��к���ĸ��飬���������������������ͦ�ѹ�����</p><p><sbrong>����</sbrong><a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\"><sbrong>����</sbrong></a><sbrong>�����컹��K���ĸ�</sbrong></p><p>������֪������ɱ��Ϣ�󣬳����ʾ�Լ�Ŀǰ���ںϷʣ�����Ҳ�Ǹոմӱ�����������֪�����Ϣ�ģ������Ļ��ˣ���������KTV���軹�������ĸ��أ���ô��ô�õ�һ�����þ�����û���أ��������ʾ�Լ���ǰ����յĹ�ϵ�ܺã������Գ����������˾�û���ټ��档����·���֮�󣬳���ֱ�Գ��յ��뿪�����Ծ�ʾ��������ƽʱӦ�ö������ߵ����ѣ���Ϊ��ʱ���겻��֮���е��˿��ܾ��Ѿ���Ҳ�������ˡ�����ĺܺ�ڣ����������һ���ҵ���������һ�������֣��࿪��������������������Ͳ�����ô����ѡ����ɱ���������˵�����Բ����㣡��������ʱ����</p><p><sbrong>����������Ϣ</sbrong></p><p><sbrong>��������ĸ�����󾯷�׷������</sbrong></p><p>���������˽⵽�����յĸ�����ȥ�����ꡣ����ǰ�������ڱ������˷�����ĸ�״�����ӵ��˱�����ס����֪������¶����Ů��ͻȻ��¥��ɱ�����յ�ĸ�ױ�ʹ�������������յ����������Ѹ�������������������¡����յľ������Ѿ����������յ�ĸ�����󱱾�����׷�������¥��ɱ�����ࡣ���߶Ŷ���</p><p>����<sbrong>�����˼� ��Ԯ��ϣ��Сѧ</sbrong></p><p>���������Ǹ��ر��а��ĵ��ˡ� 2004��4�£���Ϊ��ϣ�����̰��Ĵ�ʹ���ĳ��գ����������������򡪡���¡��ͩ����ΪԮ���ĵ�һ��ϣ��Сѧ�����У��������ڵ���Ԯ��һ��ϣ��Сѧ������������Գ���������ϣ��Сѧ������2006��6��14�գ�������������ٴ�������ͩ�����С·�ϣ�Ϊ����ǰ�����ֵĵ�һ��ϣ�������ӡ�����һ��ϣ��Сѧ��ɼ��ʡ������ϣ��й�����ḱ���鳤������Ϊ���հ䷢�ˡ�ϣ�����̡��������ƣ����߶�ʢ�޳��յ��ƾ١����պ͵¹������и���PeterMaffay������Ϊϣ��Сѧ�ĺ��������������������¸������ú��ӡ����Ա������ɽ�������ǵĹذ�����������󣬳��պ�ѧ���Ǻ�Ӱ��ǩ��������������������̨���������̨�͵¹�ý����ֳ��ɷá����߶Ŷ���</p><p><sbrong>������һ˵һ</sbrong></p><p><sbrong>�������Ѱ��ļ���</sbrong></p><p>������������������ʥ�ڣ��ưɵ��ɶ�����г�Ů����������̼������ֳ��գ�ȴ�ò��ҵ�һ��������������һ��������ˡ���һ������ͬ6��ǰ���˽�����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zgr.html\" target=\"_blank\">�Ź���</a>����һ��һ�����˾����㤡����ġ�</p><p>��������Ȧ��Զ���������ְ�ȱͷ�����涾��թƭ����䡢���������̼������ǵ��񾭣�Ҳ��ľ�����ǵ��񾭡����������͵��ϣ���Ҫ�ȴ��ϸ������������ʺš�������һ�����С�����ɱ��������֪��λ���Ѷ����磬�������Ϸ���������ɱ����Ϣ��������ǳ�ͷ��β�ļ����ţ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">������</a>ǰ�����������һ�Ρ�����ɱ�������ּ����ţ������ܻ�������һ�������Һ��Ǽٵġ������������ɱ����Ϣ������ʼʱ�����ݴ��������д��ųơ������۽������������Ȼͣ���ڡ�����ɱ����˼���׶Ρ���������ȷ����Ϣ�����յ�ȷ����˲��ҵķ�ʽ���������Լ����������̲�ס̾ϧ��Ϊʲô���ǡ�����ɱ������</p><p>����1993�꣬23��ĳ���ƾ�衶�����������Զ������һ�ڶ��죬ͬ��ר�����������漣������ٻ�ͷ������ר������¼�ĸ����������簮�ϱ����������ҡ�������Զ�Ҳ�������ķ�ʽ�������Ҳ�Ը����̫ƣ��������ÿһ�׶����������У���Ŀ���ġ�һλȦ���˸�̾��������һ�����ߵ��Ǹ�̳80������ĻԻ͡������쵽�ɶ����ٴӳɶ������׶������մ����˸ĸ￪�Żƽ�ʱ�ڱ�Ư��ĵ��ͣ�������80����������ֱ��ϵ����ǡ����������������ս��ȴ�޷���Ը�������֡�����ѡ��ǰ���������������˼䣬�����˰��ļ������Ӵ��Ժ����Ŀ�����Զ������ʹ��Ѫ�����������㲻���ˣ�Ҳ����һЦ������</p><p>�����ǵ����һ���ڵ����Ͽ������գ���һ������ǰ�����μ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wudw/index.html\" target=\"_blank\">���ά</a>���ֵ�һ�����ƽ�Ŀ���α����ֳ�Ʒ������裬�����ĳ�����ϸ��Ʒ���������ϵ���Ʒ������������ά�ɷ�ʱ���������ζ�������˼����󣬵�ʱ���������ǿɰ�����ô�����Ϊʲô���మ�Լ�һ���أ� �����</p><p><sbrong>�������յ���</sbrong></p><p>�������գ�1970��1��31��������ˮƿ��Ѫ�ͣ�O�ͼ��᣺����</p><p>�������յĵ�һ��ר���������������Զ��������1993�귢�У����ܴ���ϲ���������������ġ����˾Ͱ��ˡ�����ʮ������ɫ���ȵ���Ҳ�����ǹ�Ϊ������������ǰ����������ר�����ֱ�Ϊ�������������Զ�������������°����㡷��<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">��Ů�ˡ�</a>��������ͬ��ר������<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">�����Ͱ��ˡ�</a>��������ƭ�Լ�������13131����</p><p>���������������Զ����</p><p>�����Ҹ��㰮������˵���ѵ����������ʹ����һ�����ò��Ÿ�������㰮�Ͱ������˵���Ļ����߹���·ʲô�ǰ���ʲô�ǿ���ĳ���������������ӵ����ȴ�����Ҹ������������Զ�������޷����㿴����������������Զ�����о������˲�����������������Զ�������е����벻�ǹ��������������Զ�����ҵȴ��������¶�û����˼����װ��ͿҲû�л����������߲���Ѱ����̫ģ��</p><p>��������</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"������¥�����ֳ�ʵ�� С���ھ����۷׷�\r\" /></a>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml target=_blank>http://ent.sina.com.cn/y/p/2009-11-01/06352752330.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1107','','1099','45','1','1','<p>������������Ѷ 10��31�����磬���ݳ�<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>���켫һʱ�ĸ��ֳ�����¥������Ŀǰ���������Ѿ����������¥�ص㡣��С��������ܣ���������С����������޹�ʱ�ѷ���������¥��������¥ʱ��δ֪�����⣬��¥��׹��һ¥�ھӻ�԰����԰���һ���</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/20232752076.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1108','','1100','45','1','1','<left><img alt=������¥������δ�ų���ɱ����3����ǰ���ټ� border=\"1\" src=\"http://i1.sinaimg.cn/ent/y/2009-11-01/U3996P28T3D2752350F326DT20091101083502.jpg\" /></left><left>������¥�������·���Ϊ�Ų��¥��</left><p>������һ��<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>���ߺ���ڵظ���<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>�������ڱ������������������ƥ�˻�԰����¥����������39�ꡣ�д��ų�������Ϊ�ڶ��θ����������۶���ɱ��Ҳ����Ϣ�ƣ����侱�����ˣ����Ծ�����δ�ų���ɱ���ܡ�Ŀǰ�����ѽ�����顣</p>				  ������ begin  <p>����<sbrong>�����Ϲ��ų��壺�ҵ�����һƬ�հ�</sbrong></p><p>����������Ȧ���˱���˵�����ڡ����������衷�ݳ�����ǿ�ļ�����¥��ɱ�����������µ���յľ�������С�㣬����ʾ�Դ�10��25�յĻ������ڻ������ֺ�Ҳ����ʧȥ��ϵ�������ĵ绰��Ҳ��ͨ���ղ���Ҳ����ǿ��绰�ˣ��������ӡ������Ѿ������ˣ�Ҳ�ڵ���Ϣ����</p><p>������������ϵ��һλ���ֵľ����ˣ�����ʾ�Լ�����˵��������飬������ɱ�ˣ������Ǹ�����������⡱�����⣬ʮ���¹�˾�ϰ�¬��ǿ�ڴ���֮��֤ʵ�˳�����ɱ����Ϣ������ʾ�������ر����ܣ�ϸ���Ҳ���˵�ˡ���</p><p>������ý�����߳��������Ϲ��ų��塣�绰���˺ܾ�֮���ų���Ž����绰�����ʳ����Ƿ���ɱһ�£����������ٵ�˵���������ڵ�˼ά�ܻ��ң�����������һƬ�հף����޷�ƽ���������Բ������޷��ش�����κ����⡣����һ��׷��֮�£�����Ȼ�����ظ�ͬ���Ĵ𰸣��������������ʳ�����״����˵�����Ҳ�֪������֪������Ҳ��ϵ���������Բ������㲻Ҫ�ٱ����ˡ�����������9ʱ������Ϣ�ƣ����������ɷ��ų����Ѿ�֤ʵ������������Ϣ��</p><p>����������Ϣ�ƣ������ǳ���ǰ������������ա�</p><p>����<sbrong>�ھ��޹�����ʬ����������ӹ�ؿ޺�</sbrong></p><p>������Ϥ������ʬ��������7ʱ�����֡��·����ڱ������������廷������İ���ƥ�˻�԰С���ڡ���ʱ��С���ھ�������޹�ʱ���ֵģ��漴�������ݳƣ����ߵ�ʱͷ��һ��ñ�ӣ�����ɫ���ס�ţ�п㣬���ϻ�����һ˫��ƤЬ���������룬�°Ϳ�������������һ����ִ�С�İ�ɫɴ����������Ա�ϵ��󣬸�Ů�������ĵ�ͼ����Ů����������������</p><p>����һλ������߼��ߣ����汻����һ���ӣ����������������ҵص�����������Ů��Ӧ����׹¥�����������ָ����������Ӹ����ˡ�������˵����������С��ҵ�������޹���Ů������ǰ���޺�������̫ɵ�ˣ��񾭲������ˣ���ô��ô�벻��������������Ҳ�ܱ��ˣ�����뿪����λ����ƣ��������޺�Ů��Ϊ�����ա���˵�ǳ���ġ������ź�����Ϣ�����ѱ߿ޱ���������Ծ���˵������Լ���֪�飬��˵��߳����˲��ܹ����ġ�</p><p>����С������͸¶��ʬ��һ���綼�������죬ֱ����������ű����ߣ�ʮ�ֱ��ҡ���С������͸¶��Ŀǰ����׹����·�С��԰���ƺ��ȫ���������ߣ�ֻʣ�¿տ���ء�</p><p>����<sbrong>ȷ�������д���������</sbrong></p><p>����������������ʱ���µ�˴δ����ı��������ɳ�����ֵ����񾯳�������������¥�����飬�����Ϲ�����¥�ߵ���ݡ����߱�ʾ��ȷ���ǲ��ǳ���ʱ��ֵ���񾯱�ʾ�����Ҳ��ܻ�Ӧ������⣬�����绰�Ķ�˵���������ѡ���</p><p>������ý��ͬ������߽���˵�����ղ��øո��»飬����Ӧ�û�������ɱ��˵����Щǣǿ�������ղ���ס�ڸ�С����Ϊʲôʬ����������һλ������ǿ���ڵ�С����ԭ�����˷ѽ⣬����Ϣ�Ƴ�����ǰ����ȥ�ҹ���ǿ������ǿʼ��δ�ӵ绰���������߽ظ�ʱ����������ԭ����Ȼ������ �������� ���������� ����</p><p>����<sbrong>�������</sbrong></p><p>����<sbrong>������λ���ʧ��</sbrong></p><p>��������Ϊ��ԭ�����39��ĳ���ѡ����������·�����ҲҰ����������»��ĵ����������֪����ʿ�����͸¶�����ձ���翴�õĵڶ��λ�����ʵ����һ����˳�����յľ������������ż����ѹ����</p><p>�������գ�һλ֪����ʿ���߼��ߣ��ų���һ��ʼ�Գ��ջ��ǰٰ��۰��ģ�����������ʼ���������ҪǮ�����������յ����п�һֱ���ų������ղ�ʹ�ã������ϵľ��������»����������Ӱ�����ͬʱ��ǰ�������������ͱ����õö࣬�Ա�֮�£����վ���ѹ����Ȼ���󣬶�����������10��31�գ����þ���ǰ������������ա� ʵϰ���� ���Ƚ�</p><p>����<sbrong>�������</sbrong></p><p>����<sbrong>������ǰ�ټ�</sbrong></p><p>�������յĵ�һ���ɷ��ǡ������Ļ��������������������ѧ�ձ������ɹ�������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/j/f/jiujfz.html\" target=\"_blank\">�ƾ�����</a>���й����г��ƹ㡣1994�꣬��������������ʶ��һ��������ﴴ�챱�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӡ����˵ġ����޵ꡱ������ˡ��ڱ��������ֻء�������ҡ���ֶӣ���ǩ����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/yangkun/index.html\" target=\"_blank\">����</a>��һ�ȳ�Ϊ�й���Ƭ��ҵ���м�������</p><p>����2007��5�£���ý�屬����������ǩԼ�������Ĺ�ϵ���������ղ�����������ģ�������Ա�������������ﳳ�ܡ�ͬ�꣬������顣һ��ѻ������ú��صĳ��ջ����һ����</p><p>����֮�������ʱ�䣬�������������ų����ʶ����2009��7���ڳɶ���ȡ���֤�����������Ȼ�ܾ���ý���׷�ʣ�����վ����̨�����������������Һ��ų�������������һ����ܵ��ܶණ�����������ҡ��� �ۺ�</p><p>����<sbrong>���յ���</sbrong></p><p>����1970��1��31���������졣</p><p>����1993�귢�е�һ��ר�� �������������Զ������������150�������ۼ�¼���ٻ���������㲥��̨����ݳ��������˽�����������ַ����� �����°����㡷��<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/kamli/index.html\" target=\"_blank\">��Ů�ˡ�</a>��<a class=\"akey\" href=\"http://ent.sina.com.cn/v/m/f/aijal/index.html\" target=\"_blank\">�����Ͱ��ˡ�</a>��������ƭ�Լ�����ר����2003��12�»�� ������ܾ֡����� �й�ԭ�������񡱵ġ�������Ů���ֽ�����2006���õ�����й���������Ů���ֽ���</p><p>������־���ۣ���ʱ�С��й�ʱװ��������һλ����װ�Ϸǳ��и��Եġ�ʱ�еġ�����ϲ����ʵ���ɸ��֡���ʱװ�����������ˣ����Ǹ����������Լ�������ʵ���ܵ��ˡ��������ܿ������ӡ������������Զ��������<a class=\"akey\" href=\"http://ent.sina.com.cn/v/f/bianlian/index.html\" target=\"_blank\">��������</a>�ٵ������Ͱ��ˡ����������գ���Ů������������������ǵ�����Ͱ��飬���ǵļ�ǿ�����ᣬ���ǵ������ϸ�塣 �ۺ�</p>		<a href=\"http://video.sina.com.cn/ent/y/2009-11-01/130856347.shtml\r\"><img src=\"http://p1.v.iask.com/849/770/25700988_0.jpg\" width=\"94\" height=\"71\" alt=\"������¥�����ֳ�ʵ�� С���ھ����۷׷�\r\" /></a>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-11-01/08352752350.shtml target=_blank>http://ent.sina.com.cn/y/2009-11-01/08352752350.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1109','','1101','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i1.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752065F326DT20091031194116.jpg alt=Ů���ֳ�����¥��ɱ������ǰ��������ǿ��><br><br>���� ����ͼƬ  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ �������ֽ�������õ���Ϣ��������Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>����������¥��ɱ����������ԭ���ꡣ</p><p>�����������籱��ĳ���������˴Ӿ������ѿ��еõ���Ϣ���Ƴ��������Ѽ�����¥���������Ǹոճ��������������������ϸ�ڲ�û��͸¶�������������漴��Ȧ�м���ѯ�����飬���³�����¥��ɱ����Ϣ��Ȧ�кܿ촫��������</p><p>���������漴��ϵ���յľ�������÷����÷����Ҳ�ǽ���������ߵ绰���ŵ�֪����Ϣ��������û�нӵ��������κ�֪ͨ����Ҳ��ͼ��ϵ���գ����绰ʼ���޷���ͨ��</p><p>���������������˽⵽�����ս���ȥ������ǿ�Ҵ��š���Ȧ��֪����ʿ���ܣ���ǿ�Ƕ��������ŵĸ質��Ա�������ݳ���һ�������˿ڵĸ��������������衷�����ͳ���˽�����ƣ��������޻���̸�Ĺ��ۡ����������漴��ϵ��ǿ�������ĵ绰Ҳʼ�մ������˽�����״̬��</p><p>������������������Ȧ�������������Ļ���ǩԼ���ˣ������ϰ��������й�ʮ��������顣1994�꣬��������������ʶ��һ��������ﴴ�챱�������Ļ������ղ�����Ϊ����ǩԼ���ˣ�Ҳ�����������ӣ���ʮ���������������07�������յ㡣09��7�£����Ĵ�ý�屨���˳������������ų����ٻ����Ϣ��֤ʵ��ǰ������������������Ϣ���١����������漴Ҳ��ϵ������������ĵ绰Ҳ���˽�����</p><p>�������ڽ�������������ʥ�ڣ���֮ǰȦ����������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/bys.html\" target=\"_blank\">������</a>��ɱ���ļ���Ϣ����˴�����˶Ը���Ϣ����ʵ�Ա������ɡ�����Ȧ��һλ�Գ��ձȽ��˽��������͸¶���Դ�����ǰ������������һֱ�ǳ���˳���������൱���䣬���������𽥵���ý�����ߡ����⣬����͸¶һ���ǳ���Ҫ����Ϣ������(10��31��)������������գ������������Ӵ���������ɱ����Ϣ�����˲��ܲ��������롣</p><p>��������������ֱ��������������ɳ����˽⵽���������Ͻ������������ǵ�Ͻ��������¥������������Լ������˵���ϸ�������͸¶������Ŀǰ��������Ҳ�޷����κιٷ�������ȷ�ϳ�����ɱ��������Ϣ������/��</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/19412752065.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/19412752065.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1110','','1102','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752406.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752406F346DT20091101102944_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752406F346DT20091101102944.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752401.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752401F346DT20091101102929_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752401F346DT20091101102929.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752397.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752397F346DT20091101102914_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752397F346DT20091101102914.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752399.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752399F346DT20091101102921_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752399F346DT20091101102921.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752400.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752400F346DT20091101102925_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752400F346DT20091101102925.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752402.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752402F346DT20091101102932_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752402F346DT20091101102932.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752398.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752398F346DT20091101102917_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752398F346DT20091101102917.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752404.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752404F346DT20091101102937_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752404F346DT20091101102937.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10292752405.shtml\" target=\"_blank\"><img alt=�������������۽�������������������(��ͼ) src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752405F346DT20091101102941_small_h.jpg\" style=\"border:solid 1px #000000;\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U2231P28T3D2752405F346DT20091101102941.jpg\" /></a></br><p>������������Ѷ&nbsp;����ʱ��11��1����Ϣ�������ý�屨����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/guanxinyan/index.html\" target=\"_blank\">������</a>������3����������10��24����ӡ����嵺���л��񣬹�������������Ѽ�֤�����Ϲ�����һ�ǣ����ߺ��������Ҹ����øж�������������������������������ӡ�</p><p>����������3��ǰ�ڲ�һ�ǽ�������ʶ��ʱ�Ϲ���ǣ�����һ�ļ��ϣ���10��24�ռٰ��嵺����300��Ԫ�������񣬽�����ȫ������ô��ͬѧ���ֵ������в�һ����½���͵ȣ���һ��Ů��China������Ů��������ϯ�ļα�������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/siufaimak/index.html\" target=\"_blank\">���׻�</a>�򸾼����ܳ�Ů��<a class=\"akey\" href=\"http://ent.sina.com.cn/m/f/daisy/index.html\" target=\"_blank\">Daisy</a>����������������Ѽ�֤�³�Ϊ��̫̫��</p><p><sbrong>������ʽȹ������</sbrong></p><p>����������صĹ��������������ý�巢�Ŷ��Ž���գ����а�������ʽ��ɴ����ʽȹ��֮��Ƭ�������ܴ���ʽ������ﳤ��Ϊ�����������Դ��а������ͳ��֣���������ж����۷���⡣</p><p>����������͸¶����ǰ���ز�ͣ���꣬��һ�ȵ��Ľ�鵱�յ���������˵������ΪҪ���̻����Һ��칫������ע��ʱ������ã�����û���ƶ䣬ûӰ����̻�������Ҫ�ж���֪���Լ����Ҹ����������˸ж�����</p><p><sbrong>������۲����ɶ�</sbrong></p><p>�����ʵ����Ŭ�����ˣ�������˵�������Ϲ��й�ʶ�����������BB������������ν�Ὣ��ɴ����Ů�������⣬������������Ϊ�����״̬ʾ�ˣ���ǰŬ�����˶����ʣ����Ϲ���������4.5���������������ڰ��嵺�棬���֮�´�Ҷ����ˡ����������־���11��14�ռ�����л�˽�˻���Roxie�����ɶԡ�(����/��)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/h/p/2009-11-01/08242752348.shtml target=_blank>http://ent.sina.com.cn/s/h/p/2009-11-01/08242752348.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1111','','1103','45','1','1','	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752257.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752257F346DT20091101050325_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752257F346DT20091101050325.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752256.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752256F346DT20091101050320_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752256F346DT20091101050320.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752251.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752251F346DT20091101050249_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752251F346DT20091101050249.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752255.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752255F346DT20091101050312_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752255F346DT20091101050312.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752259.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752259F346DT20091101050334_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752259F346DT20091101050334.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752252.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752252F346DT20091101050253_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752252F346DT20091101050253.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752263.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752263F346DT20091101050354_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752263F346DT20091101050354.jpg\" /></a></br>	<br width=\"140\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752248.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752248F346DT20091101050227_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752248F346DT20091101050227.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752262.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752262F346DT20091101050349_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752262F346DT20091101050349.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752254.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752254F346DT20091101050309_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752254F346DT20091101050309.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752253.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752253F346DT20091101050303_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752253F346DT20091101050303.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752258.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752258F346DT20091101050330_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752258F346DT20091101050330.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752250.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752250F346DT20091101050243_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752250F346DT20091101050243.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752261.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752261F346DT20091101050344_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752261F346DT20091101050344.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05022752249.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752249F346DT20091101050238_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752249F346DT20091101050238.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752260.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752260F346DT20091101050339_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752260F346DT20091101050339.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/05032752264.shtml\" target=\"_blank\"><img alt=��ͼ����S��־��T̨���㹧ϲ�Ű�֥�ٶȻ��� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752264F346DT20091101050359_small_h.jpg\" style=\"BORDER-BOTTOM: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-RIGHT: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752264F346DT20091101050359.jpg\" /></a></br><p>������������Ѷ 2009��11��1��̨����Ϣ����̨Ů��<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/xuxy.html\" target=\"_blank\">��S������</a>ǣ��С��<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/louzhx/index.html\" target=\"_blank\">��־��</a>��Ϊ���˺������Ե�ţ�п��¿����㣬����ĺ���������Ĭ��ʮ�㣬��̨�Ϻ���չʾ����ʮ������������̨�¹��ڴ��۸���</p><p>������Ȼ�մ��ڵػ���������̨����¶Ȼ���������ʮ�����ң���T̨�ϣ����˴����촩�����޷����㣬���˲��ٿ�ͷ����������Ĭ��ʮ�㣬����רҵ����</p><p>��������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/xtf.html\" target=\"_blank\">л����</a>��������<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/zbz.html\" target=\"_blank\">�Ű�֥</a>�Ի����������£���S��ƣ���ǰԼ�Ű�֥�Է�ʱ��Ԥ�жԷ����ڻ��У��������˹�����Ϣ������Ȼ��Է����ģ���Ϊ��������ף����(TungStar/�Ĳ�ͼ)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/05072752265.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/05072752265.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1112','','1104','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i0.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F326DT20091101082716.jpg alt=����ϼ���Ϲ�������������̹�Բ���������(ͼ)><br><br>����ϼר���չ���Ů��������������  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i3.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F329DT20091101082716.jpg alt=����ϼ���Ϲ�������������̹�Բ���������(ͼ)><br><br>��С��������Զ���������ʽ��������Ĭ��<br><br></left>\r<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/m/2009-11-01/U2231P28T3D2752349F328DT20091101082716.jpg alt=����ϼ���Ϲ�������������̹�Բ���������(ͼ)><br><br>�����ɷ������Ӵ������ƣ���ϸ�ĵ�ΪС������<br><br></left>\r<p>������������Ѷ&nbsp; ����ʱ��11��1����Ϣ�������ý�屨��������ˮ���󡱷���ϼ����(10��31��)���Ϲ�����������۳�ϯСĸţ����������2009�����Ʊ���������һŮ���ӵ���̹�Զ���Ҫ�չ�����������</p><p><sbrong>���������Ʋ�������</sbrong></p><p>����һֱ����Э���ڵ�ƶ����ͥ���������Ĺ���Сĸţ��۷ֻᣬ������ά�����ǹ�԰����Сĸţ����������2009�����Ʊ������������ۡ����еȶ��������ҵ�Է���ɶ��飬�μӱ����桢��10��11����ʽ�ı�����������۱�630��Ԫ��</p><p>�������չ���Сĸţ��۷ֻᶭ�¾���ϯ�����ɡ����¾ֳ�ԱҶ���ҡ�Сĸţ���Ĵ�ʹ����ϼ���Լ�����˶�Ա��诼���С��һ���ϯ����޽ܳе�bma�����ǻͳ�������̣�Ϊ�Ʋ��ʺ��˵��޽ܳУ��������ػ�����10��ԪͶ���ɾ������ػݼ�����Сĸţ��ȫ�����ֻ��50ƿ�����ģ�ΪСĸţ�����20��Ԫ�ƿ</p><p><sbrong>������ս�Ѽ����˷�ӵ��</sbrong></p><p>����һֱר���չ���Ů�ķ���ϼ������Ϊ������ʱ���¶�Ů�������յ��������ɷ������ɶ����������ڼ������ɷ������Ӵ�����˵����ƣ���ϸ����㼰Ϊ�����¡����ٳ�ϯ�������ϵ�С����Ϊȫ�����㣬�������������������ա�С���������ž���������Ǯ�⣬���������������������廭ʦCarrie Chau��Ƶ�T�����������ؽ��ڳ���ý��ѩ�����</p><p>�������ڰ���̽�û�����С����̹��������������ܹ���ǿ������������е��Լ�����ч����˵�������Ǻ�������С��ÿ����ѧҪ����1Сʱ���һ���10���Ӿ������ᱳʹ��������Ϊ����Ҫ�չ�С���������˶��������˺ܶ���Ƭ����������ǿ�����С��͸¶��Ů�ѾͶ�Сѧһ�꼶���϶�����׶�԰�����ڻ�������������Ů��С�����Լ�˵�������ˣ�����ɡ���</p><p>����С���ֳ�ƽʱ���溢����ϰ���Σ�����Ƹ�벹ϰ��ʦ���������Ѿ��кܶණ��Ҫ��Ҫѧ���Ҳ����ٸ�����ѹ����������������ˮ����𣿡���֪���������Ƕ�ϲ��ˮ�����Ϲ������������������������С��������ɱ��ʵ�������̽��ʱ��ģ�µ���������ˮ���е���ʹ����Ц����������ʹ����������һ��Ҳ�á���</p><p><sbrong>���������С����Ĭ��</sbrong></p><p>�������⣬��诼���С�����롰СĸţСС���籭�����Զ���������ʽ���������ѱ������š����ָ���а���δ����С������һ���漴����ӵ������С������ԴӰ���֮�м���С������һ�μ�������2000�ꡣ(����/��)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/m/2009-11-01/08272752349.shtml target=_blank>http://ent.sina.com.cn/s/m/2009-11-01/08272752349.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1113','','1105','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i3.sinaimg.cn/ent/s/h/2009-11-01/U2231P28T3D2752338F326DT20091101081157.jpg alt=�������Ű�������Ҫ¡��(ͼ)><br><br>����̹�Բ�����Ů��¡�أ�˵��������������Ҫ��  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ&nbsp;����ʱ��11��1����Ϣ�������ý�屨��������(10��31��)������ũ����ϡ��ǹ�����ܶ�γ�����ʽܵ�����۳�ϯ��Wild Day Out�����ֻᣬ�������д������Ů��<a class=\"akey\" href=\"http://ent.sina.com.cn/s/s/f/twins.html\" target=\"_blank\">����ͩ</a>����ǧ��Ԫ����¡�ع�棬����<a class=\"akey\" href=\"http://data.ent.sina.com.cn/star/8874.html\" target=\"_blank\">����</a>����Ҫ¡�ء�</p><p>�����������Ǳ�ʾ��֪�飬��˵�������������磬����û��������⡣����̹�Բ�����Ů��¡�أ���������������Ҫ�ģ�����Ϊ��������Ҫ¡�ء�</p><p>�������ܶ�γ�����ʽ�ָ̨�������ʥ�ڻ�����������������һ�棬������۵���ʥ�����ա�(����/��)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/h/2009-11-01/08112752338.shtml target=_blank>http://ent.sina.com.cn/s/h/2009-11-01/08112752338.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1114','','1106','45','1','1','	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10332752414.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752414F346DT20091101103309_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752414F346DT20091101103309.jpg\" /></a></br>	<br width=\"280\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752411.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752411F346DT20091101103258_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752411F346DT20091101103258.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752407.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752407F346DT20091101103240_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i3.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752407F346DT20091101103240.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752410.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752410F346DT20091101103253_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752410F346DT20091101103253.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10332752413.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752413F346DT20091101103305_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752413F346DT20091101103305.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752409.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752409F346DT20091101103249_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752409F346DT20091101103249.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10332752412.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752412F346DT20091101103301_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752412F346DT20091101103301.jpg\" /></a></br>	<br width=\"187\" align=\"left\"><a href=\"http://ent.sina.com.cn/s/p/2009-11-01/10322752408.shtml\" target=\"_blank\"><img alt=��ͼ����С�����������������ϼ�ؾۺ��˷� src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752408F346DT20091101103245_small_h.jpg\" style=\"BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid\" originalimg=\"http://i1.sinaimg.cn/ent/s/p/2009-11-01/U1819P28T3D2752408F346DT20091101103245.jpg\" /></a></br><p>������������Ѷ 10��31�����磬���Сĸţ����������2009���Ʊ������ڸ۾��У�Сĸţ���Ĵ�ʹ<a class=\"akey\" href=\"http://sports.sina.com.cn/star/fu_mingxia/index.shtml\" target=\"_blank\">����ϼ</a>���й�������ٶӽ����˶�Ա<a class=\"akey\" href=\"http://sports.sina.com.cn/star/liu_xuan/index.shtml\" target=\"_blank\">���</a>����С���Լ��ڶ����ǡ��α���ϯ�˻������ϼ����诡���С����λ���Ѿ�δ���棬�����ؾ۷ǳ��˷ܡ�</p><p>����ͬ���˶�Ա����С��������ĵ÷ǳ����ġ�������ʽ���������˸���ͬһ�����˴��澺����Ϸ����ͬΪ���Ƴ����诺���С������ʾ�ѵúͷ���ϼ���棬��λ���ʮ���ѵã���诱�ʾ�Ѱ���û����С�������Ե������С���ر��˷ܡ���С����ʾ����2000�����û�м���С��������ѵ���ͷҲ�е����ˡ���͸¶���ۺ��ר���޶�˶ʿ�γ̣���ѧϰ���</p><p>����Сĸţ��۷ֻᶭ�¾���ϯ�����ɡ����¾ֳ�ԱҶ���ҡ������α���Ӣ�꼰�����츱���λ�־��������Ա�Ƴ��ˡ�<a class=\"akey\" href=\"http://ent.sina.com.cn/v/p/2006-07-04/01251145075.html\" target=\"_blank\">������</a>����ٻ��ͺ�ŵ�Եȼα�Ҳ��ϯ�˱��λ������ó���������Ԫ��TUNGSTAR/�Ĳ�ͼ</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/m/2009-11-01/10342752415.shtml target=_blank>http://ent.sina.com.cn/s/m/2009-11-01/10342752415.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1115','','1107','45','1','1','<p>������������Ѷ 10��31����Ϣ���������ֽ�������õ���Ϣ����ƾ��<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>����������Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>����������¥��ɱ����������ԭ���ꡣ����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/changk/index.html\" target=\"_blank\">����</a>��֪�����Ϣ��ֱ���Լ������Ļ��ˡ�������������KTV���������ĸ裬��ô˵�߾������أ���</p><p>������֪������ɱ��Ϣ���������ֵ�һʱ��������ѳ���ȡ����ϵ�������ʾ�Լ�Ŀǰ���ںϷʣ�����Ҳ�Ǹոմӱ�����������֪�����Ϣ�ģ������Ļ��ˣ���������KTV���軹�������ĸ��أ���ô��ô�õ�һ�����þ�����û���أ���</p><p>�������������ԨԴ�������19��ĳ��ճ����������ġ������������Զ����������ר�����ǳ��������ڵ�<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/nzyf/index.html\" target=\"_blank\">Ů��ʮ���ַ�</a>��ʼ��������һ�������ģ������������Ǿ������ֶӹ��ֵ��������������ģ��������š������������Զ��������ר��Ҳ���Һ�������һ�������ģ���ʱ�һ������׸�����������٣�����ȷʵ�к����ԨԴ���������ս��֮�����Ƽ���ȥ�����Ļ���˾�ء���</p><p>���������ʾ�Լ���ǰ����յĹ�ϵ�ܺã������Գ����������˾�û���ټ��棺������֮ǰ������һ�����Ӿ磬��ʱ������վ����к���������죬��ʱ���Ҽ������޻���̸�ĺ����ѣ����Ǿʹ�5��ǰ�����֮���Ҿ���Ҳû�м�������ȥ��5.12�봨�����ʱ���Ҳ߻���һЩ�����ݳ�����ʱ����ע�⵽�����й����봨����ĸ������ݳ�֮��Ķ����������յ����֣��Ҿ��ú���֣���Ϊ���ҿ�����Ӧ�������Ĵ�����������Ů�����ˣ������Ҿ����ҵľ����˰�æ������ϣ����������һ�������֡���</p><p>�����ڳ���ӡ���У�������һ���ܽ����Ժõ��ˣ����������������Զ�������ױ����������ң�����ȴ�к����������ġ���Ҳ����Ϊ����������ᣬ��������ᵽ���յ����飬�˱��������������������һ���Ľ׶ξͻ᲻���ģ��ͻ�����ͳ����Ҳ��������Ƕ�ʱ���Ҳ²���һ���ǹ��Ĳ������ˡ������������һֱ��һ�����ĺ�ǿ����ˣ�����ôС�ĵط��������������������������ı�����ĺܲ����ף���Ϊ���ù��ڵ����Ů���˵Ľ�����Կ���˵���Ƶ�������󼶵ĸ��֡���</p><p>��������·���֮�󣬳�������ܲ��ã�ֱ�Գ��յ��뿪�����Ծ�ʾ������һֱ�ѳ��յ������Լ�������һ���������뿪���˺ܴ�ľ�ʾ���ã�����ƽʱӦ�ö������ߵ����ѣ���Ϊ��ʱ���겻��֮���е��˿��ܾ��Ѿ���Ҳ�������ˡ�����ĺܺ�ڣ����������һ���ҵ���������һ�������֣��࿪��������������������Ͳ�����ô����ѡ����ɱ���������˵�����Բ���������������ʾ��������յ�׷��������ȷ�����Լ�һ�����ȥ�������һ�̡�����/��</p>					<p>����<font class=title12><b>���������������Ҹ����ת����ע��������</b></A></font></p><p> </p> 	\r                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/22112752120.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/22112752120.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1116','','1108','45','1','1','<p>������������Ѷ 10��31����Ϣ���������ֽ�������õ���Ϣ����ƾ��<a href=\"http://music.sina.com.cn/yueku/m/363407.html\" target=\"_blank\">�������������Զ������</a>����������Ů����<a class=\"akey\" href=\"http://ent.sina.com.cn/s/m/f/chenl.html\" target=\"_blank\">����</a>����������¥��ɱ����������ԭ���ꡣ�������ֵ�һʱ��������������ȡ����ϵ�������ʾ�Լ�֮ǰ���ڳ��ջ�����Ϣ�������ţ����������ɱ���������ģ�����ľ�������ͦ�ѹ��ġ���</p><p>������������ڹ�����Ϊһ�����ֳ�����19��ʱ��ƾ��һ�ס������������Զ����������������������չ����֪������¥��ɱ����Ϣ֮���������ֵ�һʱ���롶�����������Զ�������������������ȡ������ϵ�������ʾ�Լ��Ѿ���֪�������Ϣ������Ҳ�Ǵӱ��˿����֪�ģ�֪�������Ϣ���Ҿ��Ĵ���绰��֤�����˺ܶ�����߹�ϵ�ȽϽ������ѣ�����û����֪������</p><p>�������ս���7�µ��ٶȽ�鲢�ҷ�������EP�������ʱ��ͻȻ��ɱ�������˳Ծ��������ʾ������Щ���Ҹ���һֱ����ϵ��ֻ�Ǽ���Ƚ��٣�����������Ҳ�������ţ������ǲ�Ը����������ɱ��������ġ���</p><p>����Ŀǰ���������Ѿ�ȷ�ϳ�����ɱ����ʵ������ѻ��������ڰ���������£��Դ������ʾ����Ȼ���Ѿ������ˣ���Ҳ������˵ʲô��һ·�ߺá�֮��Ļ������������ĵ�һ��ר��������һ�����ģ��к���ĸ��飬���������������������ͦ�ѹ��ġ�������/��</p>					<p>����<font class=title12><b>���������������Ҹ����ת����ע��������</b></A></font></p><p> </p> 	\r                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/y/2009-10-31/21072752083.shtml target=_blank>http://ent.sina.com.cn/y/2009-10-31/21072752083.shtml</A>','0');
INSERT INTO `qb_news_content_1` VALUES ('1117','','1109','45','1','1','<left><img style=\"border:1px #000 solid;\" src=http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg alt=ͼ�ģ���������ʥ�ڿ��ɶ�--������Ů��Lisa.S><br><br>������Ů��Lisa.S  br><font class=f12><b><a href=http://ent.sina.com.cn/photo/></a></font></b <br><br></left>\r<p>������������Ѷ 2009��11��1�����Ѷ��Ϣ�����죬<a class=\"akey\" href=\"http://ent.sina.com.cn/s/h/f/wuyz/index.html\" target=\"_blank\">������</a>������ά�����������Ӵϡ�Lisa S��Ana R��Cara G��һ�����˾�����ʥ���ɶԣ������װ�㡣�������������Ů��Lisa.S���Բ����������������з����Ϊ���ۡ�(TungStar/�Ĳ�ͼ)</p>                                        <p>����<a target=\"_blank\" href=\"http://ent.sina.com.cn/f/v/waptuiguang.html\"><img width=\"18\" height=\"36\" style=\"border-width: 0px;\" src=\"http://i0.sinaimg.cn/ent/deco/2009/0507/entphone.gif\"/></a><br><br><br>����ת���� ������:<A HREF=http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml target=_blank>http://ent.sina.com.cn/s/p/2009-11-01/04442752239.shtml</A>','0');
INSERT INTO `qb_news_sort` VALUES ('1','0','0','��������','1','6','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:11:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:14:\"label_bencandy\";s:0:\"\";s:10:\"channelDir\";s:4:\"nnew\";s:13:\"channelDomain\";s:0:\"\";s:10:\"label_list\";s:2:\"33\";s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/4\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('3','1','0','ͳ������','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/6\";s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";s:14:\"label_bencandy\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('4','36','0','�����ֲļ۸�����','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','31','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:11:\"list_tpl/10\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('9','0','100','ͼƬ����','1','1','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";s:1:\"0\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('10','9','100','��Ů����','2','0','0','','0','0','','','22','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','11','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('11','0','101','��������','1','3','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('12','11','101','��վ���','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('13','0','102','Ӱ��Ƶ��','1','1','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('14','13','102','������Ƶ','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:14:\"label_bencandy\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('43','0','106','�ͷ�����','1','1','1','','-1','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('44','43','106','��������ָ��','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `qb_news_sort` VALUES ('26','11','101','װ�����','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `qb_news_sort` VALUES ('27','11','101','�칫���','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('31','1','0','��۾���','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/3\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('32','1','0','�ֳ���̬','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('33','1','0','�ֳ���Ϣ','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('34','1','0','�г��о�','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/2\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('35','1','0','���̽���','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('38','36','0','�����ֲ�ÿ�շ���','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/4\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('36','0','0','ÿ�ն�̬','1','5','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";}','','','','');
INSERT INTO `qb_news_sort` VALUES ('37','36','0','�����ְ�۸�����','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('39','36','0','�����ְ�ÿ�շ���','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/8\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `qb_news_sort` VALUES ('45','36','0','�������','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
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
INSERT INTO `qb_sell_config` VALUES ('Info_metakeywords','��Ʒ','');
INSERT INTO `qb_sell_config` VALUES ('Info_webOpen','1','');
INSERT INTO `qb_sell_config` VALUES ('Info_webname','��Ʒ��Ӧ','');
INSERT INTO `qb_sell_config` VALUES ('Info_ReportDB','�Ƿ���Ϣ\r\n�����Ϣ\r\n������Ϣ','');
INSERT INTO `qb_sell_config` VALUES ('module_id','34','');
INSERT INTO `qb_sell_config` VALUES ('Info_TopColor','#FF0000','');
INSERT INTO `qb_sell_config` VALUES ('module_close','0','');
INSERT INTO `qb_sell_content` VALUES ('1','�޷�ܺ�ںϽ��','1','11','���Ƹ�','4','0','1288610057','1288610057','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/267/882/137288762_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610134','0','1','4900');
INSERT INTO `qb_sell_content` VALUES ('2','�⾶273mm20#45#20G�޷�ֹܸ�','1','11','���Ƹ�','1','0','1288610257','1288610257','1','admin','','http://i01.c.aliimg.com/img/ibank/2010/143/884/202488341_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610258','0','1','5454');
INSERT INTO `qb_sell_content` VALUES ('3','20#45#20G�⾶89mmС�ھ�����޷������','1','11','���Ƹ�','1','0','1288610394','1288610394','1','admin','','http://i05.c.aliimg.com/img/ibank/2010/127/864/202468721_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610397','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('4','�ֹܺ���������q235ֱ�캸��Q235','1','12','����','1','0','1288610490','1288610490','1','admin','','http://i05.c.aliimg.com/img/ibank/2010/755/984/198489557_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610492','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('5','T1-3TU1��ͭ��H62��ͭ�ܷ�ͭ��ͭ��','1','13','����','0','0','1288610569','1288610569','1','admin','','http://i01.c.aliimg.com/img/ibank/2010/157/174/198471751_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','0','0','1','5645');
INSERT INTO `qb_sell_content` VALUES ('6','T1T3��ͭ������H62��ͭ��','1','14','Բ��','1','0','1288610654','1288610654','1','admin','','http://i03.c.aliimg.com/img/ibank/2010/223/454/198454322_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288610655','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('7','����20#45#������˾���ι�¯�ֹ��⾶12','1','15','�߲�','3','0','1288610745','1288610745','1','admin','','http://i02.c.aliimg.com/img/ibank/2010/004/377/201773400_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1292982676','0','1','5343');
INSERT INTO `qb_sell_content` VALUES ('8','˫���񻡵绡����ֱ�꺸��Q235��ҵ����','1','16','�������Ƹ�','4','0','1288610830','1288610830','1','admin','','http://i03.c.aliimg.com/img/ibank/2010/472/005/198500274_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300343964','0','1','453');
INSERT INTO `qb_sell_content` VALUES ('9','20#�Ͻ�ֹܸ�152*12---28�޷�����','1','17','�������Ƹ�','2','0','1288610899','1288610899','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/423/442/133244324_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1300338715','0','1','4343');
INSERT INTO `qb_sell_content` VALUES ('10','201301321����ֹܺϽ��','1','21','����','1','0','1288611012','1288611012','1','admin','','http://i05.c.aliimg.com/img/ibank/2010/710/902/149209017_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288680845','0','1','434');
INSERT INTO `qb_sell_content` VALUES ('11','200*200*10����|��򷽹��ֻ�','1','33','������','2','0','1288611083','1288611083','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/673/938/124839376_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288675144','0','1','5435');
INSERT INTO `qb_sell_content` VALUES ('12','630*12�ֻ������ֹ�','1','46','����','1','0','1288611221','1288611221','1','admin','','http://i00.c.aliimg.com/img/ibank/2010/733/921/124129337_1108421225.310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288611222','0','1','654');
INSERT INTO `qb_sell_content_1` VALUES ('1','1','11','1','<p>רҵ��������ַǱ��޷칤ҵ��/��ڹ�/����Ҫ������201��202��301��304��304L��TP304��316��316L��TP316��TP316L��321��TP321��317L��309S��310S��410��430��316Ti��347H��2205��430F��17-4PH��17-7PH��2520��904L��347H��.</p>\r\n<p>&nbsp;����ֺ�ڹܣ���20��7��830*50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����ֳ���ܣ���5��0.8��630��15</p>\r\n<p>&nbsp;��������͹�: 12��12��1��120��120��12��ܣ�40��20��2��200��100��10</p>\r\n<p>��������0.4mm-0.9mm*1m*2m/4��*8�磬</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.0mm-3.0mm*1m*2m/4��*8��</p>\r\n<p>������Ȱ�3.0mm-4.0mm*1250*6000</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.0mm-60mm*1250*6000</p>\r\n<p>&nbsp;���и��ֲ���ַ�������ѹ��ͷ����ֹ�����򷧡����ֲ���ֹܼ�</p>\r\n<p>&nbsp;</p>\r\n<p>201��202��301��304��304L��TP304��316��316L��TP316��TP316L��321��TP321��317L309S��310S��.<br />\r\n</p>\r\n','TS','��','12','222','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('2','2','11','1','<p>�ֹ���ҵ�쵼���ĳ��н��ֲ����޹�˾��׿Խ�Ĳ�Ʒ��һ���ķ��񣬺���ļ۸�����ڹ��ͻ�����˾ӵ�и��ڿ��ؾ�<br />\r\n�ĳ��н��ֲ����޹�˾�����������ۡ�������һ����ۺ��Ը�����˾����˾�ڸ�����ҵ���нϸߵ����������꾭Ӫ�ɶ������� ��ұ�֡�³�������֡����������֡����ȼ���ֳ��ĵ������޷�ֹܣ������ȫ�����ʱ�������˾һ���Է����һ��������һ���۸�����ͻ����ϡ������ܵ��������ͻ�����������Ϊԭ�򣬳�ʵ����Ϊ��ּ����������ľ�Ӫ���Ѿ�ͬȫ������ֳ��������ȹ̵Ĺ�����ϵ��ͬʹ�õ�λ���������õ�������ϵ�� </p>\r\n<p>�����޷�ֹ����������������޷�ܴ��׻�������������������޷�ֹ������������������޷�ֹ������������������ֹ�������һ������������10#��20#��35#��45#��16mn��27simn�ȹ��ĺ�ڽṹ���޷�ֹܡ��������޷�ֹܡ���ѹ��¯���޷�ֹܡ��������޷�ֹܡ���������ר���޷�ֹܡ��������޷�ֹܡ���ѹ��¯��... </p>\r\n<p>����˾�������۳ɶ������� ��ұ�֡�³�������֡����������֡����ȼ���ֳ����ֻ��޷�ܣ�������Դ����Ϊ��20����35���� 45����20G ��16Mn ��27SiMn ��12Cr1MoV ��15CrMo ��35CrMo ��T91 ��ST45.8-3 ��SA106B ��A335P22 �� A335P11��STFA23 ��10CrMo910�ȡ�ִ�б�׼Ϊ���ṹ�� GB8162-1999 ������� GB8163-1999 ������ѹ��¯�� 3087-1999 ����ѹ��¯�� GB5310-1995 ������ר�ù� GB6479-2000 ��ʯ���ѻ��� GB9948-88 ������ר�ù�GB5312-99���ҹ�˾���ֻ���Ӧ�ķ�ʽ���ۣ� 201 �� 202 �� 304 �� 321 �� 316 �� 316L �� 310S ����ְ壬 304 �� 321 �� 316 ���� 316L �� 310S ����ֹܣ� 1Cr17Ni2 �� 0Cr13 �� 1Cr13 �� 2Cr13 �� 3Cr13 �� 4Cr1 3 �� 304 �� 321 �� 316 ���� 316L �� 310S ����ְ�,ͬʱ�ҹ�˾����ǧ�ֺϽ�ܡ� ��ӭ���Ͽͻ�ǰ��Ǣ̸ҵ��<br />\r\n</p>\r\n','u7','��','34','54','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('3','3','11','1','<p>�ĳ��н��ֲ����޹�˾��������2005��9��ע���ʽ�1160��Ԫ��<br />\r\n��幫˾���ĳ��нϴ�ĸֹ���������Ӫ��ҵ�������ҷֹ�˾��<br />\r\n���н����ֹ��������޹�˾Ϊ�ִ�������������ҵ��<br />\r\n���ֲ����޹�˾�ͱ�����ͨ������ó���޹�˾Ϊ�ֲľ�����ͨ��ҵ��<br />\r\n�̶��ʲ���3400��Ԫ��ְ��980���ˣ��ǵ��񼯸ֲ�����ӹ�������һ��Ĵ��͸ֲ���ͨ��ҵ��<br />\r\nһ�������ֹ��������޹�˾<br />\r\n&nbsp;��˾ע���ʽ�500��Ԫ����ӵ�д��׻������ף���λ������ף�ְ��600���ˣ�<br />\r\n��Ҫ������5-��2860?-100�ֹ�����������Ϊ10������ϡ�</p>\r\n<p>�������ֲ����޹�˾ <br />\r\n&nbsp;<br />\r\n��˾������Ӫ�������������ͺŵĸֹܣ����Ҿ�Ӫ���֡����֡������޷�ֹܳ������Ĵ�ھ�����ڵ��޷�ֹܡ�������󳧼ҵ������ܡ�ֱ��ܡ�����ֹܡ���ѹ�ܼ�����ѹ��վ��ܡ���ͷ����ѹ���������ŵȡ�</p>\r\n<p>&nbsp;��˾��Ӫ�Ľṹ���޷�ֹܡ������������޷�ֹܡ�����ѹ��¯���޷�ֹܡ���ѹ��¯���޷�ֹܡ��Ͻ�ṹ���޷�ֹܡ�ʯ���ѻ����޷�ֹܺ����������޷�ֹܵ��ߴ�ϵ�в�Ʒ�㷺Ӧ���ھ�������¯��ʯ�ͻ�������е�����Һѹ������������ҵ��</p>\r\n<p>����������ͨ������ó���޹�˾<br />\r\n&nbsp;<br />\r\n������ͨ������ó���޹�˾ע���ʽ�500��Ԫ��λ�ڱ����д������Ʋ�����˿���ִ��˹�˾���Ǽ��ֲ���ͨ��������һ��Ĵ��ͻ�����ͨ��˾������˾������Ӫ���ڶ�ҹ�˾����ĸ����ͺ��͸֡��۸֡�Բ�ֻ��ɸ��ݿͻ������ơ����˸��ֹܲġ�����ֲġ�<br />\r\n&nbsp;��˾������ͨҵ�񲿣��ܹ���ʱΪ���ṩ���ʸ��ֲ��г���ʱ�ۣ��������õ�����������˾��ƷԶ���ձ���̩����̨�弰ŷ�ޣ����ܹ������û��ĺ�����<br />\r\n&nbsp;<br />\r\n�´��������һֱ֧�֡����ĺͰ����ҹ�˾��չ�ĸ������Ѽ����Ͽͻ����⣺��������ͻ�������Ϊ���Σ������ŵĲ�Ʒ�����ܵ��ķ�����׸������߳ϻ�ӭ������ͻ��ݹˡ�</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n','f34','��','2','43','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('4','4','12','1','�ĳ��н��ֲ����޹�˾���۲�λ���й��ĳǿ������ɺ�·����·�ϣ��ĳ��н��ֲ����޹�˾���۲���һ�Ҹֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĵȲ�Ʒ�ľ����������������ι�˾���ĳ��н��ֲ����޹�˾���۲���Ӫ�ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĳ����������г����ĳ��н��ֲ����޹�˾���۲��Ĳ�Ʒ�������ߵ������нϸߵĵ�λ����˾���������̺ʹ����̽����˳����ȶ��ĺ�����ϵ���ĳ��н��ֲ����޹�˾���۲������ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲ�Ʒ����ȫ���۸�����ĳ��н��ֲ����޹�˾���۲�ʵ���ۺ������á��غ�ͬ����֤��Ʒ�������Զ�Ʒ�־�Ӫ��ɫ�ͱ���������ԭ��Ӯ���˹��ͻ������Ρ�','Q235','��','43','54','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('5','5','13','1','�ĳ��н��ֲ����޹�˾���۲�λ���й��ĳǿ������ɺ�·����·�ϣ��ĳ��н��ֲ����޹�˾���۲���һ�Ҹֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĵȲ�Ʒ�ľ����������������ι�˾���ĳ��н��ֲ����޹�˾���۲���Ӫ�ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĳ����������г����ĳ��н��ֲ����޹�˾���۲��Ĳ�Ʒ�������ߵ������нϸߵĵ�λ����˾���������̺ʹ����̽����˳����ȶ��ĺ�����ϵ���ĳ��н��ֲ����޹�˾���۲������ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲ�Ʒ����ȫ���۸�����ĳ��н��ֲ����޹�˾���۲�ʵ���ۺ������á��غ�ͬ����֤��Ʒ�������Զ�Ʒ�־�Ӫ��ɫ�ͱ���������ԭ��Ӯ���˹��ͻ������Ρ�','f3','��','43','434','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('6','6','14','1','<p>�ĳ��н��ֲ����޹�˾���۲�λ���й��ĳǿ������ɺ�·����·�ϣ��ĳ��н��ֲ����޹�˾���۲���һ�Ҹֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĵȲ�Ʒ�ľ����������������ι�˾���ĳ��н��ֲ����޹�˾���۲���Ӫ�ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĳ����������г����ĳ��н��ֲ����޹�˾���۲��Ĳ�Ʒ�������ߵ������нϸߵĵ�λ����˾���������̺ʹ����̽����˳����ȶ��ĺ�����ϵ���ĳ��н��ֲ����޹�˾���۲������ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲ�Ʒ����ȫ���۸�����ĳ��н��ֲ����޹�˾���۲�ʵ���ۺ������á��غ�ͬ����֤��Ʒ�������Զ�Ʒ�־�Ӫ��ɫ�ͱ���������ԭ��Ӯ���˹��ͻ������Ρ�</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n','g4','��','43','433','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('7','7','15','1','<p>�ҹ�˾������30-273*2-40���޷�ܲ����ڴ�����֡����������ұ�֡�³�����������ʸֵȸ���ֳ��Ĳ�Ʒ����Ҫ�����У�20#��45#��20G��20Cr��40Cr��15CrMoG��12Cr1MoVG��16Mn��27SiMn��30-42CrMo��10CrMo910��T12��T22��T91��P12��P91��15Mo3��Cr5Mo��1Cr5Mo��</p>\r\n<p>��ɶ���30*30*3-500*500*25�ĺ��ӷ��ܡ��޷췽�ܣ�</p>\r\n<p>&nbsp;</p>\r\n','d3','��','23','54','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('8','8','16','1','<div><p><span style=\"color:#333333;font-size:9pt;font-family:\'����\';\">�ĳ��н��ֲ����޹�˾���۲�λ���й��ĳǿ������ɺ�·����·�ϣ��ĳ��н��ֲ����޹�˾���۲���һ�Ҹֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĵȲ�Ʒ�ľ����������������ι�˾���ĳ��н��ֲ����޹�˾���۲���Ӫ�ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĳ����������г����ĳ��н��ֲ����޹�˾���۲��Ĳ�Ʒ�������ߵ������нϸߵĵ�λ����˾���������̺ʹ����̽����˳����ȶ��ĺ�����ϵ���ĳ��н��ֲ����޹�˾���۲������ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲ�Ʒ����ȫ���۸�����ĳ��н��ֲ����޹�˾���۲�ʵ���ۺ������á��غ�ͬ����֤��Ʒ�������Զ�Ʒ�־�Ӫ��ɫ�ͱ���������ԭ��Ӯ���˹��ͻ������Ρ�</span></p>\r\n<p><span style=\"font-size:24pt;\"><span style=\"color:#008000;\"><span style=\"font-family:\'����\';\">��</span><span style=\"font-family:\'Arial\';\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:\'����\';\">����</span><span style=\"font-family:\'Arial\';\">&nbsp;86&nbsp;0635&nbsp;8877058&nbsp;&nbsp;&nbsp;8877059</span></span></span><span style=\"color:#333333;font-size:10pt;font-family:\'Arial\';\"><br />\r\n</span><span style=\"font-size:24pt;\"><span style=\"color:#008000;\"><span style=\"font-family:\'����\';\">�ƶ��绰��</span><span style=\"font-family:\'Arial\';\">&nbsp;13561235169&nbsp;&nbsp;&nbsp;13306356318</span></span></span><span style=\"color:#333333;font-size:10pt;font-family:\'Arial\';\"><br />\r\n</span><span style=\"font-size:24pt;\"><span style=\"color:#008000;\"><span style=\"font-family:\'����\';\">��</span><span style=\"font-family:\'Arial\';\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:\'����\';\">�棺</span><span style=\"font-family:\'Arial\';\">&nbsp;86&nbsp;0635&nbsp;2188782</span></span></span></p>\r\n</div>\r\n','g5','��','6','76','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('9','9','17','1','<span style=\"color:#333333;font-family:����;\">����˾��������׸֣����֣����֡��ɶ�����֡����֡����֡���ұ�֡����֡���ֵȸ���ֳ��Ĳ�Ʒ��</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:����;\">�ֹ�˾��������Ҫ��Ʒ��</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:����;\">һ������ֹܡ�����ְ��ġ�����ְ��ϵ��</span><span style=\"color:#333333;font-family:Arial;\">.<br />\r\n</span><span style=\"color:#333333;font-family:����;\">�ṹ�ò���ֹܣ�</span><span style=\"color:#333333;font-family:Arial;\">GB/T14975</span><span style=\"color:#333333;font-family:����;\">���������ò���ֹ�</span><span style=\"color:#333333;font-family:Arial;\">(GB/T14975)</span><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:����;\">������޷�ܲ�����</span><span style=\"color:#333333;font-family:Arial;\">;201,202,301,310,310S,304,304L,316,316L,321,439,436,437..<br />\r\n</span><span style=\"color:#333333;font-family:����;\">����ְ��Ĳ�����</span><span style=\"color:#333333;font-family:Arial;\">;201,202,301,310S,321,304,304L,316,316L,321,1Cr13,2Cr13,3Cr13<br />\r\n&nbsp;</span><span style=\"color:#333333;font-family:����;\">����</span><span style=\"color:#333333;font-family:Arial;\"><span style=\"color:#333333;font-family:����;\">�Ͻ�ܡ��޷��ϵ�С�</span><span style=\"color:#333333;font-family:Arial;\"><br />\r\n</span><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\"><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\"><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\">GB8162---99,</span><span style=\"color:#333333;font-family:����;\">�����</span><span style=\"color:#333333;font-family:Arial;\">GB8163---99,</span><span style=\"color:#333333;font-family:����;\">����ѹ��¯��</span><span style=\"color:#333333;font-family:Arial;\">GB3087��2000<br />\r\n</span><span style=\"color:#333333;font-family:����;\">��ѹ��¯��</span><span style=\"color:#333333;font-family:Arial;\">GB5310--95</span><span style=\"color:#333333;font-family:����;\">����ר�ù�</span><span style=\"color:#333333;font-family:Arial;\">GB6479��86</span><span style=\"color:#333333;font-family:����;\">ʯ���ѻ���</span><span style=\"color:#333333;font-family:Arial;\">GB9948-----1988<br />\r\n</span><span style=\"color:#333333;font-family:����;\">Һѹ֧����</span><span style=\"color:#333333;font-family:Arial;\">GB/T17396-98</span><span style=\"color:#333333;font-family:����;\">������̽��</span><span style=\"color:#333333;font-family:Arial;\">YB235-70</span><span style=\"color:#333333;font-family:����;\">���������׹�</span><span style=\"color:#333333;font-family:Arial;\">YB/T5035-99<br />\r\n</span><span style=\"color:#333333;font-family:����;\">������ʣ�</span><span style=\"color:#333333;font-family:Arial;\">10#</span><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\">20#</span><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\">45#</span><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\">20G</span><span style=\"color:#333333;font-family:����;\">��</span><span style=\"color:#333333;font-family:Arial;\">16Mn,27SiMn,15CrMo,15CrMoG,12Cr1MoV<br />\r\n20CrMo, 35CrMo, 42CrMo, 12Cr1MoVG, Cr5Mo, 10CrMo910, WB36,<br />\r\n13CrMo44,34CrMo4,P5,12Cr2MoV,P11 P12.,P22,P91</span><span style=\"color:#333333;font-family:����;\">��</span></span>','tt4','��','43','555','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('10','10','21','1','<p>�ҹ�˾�������ȫ�����������۾������գ��۸�������������䡣</p>\r\n<p>רҵ��������ַǱ��޷칤ҵ��/��ڹ�/����Ҫ������201��202��301��304��304L��TP304��316��316L��TP316��TP316L��321��TP321��317L��309S��310S��410��430��316Ti��347H��2205��430F��17-4PH��17-7PH��2520��904L��347H��.</p>\r\n<p>&nbsp;����ֺ�ڹܣ���20��7��830*50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����ֳ���ܣ���5��0.8��630��15</p>\r\n<p>&nbsp;��������͹�: 12��12��1��120��120��12��ܣ�40��20��2��200��100��10</p>\r\n<p>��������0.4mm-0.9mm*1m*2m/4��*8�磬</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.0mm-3.0mm*1m*2m/4��*8��</p>\r\n<p>������Ȱ�3.0mm-4.0mm*1250*6000</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.0mm-60mm*1250*6000</p>\r\n<p>&nbsp;���и��ֲ���ַ�������ѹ��ͷ����ֹ�����򷧡����ֲ���ֹܼ�</p>\r\n<p>&nbsp;</p>\r\n<p>201��202��301��304��304L��TP304��316��316L��TP316��TP316L��321��TP321��317L309S��310S��.</p>\r\n<p>&nbsp;</p>\r\n','t54','��','6','54','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('11','11','33','1','�ĳ��н��ֲ����޹�˾���۲�λ���й��ĳǿ������ɺ�·����·�ϣ��ĳ��н��ֲ����޹�˾���۲���һ�Ҹֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĵȲ�Ʒ�ľ����������������ι�˾���ĳ��н��ֲ����޹�˾���۲���Ӫ�ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĳ����������г����ĳ��н��ֲ����޹�˾���۲��Ĳ�Ʒ�������ߵ������нϸߵĵ�λ����˾���������̺ʹ����̽����˳����ȶ��ĺ�����ϵ���ĳ��н��ֲ����޹�˾���۲������ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲ�Ʒ����ȫ���۸�����ĳ��н��ֲ����޹�˾���۲�ʵ���ۺ������á��غ�ͬ����֤��Ʒ�������Զ�Ʒ�־�Ӫ��ɫ�ͱ���������ԭ��Ӯ���˹��ͻ������Ρ�','g54','��','5','34','3�����ڷ���');
INSERT INTO `qb_sell_content_1` VALUES ('12','12','46','1','<p>�ĳ��н��ֲ����޹�˾���۲�λ���й��ĳǿ������ɺ�·����·�ϣ��ĳ��н��ֲ����޹�˾���۲���һ�Ҹֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĵȲ�Ʒ�ľ����������������ι�˾���ĳ��н��ֲ����޹�˾���۲���Ӫ�ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲĳ����������г����ĳ��н��ֲ����޹�˾���۲��Ĳ�Ʒ�������ߵ������нϸߵĵ�λ����˾���������̺ʹ����̽����˳����ȶ��ĺ�����ϵ���ĳ��н��ֲ����޹�˾���۲������ĸֹܡ���ġ��ܼ���Բ�֡��Ͳġ�����ֲ�Ʒ����ȫ���۸�����ĳ��н��ֲ����޹�˾���۲�ʵ���ۺ������á��غ�ͬ����֤��Ʒ�������Զ�Ʒ�־�Ӫ��ɫ�ͱ���������ԭ��Ӯ���˹��ͻ������Ρ�</p>\r\n<p>��&nbsp;&nbsp;&nbsp; ���� 86 0635 8877058&nbsp;&nbsp; 8877059<br />\r\n�ƶ��绰�� 13561235169&nbsp;&nbsp; 13306356318<br />\r\n��&nbsp;&nbsp;&nbsp; �棺 86 0635 2188782</p>\r\n<p>&nbsp;</p>\r\n','g54','��','5','65','3�����ڷ���');
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
INSERT INTO `qb_sell_field` VALUES ('86','1','��ϸ����','content','mediumtext','0','-1','ieeditsimp','600','250','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('159','2','�����۸�','hope_price','varchar','20','18','text','50','0','','','����','','1','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('160','2','�����˽�','hope_know','varchar','255','17','checkbox','0','0','����\r\n��Ʒ����ͺ�\r\n�۸�����\r\nԭ����\r\n�ܷ��ṩ��Ʒ\r\n��С������\r\n������\r\n��������\r\n���������������\r\n��װ��ʽ\r\n����/��ȫ��֤','����','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('158','2','��������','order_num','int','6','19','text','50','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('80','1','�ͺ�','shoptype','varchar','50','6','text','10','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `qb_sell_field` VALUES ('142','2','������Ϣ','content','mediumtext','0','15','textarea','500','70','','','','','0','0','0','0','','','','','0','<br><select name=\'autoSelect\' onchange=\"changeaddContent(this);\">\r\n<option value=\'\'>(���ô��֣���������д������æ��) </option>\r\n<option value=\'�ҶԹ�˾�Ĳ�Ʒ�ǳ�����Ȥ���ܷ�һЩ��ϸ���ϸ��Ҳο���\'>�ҶԹ�˾�Ĳ�Ʒ�ǳ�����Ȥ���ܷ�һЩ��ϸ���ϸ��Ҳο���</option> \r\n<option value=\'������һ�ݱȽ���ϸ�Ĳ�Ʒ���˵����лл��\'>������һ�ݱȽ���ϸ�Ĳ�Ʒ���˵����лл��</option> \r\n<option value=\'���ʹ�˾��Ʒ�Ƿ���Դ�������������ʲô��\'>���ʹ�˾��Ʒ�Ƿ���Դ�������������ʲô��</option> \r\n<option value=\'�ҹ�˾���⹺��˲�Ʒ���ɷ��ṩ�˲�Ʒ�ı��۵�����С������\'>�ҹ�˾���⹺��˲�Ʒ���ɷ��ṩ�˲�Ʒ�ı��۵�����С������</option> \r\n</select>\r\n<SCRIPT language=\"javascript\">\r\n            function changeaddContent(autoSelect){\r\n			 	if (autoSelect.selectedIndex !=0){			 		\r\n			 		document.getElementById(\"atc_content\").value = autoSelect[autoSelect.selectedIndex].value;\r\n					autoSelect.selectedIndex=0;\r\n			 	}\r\n				\r\n			 }\r\n	     </SCRIPT>');
INSERT INTO `qb_sell_field` VALUES ('154','1','��С��','order_min','int','7','8','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('153','1','������λ','my_units','varchar','10','9','text','50','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('145','2','��ϵ�绰','ask_phone','varchar','20','8','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('144','2','��ϵ������','ask_username','varchar','20','9','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('146','2','��ϵ�ֻ�','ask_mobphone','varchar','15','7','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('147','2','��ϵ����','ask_email','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('148','2','��ϵQQ','ask_qq','varchar','11','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('155','1','��󹩻�','order_max','varchar','7','7','text','30','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('156','1','��������','send_day','varchar','30','5','select','0','0','3�����ڷ���\r\n3-7���ڷ���\r\n7-10���ڷ���\r\n10�����Ϸ���\r\n������','','','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('157','2','ѯ�۱���','ask_title','varchar','100','20','text','300','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `qb_sell_field` VALUES ('161','2','��ϣ��','hope_reply','varchar','25','14','time','0','0','','','֮ǰ�ظ�','','0','0','0','0','','','','','0','');
INSERT INTO `qb_sell_module` VALUES ('2','0','ѯ�۵�ģ��','1','','','','0','0','a:4:{s:4:\"list\";s:12:\"joinlist.htm\";s:4:\"show\";s:12:\"joinshow.htm\";s:4:\"post\";s:8:\"join.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `qb_sell_module` VALUES ('1','0','��Ʒģ��','4','','','','1','0','');
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
INSERT INTO `qb_sell_sort` VALUES ('1','0','�ֲ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('2','0','�ְ��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('3','0','���','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('4','0','�к��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('5','0','�ֹ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('6','0','�͸�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('7','0','�ظ�','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('8','0','�����','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('9','0','¯��','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('10','0','����','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('11','1','���Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('12','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('13','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('14','1','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('15','1','�߲�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('16','1','�������Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('17','1','�������Ƹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('18','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('19','1','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('20','1','���߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('21','2','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('22','2','�Ȱ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('23','2','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('24','2','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('25','2','��п���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('26','2','��Ϳ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('27','2','���ư��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('28','2','�ͺϽ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('29','2','�������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('30','2','����п���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('31','2','��ϴ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('32','2','��Ӳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('33','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('34','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('35','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('36','3','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('37','3','��ǿ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('38','3','�͸�ʴ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('39','3','���������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('40','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('41','3','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('42','3','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('43','3','��п��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('44','3','��Ϳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('45','3','���߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('46','4','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('47','4','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('48','4','ģ�߰�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('49','4','��¯��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('50','4','��Ե��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('51','4','����ƽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('52','4','���ư�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('53','4','�ͺϽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('54','4','�̰�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('55','4','̼���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('56','4','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('57','4','��ƽ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('58','4','��ĥ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('59','5','�޷��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('60','5','��п��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('61','5','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('62','5','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('63','5','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('64','5','ֱ���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('65','5','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('66','5','��¯��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('67','5','��ī��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('68','5','���͹�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('69','5','�����ù�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('70','5','�ṹ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('71','5','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('72','5','���ּ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('73','6','H�͸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('74','6','�۸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('75','6','���ָ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('76','6','�Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('77','6','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('78','6','���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('79','6','�ع�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('80','6','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('81','6','���ȱ߽Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('82','6','�͸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('83','6','���Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('84','6','����Բ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('85','6','̼Բ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('86','6','�ȱ߽Ǹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('87','7','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('88','7','Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('89','7','��и�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('90','7','̼���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('91','7','���ɸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('92','7','�߹���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('93','7','ģ�߸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('94','7','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('95','7','���ָ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('96','7','�Ͻ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('97','7','�͸�ʴ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('98','7','��ĥ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('99','7','̼����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('100','7','̼�ظ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('101','7','���ȸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('102','7','�����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('103','7','��ģ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('104','7','�ṹ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('105','8','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('106','8','����ֹ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('107','8','������߲�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('108','8','����ִ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('109','8','�����Բ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('110','8','����ֽǸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('111','8','����ֲ۸�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('112','8','����ֱ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('113','8','�������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('114','8','�ź���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('115','8','��˿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('116','8','Ӳ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('117','8','���ȸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('118','8','��˿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('119','9','��ʯ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('120','9','ú��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('121','9','������','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('122','9','�ϸ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('123','9','��̿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('124','9','ú̿','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('125','9','�ͻ����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('126','9','̼�ز���','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('127','9','��ī����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('128','9','�ֶ�','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('129','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('130','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('131','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('132','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('133','9','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('134','9','��ĥ����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('135','9','���ϸ���Ʒ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('136','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('137','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('138','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('139','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('140','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('141','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('142','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('143','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('144','10','����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('145','10','��ɫ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('146','10','ͭ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('147','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('148','10','п','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('149','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('150','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('151','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('152','10','Ǧ','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('153','10','��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('154','10','ϡ��','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `qb_sell_sort` VALUES ('155','10','�����','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
