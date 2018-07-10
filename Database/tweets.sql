/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - tweets
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `tweets`;

USE `tweets`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `dataset` */

DROP TABLE IF EXISTS `dataset`;

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL auto_increment,
  `dt` text,
  `tname` text,
  `tweets` text,
  `retweets` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataset` */

insert into `dataset` (`id`,`dt`,`tname`,`tweets`,`retweets`) values (1,'18/04/2018','Data Mining','0.5','2.0');
insert into `dataset` (`id`,`dt`,`tname`,`tweets`,`retweets`) values (2,'21/04/2018','Profile based Big data architecture','0.5','2.0');

/*Table structure for table `friend_search` */

DROP TABLE IF EXISTS `friend_search`;

CREATE TABLE `friend_search` (
  `id` int(11) NOT NULL auto_increment,
  `username` text,
  `keyword` text,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friend_search` */

insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (1,'usha','raju','08/02/2017   15:15:38');
insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (2,'nbheemalli','raju','08/02/2017   15:35:28');
insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (3,'usha','raju','15/04/2018   12:32:46');
insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (4,'usha','raju','15/04/2018   12:34:20');
insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (5,'Swati','raju','15/04/2018   14:53:09');
insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (6,'renu','swati','15/04/2018   15:04:22');
insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (7,'usha','renu','26/04/2018   15:14:55');
insert into `friend_search` (`id`,`username`,`keyword`,`date`) values (8,'usha','renu','26/04/2018   15:15:49');

/*Table structure for table `negative` */

DROP TABLE IF EXISTS `negative`;

