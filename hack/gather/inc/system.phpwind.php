<?php
if($rsdb[type]=='iframe'){//类似奇虎
	$content="<A HREF='$curl' target='_blank'>$curl</A>";
}
$content=mysql_escape_string($content);
$title=mysql_escape_string($title);

$title=@preg_replace('/<([^<]*)>/is',"",$title);	//把HTML代码过滤掉

//处理不要采集标题相同的文章
$ForbidAdd='';
if($rsdb[gatherthesame]&&!$morepage){
	$ForbidAdd=$db->get_one("SELECT tid FROM {$TB_pre}threads WHERE subject='$title' ORDER BY tid DESC LIMIT 1");
}

//如果采集回本地后.需要对源地址做处理
if($Filedb&&$GetFile&&!$ForbidAdd){
	foreach( $Filedb AS $key=>$fileurl){
		$content=str_replace($oldFileDB[$key],tempdir($fileurl),$content);
		if( (eregi("jpg$",$fileurl)||eregi("gif$",$fileurl)) && ($webdb[if_gdimg]) ){
			//生成缩略图
			if( !$havemakesmallpic ){
				$Newpicpath=ROOT_PATH."$webdb[updir]/$fileurl.gif";
				gdpic(ROOT_PATH."$webdb[updir]/$fileurl",$Newpicpath,200,150);
				if( file_exists($Newpicpath) ){
					$picurl="$fileurl.gif";
					$havemakesmallpic++;
				}
			}
			//图片打水印
			if($webdb[is_waterimg]){
				include_once(ROOT_PATH."inc/waterimage.php");
				imageWaterMark(ROOT_PATH."$webdb[updir]/$fileurl",$webdb[waterpos],ROOT_PATH.$webdb[waterimg]);
			}
		}
	}
}elseif($Filedb){
	foreach( $Filedb AS $key=>$fileurl){
		$content=str_replace($oldFileDB[$key],"$fileurl",$content);
	}
}

//获取时间
$posttime=get_time($posttime);

//标题雷同时.存在一点BUG
$title2=get_word($title,20);
if($morepage&&$rs=$db->get_one("SELECT tid FROM {$TB_pre}threads WHERE subject='$title' ORDER BY tid DESC LIMIT 1"))
{
	$rs=$userDB->get_info($username,'name');
	$uid=$rs[uid];
	$tid=$rs[tid];
	$db->query(" UPDATE {$TB_pre}threads SET replies=replies+1,hits=hits+2,lastpost='$posttime',lastposter='$username' WHERE tid='$rs[tid]' ");
	$db->query(" UPDATE {$TB_pre}forumdata SET article=article+1,lastpost='Re:$title2\t$username\t$posttime\tread.php?tid=$tid&page=e#a' WHERE fid='$fid' ");
	$db->query("INSERT INTO {$TB_pre}posts (fid,tid,author,authorid,postdate,subject,userip,ifsign,ifconvert,ifcheck,content) VALUES ('$fid','$tid','$username','$uid','$posttime','$title','$onlineip','1','1','1','$content')");
}
elseif(!$ForbidAdd)
{
	@$rs=$userDB->get_info($username,'name');
	$uid=$rs[uid];
	$copyfrom="采集所得";
	$yz=1;
	$db->query("INSERT INTO {$TB_pre}threads (fid,author,authorid,subject,ifcheck,postdate,hits,lastpost,lastposter) 
	VALUES ('$fid','$username','$uid','$title','1','$posttime','2','$posttime','$username')
	");
	@extract($db->get_one("SELECT tid FROM {$TB_pre}threads ORDER BY tid DESC LIMIT 1"));
	$db->query("INSERT INTO {$TB_pre}tmsgs (tid,userip,ifsign,ifconvert,content) VALUES ('$tid','$onlineip','1','1','$content')");
	$db->query(" UPDATE {$TB_pre}forumdata SET topic=topic+1,article=article+1,lastpost='Re:$title2\t$username\t$posttime\tread.php?tid=$tid&page=e#a' WHERE fid='$fid' ");
}

?>