INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES ('gather_copysina', '新浪新闻采集', 0, '', '', '', '', '', 'index.php?lfj=gather&job=copysina', '', 'other', '数据采集器', 3, '', 0);
INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES ('gather_list', '采集规则管理', 0, '', '', '', '', '', 'index.php?lfj=gather&job=list', '', 'other', '数据采集器', 2, '', 0);
INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES ('gather_list_sort', '采集规则分类管理', 0, '', '', '', '', '', 'index.php?lfj=gather&job=listsort', '', 'other', '数据采集器', 1, '', 0);



CREATE TABLE `qb_gather_rule` (
  `id` mediumint(7) NOT NULL auto_increment,
  `fid` mediumint(7) NOT NULL default '0',
  `type` varchar(15) NOT NULL default '0',
  `fixsystem` varchar(30) NOT NULL default '',
  `filetype` varchar(50) NOT NULL default '',
  `webname` varchar(150) NOT NULL default '',
  `listurl` varchar(150) NOT NULL default '',
  `firstpage` varchar(150) NOT NULL default '',
  `page_begin` int(10) NOT NULL default '0',
  `page_end` int(10) NOT NULL default '0',
  `page_step` int(10) NOT NULL default '0',
  `title_minleng` smallint(5) NOT NULL default '0',
  `listmoreurl` text NOT NULL,
  `link_include_word` text NOT NULL,
  `link_noinclude_word` text NOT NULL,
  `link_replace_word` text NOT NULL,
  `title_replace_word` text NOT NULL,
  `list_begin_code` text NOT NULL,
  `list_end_code` text NOT NULL,
  `list_begin_preg` text NOT NULL,
  `list_end_preg` text NOT NULL,
  `gatherthesame` tinyint(1) NOT NULL default '0',
  `show_begin_preg` text NOT NULL,
  `show_end_preg` text NOT NULL,
  `show_endfile_preg` text NOT NULL,
  `show_begin_code` text NOT NULL,
  `show_end_code` text NOT NULL,
  `show_replace_word` text NOT NULL,
  `show_morepage` varchar(100) NOT NULL default '',
  `show_firstpage` varchar(100) NOT NULL default '',
  `show_spe2page` tinyint(1) NOT NULL default '0',
  `posttime` int(10) NOT NULL default '0',
  `list` int(10) NOT NULL default '0',
  `copypic` tinyint(1) NOT NULL default '0',
  `sort` smallint(4) NOT NULL default '0',
  `file_type` varchar(50) NOT NULL default '',
  `file_minleng` mediumint(6) NOT NULL default '0',
  `file_minsize` int(9) NOT NULL default '0',
  `file_includeword` text NOT NULL,
  `file_noincludeword` text NOT NULL,
  `file_explode` text NOT NULL,
  `file_picwidth` int(8) NOT NULL default '0',
  `file_star_string` varchar(150) NOT NULL default '',
  `title_rule` text NOT NULL,
  `content_rule` text NOT NULL,
  `title_morepage_rull` text NOT NULL,
  `content_morepage_rull` text NOT NULL,
  `charset_type` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;
INSERT INTO `qb_gather_rule` VALUES (1, 0, 'article', 'article', '', '腾讯人才激辩', '', '', 0, 0, 1, 0, 'http://edu.qq.com/job/jlgc_more.htm\r\nhttp://edu.qq.com/job/jlgc_more1.htm\r\nhttp://edu.qq.com/job/jlgc_more2.htm', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '<table|<table style="display:none;"', '', '', 0, 1172984270, 1172984423, 0, 0, '', 0, 0, '', '', '', 0, '', '<tr><td height="24" class="font14px"><div align="left">・<a target="_blank" class="blackul" href="{url=NO"}">{title=NO<}</a> ', '<div id="ArticleCnt">{content=*}</div><div id="copyweb">', '', '', 0);
INSERT INTO `qb_gather_rule` VALUES (2, 0, 'article', 'article', '', '且听风吟原创文学空间----->散文 >> 心灵感悟', 'http://wind.yinsha.com/ashow.php?sid=10&%20size=20&page=[page]', '', 1, 3, 1, 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '<tr><td><p class=s11>', '</td></tr>', '', '', '', 0, 1165498531, 1165498610, 0, 0, '', 0, 0, '', '', '', 0, '', '<img src=images/{NO"} border=0>\r\n                    \r\n            <a href="{url=NO"}" target=_blank>{title=NO<}</a> ', '', '', '', 0);
INSERT INTO `qb_gather_rule` VALUES (3, 0, 'article', 'article', '', '碧海银纱-> 散文 >> 心灵感悟', 'http://wind.yinsha.com/ashow.php?sid=5&%20size=20&page=[page]', '', 1, 8, 1, 0, '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 0, 1166582291, 1166582456, 0, 0, '', 0, 0, '', '', '', 0, '', '<img src=images/{NO"} border=0>\r\n                    \r\n            <a href="{url=NO }" target=_blank>{title=NO<}</a> ', '<div align="center" class="s3">作者: {author=NO"}　</div>{*}<tr><td><p class=s11>&nbsp;&nbsp;{content=*}</td></tr>\r\n\r\n', '', '', 0);
 


CREATE TABLE `qb_gather_sort` (
  `fid` mediumint(6) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `fup` mediumint(6) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `list` mediumint(5) NOT NULL default '0',
  `allowpost` varchar(255) NOT NULL default '',
  `sons` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