CREATE TABLE `negative` (
  `id` int(11) NOT NULL auto_increment,
  `tname` text,
  `totaluser` text,
  `negative` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `negative` */

insert into `negative` (`id`,`tname`,`totaluser`,`negative`) values (19,'Data Mining','5','0');
insert into `negative` (`id`,`tname`,`totaluser`,`negative`) values (20,'Profile based Big data architecture','1','1');

/*Table structure for table `neutral` */

DROP TABLE IF EXISTS `neutral`;

CREATE TABLE `neutral` (
  `id` int(11) NOT NULL auto_increment,
  `tname` text,
  `totaluser` int(11) default NULL,
  `neutral` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neutral` */

insert into `neutral` (`id`,`tname`,`totaluser`,`neutral`) values (15,'Data Mining',9,4);
insert into `neutral` (`id`,`tname`,`totaluser`,`neutral`) values (16,'Profile based Big data architecture',4,1);

/*Table structure for table `postive` */

DROP TABLE IF EXISTS `postive`;

CREATE TABLE `postive` (
  `id` int(11) NOT NULL auto_increment,
  `tname` text,
  `totaluser` text,
  `postive` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `postive` */

insert into `postive` (`id`,`tname`,`totaluser`,`postive`) values (12,'Data Mining','5','1');
insert into `postive` (`id`,`tname`,`totaluser`,`postive`) values (13,'Profile based Big data architecture','1','0');

/*Table structure for table `req_res` */

DROP TABLE IF EXISTS `req_res`;

CREATE TABLE `req_res` (
  `id` int(11) NOT NULL auto_increment,
  `requestfrom` text,
  `requestto` text,
  `status` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `req_res` */

insert into `req_res` (`id`,`requestfrom`,`requestto`,`status`,`dt`) values (39,'usha','raju','Accepted','08/02/2017   15:15:41');
insert into `req_res` (`id`,`requestfrom`,`requestto`,`status`,`dt`) values (40,'nbheemalli','raju','Accepted','08/02/2017   15:35:32');
insert into `req_res` (`id`,`requestfrom`,`requestto`,`status`,`dt`) values (41,'Swati','raju','Accepted','15/04/2018   14:53:16');
insert into `req_res` (`id`,`requestfrom`,`requestto`,`status`,`dt`) values (42,'renu','Swati','Accepted','15/04/2018   15:04:25');

/*Table structure for table `retweets` */

DROP TABLE IF EXISTS `retweets`;

CREATE TABLE `retweets` (
  `id` int(11) NOT NULL auto_increment,
  `tname` text,
  `t_user` text,
  `t_comment` text,
  `r_user` text,
  `r_comment` text,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `retweets` */

insert into `retweets` (`id`,`tname`,`t_user`,`t_comment`,`r_user`,`r_comment`,`date`) values (1,'Data Mining','Swati','It is admirable','renu','disambiguate','20/04/2018   18:07:13');

/*Table structure for table `server` */

DROP TABLE IF EXISTS `server`;

CREATE TABLE `server` (
  `id` int(11) NOT NULL auto_increment,
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `server` */

insert into `server` (`id`,`username`,`password`) values (1,'server','server');

/*Table structure for table `tcomments` */

DROP TABLE IF EXISTS `tcomments`;

CREATE TABLE `tcomments` (
  `id` int(11) NOT NULL auto_increment,
  `tname` text,
  `commented_user` text,
  `comment` text,
  `date` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tcomments` */

insert into `tcomments` (`id`,`tname`,`commented_user`,`comment`,`date`) values (162,'Data Mining','usha','It is productive','20/04/2018   18:17:32');
insert into `tcomments` (`id`,`tname`,`commented_user`,`comment`,`date`) values (165,'Data Mining','usha','It has malicious data','20/04/2018   18:27:16');
insert into `tcomments` (`id`,`tname`,`commented_user`,`comment`,`date`) values (166,'Profile based Big data architecture','usha','Easy to collect the data','21/04/2018   11:39:46');
insert into `tcomments` (`id`,`tname`,`commented_user`,`comment`,`date`) values (178,'Data Mining','usha','It is very good','26/04/2018   15:16:21');
insert into `tcomments` (`id`,`tname`,`commented_user`,`comment`,`date`) values (179,'Data Mining','renu','It is very accoumplished','26/04/2018   15:17:46');
insert into `tcomments` (`id`,`tname`,`commented_user`,`comment`,`date`) values (180,'Data Mining','usha','it is very\r\n comprehensive','26/04/2018   15:19:26');

/*Table structure for table `tweet_search` */

DROP TABLE IF EXISTS `tweet_search`;

CREATE TABLE `tweet_search` (
  `id` int(11) NOT NULL auto_increment,
  `keyword` text,
  `username` text,
  `dt` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tweet_search` */

/*Table structure for table `tweets` */

DROP TABLE IF EXISTS `tweets`;

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL auto_increment,
  `tname` text,
  `image` blob,
  `description` text,
  `date` text,
  `time` text,
  `rank` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tweets` */

insert into `tweets` (`id`,`tname`,`image`,`description`,`date`,`time`,`rank`) values (17,'Data Mining','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0á\0\0\0á\0\0\0	m\"H\0\0\0PLTE@Èô\0\0\0/ÀòAÌùAÊ÷BÎû?ÇóBÐþBÍû>Äï=¿é;¹â\0:¶Þ9³Ú7­Ó5¦Ë0–·*ƒ (}™/:5¥É.‘± e{/”´2¿\ZRd,‰§DS$qŠ<I\r)2	##m…`uAPOabw\r+5\"*5A\n!CRYm¤8kc\0\0‹IDATxœí]éšêª\r^ “­Qã<·¶­­½}ÿ·»4¦  dP÷9ßY?Û$Í‚¢¨	°þ÷o‡õ?ëßÿþóñÃ>j2d´©†¤ ÜbÍ~±.ÃîÊqyÂRÓ0êY¶Ñ×ííìÀ«Ó µÒ>	û«ÕÔãŒ¯ÕSÞø²öLÆš~OÈúLzÍŽb†¬CN[c`ïw¾¢ïùžœÃ~›¶›î£/ç[¹A(ê0¤#òñÑŠðAŽÇÁ\Z&ÖMú€ìý‚aäÒú8ÍÃqÐìä.f¨î{:#­È‘ôðvÑ¤0l3FÕó‘µ·ñƒqg,gÜ¤é†(dÈÛÊ¥½Œa‹, peýB·‡ÈÁñw¾øóãÿ¬îû dÒà(0¤Þ•´U£ÈÚä#c¸½¶M]×&Ÿw¾·œlÈøÖr¯Ë\\abúäÑ]Qo˜)_h2:;rPv¨}yˆéèRÏ¯É`äs?×‡ý ý–M~÷Ó6Ë‘¼	söèµ1…ªcHýk¢$Æè´ˆÆÈÙeÍú  è(U²ä:ÎIòypk·sHæ[Xüþ—\r`ØÊ†û‰™Û?¥­lIrÊ8÷{‹Õêšk>”+ÚY’tNeO|ö½«bÿF.a×¥éZág²ø¯1ÕRNî8ÀÕœ±^¸>¦äcñ¼5úèŸÓ Ë)¥†Ñ :Ôqú]CŠT©~•Ç$ §‘‚ä°yýËñp)’¯\\\'ðî’Üº†œfÔ¹H‡ÓEdâ˜È*‹¬ÂéÎæø³\n†,Èä”uwó_q€&b\'rG‘„¹&x³UÖ„|w[Â÷n+£g0„´{|’ÉàºC)ªÆŠsð2sFâ ’™øyœÁ#$\'q‘Á—§OÄ‹qœÏ8õ­\"ðàõF¬ØðUT)¥þPô©7˜¬Ž9’d#/`Ìk¯òkh\0ÝÁÕA&Ø:^–_Ÿƒ\"1¥côòÇñvKIib’åqô)uÑÈfAØçÝ9f>}ø…«4—e1mMï«˜dQ7þ$_9ì]Zn->åu¿íµ—SÚ˜5þ\r×»kBáîì°ÑîúöíºXÎ<ŽÍÉÈ!¹wG¤›0#Z³â{‚œJÍb~\'Ñ¤%6ÿöïíkFp$9ENçzTŒf¶“}4^\\6«®<ÑùA_\"’ªa(ÈiË—;(ÕäË’3àó½¯ûŠ0¤õ*ò½´Rš·‡c8–£™%ô“\rM!rIÿGgµ9W¨O¥—™ÿKb‚}é—îd5Ø]²U}…øø¬}ÔQ$ŸùÖ™“äK›íæ:šÄe™ôÄ¶h-oïS+§Ô[“è›y|\"›}|¹¿¶Yù¨ÁÁ|²!¡he¤Èªý˜¶ô>!AÔ´9=åõ)¥´7Œ•,6>ñï¼3\r\'“Uä²+\r*·=Zl‘•0y¨¼ã¦Ü~ »Î£lëE—Â?Ñû‡T¹îû³pÑ[†meûå®Ëµ¶3“­µ{CE‰>3­EvéµÏÈÛ¢¨é2Êé4›è¶ôz]ŸÕ4þ™BL¥õ7R1½¬7¢®Dé{™¡ñQàãs(§$Oc´×†ŽqŠd!!]‚#½jSºÄß…dQœÆÙçø}ö›HGC ‚Jö’?µæˆþÙýå”!5chyÛŒà7®KB°þ¼9Bp-Y¹‰Ïº\\þ¯Å®7K-ýB†™>ýœ5 •‚œõÅt/ˆqACÉ£V­4d¾\nw‡íW:¥Šã¥<•Óo£À¼:û®ãRÆ¢yìø;¤™\n¯0¢ˆK%B1ÆúÖMáØÚŒ”i‰²`íÍO8ê¶;£Áis´(dÅ	G½7’ûÈpq•C¥jtgd×Ô\0&íÌkAšö9Sæ-{¡Z>ìG–C™\rÒQ¿Íq/Œ!fY-ðÙD±M¦Ñf‹mGùøÐi¸\\þAMãÈq½šyÂ²ñ5‚zƒ­(¡‚Í)Á7å—|ŠüŒR\"Cû¶*¬ÃžÍqo9Ad‹5¡S¹Õ_Bc‚,Çž«û2WXˆ(ö3*¬‡´—ÿ_aÏ£(KÊºãÁ¸ÓÇH“ÎV‡áùwû¹YÏÃ‘çÍu\'‰pëÓÈhw»3ŒÌt€í|xÒhÑÙWòka2Ð¤Ë™çû¾M\Z@|¾³»u„àLåŒáH8ÏAÞ¸¸ç1âŸ5YFny6Ã¦y™¯Øþ¾HTÉ\0µK\'â!°ÝÍüŸÇß‡¥Ò_Ôi/®—ÏÓöüµë‹£’}ŠÌBè–ÜÆA«Gk¼aþ‡oót;µŒÃ¨zÛ+Ô6d‡ú‡T˜†Fx—ðˆäVñcÓ³øÕµM1Ý0”<Ë;CQußp|DÕ©ÐÎYÝKœ‚Ád£â\"Ë‚X’tCA¸nýÎp™‹[ˆ¿íä”‰::ÃÜd\"Ûˆa÷ÆŠØNBp-¾’2TNÃPÃPU}‘ï^¦P\'Ï3°\0)®qý?ê1ÕLÆÐ²»‹«4[ 	¶<µU˜`W<y8°`GPÚ×8Xhý¾Z0×±‰åg.¹E\'%ÛèkÁ¼SSü¾Ìl÷þ\\äRöæšYˆ¤ ™œ^0˜ŸpIº7¶‘ZÚŒa¢«Øž\\\"’;Ž7î6LŽÖTˆpdŽzAøçÖ†|ÖÖâ;©¥œÆá‰BÈi*:‘3tX^~‰Ö*0L÷a>~daY½ðëHH\0¦-\\ò¬p}Jm¹70Èiœý¹CÍ.ÉþtÐSE1âz’YÅÓ¸hZ÷~ä\'1ü˜,Îè\\ìPD,-:†	#q€\\YÙüÈ©g6€1ÔU©ùú“Ât±ÚJ*W}i¥6†bÑÆ˜ BD0Ú[kUèf¬¶tË1’QH©\'³CÃÌG±ñ\'k°ø3ÓYò%+hÝo©ùø4£3…¦ÄÊÐ§Nw•jº9ò±»zo¬$CæË–Ï#•Iý½ôk!Œä4ùß®,öëßìÍÍr7íPMìª\nCËíËm¼W¹}í\0¿¾°?+Ê8p’ÜµüN0›õg£ í1“ Xé:ow.·1Ñ¹®wEÚÿxhæEÆfç„%}ÅÈv‹ÁÝ¯ÒâhE.Ã÷m?,æÄ˜ÖVCùZ}>EÚè´µxÍ\"Ù|!ÿjT€Xv#¸rXn9Þjøú9mÀÿÈ\ZÎ\Z\0T`ÈÚŠ€@á\0&owGž)§Uv”`’¦À™ Î±¸Æò/cï¡0ÅÞ“½Ä1\ZD%†¨¤a8c\r\'•›:j£Ú¾\'>@\Z)c‚§7øJ~tÙXŽYDÅ]ÜÀƒoT‡½ðM\r \"C9ý¶”ËHåÝñ,9­º;Oé½a£NÇGpkþ¤u¿úþC­œ•6xˆþ$9­<†ˆí–á,Wê\nÀ\\émÙœ¤*2D5~6€¶A¨±c¯\rïMQ‘!°¹cÓ3QüÌßÊ¯öŸA±âz(3²4,.âcùÝSñ™ò¨fµ)eô§pfÀ*¤¢ËP‰!—ýüÛ\0\ZÌÀ;n[à \ZÝãœ¢\nC,Gc”2½\\ÄEùl^N«0T$ýW%0CòßÒ&¿Ú¨$¥X^ÙSt:›$kJ¡’ßÄ\0ÆÀL¿í_p¶	–‚ÒZ¡j09_Gv\rûQUÊ\Z¢\"Á—Èi†’lM*w»ƒ$â†ÍPS…¡ä¢ÕçŽ‡¤â‰åŠhdkt:æd˜\'kLP…¡ä8‰âÊ€#Îð¦I}ZeµLš²¹\0$_gœT4A•_š;ØZcp,¥Ó œVŠyK\nðZ§Ï1;¾LR±\0\rYÞòNàŸ“kk\n>@5ïIÒâq¥àb¹ñÆä´ZTßÿô]£Ï)AÿjJŸV‹b 	ß\Z¶î\r\ZZ÷+F¢I;l«3äx•fCAðªñR_\n¶™\Z¢p‘˜T\"§ÍÌÄªeÃÆ (\Z…¸™úE#rZ9ªO¥®ºØT†ª™Ç:Ö`†Ê“c- Ä}\0pÛŠm	ŠÝ‹Q=3ƒLŸ²q¦šHÖÔ8ûÒ‘Bº%cx-Ë£dM\r†HDªLaŒA©{$§õ•MóK‘ªó5ŒíUHQÿpÁZ§ìÊ!Ýƒiµ¨\nÁQ?©X¡œÍ7ësÞ3®”¾ÖÄzgAËU\'[9¥žá\0&è×¤Xó´k*iÃbg˜8°\ZÛšÉšº\'–ËrZ°ó’ÚåJÝ£>«¯{ê¼œzhégîl[’ ùnUµÏÕg’Ò×8ÃÜ Ô}Øö¡þšœ€©Dm†HêAå3®/u±ï=Q+©XÿnW’SEâûÚJé÷$³\n«#§\rÜþ`Kªè2g|Ÿ“ðÙQÏ3ÜU¢†ˆœÊ2®u“nä´&Ìò›ìªV ‰<i¿ˆçi0“ÂéxË¢Q1€`5uG‰dƒÁ€.ï\Z•MC£–ÿsS¹m0DêEsæšUç¬r²¦™1t¥LÆã¨Þ5r“ˆh+ˆÁþªrÚÐM:ž´-ö&§{ò!@ÐB,ˆ¨è²\Zcˆ¤rCËå.„gøÍ/\nŽ¨|+&kšº\r	Ù\"<+S½!W¹çÈc_­\\ ¹ûžÊmRà¾äS1`‡•œŒÆ¢%E¸ÎÚÝÄ]“Ú1ÆGRr+F…€l“c¨©ªUàÒs(c¼\rVÓ…Çì®Ê…¬’TlŽ!¶EX‹»•M¡}þR‡\0þThWƒ÷®éw‘JxXÙ¦©´S±É›å°ú{%ò‰%¬0JòÉš&29©¨8ìˆªFÿ²‚ _>©Øèí€Úm&0Ÿ*‡Bb´Ì4‘–þÒ;›½ÿÙÊ®\04¤Ñ]T_ÝôO)›ün–¡ùá%XÚ01ýÎööAÛ4qpG³Ñ}\"8@®É#æ#Ë0„^¢FÃÍ·ƒ|r TšyûýTNN›fh¼E8sDÒt°°\rŠF¹ŠM34ßÊ¾Î.ðr–D	Þð´ÌTlœ¡å(<¦ãj,òZñv:õ0Áþò1ð×2ÁÅæ*ätâEf6ÇÚ…,ò‘­>n&€D¤˜P—¯Ky%Ct+{¶1ŸæWÌu8^©b\0 ,Å+KT{>¡eI‡{|=nÍ3¶ìr;K¸´‡¥Ä)¿Ï`(ÁÏ¹ä‘¹§œmetcÐüÜ§Œ¡h„™rÈyÕŸ‚ŸŽé\r¨?»È8Yó†…³¨>†o@\rãsÒ½8(çÞÏÈmMõé“ÂJpø£œ«ŠÓ†é0s=_NöÊó	¿\rãRÏa(îëÝm’íí+:«!Ãªä\'1Œ¯™}\0n¸“Ç0¿Á™\Z{Ñ†IÅg1„Éš¼(Ó|ž)ÍMqüO¿sfV•ü,†PN¹ÕBÉÁ‹\\qŸ\\ÛN¤‰º`üäôi-;¯#²™ÈQ§=`ˆ\r¯{©?LÁQFÇŸ>!”ÓôxQŠN´vÔï¥Øe‡[ÂŒ”Éñ§Ïc(ìíS—REÅ%ðv‘yšß£\nb0‚?‘¡]ïvª’à}Þ“÷òšnº2¸¢á™•\'½KÈåw‘ÊŽ9E,µÅÉïg2D÷‡¢xäÄÝ®\\u5‘°s®PNŸÊyªdÍdÚÂx‹ñ345‘pláNÅ§2Œ/ÃBùùñÚÖÎ›=c—2Ê;x¤Z}Âu*EÉïç2„—Þp¾¤Hý¼&Ú‚‘ê”ly{­`—Ç“Zž4­þøøÚ¦CÎxaž÷XëñÙ¥xý0w9	rR?Ž‡&¢È‘/ú¤â³Þ/Ì\0uŸ*qxÂ_î‘Gk†é.­œ>¡°£š’Š4ÇyásÞy¬•íR×êãþ°xAîk\n,åŽmãn…É¡µ^2\\-”‘GíNÅç3„çá.·vý¸a¸pãWÖ)š/`“0FfK½<Ž¥Š·hŽCyC¸Sq˜×\nÈ<ÌûØi`\n¨ÿû+Â¤bîºÚ‘VK˜‘àÆ»kÔ{‡^Âuòá¥l½Àü}xišù©ÓêØâKBqÛ¤\'+2¤úP<WPuöŒ¡r\"¾†¡Åó–È°Ã)¥xé0¼%ËœáIZ|C!©¸_„ª|?Èïš>¨×‹14¯];å^b¶q9˜ú W1´¨i¹ð#~F-ã¤÷K©nJm&+`¼Ü’4Ì5¹ö+ûÈ{W‹ò°—w\\§—óÛ·gŒ¹ú3DÌß¼Z$°19½•Ñò|)B+ìøBqt!Ô}/dˆÄ	Ù‹Bù-Zæ­ƒºNê…‘rî°ê&T3\\ÔáýW2´¸ üónö„ðBh¶´¿”¡Â?‚5¹Ìº»Í^ÊPÓ\r°ÐÐ¡;•àµá%‘\'h‡ÈG¤™B[¬øb†0D\n»»/Áúãð^Ì†HAXªºªÑ\'g^ÍÞÀ’/@¤æF(„|0ÀË9ýÌìe†]¯c‚cÑIþ/gW…{¥\r^Fk€Kû­ùC ÿ·pãC\"Ô§Ò ,ºßñ-azlÒõüQÅ)øerUÁŠ;ÏÛŠ(ÞJŽã™_|BF1Ö]³Jèw0ÔiŽAñLñ†Ê:ac,;ï­‚.D]9]Ü!{Ç{\nÇz”Ä¿D]71¬n£•@ë}Y»¢œü÷î?4‡êô`=NcSšáma²Æ×vÙ]Àïdˆ^È£G¿ÜLñ>†å.Ý0÷+‡õF†e.Ý\\É~é˜âY×üÄ—=~-­ÞÉÐ<©Xy\0­734M*V@ëÝv~oGµ0}/C“\\ÃK1Ux3Cü¾6µï||7Ã‚8°é­¦\Z¼›¡öÄ—sA°×og¨)Ï+s«©\Zïgh¹34e?ì5sÑÌ_ÀÐ¢XÙEX¦øZŒÇ°¬Ÿ«Æ_Á0.TôÆ×Mb¦‡“}óÍrÏu¨ß\r‚®Ïy£×tþ=c°MóïbøüÇðŸÿþó1ü·ãÿg™ícÛ½Ø\0\0\0\0IEND®B`‚','Helps to classify the data','18/04/2018','18/04/2018   16:22:33',1);
insert into `tweets` (`id`,`tname`,`image`,`description`,`date`,`time`,`rank`) values (18,'Profile based Big data architecture','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r( \Z%!1\"%)+...383,7(-.+\n\n\n\r-! \"-/-/-/-.--5/----+--1---///1-------------.+-------+ÿÀ\0\0á\0á\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\09\0\0\0\0\0\0!1AQa\"2BRq‘¡#±ÁÑ3br‚áðTc’ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\09\0\0\0\0\0\0!1AQ\"2aq‘¡Ñ±ÁBRáðñ#3b4Cr²ÿÚ\0\0\0?\0÷\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€\0 \0\0\0\0\0\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0\0\0\0€\0 \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÇÀÄÌDo#Ý«¸Ö¥t—H.Ì«ÉÅ°Å¹1DÞ}Ý¾}’«¥¾ÛßÕzÛÔj¥ÊÔ¿¾NRûp#Î«ˆ_¬V´|ï?NqxÌü9ßÿ\0‘JðÜG™Ë«ñÍ_”}Þ¹q$üÓu+Ùx4×äf3kãÙµ-ømù15Áã…kiN×¦Q_ü~ÆÚñL˜ÿ\0î1L{ã¬<Îš¶ÿ\0nÛüz3´úˆZ³\\”—‡5ó],\ZœYëÍŠÛÂ5ñÚ“µ£eÓ{À\0\0\0\0\0\0\0 \0\0\0H\0\0\0€$\Z­LiŽôß‚KœŸr#êuXôôç¼ýæ|¡³+d¶Õj5w9-ýLœ øÃMë?î«<Þ=&®ÜµðÇçâŸŠœ¾®(Þ›ìÁ·jË´Æ5C¦êY*òqkíÉ‚±H÷wI®–»ïyæ––Ê^Ô¥/œ›+o›%ý«Lüe\")Zö…§¤¦×\'—ÔZkÚIÙ4maÊnKº~²û“pq-F.ÖÞ<§«EôØíàÌ§S]­4ÿ\0—»¤âýI?Ç«{oYôY<ã´ü«EñÞ‘´úõòñmôzæåè®J6{¯Üµw¯Øè4šûMýxå¿„ø[áö@Ë‚\"9ñõ¬3‹T`\0\0\0\0 \0\0\0\0\0\0\0\0\0™ÍE9IáE6ßrG›Þ´¬ÚÝ£«13´9íN³§šÌ¥•§­ò„~7âr:w_ÞoÖgØ¯”4üV¸ðÿ\0ã¯oâŸ?sQmŽmÊM¹>mœöL·ÉnkÎòŸZÅchRkd\0\0\0\03ôš¥$ªµ¼ez;=ê¥Ñç¸µÒêâñ3OOá·gÃðFË‹–yéøÇ› Ùº—5(YýZžìü{¤¾g_ÃµVËYÇ“Û§Iý\'ñUj1Egš½§·ÙšX£€@\0\0H\0\0\0€\0H\0H\0\0k6Ý¼![xSnV>êáÆE7ËZâžÖë?ú×¬¦i+ÖoåÛã=œÖ¦çdœŸ^K¢K’8½FiÍ’o?Üx.1Ò)]–`\0\0\0\0\0ßfjñ*¦ßÕ>øKÙoäÖƒ†êö¾<“Þ\'’~ìü¦6@ÔbéjÇÆ>1ÝÓ¢\0H\0 	\0\0@€$\0\0\0\0\0œí¸³ú’^rãùŸË¶]¿ã·Îz­´Þ›ûÿ\0F‹\'0²2 2 2 2 \\ªÌoxÇîškò7á·/4yÇåÖ?\'›W}Ô^R}é3éuâ%ÍLm)2À\0\0\0$\0€\0\0\0\0\0\0Ëöª²¹t”\ZóOþQÈ~ÑSlÔ·œ~Kž;ÒcÊZLœîËŒƒ#cc#cc#`ÈØ266266266UäÔW94—Íð=R“kEc¼ôbghÞ^€–8wp>´låƒ \0\0\0\0\0\0\0\0\0\0\0\0\0j{I¤ô”ï%ëTÜÿ\0×ÞýüŠ~7¥ôÚ~hï^¿‡Švƒ/&]§´ôû8ýãˆÙ±¼667²266NðØØÞÆA±‘±±¼\r›NÎi}-ÊMzµzíôÞè¿ïqqÁ4³—QžÕëøø ëòòbÛÆz;#·P \0\0\0H\0\0\0Â×í]>™~5°ƒéó7òŠâÍ¸ðdÉìÆíµX°ûvˆüÜö¯·TÇ…4ÙgŒäªäßØNyö­·ÕW—ãb³?Ÿv¾}»½û4R¾rœ¿ctpÊxÚQ§åð¤|ä‡o.^ÕIxNQ¨žOIo/#ç-–·TK…ÕYSï‹VÇôcEømãÙ˜Ÿ¢V.5ŠÞÝf¿Xûý‡hÑ©Y¢ØYŽj2õ—ÍsD˜¯Žv´l´Å¨Å–7¥¢Yf¶à\0Ð^ßÙoO78¯Á›õZ÷Âÿ\0C‰â¼:t÷ç¤z“ô÷}‹U«Ë>Ô{µ;ÅFÉÛÃccxllo\rá±±¼667†ÆËšz¥l£\')Iá%ùü¸pß-â”æ^2Z´¬ÚÝ¡Ýì­ÓÖ ¸ËœåñKö;ÍŽº\\QHïã>÷5©Ï9¯ÍáàÌ&# \0\0\0\0(²ÈÂ.Rj1ŠnRo	.öf\"fv†-h¬o.oöÒSÍz6áNö–ü¿Å>KÇ™o§áñ¶N¾ç=¬âÖ·«ƒ¤yýœ–¹7)7)7—)6Ûó,¢\"#hRÌÍ§yë*reƒ 2 WMò®JuÊPšå(¼5æbÕ‹FÓÕê¶µ\'š³´».ÏvÊmªuQvI§¹lM´³‰.]9¢‹ŠaÇ¥ÁmDv¯xû:.¯¾|µÁ~óÚ~½[k{C7ìB)smœ_ÚL“?éÒ#ã×ìëëÃëüR¢= ±soêtý£ÏÕb~q÷fx~?	–ßdmæ«ôŠ;±Þq‹ÎTñÁµážQ¢Ô_>(½ëË¿‚»>(ÇnXÖ{Cv*UE\'=D•PO’Ï9y#OÉ¶Gfý#õŸÁ»CMòsÏjõ—\r¨qS’­·&¢ß6»Î+-k˜§gKH´Ö9»­ï\Zö{ØÞÃccxllo\r™Û7f]©‡S<l—/>¾DÝ/Í©ŸR:yÏdmF§õ§¯—‹³Ù;*½,}_ZÆ½{7à»‘×è´ôµõzÏŒ¹íN®ùç¯Hòl	È \0\0\0$\ng%Ûi$›mðI.¢#v&b#yy—jûFõ“uTñ¥„½\\e;d½çáÜ¼Ëí&–1G5½¯ÉËq\rtê-Ë_f>¾ÿ\0·ÍÏdš­2`ØÈdÈÇ—7Áx°lÜÃ³:ŒEÙ-=2šÌ*¾ø×l—LG‰Úü5·ÝaN©µwÚ#ã=ZÍn’Ý<ÝwBUØ¸¸¼>é®\r|‰TÉ[Ç5gxBÉŠøíËxÚUlÉâêŸ÷ãêšýJ¾=N~š?ã3òëú\'p‹rk±Oü¶ùôý]añgÔ\ZÍtå}Õhêx•²Œg%Í\'Í}eÏÑúKEçÆz}Úòß’³>OJÒéãMpª®„WrKî«X¬EcÁÏZÓi™—#·¶Š•—N-?F¿•¡.nRãdü¹yœÏÔódµ£ÃÕ¯Æ}©ýú-6Ô­gÇÖŸÒ?V&Ììí÷âR^†¿Š~ÓùGŸÔ‹¥á³u·«þÿ\0&ýGÃ‹¤zÓîûºm?f´Ð†ì¢æß9É½ï,r/±ð5)Ë1¿¾{©ïÄ³ÚÜÑ;{˜wöB§ý;l‡„”f¿B6N†}›L}R)ÅòGµXŸ£ö>]/œîGŸÙùð¿Óú·Ö+üŸUÚ»½ûŸúÁ/ÌÙN_â¿Ê-Æ\'øiõl´}ÓUÇqÙ%Ö×½öäOÁÂtØºí¼ûúÿ\0D<¼G>N›íðm’ÇÁ.Ir,b6é3;¤È\0\0\0\0Åÿ\0vË®1ÒVýkõÍ>*¾‘óãä¼K>ƒyô“áÙKÅµ\\±èkãßáåø¸–î|È€È7}®×P§‡ùÁ>NÈÇ1ýüˆºÙ˜Ã;\'pêÖÚšórñý¡¶í¯l]¬Ú5KUu\Z»\'è.›Œwá\'èàø{Âà¹¤‘C³¬zÛÚ×í-‘ ×ë¡j®¿P¡»F¥§Þ{¸OŽ8/Ÿ>¥\r™æ´x)xÍkÉ[xîÕBÍ×|2Rú<–y±×.;c·kDÇÎ6Qã¼ã½oòÝ¤lN*~ëŽö|1“áY°Û[b·xŸYÇ’2R/^Ó±;M¯²ç\Z¬šðrj?“geÃ1Eoåzëmã/Gº-ÆJ/vN-FXÎëkž:—w‰šÌVv•Uf\"Ñ3Ã_³v\ZZ1ß³­¶zÓÏzîò\"iôpuˆÞ|ç¬¥j5Ùst™Ú<£³fMC\0\0\0\0\0\0\0\0\0H\0(¶j”¥ÁE97à–LÄo;13´o/Úšéjoºé>6NR^Ï«%„t¸©é›$åÉ7Ÿÿ\0\\›\Zö2\rŒƒddÊè¾UÎA¸ÎRŒ—5%ÉžmX´m/U´ÖbÑÞmn¿fë\'ö†ÊÓê5k¹=Åc\\œ}ï<•¶á±¿«n‹šq‰ŠúÕêÅÛ;^Ídã)¨ÂÇrškX®¨w$MÁ‚¸kµUºMõæ·á\r~Mèî“`ê´Ê–ýh\'ÇÉùr>cû[ >²5UVÿ\0ýGŸ›ºýœÖF]?¡™ëOÊ{|»-ijÔìûc}¾îSÂÊ”_8Ê$=\'§4LNÓï^åÅ¯,½avŽjQOÑÞ—­LøK=w~$tú}U3GNêlÚ{bïÛÍ¹$´\0\0\0\0\0\0\0\0\0€\0H\04]µÕz¥®sQ©¼”_Ù²VŽœÙ«óù!qòií·O›ÈòtTÈ†LƒddÆ@dÉƒc ^Òj¥LÔáÍt|šê™_¡Å­Ál{OÎ\'Âa\'IªÉ¥Ëq÷¬y;²ÁNÂQëÜÏŽñ.›‡æôYcá>qöð}E®Å«Çé1ÏÆ<b[=“G¤¾®Ý’›}Û¼Lðœ3—WH	Þ­º«ÅqOËæìO¡¨\0\0\0\0\0\0\0\0\0\0€$“þ%Ï\Z8/‹Q²“\'ðèÿ\0Wr³ŠÏú;{áæ.œéld°¥¿™—™¼BâÒ®÷ô<zE3ÒµËÙ™Œ‘âÇÉ†Ó Ùö“W:d§[Ã\\×»%Ü×R»Aƒ[Šqf®ñõ‰ó‰ðIÒê²é²FLS´ý\'âõ~ÅM]§ZŒbV7¹î¨¼p3“Òpjðì—¯74Ïi÷xW[Bu˜ë}¶÷{Ý	=ä\0\0\0\0\0\0\0\0\0\n.Rq’ƒÄœZ‹k)K˜Û~¬Nûtyd;i´tÖN»§e\\å	ÆÊ£¥†“Ž;‹¹Ñ`¼DÖ6ÝÎÇÔã´Å§}¼ãí³kGñ\'‡âirÿ\0²Ü/º4O\rò·Ñ&¼_§­O«œí7ilÚ2†ôUuW—\nÓÞõŸ¼ßVKÓé«†<æPuz»j&7¢<\ZL’Qz˜u~HË]§Á’™–¥i†¦e‹¯¯”×Ê_¹‰mÅoL7ìdý&ÆÔ\\“mEò”ÞâýÍVËJ÷–Úá½»Cc_em~ÕµE÷EJ_±®u5ð†ØÒÛÆQgen^Í•Kæ¥ÑˆÔ×Æ	ÒÛÂaéŽÑËO¢¢¹ã”°ò¸É¿Ø§Õ^/–fú*M0Ö%º#¥\0\0\0\0\0\0\0\0\0\0y¿ñ/bîYmkÔ³¿í‹Ù—šáä‹~›xôsáÙGÄôû[ÒÇw\r’ÉRªa‰è­E7•È¤¹x•ÄÃÊ´Ã\nÓ2ò­0Â[ü9y~bYÇíCG¥óUÔ·¤ü”W{}®ÖŠÆò›ZM§hv{+aÕ§ÄŸâ[ñÉpø®„™­o‚v<5§¾[SKpÂ-´—6Ò_13±¼ììi¯r1ŠåÆ?E‚¶Ó¼î¹¬rÄB³@\0\0\0\0\0\0\0\0X×èá¨ªÊm[ÕÛ	/ŸUâz¥æ–‹GƒÆLuÉY­»KÄ¶öÉ³C|è³Ž8×<aY[å%úø±–œÐåóà¶Í%¬mÅïG|{ÍÍ{oÒYZ¥ËÍuA®Õ˜^L<*LË\nÓ+‰‡•I™a«›œ¡Mkzr’Ê]ï‚_÷¸óiÚ°Òg«´ØÛ2:ZÔV“Ç>ï’+rd›Êß8¤lÏ5¶\0\0Ùì-6ý›ïÙ¯ï.Ÿ¹£=ö®Þi:\\|ÖæòtD5\0\0\0\0\0\0\0\0\0\0 	KÚŽÏ×´iÜ–#l3*mø%Üûâú¢FŸ<á¶þ(Ú5sÓiïá/Ú:+t¶Î›âádù5Ñ§Õ>òú—­ëÍ^Îs&;RÜ¶îÄ”z§‰w£ÓÊ¸j¥me|QýŒ¼Î8žÌŠõp~ò_>âqÚ<ãl~(ýQ–¹¬’ÕWs× ŒvŸ5»IË…Iÿ\0œ—òF7l®\r½¦÷±:\réY¨—ÏV-ós~ÓòXú‘u7éÊ‚½wòv4 \0(¦VIB+-ý‹1kEcyz¥fÓ´:½&UôæûßVWÞÓiÞVØé®Ð¼y{\0\0\0\0\0\0\0\0\0\0 \0Óö³Ôm\Z÷-[¶GúwG’·Ýâ¼\rø5Å;ÇÉQ¦¦jínþo#íg5;>M]\rê›jÃr^?ðrë¢™cÕïä¢Ï¦É†}héæÓäÞ²™E>iTú(÷w”¨Et@ÞUd0ô^ÍQèô”wÎ‘ÿ\0·Ë~iÞò›Š6¤6f¦Àºm<í–ì_WÑ.öÏ6´V7—ªR×¡Òìýh3~Ô»ü&I¼¬ðáŒqïešÛ€\0\0\0\0\0\0€\0\0@\0‹jŒâã8Æp’Ä£(©FK¹§ÌÌLÄïLDÆÒãv×ðçK~e¦“ÒÍñÝQô”¿õÊÇ“\'b×Þ½-×ó@ËÃ±Û­=_ÉÇmÀí\n2á\\5]i’Ïÿ\02Ã&Ó[ŠÝçdè3W´oðssÒÛ$êµ8¼I:åê¾çÃÀÛS‡.ü—‰ÛÊbZriòãöé1ñ‰…™pæšù¬š¦6î¥ÌÎÌoVÙñÅ4%ÉSRXÿ\0V[Ú”êö†uZK\'ìÂOÇ\r/«5Íëå¶¸¯nÐÙivçl°¾óúš-¨þTªi\'ø¥¸¢˜Ö·aá×æFµ¦Ó¼¦V‘XÚ=\0\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0¯bøÏ]7ÊVCó›ýJ.¾[{ãõ]q~•Å_tþŽŽtU/j¿œ\"ËîióRrÇ“EÛ\r5KJ÷k©JVWã§ÏåàVñl·®žyfwÞ<V/\'QÖ#´·ÔUÆ)(¬F+‚K¡c;BÄo;Bð\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 	\0\0sµ 15\ZÆ“ÝÆpñžYé“ßiÛ»1¶ý{9{5›Ie¹AçÝ[…£ŠDoÒ}Ý1<6gn±ójô{Jýôb·¥½%8¼·Ëše^f£E½&½ç~°±Í¥Á¬ÚüÝ¼¥¶ÓvÚœeøsi¤×¼K7¦hå¿«>~\n¬ü.ø§š¾´y1õ:¦’z‰Ï\rI)òÞ]Lfá™¯_÷f|z½bâXioö¢>UíMm3Qœ·»”ðã%àÈ?½k´ù9/;ü{OÂS?wÑgÇÏHÛáÞ?M Ú’²*RN/“‹Êât:|³—ZÑ´ù(sâŒwšÄïm…Z¬›ÚY0š`V\0\0\0\0\0\0\0\0\0\0\0\0\0H\0 {ª``ÝKÊº*±nÎ9]8¯Í9ôøó×–ñ»v÷ÃnjNÍEZ5=Ók;ÕÍz²Çz~=qçýß$oÖ\'´ÿ\0~5åõs“§ÇÒc¼x~MÔc„’\\Â:JÄDmzffw•\Z\'¥ŽëO½<q‹ïFFž¹éÉoðÛƒ=°ßš¿å—¦Ó4’âð’Ëêm¥ykï³]íÍi·›>šYéåŸL\Zð\0\0\0\0\0\0\0\0\0\0\0\0 \0\0—únZx¾€Pôq`Pôðú+C*ZH .Fˆ®€\\QH	\0\0\0\0\0\0\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€$@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÙ','Will collect data from sensor and helpful for agriculturist','21/04/2018','21/04/2018   11:36:41',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `dob` text,
  `gender` text,
  `address` text,
  `pincode` text,
  `image` blob,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` (`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`pincode`,`image`) values (13,'usha','usha','usha@gmail.com','9854712365','02/04/1990','FEMALE','Bangalore','560056','ÿØÿá\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0ÿì\0Ducky\0\0\0\0\0<\0\0ÿáqhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c061 64.140949, 2010/12/07-10:57:01        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:01801174072068118F62DBC328695FC3\" xmpMM:DocumentID=\"xmp.did:D9C50B62DB1311E28C2EEFEE89FBE240\" xmpMM:InstanceID=\"xmp.iid:D9C50B61DB1311E28C2EEFEE89FBE240\" xmp:CreatorTool=\"Adobe Photoshop CS5.1 Macintosh\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:74F64EA80A2068118C14BF852B379294\" stRef:documentID=\"xmp.did:01801174072068118F62DBC328695FC3\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ÿî\0Adobe\0dÀ\0\0\0ÿÛ\0„\0		\n\n\n\n\r\r\Z\ZÿÀ\0\0^\0Z\0ÿÄ\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQa\"q‘2R¡±ÑB#Áá‚’S4br²Ò3Csƒ$TU\0\0\0\0\0\0\0\0\0\0!1AQ\"2aÿÚ\0\0\0?\0ú„jæqŸ»½Y“´mbâ±Ys$ølà•!F¦Åu¬}ú9ƒ_r!ágî_*¥²$×æo¾¡ÎY¦é#ÖÌÏ ƒ‘%ˆ÷ÛïªH5@“OšA\'&]¶ß}%¤j¤VýÛs$y¼M¤±Ì<5ÐøÒ«4sLs—;LŒ\\ÉŠ0¹S#ÚÇ°‹úêõèf½ ZÊÏÝ’K&vHTü×¾œA×²ª¬KR8÷àsræ¿¬kõQjHÛžå.«›9aÂÒ¸¿£Zy¢Ï§:ÇzÚ³£ÈsHÚXšF!—´O\ZVeÿ\0êxûþKæ=žÏsþo\n®Ì–¦¤Ä­u˜jŒsýâ‘2\'Äˆ›´#á!\"þ±^oW“ÐàŠqêF‚Ôy”¹\ZëOeKÕkv6ÕÐtŠÙ[ˆÒü,([)Ž€­‚Ÿ¤×> û~þgvy0[Ún`m~ñÆ§	xc9·¢«p\nÎ\0Ñ‰ºÿ\0zÚzøU«i3µ\0fÖ8Y{}5DÄd%‘¼ÊÖ?a¦“E0$\0Ê8_Ký\"ˆ¡0¿Àü=íûµÀƒì,¹J² MØ÷C­²u‚uîè3:Žp‡š$d{¼ŽOß^wG,ôx¨DRõÕi	ÈF”hQH$zmVª„åÅ<r€Pñ®ÞFU÷í¹ó	Ø”AK»Au’³öý–by§áÍÚÕMZ;ïZãõ|yQƒŽ\rqþ (Ûƒ@§tÁ7œ	^3‘\0<œE»\r%0ô¬åßJýžcÊãÝqú\Z´&f`’;óžÆ\Z0ï§BÁêä@sè4ÈFór{ß†ßG}­º·}“CüÖ‰¨ÕˆµÇ‚ÖnÝ`§.gÎ»ËI™¼\rº	y\n†“&^ßG×Yªã,Û„&.Ó… Œ1y{iª\'k+Q‡§òÄŽñ€lŠZç²»äëÛÏ¼éaqmn)Ý2&Âì›3æäOˆIºŽ·×L¥x9Ö¯Éqey#ÆU¦Ô3í†¢ËJ²‚ám(`ç\"‡QôºC3äâFÿ\0êD?EvÐ&’,daJMì[—ƒ6ñ§¯DIÐ‰bf#ÑqTV£Ï–—»Ã6ÀÔß:ç©d2˜@ÿ\0¹”v ±$øšò­fÞMÔ¢HÇ6‰æméÞbèIï`j¶ð\Zù;ÄéiŸ%òwfBÉ\nëp—&´×´,|eåŽÛF‡iy3òÇ^D×²™g,0–\"s.Ž¤Âq9r‚\rÁüV©>…¡‰y~“Cqõ#”r1Öö®Ø\rgŽxïÆƒb‰»¾ÝÏ*<wGÄ®œiS€YI[—¸C8\ZRÌžTaÃ³²©V„µ¾kvþ\Zðîíï£€h7n›ÉÜ:Ÿ.s\'ÅHb~PåQk[ñôÖhÁ¡\0lÛCãïØ‰’WžRgåS{(RT\Zdç\0ÂlhÙøvÕ°ƒ2î’bÉÄÒ!$s-¼§Ææ§nŒ*ˆaÍ—!gòB£VÆ\n…O¦à·×AZ@Ðljˆ¥IÌnÄýÕMp#±àø·4fè\rþÊ‹PV¶“¦c*†\rØYÌÐþGÑTDC4CâY¸_Zë ¦~‡7n¹•‘ÁR^ÃU6â{êpÇ”Sü÷MæEþ¿/µÙ÷xÕ4·À¿e~K<íš=“vrYši,Ò¢ð5µê2üŠüåR`Ì°ˆ!I@Ô£^gñ Õj\'±¾L9ßº’Ö4UM‹’{p¸ôšu‘5vg;l{¾é\"XH‰ØªÊ÷TúMr—áµ©E¼†,xY÷mÔcLèß	K,c˜(:¶•eÍûf{Jœ\"³%·âÄÜ~o		31…Ð¦–ÔGo> bžñ¨?\'IÔ‰ùvð§B1tNF¸4Â¦gÝg74¸ø‹«5ÜøVžÙïÐô¡îÿ\0ÃðªnOCKÜ”çu|\r!cÏðÔ±°<¯&q\'§W6õ…‚·7”ÂX}•nY\'rÿ\0bw=²)‰óºòIàëÇ×Æ…«¥o€>¨Ú÷[lhŒÉ¨Ïñ%XÜmT¥A¶ ±Èßz…‹bà¼{f(:4j²d_†—¼iû¦¬®ªM3¶[Çé,|‰ÎnSÉ——!æ›#$™$$÷\'ê°¡öÉH­0‹ü\\Xq£øP¨Um%œ’vm…¨º‹öTÚ:H¦{\r+€ÅÍåË2¨ö˜ð®“’3Î¢Tò™MÏ*ª¯€ÔÖ®Oñ3ô_‘7Æ“»û³îÒVçÅÜÓ1å»0–iÆ·¿1°û+2­ÃwœlŒ¼©2’eMÊÜéZ¹´°C¢l? ÷‡ºI…6G>>M¹9^YG\rÈ³p£Ú¸˜›Ì\ZŒH$R-{ñ©Ðk¦Ýzª¦úþCö2Q€l@´T µ”jh; AçÌ%¯{\nG`A[•¹-Ìqù›Â¦ì2¨\0å“õ6ÓÂˆD^¨ÅfêHÇe¹nà8Öª8©/Èïç£÷³Éÿ\0O»ÓR¤ÓºÓ¥•ršLuæ„ñF¾„‹Ø\ZÌ­«4§(Îòö÷‚kÆÜ è»|\r^·‘mR—+\raÊÆ9ôp;ð>ºÓ[Jƒ;Q‘¿¤ºù\Z5ÅÏ~L”ò$ \r/ýêùº¹CÖêØc,ÝKŽI!õî¨[£-Z 	:…Éò<MNXØ#ÆLåóÀ(H !ÏÈ\0ÈHOtWd	W­‘VÔÉC«¨ãL€Ä¾ªÅø›‚|0LÒ)Ž0;Ú¯G‚VòVÿ\0D›¼ö»é¤Ñ;æJ®$_Ëy>h4wr¤éÜ—`¬·®$¥3\"êm¹QÊG77+‘Âýþ­i)bÖX_ÍŽ¬}¥nI=6¸?UmLÏd#oY	É|K|/Zù©2t´tœû„Ûªâœ‰L¤„,HáÆ—ú+]fþwfàÑpqš\'\">a{sW™doC^&7((ƒZX:KEU8SÕ	fñ $ÛZ¤	\'2ZÚR´0¡¾ä>>óŒñ\'<¶cÅÀ<8}”õð¤ŠÓÿ\0/ñ¿g¿ÑG!ƒzÌq>`¡ÉVc\rïÌF¼Ë¯m­sH’ôE2fìxK&QøŠìBr(æ\0=øŽê…R“L¸6ø1†.áÍ’ŒÜÈTZAç*Ú{=‚µ™Ù”n8àæJeÉ‰XÈÄ©›kÃØ¯Jž0`¼ÉsÒF›¼M‘³ùm ºöñAPïúä¿ØÖ£±ÿ\0:DF¶£ÌmêZó¡›Ûcq`’#/aóþ•®K~BWÍ\"Þû¨¤,km%[öèßå§&Fb^Cy—Ôßå¥hbž\\}±ºƒærcŽPoÌ®TÈ5U{/²Ü	ìªò‰È&0h}åöy¿òžçë­ÈAÿÙ');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`pincode`,`image`) values (14,'renu','renu','renu@gmail.com','8854789625','04/01/1990','FEMALE','Mysore','560060','ÿØÿá\0Exif\0\0II*\0\0\0\0\0\0\0\0\0\0\0\0ÿì\0Ducky\0\0\0\0\0<\0\0ÿáqhttp://ns.adobe.com/xap/1.0/\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?> <x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.0-c061 64.140949, 2010/12/07-10:57:01        \"> <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"> <rdf:Description rdf:about=\"\" xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\" xmlns:stRef=\"http://ns.adobe.com/xap/1.0/sType/ResourceRef#\" xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" xmpMM:OriginalDocumentID=\"xmp.did:01801174072068118F62DBC328695FC3\" xmpMM:DocumentID=\"xmp.did:D9C50B5EDB1311E28C2EEFEE89FBE240\" xmpMM:InstanceID=\"xmp.iid:D9C50B5DDB1311E28C2EEFEE89FBE240\" xmp:CreatorTool=\"Adobe Photoshop CS5.1 Macintosh\"> <xmpMM:DerivedFrom stRef:instanceID=\"xmp.iid:74F64EA80A2068118C14BF852B379294\" stRef:documentID=\"xmp.did:01801174072068118F62DBC328695FC3\"/> </rdf:Description> </rdf:RDF> </x:xmpmeta> <?xpacket end=\"r\"?>ÿî\0Adobe\0dÀ\0\0\0ÿÛ\0„\0		\n\n\n\n\r\r\Z\ZÿÀ\0\0^\0Z\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!1AQaq±\"2B‘¡ÑRÒ#3r’Ááb‚CS4¢Âc$\0\0\0\0\0\0\0\0\0!1AQ\"ÿÚ\0\0\0?\07ó{¯2ñöNè[F1»)·v†…¦ÌV›6ûÕ;¬Þ4§’þòÞúw°7¥·†Ìé¶.Ÿß,’æLm@‘íë¤ýU& ¾>>TAÉ™›´™í¡ÓÌÇÎYÊpGîf¿’Fûh\Zf·œ\rÉ”˜³²šWûkMÄ*®åÔ[Vj—ÎÉ11µÌ®l~š×Q¹á‡+{Üe†<”ÍY¬	_FžÚ2–Å¥ògæDë”»íÒCm‰4ŒIIOÀIìnÊ|ÒUßsLWžúÌú¹¬Ì=ó\'r—;z‘T’ÎÜª<æÕ9UâÚùyÑ°í7ºZy—Éã®´9ÓKÁ\\¶å6¥ª@¹Ë^â•Iä$šCÈŽã…,ïûzÉ\\kÙè­),Ä›òòz)åGQ?jÌheI±R9­ØÀÞãÓ­?S±­z\'}çL`î¹¥täœÿ\0äOe¯ULpVgk3\rW/­ñá}PÎŠ}/¥š]\"†‘(öU@·¢š|Øâ«ñ¤Ô[ ÓÌª´ŠÈŸºãâ‚òw©4½5n¡ÍË˜&4B»f—_ª²iRA$Ð|#‘À¨QõV7	yPÉc¡¤ÞÃÊ5¦‰XúŠCTdè’ŽSëžT¬]Ÿ º± Ür:w%¿/*óbß²DÑ”Õ3SÔ^£1]¬Ì*\'ð:ª,“§‡¬›Z]¢·N¤ƒkÚãœA.C:câú“Mß™í!ÉÖï›Àâ<bý¦£­:q”¼$¸Â@\rˆ¤ê¡¾Èˆà¸æq¢Â´.t…òä, Žk’| Ê¬ÂW|D^£ðç<é¡EíZá§µ/5¼f‹#‰Óš”kÊxI‰ŠñÛ_F´Ò¥¨+°oíÛ–.çŽÖŸXæ[vò‘qéò§camÙÐçàãg@oTI2#‹ÕSH½f`}ÞR¹ÒÍØd¿ýGì¨:þýÔCpƒ\Z@~Ú2¬X\"ÉsÌÇ@k|«9™Õs¹o1Á™ácÊÓ0:7)T:ösko-kë\'úùX¿/s¦Ý02#™	NBËÌ\rÁCcÇ²–eK Ž¢Û•²ˆµÀ<<ôŸ³¥¹:bCA\"cgçç6\ræ¿uVm;ëêVLÀ¥ !=Þoj–êÓgÕ\"~^K=–üˆ€°=Ö\"‡PÔG0IÉ§» þöU\"u§þIocqè¸±™¹¥ÛÜÂo÷´µlßØ°¯D¨” $|MoY¨å}z_`=A†&‘—iÌÃzY|«ÎÃ6wEA>OŠcUkZÊ,<”m­3#²Ãƒ‹!Qï!SæhæWÉ_|ÇŒÌì¤^æÀTtèŸ1Ê¼ÜpÃŠ\Z4ŽO ¶šZM |òX^‰ªËù`öß¦ƒ—@Û€*Dƒý6ö¼ÍT•+ÿ\0=níé‘‚Oåe&ƒüCPj˜¨î/ëùê„`î¬Œ }ö·òÜzê_Gÿ\0”»ŒÑ`¾¼·FPh}¯‰ÜŸg”[˜pãè¦­2ñ¨æƒ1qbñ¥Š!àC{s1:ƒjÝ?ùÏ²—Sân£\"²~Ç/!VIT{f6:”ÔìS³ˆ0&TÊ;†t[s/C+íƒp\'Z2ž<g†âÿ\0MB¼\'‹–\'‚ØÑ®})%–Høó]=#QM´ùòƒ4Ãž™µ»T5®©”´Ô¿ºNïƒÅìáVêL7ÕÑÿ\0ë»ªºßüÉoûkŸÓ¸ñùa¾¶.ã&†ÐÎy£bt;=\"›Ù>Ïÿ\0>¾—rJ\'Æ¸×JO×‡G8“ÓØ+d 9%Ë\0Ú‰ûo|z¿«ö–Ü&‘Ëá¯$eÈT\'ï[mNÕqë²S¬gH„©ÜŠG×[òk˜3´îí¸_›hWáwÉþÚ–³ÂôIÓC§\nÒµG‚òcñº’}\0ÓÏ(ëÀ&vÜ˜éûdÆðæ‰¹”nA[›“ÄéqTstSåVP‹ª¼o)<.WO®›-¯†„þ«“åÿ\0…àÿ\0Ÿºª‹*uj_nw±$”\rçV úë›Õ¯‚>ÚÆ\rÎ7¹I:w®£ÕV×˜ž/*ùè]þ-ãj‹&#Æé\"ž!×C]sßÛ5úƒÖ.ûšãl•1Ó\">IæpO*_^[všÓ½	dò[ß:7	PFŠóÔÈ—v>žûÔ‹c}@ÄÙ`B×Ç¢§ú­ª(ˆTi ¥µ>:±±ÐöÐ‚æÜðânL²þ¦AX¡·¶·úª¸ùsû~·-“7+y\r6LM‡`­POˆÂáï~Å^õ~8»Ä.•éÆm\"`€°ãI0$–êÌHï3o…ÕËå>ÿ\0?Š¨Fiê¬nH3 <Á_0?Ý\\™¾]–+œ¬r¹\0pöÅÚ¼¨ØhùqÔƒ§úŠ]».N\\,¹9ž	(6Vó7K¼ôþ­sÃCa\0À7ãI•tûÎÀÇ‘’ rº€i¸´Ÿœ\"Gk\0\ríR®‰.\\ú\'ZÇNLh{Ïu–„nwË\\…<²FCDGaSqFh–tÁºu~Éƒµ\rß&9D%Â£Úæakµ‚–®Œë®=úì¯’¬¹C‘“=šL£â8:Øóék÷QÅòÚž\Z#öPýÁïøœ>ª¯ež¬@ñ³‹‰ìæì®·Ò¹Ü±¯Š¢Ö÷‡qYR°7y[1ŠðtW¸‘­V&xèoœy»$)·ï>nvX§CùÈ½ÆþøM-ÉóìþV®ÌîšÜ°|liY•´³!â©ë\\[3 ÙÐe9hnUµÖ®{]£²0ì¡Ñ¯ \0aë£	_N€›ÚôAÙ6ülÌIpòðÎ…É~y>i5:òüæt¿UÇUü%!D VBtkùøÕ¦œúËJÿ\0Zÿ\0ú^/‹ì«õÏùg.¡‹›iÇ•#6?|ëÌok)®;òìŸ“|‡›&.Û‚$µ¿’ž–nøØþ$Ê‹Ý<ºKîßø*™øOA’ccóË‹Ë¤¿‚œ†žƒ†uñÂÏã0ñ,´jƒ²£íã§ÓÕ‡‰ðÖÓ!7öHøkšº\"qˆrþªŽÿ\0ðÐáºñGsy’Ýš?á¢ZûH“ýäúðÑ\n“I§ç%üÏøhÂÔ†Š?dI,a¯ùfÍ{ù=šhKÁÎN§ÿ\0rOÑ·Çú}þï\nìŸõÿÙ');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`pincode`,`image`) values (15,'raju','raju','raju@gmail.com','9547821654','04/05/1985','MALE','Bangalore','560048','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0¿\0•\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¢Š(\0¦O1„)\nX“ŒJ}rÓ[ƒ~&>–XµôÓ§’ÀÇ€í2ÆYˆÛœnÎ**O–V½•Ë§i(Þ×v1~6þÔ~øl]Ô”^È…¢²·ýåÌ¼vPF??|‹ñsþ\n‰âOÏ$>³‡Ã–dW	®œz’Fû\0Oû^¿éß øŸ¤/ˆâÔ%Ô×Tùæ–Wc4r’“n%•ºqÏ ŒsZ_Hv‚>™äŠü;9ãìei8R~Î=—Åóä~Á•pV‡½U{Iw{|—_™ëž3øË«xãRûf±©Þê—CþZ]\\4Ä}d/á\\½ïŒ€˜Èn<d±-ùç?‡Jó»¯`“¿ÿ\0¬{ï\0H-ø|E|ÖS“rwlúê9rŠJ)%èz]ÏŽBU\0õ?ãY\Z‡\Z,í”)ÏfÅy†¥ãÐª@oü~¹íOÇÀä3•þökã9Ž©¥ÐôýKâ³0yU×ÐóÏ5Ïjž>lŸÞ)\0ô8#ùW—êž?U‰7sýêçuO4ˆB1\'?ÞªŽ\"O¨¾®–ˆõcÇ©)>aG^à±ö=±ô÷¯Aø+ÿ\04ø£û8Mo‡üWw¦[7Ë¥êrµõ³/÷9Ü£ÙX`f¾N¿ñdÒäGü\n±o5ÙdÜœž‡<zïÂãkÒ’)¸µÙØãÅ`©V‹…h¦¼ÕÏÞØKþkà?ÚkU²ðßŒ!µð\'¯•R\\™4ýMÇüð™‚àŸî0ìy5÷s‰¨ëí_ÉdºÜÑÜG\"¹I u‘	Xo÷¦3Ó¾kúTÿ\0‚]þÔÇöÄý‰<ãK‡ûbKVÓµxÕ²RöÙÌ2·A€åD€v/\'©ý£ƒx’¾=K‹ÖqWOºóó?%â¾¥å¯…V„šìü¼½O ¨¢Šû£ãBŠ( Š( £ºÎÀCÁÏèjJŠñ‘Ê)ÎÒ“W€¿ðV?Ùã_ÿ\0‚z~ÙÚ¾·á¡%¯„>!K.±¦“ë&•äqm è\nÈÌÀ.×^€\Zò?þÕþñNšõç‡o®éì\\ZÉÁÉhX¬‘ó÷˜c<Wîícà\rþÐw7¾ñ>§ëº¸0µ½ÒoÏÞea†FÉÛ•9ÂŠüåø÷ÿ\0ýXk7\Z‡ÃË¦;ÑéZä-s\ZŽ~T¹OT\0âì\0Ï2ü=LuXQW3ÿ\0ƒ®ûŸ·äÙh`éOí.Uÿ\0M¶±óÔZ®‘âÍ§Bñ‡…õ\0ã!./ÅŒÇÛlÁF}5_Vøgã#ø´K»˜›¤–Ò%Â7ÐÆ[5ÎüRÿ\0‚=~Ñß®X¿¿á%´\0“6y\rî}‚1YOÐ×ê³ÇÆo‡WŽ“ü7ø« 2ñ»þ½BÜ7Ñ¶sÓ·W‰þ¬Ó“ÑIzkúÌx‚[\'ý]^Õ<âëv>w‡<Cé–Ó§óÙÖ°ï<â0ÄÉ¡ë¸=?â_7ÿ\0^aÿ\0	7ÅÍSIñ\ZÔ¨Æ×†ý{r¿Ò™µñ§W›Ë·‡âµÑ<½ó“ùÖ‘áˆ­S—ÜDø‚vÙ„ß<Os)Ùá¿H \Z|ÄŸ ÛTu_‡Zö’¯4›½4Óðƒÿ\0\"íÇã\\õ·ìýûD|@Q^øá¨Ç\'ÍûÝTh·,é³½tžÿ\0‚I~Ñ¾,(ëð—U²Ž^|Ûû»k0º³†þšêŽANÞoð9¥ÎZ$Ž?[¾´ÒQÌúž™æ/bºIÆ}7ÆY3íœÖKêâ%‘	d~Œ>í{ÅOø#ÆOƒ?üMã·„ôÝ+Ã:dº•Ìªý¦à¬k¸ª€¸Ü~µóörÉ¢Zî\n$aÈÎUUËéÓŠ”îì(cgQµ5m\r»öEr¯µ±‘ëAô9¿`àÖ¯Ž/¨h¿>ÝNÙOm¯Ú¡oº$SÛW°Ýg¯ñÛ\'ñ¢âè6àOZû·þ\r±ñûxgþ\n_m¦‰J§‰|/¨iÌ›°&t1\\ƒø,1ïžØ?CÂÑÌ)¾îßz±áq\"ö¸\n‘¶Êÿ\0qý\r¤›‰`ö÷÷§Tp°fåÖ¤¯ÚS?!\n(¢˜Q@T×oÆ—£ÜÜ²îDÒc8Îš·X£øw¬²œ0µ|Â¹±•:šÝ&ÿ\0l5>zÐƒêÒüO,¯$º¸–YXÉ$ÎdfõbrOë[zz³mÚÛxôÎ}«Ò¦W#øWù\nÝ°¹\0`z×àX:œÞôž¯SöœT,¹R:==P•Âáq–Íù[ÖwÀª8¡ˆüë—²ºÚA­kkà\0#Æ¾·ˆå>c‡¹ÑIzf€#°eãµfjwB7Ó$TÚLõüjÕØ“98®üF..:tp¼¯b–£ÎNù@Ïüôaýk\nýú‚ÌAíÁþ`Ö­üÀÎkðŒ³\0\'üý|¦>ª“»>èù?þ7â§ð—ü_â¤ÑÈ±µå•½‚¯9q5ä2ŽÙ(íÚ¿ u´²ŽH0(SÏ|ç×šý}ÿ\0ƒ¼w‘û\Zé\ZœKâo[Dw2,¼ì1Ž™Uü«ò@ð¶±ã†‹HÓu=^ä‚ï•¤“?¼vŽÃšÂ…5**ýÛüÊ²å¨íØ«qxyÏAýkëïø7ÝÞ_ø+×ÂÄ.«°îs€\0Ò®Çó\"¾0ñ¥Þ‰w-õµÅìk¹à¸¢’>ø`ÀÒ¿Aà×ÁLo5¦†Imü)áû¡0\\¬SM4ñ‚{F¸?ðëÇÐd¸G,];wOîÔñ³lBXZ—þVDÖøóƒÇòÿ\08©©†$Œƒ)õúÚ?,H(¢Šc\n(¢€\nÅøfú‡5h#É-¬G©\nHŽ1[TË„DT€Cpk*ô•Jr¦þÒkïÐÒGN¤j.?¹ÜùN½ªã\0¨ ç¯ÿ\0­[Vs„\0†‰â­2_	øÇPÓæR­o3>FbTþXüª[KýÊqzþm„¥B«¥=ã£õZ?ÄýîtãVœjCf¯÷Uµß´-ïr£“ÓÖ¹‹kÌ($æ®Ã¨mZö¨c-Ôò+ant\r¨á1ýj¼·ùÏ?­eK#×ñ¨¥¿8Ï¯½kSæc‘nòï$ç5¨]@@Ê»Ø[üæ‹»Ü©çúÖMåØ;`pCÁÏjò18›îz¸l3GÆ_ðPÏØ×Äÿ\0·Ÿí9à\ng¹Ð>\Zø?LkýKUfßÝÏ6ÆµAÏ›qeÉà	Àê}—á×Á~Íþ·Ð¼£ÛèÖöñym\"qs)ÃHã–${jô}SRŒÌ$sŒ‚ÀñŒãŒàž•Àø³XWÁaÓëÉ>§®_¬Ô©jkEº8xS÷¥«gåüWÂv?¼9¬ÛÙÃou¬Xâé¢~ÐÁˆû¿›_qÁ¤_\0WJøUñSâ|ðÎ³xQ·ÐídeÂ4vÑ™höiÀ?Cø|)ÿ\0 Ö/<}ûAx;Ã:]½Åþ«qCki>eÃÉ*C/ûM*È£Üí_¿_ðLïÙ&ÏöýŠ|ðÞÙ’[­#O7ZœÉÈ¸Ô.dk‹·Ïpg’@¾ˆyÅ~³Áøw;V—EùŸšñN!B.”^²‚=èw¢Š+ôáŠ( Š( ›&02q“ùÓ©\'øNh`x_íuà‰Q-üIk‘m×É¼*1ò“ò¹>ÇþžÜøæ®$È¤ƒÆsÎGP}=½kìíOM‡R°–Öâ4šÞä2HŒ2®9¾<øßð~ûà§‰G”$¸ÐïXýše\\qÿ\0,ÜçïpxÍ~GÇ<7(ÕyŽi/‰.kú>§éÜŸFTÖ_Yê¾5Õz®…È5UÚ\0 þ5j=P0§ã^¦ø•NI`@ã†ä}}çZ°x…1Ãó¯ÎcVkCï]3®\Z†{þµú˜Ž¿sKâ$ç$õ¨.|F˜<ŒgÖ›­6J¡t:¨ äzÄÕõ¤XÎdZÅÔüL­¶}k–Õ|X•b@\'ƒœäÒTå;\\¾xÁ\Z> ñ\"ª6N}k•†Ú_ê	\n«•¶·¶Fê@ühHn5»°¾[˜%‡Ì.õë?g½Câ–ÒÅ…°’\'G½ØH·ÈÆ@ã,3œdwæ»ðÔ%9ª44ÞÈâÄW„ êÖ|±Ž­Ÿÿ\0Á7¿c?nOø+§Œ¾6k1»ü6ø)|šO‡Ô®è5}V¶6	ûÑÃ3Ï18âSþŸÙèm„.XsÇ@03Àã°í\\?ìÛû?xkö^øC¤ø\'Âv‹k¤hèÙcÌ·S»šâVþ)e‘™Ù»³ƒŠï+ú*ËãƒÃF‚Ý%SñÓñ˜‰VéÓÐ(¢Šô<(¢Š\0(¢Š\0(\'\0ŸJ++Ä\Z¤–ö˜‰NâØÎ{`ÐOxÞ\rM•Ô«Ê¼ÝóÍ|ßûE|Y¾}5no#’óÃqš”KVÜwÉ¤cnrp#ÖõýM^V2³c’¸ëYRx5efŠÊÀ†R™VÉïô®|VŽ\"›¥Y^/{hþó|6&xz±­Otî–|AàÛˆí’ÿ\0AeÔ4ó•\"~ù°AqÐƒŸÀæ°‰d·Ê°te8+\'ÈÀú`×¬øëö\\ñ7Ã	n5_†Ššžœ\\Ï?„®åF	9w±™ŽØ]&9?vI%Z3•~/Œ^\rñF¾š/ŠàñdEýŸâV°¼f=V6l$þÍ85ù~qÀXÊ­„‹­O¼SmŠ*ízíÙ³ôÜ¯‹0Õí\Z²P—fôoÉ»\'ùùÆX©bû¼çëL“Äí(À.Iôæ½\"?ƒzUê4–&Cí ñ($ôtÉÇZŠóá^›¤©–k¤DUß–Mƒó\'†kàêSä—+‹¿õó>®ž\"3Wæ<Ð›íNM©ª½rzV®‘ðòòþd3¡ØÝ	\0ûúqš_ˆ?~ü±i5èVLƒˆÞí^Vã DÜÌxè5ó‡ÆÏø+ç…´[g²ð–™©kÒ°&9ç­ Îð‘æõP+êòâ\\ò\\¹^\nr_Ì×,¬åhü¯~ÉžNgÄ¹F^¯‹ÄE>Éó?º7gÕWúîðúÐË3Apöã%CcŸLŽœg“[Ÿ?àµŸ\0¼1­Úø?[Ö¬ü-{»cLŠ×6Q7LË:#qÔ5ø»ñÓöËø‹ñÁ§MWX“NÓä“‹<ù0‚0qÉ8\'©Çµxœ¾eš8‚Gœä¶zý@ÂŸÄÎ¿§8èõ[-ob=ù/‚šNÚ<£wgÑE\'ÕŸqo‰³¬>\n—ºžòo_ûuio[¿$\\ÞñU‡Š4;]KJ¹´Ô´ûØ„Ð\\ÚN“E:žŒ¬¤«9­(å.À\0#9Îkùœý€?àª`ÿ\0ZÛèú„º×ƒ^m÷Þ¼“6³©#q‡ƒäËÇƒ$I~û~Ä·¯Ãÿ\0ÛÃá˜ñ‚õûE¶TÒ®qî“.9ŽdôôaÁ§Å<É¿|Ÿ´¢ßÄ–Ý”×Fú;´Ï.Íéb½Ï†K§ùáE69D„ŒŽ}xìiÕñIž°QEÀ(¢Š\0*¥Îœ%Éc{b­Ñ×¨ y´$äðsÇÝ¨F‚‰ÀçÚ·JƒÔ\nBŠH‡&†»FÒ«ë•ÈaéXþ3ø]áÿ\0ˆšsXxƒGÒµ«\'R¡h—Q0?ÂCç#Øñí]uÄŠEfÞ]íFÂðÝôÏéU	ÊRƒ³]V‚’Mj|kûy~ÈŸ?goÙ‹Æ¾:¶ðl\Z\rþ‡¥ÊtÄÑõkí&½q²\0\"¶™#?¼`q·ø½­üFñ&¯lëÄ\ZåÄd˜>£3†\0/,};’kõGþ\ZøÔ<;ð{Á^Šà‰|E¨Í©\\ÆýdV¸ûy’Ç]†¿#n&P€w( œð}ÿ\0Jþ©ð—/©S&xÜsu%RMÇ™óZ1´t½ív¤ú7écóÞ%Å8â½•\'Ê¢µ¶š¿O\"¥ü¥œ±˜®ÂNIaè[ï~µ.ðG!Pí\0ÿ\0_Ç\'Þ´ï$;Ötü1>µúJWM4¤e]ÛíÈI\'\'ÜúÖ]Õ¶IíŠÛ¸’yÍQž Äž•Ç<*f±¨×SêÔH@l•$€ÞÕè²çí_ã/Øëâþã/êw:¥¬¡dy0ßÄHÝËühØžA\ns€Aâî­@9Îr}*œÑ²+fF`FG^FúÁö\'§Zä­—B¤%N¤T£%fž©®ÏËþjkD£%(»4P_ðOÛÇÂ·ÇÀk?øx‹+ø6ÛkZL‡\ZUÞ2Q‡RË#ànSœ=èHLp0A=}ëù‘ÿ\0‚UþÝz§ì\'ûXhšô·’¯„u—\Zo‰í·.{W 	ñÎ$‰ö¸>›×€ù_éD¿ƒU²‚êÚh®-îbY£•å‘X¬pG5ü«â¼‹£Gø5.áå®±o«[ú4~“f[£wñGGçæ]¢Š+á`(¦M7’›Š³œšCtª@!†s”óŽ½¿/^Ù 	(¨á¸tVä#ÏçOwØ2hIÀÉªÓ^TcÞ‹›°€?ZÌž÷k€\Z\0–æ÷¨ÇOzÌ»º²g!B±blÎ›q–9ük:êð•r(PKwÈô¡«¦˜\\üYÿ\0‚ê|Zˆ_·•æš·ko	h¶šR(U$ËÏ/˜´Ã>¸•ñ}Äü\Zô/ÚïâdŸißˆ>\"w.§â¹\"6C Æ¤{ü«Ì&›vFq_Ý|5ú–S†Âlã§ëdåø·ÿ\0~=˜Vö¸š•;¶,³ç\"ª\\L=;ÒM.ÞsTî\'à×²r&HÒªO ÷¤–~µVâãŽýh°îÂYA<Š©q\"ã8¤’~µVY\ZBBòhh¤û„¥%I””uÚÀwSÔ~Yúuí_ÐçüéûXÜ~ÒŸ°>•£ê×¦óÄ\r.Ãw®Í¹ä…\0{WÏqä2&{˜‰ïüêËv2ÇyŠHÏC‚};`ƒŒ’>¸ôÃþ\r{ø¥®xOö¹ñ‡¢²¿»ðÇ‹t\"..R&Ö×öÒ„‚´Op$…À Wæ~+eTñ™J—JTššw^’KÕ}ö]QïpÞ&Tñª1ÕJéŸ¼4Tkp¬O `ã¯4Wò:WØý,Y‚”ËrNqŠþPþÿ\0Á{¿hÙ³ö¯øâÿ\0xÎmWÁž,ñ^§«kÅõ\r A5ìóF©ù­~GUÌ%ðYXªãú~ý¬übÿ\0?fˆšüRùhžÔ¯¢“vÝ¤¬§ó¿ˆ›“%„’ªÈ¤®xéœ~dÐô‰ûÿ\0ÁÞ¾+Ïo¥ü]ðçˆ>jòª+ê0§öÆŽ\\ðÀÉóÐ¿4%@,3ú[ðWö­øqûNxvSáç¼3ã-:eÞ³i:„WCáI#¨0x85üJMrdˆFÍ˜ƒgfN?,ã?QV¼=ã\rKÁ\ZÌ:ž…ªjz©[Í:îK;… ä$E#Ô’~•.ã?¸Û›’K.°=	çò?€¬¹î‰f;\0ã’£ñ¿“€?ð^ÏÚ×ötkxtŸ>$ñ—Ëiþ,	¯G0þéšpnû,¢¾¯ø]ÿ\0ƒü\\Ñm-m¼iðËÀ¾%hÛÜØ\\Í¦a;íŒ‹Ÿ©\'ðÍ	¾ÃIXþƒ¯n\'ªŸ~å\\7Æÿ\0Ÿ‡¿|_¯–t-÷Q9m£÷6ï ç·*á_“Þÿ\0ƒÄ¾ÞH«â_ƒ>Ò3Á“KÔ¬ïÃýC?®òÓþÓðŸþ\n‡¢k¾h?4Oˆ4«Í+G#²²´°‘¾ÎòJ$ž©¶%%ä®21ÜWf4å‰§\ZÎÑrWok__ÀÆ³’§.Uwgo[›2ÎáQY‹€ –=YÓõªÒÜrkë+ïø\"·ÇäÜSEðÌÑÊ´zô@c}à½¹¬×ÿ\0‚/~Ðð<?áóŸM~Øãÿ\0¯í%ÆÙ¿ßiÿ\0àqÿ\03òìœmÿ\0…/¹Ÿ*\\OÁªSM»#8¯¯-ÿ\0àˆ¿o‰Wµðm‘Æsq­ä¯—ŸÒ¶toø!ÄùÀ\ZÇŒ>ie¸?gšê÷oàaŒ¦k\n¼Ã´ÕåŒ…¼›úJeÃ$ÇËHÒ=?;Ï:ÇËº¡=8\'éÚ©ÝJê»Š”Œœn|¨þUúWáOø M¾Ã®üO¼º@2ÃKÒ…ª“éóÊçÏ8êÞÿ\0‚5|ðžÉ5-7[ñ-Â©:ÆçÔ¬{HéÙ‡ZùÜo‹ü;A~êsªÿ\0»~2åüBã¥ñ%WþW?Úâîú+X!–{™Î\"Š%2<¿î…qöûW²ü#ÿ\0‚pücøÜb“Oð}Þ•a!ùï5²l!¼Tƒ)öC_±_g¿‡ßâXü+àŸ\nè7ÙiÇ+½!RïÓ«³œÖýÕÊ†r3–ç’x>£ÇÔ`û×ÂfÞ8b&¹rÜ:œß3û•—âÏc\rÂ0Z×©%§ã¯è|9û>Á|!à³j?×fñì,¬¬‹[iÙþéa‰\\uPŸJûƒö{Ótoƒ^0ðÝ‡t­?DÒ¬¯#Š[8ÄÃ¬\n¨²SÏ©5ŸqpÊ\n™999çüúæ³ßPk;„•‡Ãœ`ƒÖ¿#Î¸—3Í§í3\nÒŸ–Ñ^‘Z#ép˜\nhòÑ‚_ŸÞ~ˆB„Ä¤HF@è¥OG»þÔÑ,n#8IàIG9á”\Z+Ã;ÿ\0à³ž\'“ÁßðJoú”,V[ojpvœ´EqŸÆ¿_´àU\r‡oþ:õý+úýÿ\0ƒõ6Òÿ\0àŽ?ÙG3øqàëŒ–5\'ò5üx]]€Åƒpç8ôíý(ü—œ@¨žó½YÒ^eG5—\\E\0hÉvp0Øæ‘µ\0ª00ÀõÍeKw…ÔMw¸c P«\\‰ÌÁ¹ Gòþu÷÷ü)¢AâOø*þu2ïm@Ôo\"\r±\"è1–V¯Î£vPdçÞ¿Gÿ\0àÕ·ÁQ\',GÔÈö>eµ)7m\n‹×SúH»Ô$šGw‘—ƒ–#$÷è0\0Åf\\^–$Þùþy¤–ãl`œÿ\0‰¬Û»ž¸<Ð„´Ð/.žBd*§#å<Ï¥Q¹¿\r)fPÇå˜ù*›““É¬ùnö¹$ä}hHC®î³)lÛ¹?f]Þí\'ŸÖB÷®=}kîð±#š`Iw}’FZË¹»äóQÜÜœžk6æäî\'&€%¸»%Ž\reÞÎdVPp\\céI5éF\'Ïj±Ë<yànç¿µ\0~‡|¿:Áï\nÌÇ-&‘hÌsž|•õV?ì½v×¿³ÿ\0…¤$ZlëýÖeþ”PÍ_ðq@\'þÙñÀó£ 8äãÏð÷äŽ¯ã¦yÎÄ!²0Fr:çÿ\0¯Þ¿¼o‹–\Zoˆ<©išÆŸcªiZŒFÚîÎòž˜ØÈèÜG­7?ðWø ÷ƒôÏ_x§à”ö¾wgy¼/rßèRœð-d\'1ýÇÜPËŒÇ—¸$pZcÎØêk_Ç?µÏ†^\"—K×ôÛÍ2ö*cž2»ðq•={ƒŠÄ—\02@õ4\0­30ÆH¦ùêi( .ORkô‹þ\r_\'ürÍ·>Ôÿ\0Þ[Wæå~‚ÿ\0Á³:üz\'üM‰Ø+j>ÔmcçlFø÷á\r);!Å]ŸÒT÷-Ž?©¬ë‹¬rsF¥xŠè1Y7¤±ÉÇãU~Ä¢K»°¹9ÍeÞ^òq×ëL¾¼ søÖUÅñN3øÒ%Õé$ç\'ñ¬Ë›Ï˜ñúÓnu˜ü¿­fÜ_üÇÖ€syÉãõ¬Û«ÎNëN¸»Q¸±+ééŸAT€’b¡+ÎwcÓ¹ü¨\0ÿ\0Zç,>¹?Ê£ÜÇpNÐw…äôëŽsÚ¸/¿´×‚¿f\nÛêž1×­4ƒ|BØZ«oµ\'-áL¼®y\0(ÆHŒ×¡~ÄŸ²¿ÄÛoP·ñ‡Ä¨®þ|5IL¶>\nYBøŸ_P1š”èqgÜm¡f‘ÈMò\"‡Š@º?dÁìïáÅ”:”I“¦yäqÈ#Ž¿­ßhµð¶‘oa¦ÁmceiŠ\"…V8”\0ª0{\0°¢€Äš\Zëz\\7!ºqÐâ¾ý³emW^[–µ„²)c¸ÅsžÇ\"¾ÿ\0ªšž‹o¬[´W1¬Šýxæ€?œÿ\0Úgþ	ãŠ¡’\r_H‚þ%f;fŒ–\\ç•n«ø`{WÁßÿ\0à“ºÆ‹4ÓxZð¢¹l/2G~AßØÇ×úÌø—û!h7ŽGXÔ;m(8÷Í|Ïñsþ	±gzÒ¼\"íäz\0þHþ#ü\Zñ/Â;ö¶ñ‘y¦Èj»¦èœúàŽ¼W2Ñmîú~uý5ü^ÿ\0‚gGm-¼öú}Õ³üªŽŽ0z©â¾6øíÿ\0&ðO‹>Ó=’ønõá.›(3ÿ\0\\òS©ÏNÝhñvHÌx\'£r=këOø!O‹\"ðwüoáÌó40\\êoùhe³ž4OÅÙ\0¸®ßâçü—ÇÞG—Ã¾&ÐõÈÏåÝ+YÊ:õ#z±÷ÈúWŠøOà¿ÄoØ/ã×ƒ~ ê¾·º>×ìuÕŽ-J—-kp“ˆ÷YCyxÎÃ€z”¤®Š‹³¹ýRÞ^(`ZEó*P‘ƒ‚sùVUå÷\\:ü®ðWü[ðóV³#Ä\n<g£J]/S¶ÔÔc¶eç¹í]ž•ÿ\00~ÏšºžÃâœU¸Ò¡f_û÷3Ö…°™úuzKçó¬Ë»åMÅŽ==3_k?ðrìñl¬m×Ç…FJ¦¨ñé\0®Åðs‡Â«;iŸBøãýZt8E»6vQ?ßJËÿ\0|\Zb?Hæ¹>[;«\0;€Ä~x¬Ù®òÊH‚‚Œ¬?˜Çãï’~VÛÿ\0Áy>2þÐa×á¿Âi1\\7’—:ž¸/š3ï•‡?÷Ís¾1²ý¬?i¸¥‡Æÿ\0G…ô©ð$Ó<7‹}ëýß16°Ÿ™‡± Ñ?ÚGöãøUû,ÙÜKãoèöÛe¿³’Q5ü¼\nw†î\0:×Ã¿\Zà³þ<øá$úOÁŸŸ\rh³®ÅñOˆ‘^æqŸ¿\r®6®8#s0ã<Wð£þ	iáÿ\0ËÑ´TÔw\råü¾|»ÉÎî~Pzôçšú+Á°»Þ´k˜Êž@Ž:{P†~Æ¾“Kø¿¼Eu©øÇâÓ%ñ³!ººGÆ1	n\"\0\0QÀÈÎ	ö¿ö&ñÝüö–†c\",‘ªî,y$‚xý8í€N~Zø!ÿ\0íu¸µ—0€¿7ÞŸÏÞ¿A?fÿ\0Ù|¦ÛÉ<ŠÉ\ZŒÏ#·_Ö€=ÞÆW¹¶F\0çh©\"Q@GAE\0ÿÙ');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`pincode`,`image`) values (16,'nbheemalli','nit4828.','nit4828@gmail.com','8123534828','02/12/1991','MALE','bangalore','560040','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0É\0¼\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¢Š(\0¢Š(\0¢Š‚òN(q\Zd³ªž§:×\'ã¿ÚÀŸ˜¯‰|eá}×ªê\Zœ6Ì¿PìükðÃþ4ÿ\0‚ïxÿ\0ÂüCð;áˆ¯¼¢øM¾Çâ}_NÌZ†«xcÞm£œÐÁ\Z°å‚ÎÙ€ÊÃüG¾ñ¶ª×W·jwåÎëË×yç<ÿ\0}Øÿ\0,ÐõÓûOÁÃß²gìÑws§ÜüS°ñŽ¿o¸fxFÙõ©) £Íµ¼dyJüãý­¿àñê–7ºÁ?‡VZ˜Z8µ8½–5ÉÒÖTÎ0Fé0§¨~ÿ\0…ëª]Ý·–&”Dà´“ŒwƒþïáWl´Ùn¤Ù~{J\0ö?Ú«öýø±ûoø•µ_Š^=ñŒîP“7Œ‰ijrOî­¢	nƒÐˆÁÒ¸?…üUðCÇÚ_Š<!¯kñ(šßP°£º…óžH3ÕN÷\rU¬|3€\\)ãÂ‚wr¨NÒsÈúeÿ\0V~×°øßIø>K»xDgWo\nÂúÉ\0±°=IX@ÏEÿ\0ðtWíT|KÓ\n¯\0Ÿ	éLOâ`Éüká]OÃ¢ÖÕ\n¡É\0~5•wá–`û‰‡=q@£þÿ\0ƒ³¿k]{v»Ö¾ë¢#‡Qðª g’^ÞHÈfÝ\\ô¯·ÿ\0e_ø<oÁúì–?¾jz\rÃ0KSÃöÔùéäHVUõ*Ó-ŒŸç›TÑ^%“õªþ¹–ÛPÉýÛ)ÀÇV÷ íóö@ýºþþÝ?\r¢ñ?ÂÏ\Zi^+Ó”*ÜÅèo,ÿ\0öò,\'<|êÇŽk×AÏ>µøÿ\0ƒþÅ·šÃ¿þÐZÍÄQø§ÍðÖ`ÄñA2ý¢íÇˆ•|¤ÎJ¬oØ‚mÓvÅÜ\0lrÈ€Š( Š( Š( Š( Š( ›*–4êi•FNI\0ã¡4ü˜ÿ\0ÁÏ­þ\nÿ\0ÁY¾$ý•d[%—‰G¨÷(”F2BÎOC¸ŠüëÓmCÉ¸O5÷wüAûRiŸµ‡üâf·¢^}·CÑä‡Ã63ÆÛ¢»[0Ñ¼¨{©•¥\0ô!Añ‘`Êàdœ\'hoÏÖ‹©¥écj’ WS¢h«q<Eª3Ûµ?Â^šÿ\0ahä\\°Lƒ¸ð×<WÔþ\Zÿ\0‚RürÔ~Øø¢Ëá‹\'Ò®þxåKQæ2c;¼¬ù˜Çr¼ÔÊqÄìTa\'²¹óõžˆ9m¼/Z»¤h++J¡rÌKcÚ»íoá&±à{¹lu­SÒ/q}jöÒÿ\0ß.ý*¶á‰!¹.Ð¸B¸Ó¹/MÎ#Sðòy±™H—?RzÂ²5;kF\0ïÈã“^—©øq‰*#lþŸvŸ\na‰Ÿ´½õ¼ðWˆu’Uqs\r£-´|­ˆÇâÂ‰IE^Z1rÒ:Ÿ(ëzGŠ²0ÈÜ@Ísw¶‚ÊèH\0<šú÷öÅÿ\0‚s|NýŽ®tø¼{á÷±‹Y‹Ì†î)’âÔ¹1´‘–Q <3Ò¾\\ñ†ðFãËØ¨Jà°Êã±Ï­(Î2W‹º¢âí%f~Áÿ\0Á¿_ðp·Ã¿Økön´ø3ñnË]´Ð4ÍRæÿ\0Iñ—möô¶ŽæFšHnm×2\0²»°h•˜†šýîý˜ÿ\0j‡ÿ\0¶\'ÁÍ7Ç¿\r|O§ø«ÂºžåŠòÙdˆ£¯ÞŠH¤U–)¼r*°ÈÈäWðÙk{>|)+FÝ¤Wí/üýûLø—Ã?µ·‹þ	®®¼)âÿ\0Mâ	 ÜZ=:òÎkx„¡q…ó’à«7r±÷¨“ú/¢‘1°cc·JZ\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0+‰ý¢¼9­ø¿àŽt\\Keâ=S@Ô-t«„`†··u‰$ûÂIŽµÛTm>àxÿ\0­ƒøPðªirM$pÉÑ<J’\\‡ŒŽ\n¶yÜ ƒÈ çšúöÿ\0‚~x¯öÇñÌöm*Â\r0G&§}})Xma‘ˆ¢å¥bAÂŽHô·üEû/ìuÿ\0\ZÖît«oá?ŠR?Št€ŠQJòyã¦Û‰7`ãá=E{gü™á›Â_µ\']¦{Í7OWôÛË0ÿ\0È‘ŸÊ¹1ÕåJ„ªGtuàhF­e	lÏ²¿`ø#ïÂ¿Ùf;F]\"x¢×k¦­ªÄ®¶¬\0æŽRbª_Æ½+ï_\rB \nÇ\ZêÇaÓ\0\nã>Úƒï]À8Èô®ëH]³m\0¼WÉ:ó«>jŽìúxÑ…%Éd_Õ¼¢xÞÁ­µ½GÕ­îl±]XE<rrqŒ~¼ß\\ÿ\0‚_þÎþ#¹Yî>ü:ŠBw1´Ò#µÞO$“Üó^¹fÍ\Z.Aµ#—1©ÈäW£F¬’ÜóëR‹{3áoø\'OÀo‡\ZŒwú/Â‡v×ÑÇpÚ,3OõJ®ß­w·º4ZM¢Åh°ÙÀƒo•K\Z`vŒ~Ñ\\\\y„ªœ‘Åcë ˆŽF	¨ÄTr^ó4¡’GŠþÑ?	´?Œ^	¿ðÿ\0ˆô;[ÐµÚ;‹[¨üÄÏgçaØŒm÷¯Áø+7üzÙj¼Yá‹Èïü5ÊÛ¸9¼Ófv!crqæ&F\0N\0\'ýxÆ(ÿ\0³Ü75~ÿ\0Áe¼|Oûøú0ÊÍb¶Ú‚Œ}Ï.êÇðBçð¬°8¹Ò«ÅèÝ™¦3\n”œ¤µGóªÞ\Z)xîcrŸÞ>Óµ:u=ºŽ¾£ÔWõ#ÿ\0ÜÁ3cý‰c+Oø‹K·¶ø“ñFõ;Öe[\r<Ö–Ùä¡hÙd‘¾ä\n\0?à‹ðOÙoÛçÂš%ýšÏà¿J¾\"ñ[É’‚Î&gKr;›‰öGÏ&3&>à¯êîÒÎ;hã…$jTp\0\0WØ3åÐ•8E#§§åK@ÎF\r†QE\0QE\0QE\0QE\0QE\0|+ÿ\0~Ã\Zwí™ûk—Ûñ—€œë~\0ï\0,öÁŽ0“Eœä½#oáùïÿ\0Ñƒû*ë×â63k>\'žbJí?»··‹iCE\'k÷Kâ5¦«àmrÚü¨´–Êe•rˆ¥\'ð×æ÷Â…š/Âk	ì|=j–z¦¡q«<\nyØ¼Œ1Æ1Àí_?Ÿbi{>úžöEAJ¯´í§Þ{…ãi4²¡$%T`yÚè?V@år\0É5æþ–âC³q$Ö¶Ÿð®êè‡à¿ÍŒŽ+æ)Mïsé*Á7cÛü;ñ2KiÞ¤0¡®<C€ãž†¼§ÀŸ.4vF–F#«]í¶Y7;EvÂ¬Î)R‰oVñ¢YFÌ\ná8&¸?|c‰Ì¹ƒ[>\'ð£j¶r\"HC18çåÞ$øAu5À+#§Ÿ˜TÎ¬š³4§N)Ü]oâß³&A\'ÍxWí§á³ñ\'ötñö†Îu_ßD¾»ÚÛŒ÷Gå^¼ž›J‘‹î`§¹ÍøÏLUº‰‡Y	Ü„qCë\\”ê8ÔO±Ó:JTÚî`Á³ÿ\0³E§ÁØ«QÕnì|xÇP‹SÔfd»µhƒYÂRR6f*x)ô¯Ò°rõ¯\"ý4{-à>˜öPE\\ÏpÒˆÆ”Ð.=”\0¥zämº5#8#5÷ØIÊTc9uWûÏ„ÄÂ1«(G¦‚ÑEÒ`QE\0QE\0QE\0QE\0QE\0r_¼ñážµ¤ió›KËØ#“#\rÜ/¶zWÃzö‰¨xCÆMcªÛ‹+ÛgÙ,Y+z.ô#\"¿DOC_ þß>\Z}âN›ª1U‡T·TVÇ*ñ·Ì8ÿ\0dƒÏZùüÿ\0/n·V_#ßÈ±-Uö/g¯Ì¯àŠü©(\09#èÚ*A¸\0Š@â¼3áŠDDòŸ0ñÎI5êÞÖÄŽ 8,:×ÇQ¬¯©õiËs²enÃ5£gÍ³ã¥b[]y€äšÒµºÛ°f\0·Jô¨ÍsnpT‹µÈç`3“TïBH¸	õõ§\\\\ryÏ5•¯ê‚Ö«r+\n•45Œ\ZF––­ @Oâ~9¾Yõ”Øwl\0’Iìs^‹ñÅB=)ƒI†#Ð×\rðoK›Çÿ\04K-‰\"Ë}³c;cŒ–r3ßhük(ZSQ†çDäáMÎ]ôïì}à=wÀßîWZÔ.~ÙilHÝnŒ¸ç‚Ã\rƒÈ$ä^ÁÄj9àwëMŠ  Ç­>¿F¡F4 ©Ç¦‡çõë:³u%Ô(¢ŠÔÈ(¢Š\0(¢Š\0(¢Š\0(¢Š\0(¢Š\0+É¿l_†câ?Â¶Š–ÿ\0Gayo·˜‡÷ÉÏà+Öj›apeFBä­c^ŒjÓ•9lÑ¥\Z²§R3F~gxs^’ÓURÓÔçŒW®ø+Ä­3¡’À\\·í_ð’„ÿ\0oà¶b-/!þÐ‚1ÕäqŽ;¬?\n£àtÆÑ‚v\0Ç\\qÒ¿-ÄáåB³¦ú3ôª5aZŠ©¨úFÕÄ\nCd¨ö8©æÔ§bB‚Fxæ¸ï\rx#¶ù¤\0°È­¤Ö¢(¤Ê™#Ö·FsÊŽ¦¼—åbRç×+âýwÉ‰|ÔúŽ½)ÅyïüLdÆ>µi¾]\r)S³9¯ø©®¥’ ûˆb\0¯hÿ\0‚|>2ê\ZŸŠ®!fHÐZZ±äb7‘ô\nü\n¾kÔïRóT;‹XdÚ)9\0À<{WèßÂÿ\0Ú|4ð6¤Xö{XFæòÑÈË?â{|;…u+{Ymé?by)*QÞGF¼(‘E$\\F \0”µ÷HøÔQE\0QE\0QE\0QE\0QE\0SL«2I\'â1rFpE\rŠã©¾rÿ\0xuÅfø¯ÆÚ?49õ=oS±ÒtëeÝ-ÕÜË(=Ù°?õógˆ?à©Ô¾!ZxsÁ¶·þ+½»vF½‰\rµŒ8‚dpÁ?\"}kÓËòlv:ïIÉ-ÚZ/W²<œÏ>ËòþU‹­94’oÞm»+Ejõìÿ\0‚ƒüB¸µÅâÛÊ\Z-6ÊÚÍ£ìÊAvØÞk™ðö²¤WVç6òãa g >õÉü~Ô¯<Eñ»Äš¥øAs}pe*™(€”.yÆ:f³¼9«^x` ï·\r¶H[•#ûÃÞ¿Ì&Ö2¬*n¥%÷¯`e„§*{r«|ÏmÒ5Ë‰BíéZ>uô¡e} úô®Á~-³Õå&ÞuO(ç¾Üõ5ÝZë¢;B„)$qÏZQ¥æi*¶!½Öî Œo•†­rþ ×^ôº,G\'éëV<Y¯CcnòÏ4Q(Éå†.µçºÿ\0‹^·6ÖlËjÇ-(;{sÚ³¨”UÙqÌˆž([ãö|¬°w¾ã$¦îý+õ\'àWãñ¯ÁßjÌø[í*ÚV-˜Ô2’{†È÷¯Ê]GM* \0¼œkè?~Ù-ý”~øN=ÃÄÚi^Îæïì“¢°.|¹\0lž…H>¢¾Ç€2¼VeŒ©‡Â¤åË{7m½tûÙñœœ`òœ1¸ÆÔ³i_}6ZîÖÇèH0N=pqN0ƒ_3|ÿ\0‚¡ü+ø¡,\ZŽ¥sàÍbá‚Gg®¢ÛÇ#wÎ	‰†zeƒ{\núJËP‚òÎ š9á•ÆèÁÖE#!AäWÙæ^/?gŒ¥(>—V¿š{5èÏÊ³¬eIVÀVH÷‹¿Þ·OÉ¢z)<Å$µ*°`ä\ZóÓ=K…QLŠ( Š)†å[‘Û‹…À\\!v]ÃrõÇ¥hL¸\0}x¯?m?ø(‡„ÿ\0d+q¦˜‰|o{{Ññ(¤“·H“ëËvùËñ›öÉø“ûE½Ãx¿Å×zn“8`º…4–v*¤çË}…^PÆ]ˆ8é_wÃæ9Ä#‰Ò\'´¤›oü1[ú¶—™ù§\Zx©“påéW—=_ä´ÿ\0Ù~/ÈýLøáûm|.ýŸb—þ_hðê–EÓmåZ„¬6ˆ#ËŽxÉ\0{×È¿à°ž&ñsÜXü:ðÜ>±;”ë\ZéÝ0\'¬vêÁSŽ…Üÿ\0º:WÁÒëÚ?„TGa§Å	Ø!pzzŒÃV=÷.õVo(ðAÀð¾•ûEá>Y…’©]:Òþõ”ðÝþm¯#ùëˆüyÎ³\nnž]BªÖ_øJß$Ÿ™êß>,Oñ[þÖñž¿«xÇV€•…®å&r>Z\r©?ì«dzU/„ä·øÝás²[#©A—ì{„9úúW—´Üð\\í=1P][<,\Z)¢_Ý¸ê®:7àq_¢K)£\ZŒRJÍ$¬’Ó¢VK_#ò*Þ\"Xøc15¦¥6ÛmÙ§«m··sïïÚWÀ­¥ø£NÔRaÖ-ü—aƒµãq‘Îv8ï“èq øR+È™YAf¯uðµ¥Ÿí1ðO½µh–÷V´ŠþÒ\\ñ\râ§Ü9é–Ìg8`zs^uááºhd…áš&1¼n6•e8+ÏpF+üøãl–xLâ¤šÒm¿ŸÚ_&©¼!RÅeTœÂ’õ[§÷Š¾;Fg·óã‘:ù@üº×.|/âT%Röø(àbv•}C¤èfúØÅ P1‘Ú¡“À\n€Hð¥|ô(3Ýt|÷á…—Ú•ÀžýîeaÎwîüó]ƒx:Ä’¸fs^Çká5ÓìÈÚŠHô®ÄÚ –e\0óØÔÏ¡PÄ_Èñ“à)5ÿ\0iö0+¹½™-ÈÂKnÏÓO@\'¡®_þ\n_â·ðO‰|¥X0ŒÅo<Ì¡¾èÞˆ„|7äkêß€¿\rL‰.Uråí4ôqÈFe—Øm%2}^¿?¿nïEñ?ö×®mÙšÇ¤[· 7ÙØî|újó}xê1_Ñ>\0dŽ2XÊ‹tÚôZ~/cù¯éÄ4ÖR°IîÒù¶¤þå?6Ž{KøÈ5–×W·[øv„`UAv89ý>µèßhŸ|%øuãMC@·2“>n4×ÉÉÝo&åÿ\0yHozðf±1’c³Óµ0ù–\'z3ï<¡¯êlVO…ÄÓtçÓÝ4š\'ÂÇñ[cp5•lg	-šm?½Yþ‡éwÁoø,ôºuÄZoÄÿ\0	µ¨nhçÛ°õ’ÝÎôõ%Yÿ\0Ý¯¯þþÕß>;i¶Íá_hZ½Äˆ3j—+Úr\ZÄŠ~ª+ðzÏâ\rå‚…‘·D£:†úÖ¥¦­áÿ\0Ë—š|Ý&\nÉ˜Ú2:0#Ü8Õù–wá[ˆn¦\Zô¤ÿ\0—ÞþÝ×¢’^Gî?ãÞkƒ‚§™ÓU¢ºí/½+?š¿™ý™Ðc,==è©Æ	çÚ¿~þß_¿fùmÆ—âWñŽƒ3D×åYí\rÁýê0\0ÌÊ1Ð×é/ìûrx;öÀðü²èò6™â;QÑn˜}¦Ï<SÀ–-À¨‘r20px¯Æø›€ó,š.¼Ò©Kùã}?Ä·â¼Ïè\rñ/\'â4¡…Ÿ%_ä•®ý\Zvƒò=¼ÀAŠŠ)‘`áP`€¿wÛùT ç‘Ð×Å ¦ó‡üƒöÜ´ý‰~Üj±4x«\\g±Ð­¥RÊÓmf3Hü³‰rO÷‰U\'ôsH«œœmä×à_üö›ºø·ÿ\0×ôŸLð\nE¢Z\"“ÅRiÏ³®OüóZû¿¸fžwœB…áÁsKÍ-—ÍÛåsãøë=©•å3­Cø’÷cäÞïä¯o;¿o|Mâ]GWÕ¯.µmwW•¥¿Ô.77’NâßÂ‹œ^Kyâèü€0Ý9æ¼cCñáÁËêO5ÒÚkRL«æ_×ï’Š²[.ß×ÜæÙlë×uë¾i7vû³«¸ÔŽ¡:¶IAúUë8Æì‚5ÍÙ_(\0îàŠÕ²ÔF@\rÒ­ÆÊÇˆ Ò²GKlÕG\n[‹eqÉŸe©¯7ZÐŠu”0$×,ÑâÔ„ î}ÿ\0¤øô¶ðãT‘ÜÊÚ†…¿9wÉó \'¹<ºŽ¥L¸ÉQ_cüEø;ÿ\0	ÌÇXÓ!5´\\Þ@î«¦1FË ë‘÷~=éúÆ‹©[ê\Zn¡s¦êVGsgsÄ–³¡dF;®v¯ÓÏØ7öôÑ?i*ÛA×\'¶Ñü{§ÄâËÌXÆ¢1ÍÅ®ï½¸ä•ÎT•üñâ§*’–60½9jìµŒ»ú>§öž%FT!”ÖŸ-zjÑ»ÒqéXê»›>\Z¶BÛ$óVxÎÉVUÛ\"8à†˜£ÖºEÐDgYW©Šôïx#KñŒB[ûv´¾E\n—Öÿ\0»xè[þZ/³ã¯5ÍÏð·VÓH‰u}\"XG<¨Ñ:ŽÇ`ã?L×ó¥l¦µks.èþ©¥šRª·³ìq\ZžŸvÏ!dòã\' U¼!ð°øáÆ£¨4ÖšRü§e¾=UQOðc«wè–>	Ó´û…–úI<AwT&ËH÷¶™¿ŠÃøíñÏÃ|uâoj¶z}–ž»àG;^gÆPÆX“ÆwÅz_ÏV*¬[»Ò+Vßc‡3Ïéá©JP’VWrz$º³ý´><Ú~Í_/õX¢²U¸A§hV@ü­+©\nª:”@ÂFÿ\0u½F(¥ºžIg‘çšf/$®w4ŒNKÜ“Ízí/ûNëµoÄÇñ­lº^™l\r¾£–-9,ärfó!\\ãî¯¼ùîT\rÎä–ä’0OåÇå_Ù<	ÃRÊ°)ÕªNÍ¯å]#þ~gùýâ¿¬û1öxWz4î“þiu—è¼‡6\"Q“€*¥ádƒQ_j+ƒ†v¬Ë­_ŒnÉWßSLüÆ†MÜuïj«g©=„ÌAÀÍAw©‡,5›6¢œ6Mt¨ÝYžÅ3’å’ÐímüjÐÂ»˜ò:Õß\n|uÕþx÷Jñ_‡oßKñ&‰(šÖõP0\Z¤‘:nCŒn>[{¬Í ”kŸÖ|Q<E²Ä\0Mc,*‘”*$Ô“M=š{§äú®»3ÖÉ²ú¸lDqi8Ê-4ÓµšØþŒ?aÿ\0ÚëLý³>éž-²D³Ôû.­`¸ØÝ bƒÔÆrIê¤wÈÑ|µÉ$ã¯­~ÿ\0Á¾Ÿ´Íï„?mk¯Í+¶‘ñLœl*òÚ34r@bŽu>¤§¥~ã&v.qœWñ¿pÜrLæ¦—ðä”£å_O“M_­¯Ôþìà¼î¦i•SÄ×þ\"÷eêºüôe{‰Öä‘ˆU%˜ô\0d×ò¹ñëâd¿?hÏˆ*Þ¾#ñ6§ª‚Nr³ÝJê²©P=«ú^ý°þ$Gð‹öXø‹âgb?°ü;tU–Ûÿ\0b¿•Ýäü¬Ä‚Ày5úXK}oþ¯Å¿Óïó>3Åjÿ\0»¡CÕþ‡¢é7‹¸ØšÚ]HÃ\Z±`ð+ŒÒïÀ\nv«z†²b·E-Œ·ýÙüáˆÁ9ÎÉÝ¦¯ò&°­+=g«…²Õ‰>c¢´ ÕH#’3I«ž.#/»zÝ¦´Û†ŠÕ²×HÀÝ^}i¬0#æâ´­5¦R	lY:w<\\NY~‡¡Åª,Š0Ä’*Ìæ+‹9b’X&³—Ï†h¤d–Þ@rr§>„çÒ¸‹=pŒØ´!ÖÇsƒõ®j˜E4ã5tûžJÁÕ¥5:m¦µMhÓî¹¿fø+¯Ä/‡Ðé~1²·ñî‘oVE³ÕÔz;b”Ü…c×vkè­Wþ\níðÆóÃ‘%Þ“ãëUðc´>žs(ìQã,…Ob‚=kòvÃÅ/hNÖÈ5Ñi¿\Zµ-Å ¶¾º`¯šØü:ñøŠüã5ð«+ÄÔö´béß¤]—Ýf~¯’xÏÄùu/aZÕÒÙÉ^Iy»¦þgÜß?à­Ú•–Ÿ<>ðcYÜ2•ŽóÄSyb ˆ[!-¸vLÐó_|]ø½â?Œ^3:÷‹u©¼K« SÍŽÚË¶È j~¸®SYñ¤Ú–öy™šC–f%œ“ßŸñ¬iµ¡ÞBOrG&½îàl»*÷èÓNÌõ{Ûä|÷ñßqéãjÚ—òGÝÎÛýþ¦Üú¦ÒK8$õ<óY×ÚÓs†ÈíX×Ú»ì,œúÖ]Þ²Ç 0$WØÆ•—¡–kª6¯5³ƒót¬éõ‚s–$Ö5Æ¬NrÃŠ£>ªr~uüêãÚ¡–Û¡­¬°Ï8ªi¬à0$}k\Zÿ\0Qi\0– ã ?ÔVU¦¶^f\nù\0Ö‘}V–ZÜ/c©¾¾%x5Îk“†œœÓî5RP\rÙ\"±µ{òÈ@95JG~âÑìÿ\0ðLˆKðïþ\n3ð‡T{o×ã²”ò~YÑá#Q&?\Zþ™’ ‘‚E$Þ\rñàøwñ3Ã~%MÑËá½^×U2säL’c]˜ükúÐÑ5Õ4[;¤`És\nJ§Ô2ƒŸÖ¿›|rÂÛ…Å/µGî•ÿ\0öïºÇôÇ…•ŸÔªÑ}\ZzKô>3ÿ\0‚þ|P?ÿ\0à˜^?Š	Ö¯Ëg¡D	Á:áL Û”ý×ó§¦^·¿h¿àë_É§~Ï?\nü/\Z0‡Xñ=Æ§;ƒŽ-läŒ/¸ÿ\0Mcõ_jüF±ÔDx,ØÚ¾ËÁü7°È^µ\'\'÷Z?‡/âxž\"MÖÌ=ŸòÅ/¿S¹Óu Alb¢×µ’0€Ùü+ÓT<Çj‡ˆ5ÂnPÎ+õ*˜‹$~iG/½]FÓ52$!åZPê§?z¸-Xß@6NÑŸÊ¶!ÕùûÇŠÚn®Ï\'€´ž‡c¯Œe±Š¹´Ü|ÜW±ÏÞ«Ðêø\0îÆEh¤y•²í/c··×Š¨Ë‘Ç¥_‡\\$¼cÁÅ«AÜjä:Ó\0\0aÅZW<ª¹eõ±ÜG¯àä¹§x’HcƒìkŠ\Z×$çëN\Zçæ­W)Êò¯#¯›]?Þæ©\\k„óW5.ºq÷ª¥Î¸Ä7Z9Qµ<®Ïc³ðÍ›xÃÅÚV—ö»kyu+ÈmgŒ²B²8`9${C~ÁW“(oøX¹?è3ñB¾hÑüq7†õk;øBKqe<s `p\n6áú]Ã~Ú>)B@M)TtCñù=;øÉ„ñ^¦7ü=­FyeíEùù´·4eenÎÞGôG„Ø_é`«®8§RUy×\'\'=¹m­ùdºù|ÏX“ö»9ÿ\0Šÿ\0ÃDÿ\0×„ßüUV—þ	Ûy),<áÏ›ŸùÏÿ\0ÅW•¿í½âÄ$yZ9¡ò$ÿ\0âê&ý¹üX¤æßE Ó³ÿ\0ñuøÛË¾“ô…ÿ\0Àhÿ\0ò³õØ/\0Ô+ÿ\0å_þHÏý¡>MðÇè’jÚvµçX¥Ù»¶„Æ‰—uÚUŽr6{×”ézáûC\0ààã€@®‹âÏÆKÏŠzÒjzœVÑÏKoû•*¥Î2{³w¯3Ó5‚·Î,ÇÓ­YðmLîžK…‡N2Ær/jãnW=yš²I\'¦‰$>ñ.(©šb¥Å¬/7îÔ¯~[u»oï;÷Õ‹ódÕ-CPÜ˜ÝÍcPçŽEU½Õ9nkë£Q=˜¥j[	«Ü¬ÑNŒÜ¸Ú?3šþ¨ÿ\0`ˆ²|Vý‡>x†Y–âëUðv•5Ûœ\\}’!2ýV@àûŠþQï¯¹ÚIjþ¿àß_¿à–>\0ŽDpú$ú†˜K–	w+ƒôÃøWâ~6Ð”òº5à•ã;|šä¾ãõÿ\0\'ìq)¿µÈòø9ÿ\0àçÄÿ\0Ø³Ãþ4Ó-\'»ŸáÞ¾&½ò×>U…Ìm¬ÃÓÏœŽŠXôÉ-Â04kÀ~Çñ¯ìâÃ-+ãÃíkÂÚýšj:ˆ-¤²¾·€$ŠE*Ã¿89„\nþcÿ\0à¦_ðMÏÁ:~5O£ë·þÕ.dox˜/ ÜO“)<`¨`q“’29®_¸’„ðÏ&¯.Z‰¹BýSÕ¯Tÿ\0Ìô8ç(©íV:š¼ZIù>çÍi¬Tb\0qXšö¼Mâüf¶o,A\0Œ0làúâ¸^0ÔÙWvÈ#½~½™óÑ‚“Øø¬»\r\n•‘èþÖƒE”*ÛMhgÀ?Jàü,†xâ\"@	QOµtJ]q÷…tàÕYÁ;hyXìFŽŠ=`\0áV ×W\0oä{\ZåÅÓ\0Gôä¿Úy`?\Zô#­ÑæKuñkáz¸ÅX‹ÄÁÞp~µÅLöeÅ<k,\0‡õ¢Œ\'–\'²;®’Á£ûxÿ\0~¸¡­I‡\\¼*6×\\1EÈ÷Ýd·3YEú¼šéaÃfªÍ¯HÈ®@ø¿¾*×$,Hl‚}j%]C(ò:Ù5Ü’Ž*¼ºÈé¿5ËeòrÃó¦Éª³gëXºìŽˆe–ètrêá†sUäÕÁ$néìkûAÿ\0¼?1Iç;s‘Ï¸¬Û›èoQ¡«kj–Ž¥ðONµÈÚëÛ5Rcæô÷«ž ¹h¢ùŠŒûƒ\\Dz“6¶ÁI8süëÂÇ×:‰4}[—ÆTånÇ¥E­39!³“L»ÔÌ™‰\"³ôÛu’4f”eÂ¯4QF¤»ª…]Å\0\\šõ¨Q¨à›<ùR„ed†Ä²Ïp¸R	ÜÄ(àóÉÿ\0<\Zþ ¿àÿ\0³Ý×ìõÿ\0Þø_¢êZtÖº¦¡¦mÞC\"ùrE%ã€Ž¬AWT‘‚pE~BÁ¿à‘úÇí‘ñgFø‡ãM&k_„ÞºKÔ7Q•(¸C”¶O&*Û`ª9lD°¨HQW \0\nþñ‹ˆhb92|<®àù¦×Gf”}lÛku§[¥ú‡dõ))cj«s+%åÜup?þ\rh>k>ñ.ƒ¤ø‡FÕÐ¤¶š…º\\Bç1ÑèFvñŒW}UçûÇë_ŠR©*sU ìÖ©Ÿ8)EÆ[3ð?öÿ\0ƒu<Y¦øÛPo+Å¢ù®`·¸œÜAc…RÄ1\0p	98¯Ô¿àÜ/·+*¶žCrslsÏü\n¿¥7ûçëU$ÿ\0XßZû¸x‰žF’¥*¼É2MýîìùÕÃx78Æ×ìÏç\'Nÿ\0ƒyþ7iÊª†Ã\0º#úÕ³ÿ\0ÿ\0ürÉÿ\0ûôÆ¿¢š+ª>(çñVT¾KüŽyðž_\'yEýçó­ÿ\0ÿ\0ürô°ÿ\0¿güiâßŽ’tüÿ\0×&ÿ\0\ZþŠ(¡ø¥Ÿ¿ùz¿ðÿ\0‘ê~[üïgó¯ÿ\0þ|põÓÿ\0ïÓñçÇ]?þý7ø×ôQE?øŠ\\Aÿ\0?Wþòõ?-þG÷³ùÖÿ\0ˆ~þ6÷ŽÈŸúæÆšàß_d’b²Éÿ\0¦gükú+¢—üEÿ\0þ~/ü?ä5Âoò¿½ŸÎ¯üCíñ¿·Ø\0ôòÄ>ÿ\0ýl?ïÑ¯èªŠ_ñ3ßùø¿ðÿ\0ÿ\0Õ»ù_ÞÏçHÿ\0Á¾Ÿ2ãÃþý7øÒÄ>=l?ïÑ¯èºŠ?â\'çßóñà1ÿ\0 \\%—-¢þö:?ñŸÇ[ûôiÃþ\rùøâ\0ìôÈÿ\0E”P¼PÏ–ÕWþ¿È?Õ,¿ù_Þ9—¿ðogÇÅÃ?ë‘ÿ\0\ZÆ“þ\rºøÒoDÊtü±ÜÑÉÁüëúL¢²­âNwUÞuù#j\\5‚§¤_3ùÌ´ÿ\0ƒz¾8Û\0 XmQ€|£Óó¯_ý”àßÚüNÓµÙG©éöR¤­jp!fV3“ô<Wî¥iéßp»Yâ¼EÏ+ÒtgZÑjÚ$¿ §Ã8MMGUÝÜÆøoàÕðWôÝ&ÚÖÒÆÚÂÙ †h„1Fô¼(8æºT\"‚\0 t(è(¯ƒ”œ›“ÝŸO’It?ÿÙ');
