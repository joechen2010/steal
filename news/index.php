<?php

require(dirname(__FILE__)."/global.php");
require(ROOT_PATH."data/friendlink.php");

//SEO
$titleDB[title]		= "$webdb[Info_webname] - $titleDB[title]";
$metakeywords = $webdb[Info_metakeywords]?$webdb[Info_metakeywords]:$webdb[metakeywords];
$titleDB[keywords]	= $titleDB[description] = "$webdb[Info_webname] - $metakeywords - $titleDB[keywords]";
$titleDB[description] = $city_DB[metaD][$city_id]?$city_DB[metaD][$city_id]:($webdb[Info_description]?$webdb[Info_description] : $webdb[description]);

/**
*ฑ๊วฉสนำร
**/
$ch_fid	= $ch_pagetype = 0;
$ch_module = $webdb[module_id];
require(ROOT_PATH."inc/label_module.php");


require(ROOT_PATH."inc/head.php");
require(getTpl("index"));
require(ROOT_PATH."inc/foot.php");


?>