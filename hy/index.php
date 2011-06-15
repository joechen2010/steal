<?php

require(dirname(__FILE__)."/"."global.php");


/**
*标签使用
**/
$ch_fid	= $ch_pagetype = 0;
$ch_module = $webdb[module_id]?$webdb[module_id]:99;	//系统特定ID参数,每个系统不能雷同
require(ROOT_PATH."inc/label_module.php");

//SEO
$titleDB[title] = $city_DB[metaT][$city_id]?$city_DB[metaT][$city_id]:"{$city_DB[name][$city_id]} $webdb[Info_webname]";
$metakeywords = $webdb[Info_metakeywords]?$webdb[Info_metakeywords]:$webdb[metakeywords];
$titleDB[keywords]	= $titleDB[description] = "$webdb[Info_webname] - $metakeywords - $titleDB[keywords]";
$titleDB[description] = $city_DB[metaD][$city_id]?$city_DB[metaD][$city_id]:($webdb[Info_description]?$webdb[Info_description] : $webdb[description]);


require(ROOT_PATH."inc/head.php");
require(getTpl('index'));
require(ROOT_PATH."inc/foot.php");

?>