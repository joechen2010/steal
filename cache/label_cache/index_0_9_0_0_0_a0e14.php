<?php
$haveCache=1;
$label['head_menu']=stripslashes('<a href=\"http://localhost/steal/member/?main=http://localhost/steal/hy/member/homepage_ctrl.php?atn=info\" target=\"_blank\">��������</a> 
<a href=\"http://localhost/steal/member/?main=http://localhost/steal/sell/member/post_choose.php\" target=\"_blank\">������Ʒ</a> 
<a href=\"http://localhost/steal/member/?main=http://localhost/steal/buy/member/post_choose.php\" target=\"_blank\">������</a> 
<a href=\"http://localhost/steal/buy/\" target=\"_blank\">Ѱ���̻�</a>');
$label['head_topmenu']=stripslashes('<a href=\"http://localhost/steal/do/jf.php\" target=\"_blank\">���׬����</a> | <a href=\"http://localhost/steal/do/list.php?fid=43\" target=\"_blank\">��������</a> 
| <a href=\"http://localhost/steal/guestbook/\" target=\"_blank\">��������</a> ');
$label['head_tel']=stripslashes('400-45874147');
$label['index_ad1']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151113_py1p5.gif\'  width=\'188\'  height=\'60\' border=\'0\' /></a>');
$label['index_ad2']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151127_oithk.jpg\'  width=\'188\'  height=\'60\' border=\'0\' /></a>');
$label['index_ad3']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151143_i8ntn.jpg\'  width=\'188\'  height=\'60\' border=\'0\' /></a>');
$label['index_ad4']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151137_uz2b6.gif\'  width=\'188\'  height=\'60\' border=\'0\' /></a>');
$label['index_ad5']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151119_r2bof.jpg\'  width=\'188\'  height=\'60\' border=\'0\' /></a>');
$label['blue_indext1']=stripslashes('<div class=\"list1\"><A HREF=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\'_blank\'>��ͼ������׹¥�ֳ�</a><span>10-11-01</span></div><div class=\"list2\"><A HREF=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\'_blank\'>�ڵ�Ů���ֳ�����¥</a><span>10-11-01</span></div><div class=\"list3\"><A HREF=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" target=\'_blank\'>��ͼ��������ЯŮ��</a><span>10-11-01</span></div><div class=\"list4\"><A HREF=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" target=\'_blank\'>��ҽȷ�Ͻ��ճ�����</a><span>10-11-01</span></div><div class=\"list5\"><A HREF=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" target=\'_blank\'>ͼ�ģ���������ʥ��</a><span>10-11-01</span></div><div class=\"list6\"><A HREF=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1098\" target=\'_blank\'>���ֳ�����¥���� ��</a><span>10-11-01</span></div><div class=\"list7\"><A HREF=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1099\" target=\'_blank\'>����ʬ�屻�޹��ھ�</a><span>10-11-01</span></div>');
$label['index_rollpic']=stripslashes('

<script type=\'text/javascript\'>
var widths=470;
var heights=200;
var counts=2;

				img1=new Image ();img1.src=\'http://localhost/steal/upload_files/label/1_20101018151046_fnagb.jpg\';
				url1=new Image ();url1.src=\'#\';
				
				img2=new Image ();img2.src=\'http://localhost/steal/upload_files/label/1_20101018151028_v2jek.jpg\';
				url2=new Image ();url2.src=\'#\';
				
var nn=1;
var key=0;
function change_img()
{if(key==0){key=1;}
else if(document.all)
{document.getElementById(\"pic\").filters[0].Apply();document.getElementById(\"pic\").filters[0].Play(duration=2);}
eval(\'document.getElementById(\"pic\").src=img\'+nn+\'.src\');
eval(\'document.getElementById(\"url\").href=url\'+nn+\'.src\');
eval(\'document.getElementById(\"url\").target=\"blank\"\');
for (var i=1;i<=counts;i++){document.getElementById(\"xxjdjj\"+i).className=\'axx\';}
document.getElementById(\"xxjdjj\"+nn).className=\'bxx\';
nn++;if(nn>counts){nn=1;}
tt=setTimeout(\'change_img()\',4000);}
function changeimg(n){nn=n;window.clearInterval(tt);change_img();}
document.write(\'<style>\');
document.write(\'.axx{padding:1px 7px;border-left:#cccccc 1px solid;}\');
document.write(\'a.axx:link,a.axx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#666;}\');
document.write(\'a.axx:active,a.axx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#999;}\');
document.write(\'.bxx{padding:1px 7px;border-left:#cccccc 1px solid;}\');
document.write(\'a.bxx:link,a.bxx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}\');
document.write(\'a.bxx:active,a.bxx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}\');
document.write(\'</style>\');
document.write(\'<div style=\"width:\'+widths+\'px;height:\'+heights+\'px;overflow:hidden;text-overflow:clip;\">\');
document.write(\'<div><a id=\"url\"><img id=\"pic\" style=\"border:0px;filter:progid:dximagetransform.microsoft.wipe(gradientsize=1.0,wipestyle=4, motion=forward)\" width=\'+widths+\' height=\'+heights+\' /></a></div>\');
document.write(\'<div style=\"filter:alpha(style=1,opacity=10,finishOpacity=80);background: #888888;width:100%-2px;text-align:right;top:-12px;position:relative;margin:1px;height:12px;padding:0px;margin:0px;border:0px;\">\');
for(var i=1;i<counts+1;i++){document.write(\'<a href=\"javascript:changeimg(\'+i+\');\" id=\"xxjdjj\'+i+\'\" class=\"axx\" target=\"_self\">\'+i+\'</a>\');}
document.write(\'</div></div>\');
change_img();
</script>
	
	');
$label['index_rollad1']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/t2.gif\'  width=\'980\'  height=\'33\' border=\'0\' /></a>');
$label['index_rollad2']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/t1.gif\'  width=\'980\'  height=\'33\' border=\'0\' /></a>');
$label['index_more1']=stripslashes('<a href=\"/sell/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_2']=stripslashes('<div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/sell/bencandy.php?&fid=46&id=12\" target=\"_blank\">630*12�ֻ������ֹ�</a> 
              <span>654Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/sell/bencandy.php?&fid=33&id=11\" target=\"_blank\">200*200*10����|��򷽹���</a> 
              <span>5435Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/sell/bencandy.php?&fid=21&id=10\" target=\"_blank\">201301321����ֹܺϽ��</a> 
              <span>434Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/sell/bencandy.php?&fid=17&id=9\" target=\"_blank\">20#�Ͻ�ֹܸ�152*12---28</a> 
              <span>4343Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/sell/bencandy.php?&fid=16&id=8\" target=\"_blank\">˫���񻡵绡����ֱ�꺸��Q</a> 
              <span>453Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/sell/bencandy.php?&fid=15&id=7\" target=\"_blank\">����20#45#������˾���ι�</a> 
              <span>5343Ԫ/��</span> </div>');
$label['index_more2']=stripslashes('<a href=\"/buy/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_3']=stripslashes('<div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/buy/bencandy.php?&fid=87&id=8\" target=\"_blank\">�󹺴���,������ר�ô���,</a> 
              <span>434Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/buy/bencandy.php?&fid=87&id=7\" target=\"_blank\">�󹺻�ͭ��</a> 
              <span>54Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/buy/bencandy.php?&fid=59&id=6\" target=\"_blank\">�󹺷�ɽ����ֹܳ�</a> 
              <span>434Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/buy/bencandy.php?&fid=46&id=5\" target=\"_blank\">�󹺲����Բ�� 316L�����</a> 
              <span>43Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/buy/bencandy.php?&fid=33&id=4\" target=\"_blank\">��20g�ֹ� 20g��ѹ��¯��</a> 
              <span>54Ԫ/��</span> </div><div class=\"listr\"> <a>[11-01]</a> <a href=\"http://localhost/steal/buy/bencandy.php?&fid=21&id=3\" target=\"_blank\">�����߷�������-Ǧ�� ��</a> 
              <span>654Ԫ/��</span> </div>');
$label['index_L_1']=stripslashes('<div class=\"l1\"><a href=\"http://localhost/steal/home/?uid=37\" target=\"_blank\">���ݽ��Ҷ������Ʒ���޹�˾</a></div><div class=\"l2\"><a href=\"http://localhost/steal/home/?uid=36\" target=\"_blank\">��ݸ�л����������������޹�˾</a></div><div class=\"l3\"><a href=\"http://localhost/steal/home/?uid=35\" target=\"_blank\">�������������������ι�˾</a></div><div class=\"l4\"><a href=\"http://localhost/steal/home/?uid=34\" target=\"_blank\">������ʵҵ��չ���޹�˾</a></div><div class=\"l5\"><a href=\"http://localhost/steal/home/?uid=33\" target=\"_blank\">��ͼ����Ƽ������ڣ����޹�˾</a></div><div class=\"l6\"><a href=\"http://localhost/steal/home/?uid=32\" target=\"_blank\">��������������綯���߳�</a></div>');
$label['index_L_2']=stripslashes('<div class=\"l1\"><a href=\"http://localhost/steal/home/?uid=37\" target=\"_blank\">���ݽ��Ҷ������Ʒ���޹�˾</a></div><div class=\"l2\"><a href=\"http://localhost/steal/home/?uid=36\" target=\"_blank\">��ݸ�л����������������޹�˾</a></div><div class=\"l3\"><a href=\"http://localhost/steal/home/?uid=35\" target=\"_blank\">�������������������ι�˾</a></div><div class=\"l4\"><a href=\"http://localhost/steal/home/?uid=34\" target=\"_blank\">������ʵҵ��չ���޹�˾</a></div><div class=\"l5\"><a href=\"http://localhost/steal/home/?uid=33\" target=\"_blank\">��ͼ����Ƽ������ڣ����޹�˾</a></div><div class=\"l6\"><a href=\"http://localhost/steal/home/?uid=32\" target=\"_blank\">��������������綯���߳�</a></div>');
$label['index_more3']=stripslashes('<a href=\"/sell/\" target=\"_blank\">����&gt;&gt;</a>');
$label['blue_indext2']=stripslashes('<div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=46&id=12\" target=\"_blank\"><img src=\"http://i00.c.aliimg.com/img/ibank/2010/733/921/124129337_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=46&id=12\" target=\"_blank\">630*12�ֻ������ֹ�</a> 
<span>654Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=33&id=11\" target=\"_blank\"><img src=\"http://i00.c.aliimg.com/img/ibank/2010/673/938/124839376_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=33&id=11\" target=\"_blank\">200*200*10����|���</a> 
<span>5435Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=21&id=10\" target=\"_blank\"><img src=\"http://i05.c.aliimg.com/img/ibank/2010/710/902/149209017_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=21&id=10\" target=\"_blank\">201301321����ֹܺ�</a> 
<span>434Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=17&id=9\" target=\"_blank\"><img src=\"http://i00.c.aliimg.com/img/ibank/2010/423/442/133244324_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=17&id=9\" target=\"_blank\">20#�Ͻ�ֹܸ�152*12</a> 
<span>4343Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=16&id=8\" target=\"_blank\"><img src=\"http://i03.c.aliimg.com/img/ibank/2010/472/005/198500274_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=16&id=8\" target=\"_blank\">˫���񻡵绡����ֱ</a> 
<span>453Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=15&id=7\" target=\"_blank\"><img src=\"http://i02.c.aliimg.com/img/ibank/2010/004/377/201773400_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=15&id=7\" target=\"_blank\">����20#45#������˾</a> 
<span>5343Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=14&id=6\" target=\"_blank\"><img src=\"http://i03.c.aliimg.com/img/ibank/2010/223/454/198454322_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=14&id=6\" target=\"_blank\">T1T3��ͭ������H62��</a> 
<span>434Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=13&id=5\" target=\"_blank\"><img src=\"http://i01.c.aliimg.com/img/ibank/2010/157/174/198471751_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=13&id=5\" target=\"_blank\">T1-3TU1��ͭ��H62��</a> 
<span>5645Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=12&id=4\" target=\"_blank\"><img src=\"http://i05.c.aliimg.com/img/ibank/2010/755/984/198489557_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=12&id=4\" target=\"_blank\">�ֹܺ���������q235</a> 
<span>434Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=11&id=3\" target=\"_blank\"><img src=\"http://i05.c.aliimg.com/img/ibank/2010/127/864/202468721_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=11&id=3\" target=\"_blank\">20#45#20G�⾶89mmС</a> 
<span>434Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=11&id=2\" target=\"_blank\"><img src=\"http://i01.c.aliimg.com/img/ibank/2010/143/884/202488341_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=11&id=2\" target=\"_blank\">�⾶273mm20#45#20G</a> 
<span>5454Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=11&id=1\" target=\"_blank\"><img src=\"http://i00.c.aliimg.com/img/ibank/2010/267/882/137288762_1108421225.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/sell/bencandy.php?&fid=11&id=1\" target=\"_blank\">�޷�ܺ�ںϽ��</a> 
<span>4900Ԫ/��</span>
</div>');
$label['blue_indext3']=stripslashes('<div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=87&id=8\" target=\"_blank\"><img src=\"http://i01.c.aliimg.com/img/offer2/2010/075/210/91075210_0eb64d7b2064ea5f5cfc34ecfd9156af.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=87&id=8\" target=\"_blank\">�󹺴���,������ר��</a> 
<span>434Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=87&id=7\" target=\"_blank\"><img src=\"http://i04.c.aliimg.com/img/offer/50/94/67/51/2/509467512.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=87&id=7\" target=\"_blank\">�󹺻�ͭ��</a> 
<span>54Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=59&id=6\" target=\"_blank\"><img src=\"http://i00.c.aliimg.com/img/offer/56/28/57/26/7/562857267.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=59&id=6\" target=\"_blank\">�󹺷�ɽ����ֹܳ�</a> 
<span>434Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=46&id=5\" target=\"_blank\"><img src=\"http://i03.c.aliimg.com/img/offer/33/24/15/40/7/332415407-2.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=46&id=5\" target=\"_blank\">�󹺲����Բ�� 316L</a> 
<span>43Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=33&id=4\" target=\"_blank\"><img src=\"http://i04.c.aliimg.com/img/ibank/2010/562/548/203845265_1777718237.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=33&id=4\" target=\"_blank\">��20g�ֹ� 20g��ѹ</a> 
<span>54Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=21&id=3\" target=\"_blank\"><img src=\"http://i02.c.aliimg.com/img/offer/19/39/46/69/19394669-2.310x310.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=21&id=3\" target=\"_blank\">�����߷�������-Ǧ</a> 
<span>654Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=11&id=2\" target=\"_blank\"><img src=\"http://i01.c.aliimg.com/img/product/33/21/99/33219975.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=11&id=2\" target=\"_blank\">����Ǧ������˿</a> 
<span>43Ԫ/��</span>
</div><div class=\"list\"> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=11&id=1\" target=\"_blank\"><img src=\"http://i00.c.aliimg.com/img/product/70/97/31/70973167.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\" border=\"0\"/></a> 
<a href=\"http://localhost/steal/buy/bencandy.php?&fid=11&id=1\" target=\"_blank\">��ͭ��ͭ��</a> 
<span>43Ԫ/��</span>
</div>');
$label['index_more4']=stripslashes('<a href=\"/showroom/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_L_3']=stripslashes('<div class=\"listc\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" class=\"p1 img\" target=\"_blank\"><img src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" class=\"title\">��ͼ������׹¥�ֳ�ʵ�� һ¥��</a>
			  </div><div class=\"listc\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" class=\"p2 img\" target=\"_blank\"><img src=\"http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" class=\"title\">�ڵ�Ů���ֳ�����¥���� ������</a>
			  </div><div class=\"listc\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" class=\"p3 img\" target=\"_blank\"><img src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" class=\"title\">��ͼ��������ЯŮ�Ѹ���ʥ�ɶ� </a>
			  </div><div class=\"listc\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" class=\"p4 img\" target=\"_blank\"><img src=\"http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" class=\"title\">��ҽȷ�Ͻ��ճ������� ��������</a>
			  </div><div class=\"listc\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" class=\"p5 img\" target=\"_blank\"><img src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" class=\"title\">ͼ�ģ���������ʥ�ڿ��ɶ�--��</a>
			  </div>');
$label['index_more8']=stripslashes('<a href=\"/sell/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_more5']=stripslashes('<a href=\"/brand/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_L_6']=stripslashes('<div class=\"listd\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\"><img src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\">��ͼ������׹¥��</a> </div><div class=\"listd\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\"_blank\"><img src=\"http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\"_blank\">�ڵ�Ů���ֳ�����</a> </div><div class=\"listd\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" target=\"_blank\"><img src=\"http://i0.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752237F346DT20091101044440_small_h.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" target=\"_blank\">��ͼ��������ЯŮ</a> </div><div class=\"listd\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" target=\"_blank\"><img src=\"http://i1.sinaimg.cn/ent/y/2009-11-01/U1819P28T3D2752164F326DT20091101003200.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" target=\"_blank\">��ҽȷ�Ͻ��ճ���</a> </div><div class=\"listd\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" target=\"_blank\"><img src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752243F346DT20091101044518.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" target=\"_blank\">ͼ�ģ���������ʥ</a> </div><div class=\"listd\"> <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1098\" target=\"_blank\"><img src=\"http://i1.sinaimg.cn/ent/y/p/2009-11-01/1257028533_Eq30KT.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"80\" height=\"35\" border=\"0\"/></a> 
              <a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1098\" target=\"_blank\">���ֳ�����¥���� </a> </div>');
$label['index_more6']=stripslashes('<a href=\"/showroom/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_L_5']=stripslashes('	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_w\">
                  <tr>
                    <td class=\"img\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\"><img src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"90\" height=\"50\"/></a></td>
                    <td class=\"word\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\">��ͼ������׹¥�ֳ�</a><br>��չ����:</td>
                  </tr>
                </table>');
$label['index_L_4']=stripslashes('<div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\">��ͼ������׹¥�ֳ�ʵ�� һ¥��</a><span></span></div><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\"_blank\">�ڵ�Ů���ֳ�����¥���� ������</a><span></span></div><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" target=\"_blank\">��ͼ��������ЯŮ�Ѹ���ʥ�ɶ� </a><span></span></div><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" target=\"_blank\">��ҽȷ�Ͻ��ճ������� ��������</a><span></span></div>');
$label['index_bannerad']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101019091059_atxxl.gif\'  width=\'980\'  height=\'70\' border=\'0\' /></a>');
$label['index_p3']=stripslashes('��������');
$label['index_t1']=stripslashes('<a href=\"#\">ҵ�綯̬</a> | <a href=\"#\">��Ʒ����</a> | <a href=\"#\">��ҵ����</a> | <a href=\"#\">����Ի�</a>');
$label['index_more7']=stripslashes('<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_r1']=stripslashes('<table class=\"listtable\">
  <tr>
    <td><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\"><img src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a> </td>
    <td>
    	<div class=\"t\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\">��ͼ������׹¥�ֳ�ʵ�� һ¥��԰�ѱ�</a></div>
        <div class=\"c\">����(10��31��)�賿�����ݳ��������������Զ��������..</div>
    </td>
  </tr>
</table><table class=\"listtable\">
  <tr>
    <td><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\"_blank\"><img src=\"http://i0.sinaimg.cn/ent/y/2009-10-31/U2507P28T3D2752070F326DT20091031201833.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a> </td>
    <td>
    	<div class=\"t\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\"_blank\">�ڵ�Ů���ֳ�����¥���� ������������</a></div>
        <div class=\"c\">����(10��31��)�賿���ڵ�Ů���ֳ��յ�ʬ�壬�ڶ��Ӱ�..</div>
    </td>
  </tr>
</table>');
$label['index_r2']=stripslashes('<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\">��ͼ������׹¥�ֳ�ʵ�� һ¥��԰�ѱ����</a><span>10-11</span></div><div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\"_blank\">�ڵ�Ů���ֳ�����¥���� ���������������</a><span>10-11</span></div><div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" target=\"_blank\">��ͼ��������ЯŮ�Ѹ���ʥ�ɶ� �����Ʒ�Ů����</a><span>10-11</span></div><div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" target=\"_blank\">��ҽȷ�Ͻ��ճ������� ���������Ѿ�����(ͼ)</a><span>10-11</span></div><div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" target=\"_blank\">ͼ�ģ���������ʥ�ڿ��ɶ�--�������Ů��</a><span>10-11</span></div><div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1098\" target=\"_blank\">���ֳ�����¥���� ��ĸ���󾯷�׷������(��ͼ)</a><span>10-11</span></div><div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1099\" target=\"_blank\">����ʬ�屻�޹��ھӷ���</a><span>10-11</span></div><div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1100\" target=\"_blank\">������¥������δ�ų���ɱ���� 3����ǰ���ټ�</a><span>10-11</span></div>');
$label['index_p1']=stripslashes('�����챨');
$label['index_more9']=stripslashes('<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_b1']=stripslashes('<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_w\">
                  <tr>                    
                <td class=\"img\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\"><img src=\"http://i3.sinaimg.cn/ent/y/p/2009-10-31/U1819P28T3D2752111F346DT20091031215212_small_h.JPG\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"90\" height=\"50\" border=\"0\"/></a></td>
                    
                <td class=\"word\"><b><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" target=\"_blank\">��ͼ������׹¥��..</a></b><br>
                  ����(10��31��)�賿�����ݳ������������..</td>
                  </tr>
                </table><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" target=\"_blank\">�ڵ�Ů���ֳ�����¥���� ��</a><span>11-01</span></div><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" target=\"_blank\">��ͼ��������ЯŮ�Ѹ���ʥ</a><span>11-01</span></div><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" target=\"_blank\">��ҽȷ�Ͻ��ճ������� ����</a><span>11-01</span></div><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" target=\"_blank\">ͼ�ģ���������ʥ�ڿ��ɶ�-</a><span>11-01</span></div><div class=\"listt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1098\" target=\"_blank\">���ֳ�����¥���� ��ĸ����</a><span>11-01</span></div>');
$label['index_b1ad']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101161158_o5dl5.jpg\'  width=\'980\'  height=\'100\' border=\'0\' /></a>');
$label['index_p2']=stripslashes('������̬');
$label['index_t2']=stripslashes('<a href=\"#\">��������</a> | <a href=\"#\">ҵ�綯̬</a> | <a href=\"#\">��Ʒ����</a> | <a href=\"#\">��ҵ����</a> | <a href=\"#\">����Ի�</a>');
$label['index_more10']=stripslashes('<a href=\"/do/\" target=\"_blank\">����&gt;&gt;</a>');
$label['index_r4']=stripslashes('<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1109\" target=\"_blank\">ͼ�ģ���������ʥ�ڿ��ɶ�--������Ů��Lisa.S</a><span>10-11</span></div>
<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=4&id=1060\" target=\"_blank\">11��1�պ����ֲ��г��ͺϽ��۸�����</a><span>10-11</span></div>
<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=4&id=1061\" target=\"_blank\">11��1�չ������ֲ��г����Ƹּ۸�����</a><span>10-11</span></div>
<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=4&id=1062\" target=\"_blank\">11��1�չ������ֲ��г����ݼ۸�����</a><span>10-11</span></div>
<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=4&id=1063\" target=\"_blank\">11��1�չ������ֲ��г�Բ�ּ۸�����</a><span>10-11</span></div>
<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=4&id=1064\" target=\"_blank\">11��1�չ������ֲ��г��Ǹּ۸�����</a><span>10-11</span></div>
<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=4&id=1065\" target=\"_blank\">11��1�չ������ֲ��г��۸ּ۸�����</a><span>10-11</span></div>
<div class=\"Mlistt_d\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=38&id=1066\" target=\"_blank\">10��29��ʯ��ׯ�г��Ⱦ�۸�����ȶ�</a><span>10-11</span></div>
');
$label['index_r3']=stripslashes('<table class=\"listtable\">
  <tr>
    <td><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1109\" target=\"_blank\"><img src=\"http://i2.sinaimg.cn/ent/s/p/2009-11-01/U4099P28T3D2752239F346DT20091101044450.jpg\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a> </td>
    <td>
    	<div class=\"t\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1109\" target=\"_blank\">ͼ�ģ���������ʥ�ڿ��ɶ�--������Ů</a></div>
        <div class=\"c\"></b��������Ѷ2009��11��1�����Ѷ��Ϣ�����죬������..</div>
    </td>
  </tr>
</table><table class=\"listtable\">
  <tr>
    <td><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1108\" target=\"_blank\"><img src=\"http://down.qibosoft.com/other/testv6/upload_files//htt\" onerror=\"this.src=\'http://localhost/steal/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a> </td>
    <td>
    	<div class=\"t\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1108\" target=\"_blank\">����ƶԳ��ջ���������� ��Ը������</a></div>
        <div class=\"c\">��������Ѷ10��31����Ϣ���������ֽ�������õ���Ϣ��..</div>
    </td>
  </tr>
</table>');
$label['index_L_7']=stripslashes(' <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1093\" class=\"t\" target=\"_blank\">��ͼ������׹¥�ֳ�ʵ�� һ¥��԰��</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1094\" class=\"t\" target=\"_blank\">�ڵ�Ů���ֳ�����¥���� ����������</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1095\" class=\"t\" target=\"_blank\">��ͼ��������ЯŮ�Ѹ���ʥ�ɶ� ����</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1096\" class=\"t\" target=\"_blank\">��ҽȷ�Ͻ��ճ������� ���������Ѿ�</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1097\" class=\"t\" target=\"_blank\">ͼ�ģ���������ʥ�ڿ��ɶ�--������</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1098\" class=\"t\" target=\"_blank\">���ֳ�����¥���� ��ĸ���󾯷�׷��</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1099\" class=\"t\" target=\"_blank\">����ʬ�屻�޹��ھӷ���</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1100\" class=\"t\" target=\"_blank\">������¥������δ�ų���ɱ���� 3��</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div> <div class=\"liste\"><a href=\"http://localhost/steal/news/bencandy.php?&fid=45&id=1101\" class=\"t\" target=\"_blank\">Ů���ֳ�����¥��ɱ���� ��ǰ������</a><a href=\"http://localhost/steal/home/?uid=1\" class=\"c\" target=\"_blank\"></a></div>');
$label['index_L_8']=stripslashes(' <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1093\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1094\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1095\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1096\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1097\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1098\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1099\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1100\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div> <div class=\"liste\">����:<a href=\"http://localhost/steal//joinshow.php?id=1101\" class=\"t\" target=\"_blank\"></a> רҵ:<a class=\"c\" ></a></div>');
$label['index_ade1']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151105_uweny.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
$label['index_ade2']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151127_9qmry.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
$label['index_ade3']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151145_j8xam.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
$label['index_ade4']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151104_vhrhb.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
$label['index_ade5']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151123_ziop3.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
$label['index_ade6']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151143_rycrk.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
$label['index_ade7']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151108_c1twt.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
$label['index_ade8']=stripslashes('<a href=\'#\' target=_blank><img src=\'http://localhost/steal/upload_files/label/1_20101101151123_nk0jo.gif\'  width=\'120\'  height=\'60\' border=\'0\' /></a>');
?>