insert into `user` (`id`,`username`,`password`,`email`,`mobile`,`dob`,`gender`,`address`,`pincode`,`image`) values (17,'Swati','swati','swati07@gmail.com','7834232232','13/3/2012','FEMALE','bangalore','560098','ÿØÿà\0JFIF\0\0`\0`\0\0ÿÛ\0C\0		\n\n\r\n\n	\rÿÛ\0CÿÀ\0\0¿\0•\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁRÑð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚáâãäåæçèéêñòóôõö÷øùúÿÄ\0\0\0\0\0\0\0\0	\nÿÄ\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3RðbrÑ\n$4á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹ºÂÃÄÅÆÇÈÉÊÒÓÔÕÖ×ØÙÚâãäåæçèéêòóôõö÷øùúÿÚ\0\0\0?\0ýü¢Š(\0¦O1„)\nX“ŒJ}rÓ[ƒ~&>–XµôÓ§’ÀÇ€í2ÆYˆÛœnÎ**O–V½•Ë§i(Þ×v1~6þÔ~øl]Ô”^È…¢²·ýåÌ¼vPF??|‹ñsþ\n‰âOÏ$>³‡Ã–dW	®œz’Fû\0Oû^¿éß øŸ¤/ˆâÔ%Ô×Tùæ–Wc4r’“n%•ºqÏ ŒsZ_Hv‚>™äŠü;9ãìei8R~Î=—Åóä~Á•pV‡½U{Iw{|—_™ëž3øË«xãRûf±©Þê—CþZ]\\4Ä}d/á\\½ïŒ€˜Èn<d±-ùç?‡Jó»¯`“¿ÿ\0¬{ï\0H-ø|E|ÖS“rwlúê9rŠJ)%èz]ÏŽBU\0õ?ãY\Z‡\Z,í”)ÏfÅy†¥ãÐª@oü~¹íOÇÀä3•þökã9Ž©¥ÐôýKâ³0yU×ÐóÏ5Ïjž>lŸÞ)\0ô8#ùW—êž?U‰7sýêçuO4ˆB1\'?ÞªŽ\"O¨¾®–ˆõcÇ©)>aG^à±ö=±ô÷¯Aø+ÿ\04ø£û8Mo‡üWw¦[7Ë¥êrµõ³/÷9Ü£ÙX`f¾N¿ñdÒäGü\n±o5ÙdÜœž‡<zïÂãkÒ’)¸µÙØãÅ`©V‹…h¦¼ÕÏÞØKþkà?ÚkU²ðßŒ!µð\'¯•R\\™4ýMÇüð™‚àŸî0ìy5÷s‰¨ëí_ÉdºÜÑÜG\"¹I u‘	Xo÷¦3Ó¾kúTÿ\0‚]þÔÇöÄý‰<ãK‡ûbKVÓµxÕ²RöÙÌ2·A€åD€v/\'©ý£ƒx’¾=K‹ÖqWOºóó?%â¾¥å¯…V„šìü¼½O ¨¢Šû£ãBŠ( Š( £ºÎÀCÁÏèjJŠñ‘Ê)ÎÒ“W€¿ðV?Ùã_ÿ\0‚z~ÙÚ¾·á¡%¯„>!K.±¦“ë&•äqm è\nÈÌÀ.×^€\Zò?þÕþñNšõç‡o®éì\\ZÉÁÉhX¬‘ó÷˜c<Wîícà\rþÐw7¾ñ>§ëº¸0µ½ÒoÏÞea†FÉÛ•9ÂŠüåø÷ÿ\0ýXk7\Z‡ÃË¦;ÑéZä-s\ZŽ~T¹OT\0âì\0Ï2ü=LuXQW3ÿ\0ƒ®ûŸ·äÙh`éOí.Uÿ\0M¶±óÔZ®‘âÍ§Bñ‡…õ\0ã!./ÅŒÇÛlÁF}5_Vøgã#ø´K»˜›¤–Ò%Â7ÐÆ[5ÎüRÿ\0‚=~Ñß®X¿¿á%´\0“6y\rî}‚1YOÐ×ê³ÇÆo‡WŽ“ü7ø« 2ñ»þ½BÜ7Ñ¶sÓ·W‰þ¬Ó“ÑIzkúÌx‚[\'ý]^Õ<âëv>w‡<Cé–Ó§óÙÖ°ï<â0ÄÉ¡ë¸=?â_7ÿ\0^aÿ\0	7ÅÍSIñ\ZÔ¨Æ×†ý{r¿Ò™µñ§W›Ë·‡âµÑ<½ó“ùÖ‘áˆ­S—ÜDø‚vÙ„ß<Os)Ùá¿H \Z|ÄŸ ÛTu_‡Zö’¯4›½4Óðƒÿ\0\"íÇã\\õ·ìýûD|@Q^øá¨Ç\'ÍûÝTh·,é³½tžÿ\0‚I~Ñ¾,(ëð—U²Ž^|Ûû»k0º³†þšêŽANÞoð9¥ÎZ$Ž?[¾´ÒQÌúž™æ/bºIÆ}7ÆY3íœÖKêâ%‘	d~Œ>í{ÅOø#ÆOƒ?üMã·„ôÝ+Ã:dº•Ìªý¦à¬k¸ª€¸Ü~µóörÉ¢Zî\n$aÈÎUUËéÓŠ”îì(cgQµ5m\r»öEr¯µ±‘ëAô9¿`àÖ¯Ž/¨h¿>ÝNÙOm¯Ú¡oº$SÛW°Ýg¯ñÛ\'ñ¢âè6àOZû·þ\r±ñûxgþ\n_m¦‰J§‰|/¨iÌ›°&t1\\ƒø,1ïžØ?CÂÑÌ)¾îßz±áq\"ö¸\n‘¶Êÿ\0qý\r¤›‰`ö÷÷§Tp°fåÖ¤¯ÚS?!\n(¢˜Q@T×oÆ—£ÜÜ²îDÒc8Îš·X£øw¬²œ0µ|Â¹±•:šÝ&ÿ\0l5>zÐƒêÒüO,¯$º¸–YXÉ$ÎdfõbrOë[zz³mÚÛxôÎ}«Ò¦W#øWù\nÝ°¹\0`z×àX:œÞôž¯SöœT,¹R:==P•Âáq–Íù[ÖwÀª8¡ˆüë—²ºÚA­kkà\0#Æ¾·ˆå>c‡¹ÑIzf€#°eãµfjwB7Ó$TÚLõüjÕØ“98®üF..:tp¼¯b–£ÎNù@Ïüôaýk\nýú‚ÌAíÁþ`Ö­üÀÎkðŒ³\0\'üý|¦>ª“»>èù?þ7â§ð—ü_â¤ÑÈ±µå•½‚¯9q5ä2ŽÙ(íÚ¿ u´²ŽH0(SÏ|ç×šý}ÿ\0ƒ¼w‘û\Zé\ZœKâo[Dw2,¼ì1Ž™Uü«ò@ð¶±ã†‹HÓu=^ä‚ï•¤“?¼vŽÃšÂ…5**ýÛüÊ²å¨íØ«qxyÏAýkëïø7ÝÞ_ø+×ÂÄ.«°îs€\0Ò®Çó\"¾0ñ¥Þ‰w-õµÅìk¹à¸¢’>ø`ÀÒ¿Aà×ÁLo5¦†Imü)áû¡0\\¬SM4ñ‚{F¸?ðëÇÐd¸G,];wOîÔñ³lBXZ—þVDÖøóƒÇòÿ\08©©†$Œƒ)õúÚ?,H(¢Šc\n(¢€\nÅøfú‡5h#É-¬G©\nHŽ1[TË„DT€Cpk*ô•Jr¦þÒkïÐÒGN¤j.?¹ÜùN½ªã\0¨ ç¯ÿ\0­[Vs„\0†‰â­2_	øÇPÓæR­o3>FbTþXüª[KýÊqzþm„¥B«¥=ã£õZ?ÄýîtãVœjCf¯÷Uµß´-ïr£“ÓÖ¹‹kÌ($æ®Ã¨mZö¨c-Ôò+ant\r¨á1ýj¼·ùÏ?­eK#×ñ¨¥¿8Ï¯½kSæc‘nòï$ç5¨]@@Ê»Ø[üæ‹»Ü©çúÖMåØ;`pCÁÏjò18›îz¸l3GÆ_ðPÏØ×Äÿ\0·Ÿí9à\ng¹Ð>\Zø?LkýKUfßÝÏ6ÆµAÏ›qeÉà	Àê}—á×Á~Íþ·Ð¼£ÛèÖöñym\"qs)ÃHã–${jô}SRŒÌ$sŒ‚ÀñŒãŒàž•Àø³XWÁaÓëÉ>§®_¬Ô©jkEº8xS÷¥«gåüWÂv?¼9¬ÛÙÃou¬Xâé¢~ÐÁˆû¿›_qÁ¤_\0WJøUñSâ|ðÎ³xQ·ÐídeÂ4vÑ™höiÀ?Cø|)ÿ\0 Ö/<}ûAx;Ã:]½Åþ«qCki>eÃÉ*C/ûM*È£Üí_¿_ðLïÙ&ÏöýŠ|ðÞÙ’[­#O7ZœÉÈ¸Ô.dk‹·Ïpg’@¾ˆyÅ~³Áøw;V—EùŸšñN!B.”^²‚=èw¢Š+ôáŠ( Š( ›&02q“ùÓ©\'øNh`x_íuà‰Q-üIk‘m×É¼*1ò“ò¹>ÇþžÜøæ®$È¤ƒÆsÎGP}=½kìíOM‡R°–Öâ4šÞä2HŒ2®9¾<øßð~ûà§‰G”$¸ÐïXýše\\qÿ\0,ÜçïpxÍ~GÇ<7(ÕyŽi/‰.kú>§éÜŸFTÖ_Yê¾5Õz®…È5UÚ\0 þ5j=P0§ã^¦ø•NI`@ã†ä}}çZ°x…1Ãó¯ÎcVkCï]3®\Z†{þµú˜Ž¿sKâ$ç$õ¨.|F˜<ŒgÖ›­6J¡t:¨ äzÄÕõ¤XÎdZÅÔüL­¶}k–Õ|X•b@\'ƒœäÒTå;\\¾xÁ\Z> ñ\"ª6N}k•†Ú_ê	\n«•¶·¶Fê@ühHn5»°¾[˜%‡Ì.õë?g½Câ–ÒÅ…°’\'G½ØH·ÈÆ@ã,3œdwæ»ðÔ%9ª44ÞÈâÄW„ êÖ|±Ž­Ÿÿ\0Á7¿c?nOø+§Œ¾6k1»ü6ø)|šO‡Ô®è5}V¶6	ûÑÃ3Ï18âSþŸÙèm„.XsÇ@03Àã°í\\?ìÛû?xkö^øC¤ø\'Âv‹k¤hèÙcÌ·S»šâVþ)e‘™Ù»³ƒŠï+ú*ËãƒÃF‚Ý%SñÓñ˜‰VéÓÐ(¢Šô<(¢Š\0(¢Š\0(\'\0ŸJ++Ä\Z¤–ö˜‰NâØÎ{`ÐOxÞ\rM•Ô«Ê¼ÝóÍ|ßûE|Y¾}5no#’óÃqš”KVÜwÉ¤cnrp#ÖõýM^V2³c’¸ëYRx5efŠÊÀ†R™VÉïô®|VŽ\"›¥Y^/{hþó|6&xz±­Otî–|AàÛˆí’ÿ\0AeÔ4ó•\"~ù°AqÐƒŸÀæ°‰d·Ê°te8+\'ÈÀú`×¬øëö\\ñ7Ã	n5_†Ššžœ\\Ï?„®åF	9w±™ŽØ]&9?vI%Z3•~/Œ^\rñF¾š/ŠàñdEýŸâV°¼f=V6l$þÍ85ù~qÀXÊ­„‹­O¼SmŠ*ízíÙ³ôÜ¯‹0Õí\Z²P—fôoÉ»\'ùùÆX©bû¼çëL“Äí(À.Iôæ½\"?ƒzUê4–&Cí ñ($ôtÉÇZŠóá^›¤©–k¤DUß–Mƒó\'†kàêSä—+‹¿õó>®ž\"3Wæ<Ð›íNM©ª½rzV®‘ðòòþd3¡ØÝ	\0ûúqš_ˆ?~ü±i5èVLƒˆÞí^Vã DÜÌxè5ó‡ÆÏø+ç…´[g²ð–™©kÒ°&9ç­ Îð‘æõP+êòâ\\ò\\¹^\nr_Ì×,¬åhü¯~ÉžNgÄ¹F^¯‹ÄE>Éó?º7gÕWúîðúÐË3Apöã%CcŸLŽœg“[Ÿ?àµŸ\0¼1­Úø?[Ö¬ü-{»cLŠ×6Q7LË:#qÔ5ø»ñÓöËø‹ñÁ§MWX“NÓä“‹<ù0‚0qÉ8\'©Çµxœ¾eš8‚Gœä¶zý@ÂŸÄÎ¿§8èõ[-ob=ù/‚šNÚ<£wgÑE\'ÕŸqo‰³¬>\n—ºžòo_ûuio[¿$\\ÞñU‡Š4;]KJ¹´Ô´ûØ„Ð\\ÚN“E:žŒ¬¤«9­(å.À\0#9Îkùœý€?àª`ÿ\0ZÛèú„º×ƒ^m÷Þ¼“6³©#q‡ƒäËÇƒ$I~û~Ä·¯Ãÿ\0ÛÃá˜ñ‚õûE¶TÒ®qî“.9ŽdôôaÁ§Å<É¿|Ÿ´¢ßÄ–Ý”×Fú;´Ï.Íéb½Ï†K§ùáE69D„ŒŽ}xìiÕñIž°QEÀ(¢Š\0*¥Îœ%Éc{b­Ñ×¨ y´$äðsÇÝ¨F‚‰ÀçÚ·JƒÔ\nBŠH‡&†»FÒ«ë•ÈaéXþ3ø]áÿ\0ˆšsXxƒGÒµ«\'R¡h—Q0?ÂCç#Øñí]uÄŠEfÞ]íFÂðÝôÏéU	ÊRƒ³]V‚’Mj|kûy~ÈŸ?goÙ‹Æ¾:¶ðl\Z\rþ‡¥ÊtÄÑõkí&½q²\0\"¶™#?¼`q·ø½­üFñ&¯lëÄ\ZåÄd˜>£3†\0/,};’kõGþ\ZøÔ<;ð{Á^Šà‰|E¨Í©\\ÆýdV¸ûy’Ç]†¿#n&P€w( œð}ÿ\0Jþ©ð—/©S&xÜsu%RMÇ™óZ1´t½ív¤ú7écóÞ%Å8â½•\'Ê¢µ¶š¿O\"¥ü¥œ±˜®ÂNIaè[ï~µ.ðG!Pí\0ÿ\0_Ç\'Þ´ï$;Ötü1>µúJWM4¤e]ÛíÈI\'\'ÜúÖ]Õ¶IíŠÛ¸’yÍQž Äž•Ç<*f±¨×SêÔH@l•$€ÞÕè²çí_ã/Øëâþã/êw:¥¬¡dy0ßÄHÝËühØžA\ns€Aâî­@9Îr}*œÑ²+fF`FG^FúÁö\'§Zä­—B¤%N¤T£%fž©®ÏËþjkD£%(»4P_ðOÛÇÂ·ÇÀk?øx‹+ø6ÛkZL‡\ZUÞ2Q‡RË#ànSœ=èHLp0A=}ëù‘ÿ\0‚UþÝz§ì\'ûXhšô·’¯„u—\Zo‰í·.{W 	ñÎ$‰ö¸>›×€ù_éD¿ƒU²‚êÚh®-îbY£•å‘X¬pG5ü«â¼‹£Gø5.áå®±o«[ú4~“f[£wñGGçæ]¢Š+á`(¦M7’›Š³œšCtª@!†s”óŽ½¿/^Ù 	(¨á¸tVä#ÏçOwØ2hIÀÉªÓ^TcÞ‹›°€?ZÌž÷k€\Z\0–æ÷¨ÇOzÌ»º²g!B±blÎ›q–9ük:êð•r(PKwÈô¡«¦˜\\üYÿ\0‚ê|Zˆ_·•æš·ko	h¶šR(U$ËÏ/˜´Ã>¸•ñ}Äü\Zô/ÚïâdŸißˆ>\"w.§â¹\"6C Æ¤{ü«Ì&›vFq_Ý|5ú–S†Âlã§ëdåø·ÿ\0~=˜Vö¸š•;¶,³ç\"ª\\L=;ÒM.ÞsTî\'à×²r&HÒªO ÷¤–~µVâãŽýh°îÂYA<Š©q\"ã8¤’~µVY\ZBBòhh¤û„¥%I””uÚÀwSÔ~Yúuí_ÐçüéûXÜ~ÒŸ°>•£ê×¦óÄ\r.Ãw®Í¹ä…\0{WÏqä2&{˜‰ïüêËv2ÇyŠHÏC‚};`ƒŒ’>¸ôÃþ\r{ø¥®xOö¹ñ‡¢²¿»ðÇ‹t\"..R&Ö×öÒ„‚´Op$…À Wæ~+eTñ™J—JTššw^’KÕ}ö]QïpÞ&Tñª1ÕJéŸ¼4Tkp¬O `ã¯4Wò:WØý,Y‚”ËrNqŠþPþÿ\0Á{¿hÙ³ö¯øâÿ\0xÎmWÁž,ñ^§«kÅõ\r A5ìóF©ù­~GUÌ%ðYXªãú~ý¬übÿ\0?fˆšüRùhžÔ¯¢“vÝ¤¬§ó¿ˆ›“%„’ªÈ¤®xéœ~dÐô‰ûÿ\0ÁÞ¾+Ïo¥ü]ðçˆ>jòª+ê0§öÆŽ\\ðÀÉóÐ¿4%@,3ú[ðWö­øqûNxvSáç¼3ã-:eÞ³i:„WCáI#¨0x85üJMrdˆFÍ˜ƒgfN?,ã?QV¼=ã\rKÁ\ZÌ:ž…ªjz©[Í:îK;… ä$E#Ô’~•.ã?¸Û›’K.°=	çò?€¬¹î‰f;\0ã’£ñ¿“€?ð^ÏÚ×ötkxtŸ>$ñ—Ëiþ,	¯G0þéšpnû,¢¾¯ø]ÿ\0ƒü\\Ñm-m¼iðËÀ¾%hÛÜØ\\Í¦a;íŒ‹Ÿ©\'ðÍ	¾ÃIXþƒ¯n\'ªŸ~å\\7Æÿ\0Ÿ‡¿|_¯–t-÷Q9m£÷6ï ç·*á_“Þÿ\0ƒÄ¾ÞH«â_ƒ>Ò3Á“KÔ¬ïÃýC?®òÓþÓðŸþ\n‡¢k¾h?4Oˆ4«Í+G#²²´°‘¾ÎòJ$ž©¶%%ä®21ÜWf4å‰§\ZÎÑrWok__ÀÆ³’§.Uwgo[›2ÎáQY‹€ –=YÓõªÒÜrkë+ïø\"·ÇäÜSEðÌÑÊ´zô@c}à½¹¬×ÿ\0‚/~Ðð<?áóŸM~Øãÿ\0¯í%ÆÙ¿ßiÿ\0àqÿ\03òìœmÿ\0…/¹Ÿ*\\OÁªSM»#8¯¯-ÿ\0àˆ¿o‰Wµðm‘Æsq­ä¯—ŸÒ¶toø!ÄùÀ\ZÇŒ>ie¸?gšê÷oàaŒ¦k\n¼Ã´ÕåŒ…¼›úJeÃ$ÇËHÒ=?;Ï:ÇËº¡=8\'éÚ©ÝJê»Š”Œœn|¨þUúWáOø M¾Ã®üO¼º@2ÃKÒ…ª“éóÊçÏ8êÞÿ\0‚5|ðžÉ5-7[ñ-Â©:ÆçÔ¬{HéÙ‡ZùÜo‹ü;A~êsªÿ\0»~2åüBã¥ñ%WþW?Úâîú+X!–{™Î\"Š%2<¿î…qöûW²ü#ÿ\0‚pücøÜb“Oð}Þ•a!ùï5²l!¼Tƒ)öC_±_g¿‡ßâXü+àŸ\nè7ÙiÇ+½!RïÓ«³œÖýÕÊ†r3–ç’x>£ÇÔ`û×ÂfÞ8b&¹rÜ:œß3û•—âÏc\rÂ0Z×©%§ã¯è|9û>Á|!à³j?×fñì,¬¬‹[iÙþéa‰\\uPŸJûƒö{Ótoƒ^0ðÝ‡t­?DÒ¬¯#Š[8ÄÃ¬\n¨²SÏ©5ŸqpÊ\n™999çüúæ³ßPk;„•‡Ãœ`ƒÖ¿#Î¸—3Í§í3\nÒŸ–Ñ^‘Z#ép˜\nhòÑ‚_ŸÞ~ˆB„Ä¤HF@è¥OG»þÔÑ,n#8IàIG9á”\Z+Ã;ÿ\0à³ž\'“ÁßðJoú”,V[ojpvœ´EqŸÆ¿_´àU\r‡oþ:õý+úýÿ\0ƒõ6Òÿ\0àŽ?ÙG3øqàëŒ–5\'ò5üx]]€Åƒpç8ôíý(ü—œ@¨žó½YÒ^eG5—\\E\0hÉvp0Øæ‘µ\0ª00ÀõÍeKw…ÔMw¸c P«\\‰ÌÁ¹ Gòþu÷÷ü)¢AâOø*þu2ïm@Ôo\"\r±\"è1–V¯Î£vPdçÞ¿Gÿ\0àÕ·ÁQ\',GÔÈö>eµ)7m\n‹×SúH»Ô$šGw‘—ƒ–#$÷è0\0Åf\\^–$Þùþy¤–ãl`œÿ\0‰¬Û»ž¸<Ð„´Ð/.žBd*§#å<Ï¥Q¹¿\r)fPÇå˜ù*›““É¬ùnö¹$ä}hHC®î³)lÛ¹?f]Þí\'ŸÖB÷®=}kîð±#š`Iw}’FZË¹»äóQÜÜœžk6æäî\'&€%¸»%Ž\reÞÎdVPp\\céI5éF\'Ïj±Ë<yànç¿µ\0~‡|¿:Áï\nÌÇ-&‘hÌsž|•õV?ì½v×¿³ÿ\0…¤$ZlëýÖeþ”PÍ_ðq@\'þÙñÀó£ 8äãÏð÷äŽ¯ã¦yÎÄ!²0Fr:çÿ\0¯Þ¿¼o‹–\Zoˆ<©išÆŸcªiZŒFÚîÎòž˜ØÈèÜG­7?ðWø ÷ƒôÏ_x§à”ö¾wgy¼/rßèRœð-d\'1ýÇÜPËŒÇ—¸$pZcÎØêk_Ç?µÏ†^\"—K×ôÛÍ2ö*cž2»ðq•={ƒŠÄ—\02@õ4\0­30ÆH¦ùêi( .ORkô‹þ\r_\'ürÍ·>Ôÿ\0Þ[Wæå~‚ÿ\0Á³:üz\'üM‰Ø+j>ÔmcçlFø÷á\r);!Å]ŸÒT÷-Ž?©¬ë‹¬rsF¥xŠè1Y7¤±ÉÇãU~Ä¢K»°¹9ÍeÞ^òq×ëL¾¼ søÖUÅñN3øÒ%Õé$ç\'ñ¬Ë›Ï˜ñúÓnu˜ü¿­fÜ_üÇÖ€syÉãõ¬Û«ÎNëN¸»Q¸±+ééŸAT€’b¡+ÎwcÓ¹ü¨\0ÿ\0Zç,>¹?Ê£ÜÇpNÐw…äôëŽsÚ¸/¿´×‚¿f\nÛêž1×­4ƒ|BØZ«oµ\'-áL¼®y\0(ÆHŒ×¡~ÄŸ²¿ÄÛoP·ñ‡Ä¨®þ|5IL¶>\nYBøŸ_P1š”èqgÜm¡f‘ÈMò\"‡Š@º?dÁìïáÅ”:”I“¦yäqÈ#Ž¿­ßhµð¶‘oa¦ÁmceiŠ\"…V8”\0ª0{\0°¢€Äš\Zëz\\7!ºqÐâ¾ý³emW^[–µ„²)c¸ÅsžÇ\"¾ÿ\0ªšž‹o¬[´W1¬Šýxæ€?œÿ\0Úgþ	ãŠ¡’\r_H‚þ%f;fŒ–\\ç•n«ø`{WÁßÿ\0à“ºÆ‹4ÓxZð¢¹l/2G~AßØÇ×úÌø—û!h7ŽGXÔ;m(8÷Í|Ïñsþ	±gzÒ¼\"íäz\0þHþ#ü\Zñ/Â;ö¶ñ‘y¦Èj»¦èœúàŽ¼W2Ñmîú~uý5ü^ÿ\0‚gGm-¼öú}Õ³üªŽŽ0z©â¾6øíÿ\0&ðO‹>Ó=’ønõá.›(3ÿ\0\\òS©ÏNÝhñvHÌx\'£r=këOø!O‹\"ðwüoáÌó40\\êoùhe³ž4OÅÙ\0¸®ßâçü—ÇÞG—Ã¾&ÐõÈÏåÝ+YÊ:õ#z±÷ÈúWŠøOà¿ÄoØ/ã×ƒ~ ê¾·º>×ìuÕŽ-J—-kp“ˆ÷YCyxÎÃ€z”¤®Š‹³¹ýRÞ^(`ZEó*P‘ƒ‚sùVUå÷\\:ü®ðWü[ðóV³#Ä\n<g£J]/S¶ÔÔc¶eç¹í]ž•ÿ\00~ÏšºžÃâœU¸Ò¡f_û÷3Ö…°™úuzKçó¬Ë»åMÅŽ==3_k?ðrìñl¬m×Ç…FJ¦¨ñé\0®Åðs‡Â«;iŸBøãýZt8E»6vQ?ßJËÿ\0|\Zb?Hæ¹>[;«\0;€Ä~x¬Ù®òÊH‚‚Œ¬?˜Çãï’~VÛÿ\0Áy>2þÐa×á¿Âi1\\7’—:ž¸/š3ï•‡?÷Ís¾1²ý¬?i¸¥‡Æÿ\0G…ô©ð$Ó<7‹}ëýß16°Ÿ™‡± Ñ?ÚGöãøUû,ÙÜKãoèöÛe¿³’Q5ü¼\nw†î\0:×Ã¿\Zà³þ<øá$úOÁŸŸ\rh³®ÅñOˆ‘^æqŸ¿\r®6®8#s0ã<Wð£þ	iáÿ\0ËÑ´TÔw\råü¾|»ÉÎî~Pzôçšú+Á°»Þ´k˜Êž@Ž:{P†~Æ¾“Kø¿¼Eu©øÇâÓ%ñ³!ººGÆ1	n\"\0\0QÀÈÎ	ö¿ö&ñÝüö–†c\",‘ªî,y$‚xý8í€N~Zø!ÿ\0íu¸µ—0€¿7ÞŸÏÞ¿A?fÿ\0Ù|¦ÛÉ<ŠÉ\ZŒÏ#·_Ö€=ÞÆW¹¶F\0çh©\"Q@GAE\0ÿÙ');

SET SQL_MODE=@OLD_SQL_MODE;