set   names utf8;
drop database if exists  limt;
create database limt charset=utf8;
use limt;
#影院服务和影院详情关联
create table M_server(
	M_id bigint primary key,
	M_tui varchar(100),
	M_gaiq varchar(100),
	M_yanj varchar(100),
	M_boby varchar(100),
	M_stop varchar(100)
);

insert  into M_server values(1,'未取票用户放映前1分钟可退票','未取票用户放映前1分钟可退票','
3D眼镜需要自备或前台购买。','每位观影用户可免费带领1名身高1.3米（含）以下儿童同场观影，在大人陪同下可免费观看3D，2D电影（无座位）','可停车');
insert into M_server values(2,'未取票用户放映前60分钟可退票','未取票用户放映前60分钟可退票','
无押金','每位观影用户可免费带领1名身高1.3米（含）以下儿童同场观影，该儿童观影与大','可停车');
insert into M_server values(3,'未取票用户放映前60分钟可退票','未取票用户放映前60分钟可退票','
免押金','1.3m以下儿童观看2D,3D电影免票，每个成年人仅','凭观影票根至检票口加2元可兑换1小时停车票');

#电影列表
create table move_row(
move_sid bigint primary key,
move_name varchar(20),  #电影名称
xiangkan varchar(1000), # 多少人想看
yugao  varchar(1000), 	#预售或在售
fenlei varchar(1000),   #预告片  热播   
people decimal(20,2),   #票房
move_juqing varchar(1000), #剧情简介
move_yinname varchar(1000), #英文名
move_music varchar(2000),
music_img varchar(1000),
move_musicZp varchar (2000),
musicZp_img varchar(1000),
move_musicPy varchar (2000),
musicPy_img varchar(1000),
move_type varchar(100),#电影分类
move_distrit varchar(100),#上映国家
move_img varchar(5000),#电影大图片
move_time varchar(500),  #上映时间
move_saray decimal(8,2), # 价格
move_momment decimal(2,1),# 电影评分
move_timelog decimal(8,2),#电影时长
move_samilimg varchar(1000)
	);
insert into move_row values(1,'斗罗大陆',null,'在售','热播',3251.95,'唐门外门弟子唐三，因偷学内门绝学为唐门所不容，跳崖明志时却发现没有死，反而以另外一个身份来到了另一个世界，一个属于武魂的世界，名叫斗罗大陆。这里没有魔法，没有斗气，没有武术，却有神奇的武魂。这里的每个人，在自己六岁的时候，都会在武魂殿中令武魂觉醒。武魂有动物，有植物，有器物，武魂可以辅助人们的日常生活。而其中一些特别出色的武魂却可以用来修炼并进行战斗，这个职业，是斗罗大陆上最为强大也是最荣耀的职业“魂师”。 小小的唐三在圣魂村开始了他的魂师修炼之路，并萌生了振兴唐门的梦想。当唐门暗器来到斗罗大陆，当唐三武魂觉醒，他能否在这片武魂的世界再铸唐门的辉煌？','','蔡天楠','move_img/caitn.jpg','蔡天楠','move_img/caitn.jpg','蔡天楠','move_img/caitn.jpg','剧情 动画 奇幻 ','中国大陆','move_img/30.jpg','2018-01-20','39.9','9.5',20,'move_img/30_1.jpg,move_img/30_2.jpg,move_img/30_3.jpg,move_img/30_4.jpg,move_img/30_5.jpg,move_img/30_6.jpg,move_img/30_7.jpg,move_img/30_8.jpg,move_img/30_9.jpg,move_img/30_10.jpg');
insert into move_row values(2,'妙先生',31663496,'预售','预告片',0,'电影《妙先生》以“善恶抉择”为核心，打造一个“杀好人救坏人”的离奇世界：金色彼岸花生长在至善之人心中，却会激发周围人的恶念，带来灾难。丁果为拯救世人，走上了消灭彼岸花的道路。然而，每一次拯救都意味着一个善良的人做出牺牲。','Mr.Miao','周深','move_img/zhoushen.jpg','不思凡','move_img/busifan.jpg','邢姣虹','move_img/xingjh.jpg',' 动漫  奇幻  冒险 ','中国大陆','move_img/2.jpg','2020-07-31','29.9','8.9',89,'move_img/2_1.jpg,move_img/2_2.jpg,move_img/2_3.jpg,move_img/2_4.jpg,move_img/2_5.jpg,move_img/2_6.jpg,move_img/2_7.jpg,move_img/2_8.jpg,move_img/2_9.jpg,move_img/2_10.jpg');
insert into move_row values(3,'哈利.波特与魔法石',null,'在售','热播',615.16,'哈利波特是一个孤儿，从小寄养在姨妈家，受尽欺凌。但就在哈利11岁生日的时候，他意外收到了霍格沃茨学院的入学通知书。哈利从该学院派来接他的巨人海格口中得知，这是一间魔法学院，并得知了自己的身世，原来哈利的父母都是伟大的魔法师，在对付伏地魔的战斗中双双献身，唯有哈利幸免于难。哈利进入霍格沃茨后，表现出了超乎想象的飞行天赋，得到麦格教授的推荐进入了格兰芬多的魁地奇球队。另一方面，哈利发现霍格沃茨学院内有一股黑暗势力似乎在暗暗滋长，揭开谜团的关键就在有凶恶的三头犬守护的房间内。哈利、罗恩和赫敏三个好朋友决定探个究竟s。','Harry Potter and the Philosopher’s Sto','Todd Arnow，迈克尔·巴尔纳森，大卫·海曼，克里斯，哥伦布，马克·雷德克里夫','move_img/Todd.jpg,move_img/maikr.jpg,move_img/dawei.jpg,move_img/gelb.jpg,move_img/make.jpg','皮特·安东尼，David Arch 约翰，威廉姆斯，莱斯利，布利克斯，兰迪科博','move_img/pite.jpg,move_img/david.jpg,move_img/weilms.jpg,move_img/laisl.jpg,move_img/bulks.jpg,move_img/lanbkd.jpg','西蒙·金，约翰·威廉姆斯','move_img/ximeng.jpg,move_img/yuehan.jpg',' 奇幻  冒险 ','美国 英国','move_img/1.jpg','2020-02-14','32.9','8.6',152,'move_img/1_1.jpg,move_img/1_2.jpg,move_img/1_3.jpg,move_img/1_4.jpg,move_img/1_5.jpg,move_img/1_6.jpg,move_img/1_7.jpg,move_img/1_8.jpg,move_img/1_9.jpg,move_img/1_10.jpg');
insert into move_row values(4,'八佰',null,'在售','热播',361.65,'淞沪会战后期，中国军队第88师524团团附谢晋元临危受命，率领400余名官兵（外界称“八百壮士”），坚守闸北四行仓库，掩护主力部队撤退。“八百壮士”抱定为国捐躯的决心，以弹丸之地抗击侵略者，激战四昼夜，打退敌人十余次疯狂进攻。其战斗事迹之英勇，爱国气节之豪壮，振奋国人，震惊世界。','The Eight Hundred','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 剧情  战争 历史 ','中国大陆','move_img/31.jpg','2020-08-31','29.9','9.2',147,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');

insert into move_row values(5,'姜子牙',21512814,'预售','预告片',0,'动画电影《姜子牙》的故事发生于封神大战后。姜子牙率领众神伐纣，赢得封神大战胜利，以为可以唤回世间安宁。然而，一切并未结束。一个偶然，姜子牙发现了原来“封神大战”之下酝酿着更大的阴谋。姜子牙开始踏上探寻真相的旅途......','JIANG ZIYA：Legend Of Deification','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','动画 动作 冒险','中国大陆','move_img/men4.png','2020-08-31','29.9','9.1',110,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');

insert into move_row values(6,'我和我的家乡',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/men.png','2020-10-22','29.9','8.6',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');

insert into move_row values(7,'夺冠',64535611,'预售','预告片',0,'2008年8月15日，北京奥运会女排比赛，中国VS美国。戴着金丝框眼镜的郎平（巩俐 饰）坐在美国队教练席上，大气沉稳，目光如电；中国队教练陈忠和（黄渤 饰）站在场边，全神贯注，面带笑容。陈忠和望向郎平，目光充满深意，不断经过的人影遮蔽了他的视线，中国女排三十余年的沉浮图景被缓缓打开……','中国女排','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情','中国大陆','move_img/men7.png','2021-01-31','29.9','9.2',135,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(8,'急先锋',3265512,'预售','预告片',0,'中国商人秦国立在英国惨遭雇佣兵组织“北极狼”绑架，秦的女儿Fareeda（徐若晗 饰）也卷入其中，遭到追杀。千钧一发之际，急先锋国际安保团队成为他们唯一的希望，由总指挥唐焕庭（成龙饰）带领雷震宇（杨洋饰）、张凯旋（艾伦饰）、弥雅（母其弥雅饰）、神雕（朱正廷饰）等组成的急先锋行动小组，上天入地，辗转全球各地施展惊险营救。解救人质的过程中，竟发现“北极狼”背后的犯罪集团还策划了一场惊天密谋……','Vanguard','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 动作 冒险  喜剧 ','中国大陆','move_img/men8.png','2020-12-01','29.9','9.1',108,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(9,'一点就到家',null,'在售','热播',384.98,'魏晋北（刘昊然 饰）、彭秀兵（彭昱畅 饰）、李绍群（尹昉 饰）三个性格迥异的年轻人从大城市回到云南千年古寨，机缘巧合下共同创业，与古寨“格格不入”的他们用真诚改变了所有人，开启了一段非常疯狂、纯真的梦想之旅。','Coffee or Tea','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 青春 ','中国大陆','move_img/men9.png','2021-06-02','29.9','8.8',97,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(10,'再见吧！少年',1658436,'预售','预告片',0,'少年王新阳（荣梓杉 饰）的生活因突患白血病而彻底改变。面对未知的明天，新阳依然乐观坚强，努力实现青春梦想，做不被打败的自己。','Let Life Be Beautiful','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 剧情 ','中国大陆','move_img/men_10.png','2021-09-02','29.9','9.4',119,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(11,'厉鬼将映',null,'在售','热播',152.46,'电影放映员谦（德·辰塔维西 饰）因沉迷大麻而陷入经济危机，毒瘾发作之际甚至不惜典当女友诵（Punch-Vorakarn Rojjanavatchra 饰）的手表，为此诵愤然离开。决心洗心革面的谦此时仍在泥潭之中，为了还上欠款，他被黑道人物逼迫盗录还未上映的新片，以谋取不义之财。某晚，谦和好友育在影院盗录一部即将上映的恐怖片《厉鬼》。中途打瞌睡的谦醒来，却发现育已不见踪影，最后竟发现育的尸体出现在影片之中。不久后他得知，影片根据一个真实事件改编，片中死于吊颈的扶桑嫂竟然确有其人。他和诵共同走访案件发生地，却无意中得知了影片拍摄过程中的秘密……','โปรแกรมหน้า วิญญาณอาฆาต','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','惊悚 恐怖 ','多平台上线','move_img/men11.png','2021-02-12','29.9','8.3',95,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(12,'唐人街探案',null,'在售','热播',86.82,'影片讲述了一对表叔侄被卷入离奇黄金凶杀案，多方追捕下到处逃窜途中发生的搞笑故事。天赋异禀的结巴少年秦风（刘昊然 饰）警校落榜，被姥姥遣送泰国找远房表舅“唐人街第一神探”唐仁（王宝强 饰）散心。不想一夜花天酒地后，唐仁沦为离奇凶案嫌疑人，不得不和秦风亡命天涯…… 穷追不舍的警探黄兰登（陈赫 饰）；无敌幸运的警探坤泰（肖央 饰）；穷凶极恶、阴差阳错的“匪帮三人组”；高深莫测的“唐人街教父”等悉数登场！他们能否在躲避警察追捕、匪帮追杀、黑帮围剿的同时，在短短七天内，完成找到失落的黄金、查明真凶、为自己洗清罪名这些逆天的任务？','Detective Chinatown','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','喜剧 动作 悬疑','中国大陆','move_img/men12.png','2020-02-02','29.9','8.9',135,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(13,'西游记大圣归来',null,'在售','热播',99.12,'大闹天宫后四百年多年，齐天大圣成了一个传说，在山妖横行的长安城，孤儿江流儿（林子杰 配音）与行脚僧法明（吴文伦 配音）相依为命，小小少年常常神往大闹天宫的孙悟空（张磊 配音）。 有一天，山妖（吴迪 配音）来劫掠童男童女，江流儿救了一个小女孩，惹得山妖追杀，他一路逃跑，跑进了五行山，盲打误撞地解除了孙悟空的封印。悟空自由之后只想回花果山，却无奈腕上封印未解，又欠江流儿人情，勉强地护送他回长安城。 一路上八戒（刘九容 配音）和白龙马也因缘际化地现身，但或落魄或魔性大发，英雄不再。妖王（童自荣 配音）为抢女童，布下夜店迷局，却发现悟空法力尽失，轻而易举地抓走了女童。悟空不愿再去救女童，江流儿决定自己去救。 日全食之日，在悬空寺，妖王准备将童男童女投入丹炉中，江流儿却冲进了道场，最后一战开始了……','Monkey King: Hero is Back','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','动画 动作 奇幻','中国大陆','move_img/men13.png','2020-04-16','29.9','8.7',89,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(14,'我的机器人女友',9945663,'预售','预告片',0,'次郎是个寂寞的大学生，到了生日也没人为他祝福。次郎跑到百货公司给自 己买二十岁生日的礼物，他碰到了一个好像刚从火灾现场逃出来的可爱女孩，女孩随手挑了件连衣裙穿上，没付钱就扬长而去。接着，次郎在餐厅独自吃饭时，又碰到了她。“今天也是我生日啊！”女孩拉着次郎一起庆祝生日。次郎被她搞得团团转，还被她打，两人因为吃霸王餐给警察狂追。次郎的人生中从来没有过这么刺激的夜晚。然而，当次郎坠入爱河、深深被这个不按理出牌的漂亮女孩吸引时，她却突然不知所踪。 一年后，次郎在21岁生日那天居然又遇到了她！然而，她似乎发生了微妙的变化。一个持枪男子袭击餐厅，在次郎即将被子弹击中的瞬间，女孩化解了次郎的危机。女孩说出了真相，原来她是来自未来的机器人——一直忘不了20岁生日那场邂逅的未来的次郎，制作了一个和那个女孩完全一样的机器人送到过去，想要改变自己不走运的人生。由此，不知所措的次郎开始了和机器人女友朝夕相处的奇妙生活。 　　机器人女孩不仅在家里照顾次郎，而且还去大学和打工的地方看次郎。她利用特殊能力屡屡帮助次郎，还把他带往过去享受快乐的时光旅行。次郎渐渐爱上了她，爱上了这个没有情感的机器人。为了让她嫉妒，次郎故意和别的女孩约会，然而机器人根本不懂什么是嫉妒。绝望的次郎一气之下把机器人女孩赶出了家门，随即独自一人伤心不已。 一天，大地震突然爆发，次郎坠楼濒危。在混乱的局面中，次郎与机器人女孩意外重逢。他们之间的爱创作出奇迹，战胜了次郎死于事故的命运，超越了生物人与机器人的隔阂。','僕の彼女はサイボーグ','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','喜剧 爱情 科幻','中国大陆','move_img/men14.png','2020-05-23','29.9','9.2',115,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(15,'在一起',9916593,'预售','预告片',0,'他有个外号，叫Mr.Cool（甄子丹 饰），其实他也想笑，可惜是真的笑不出来，笑只会给他带来剧痛。“阿唐在哪？”少女乔（陈妍希 饰）一直在找，“你是谁？”她一直在问。只有她见过他的笑容，可惜她就像一个只有50M记忆体的外展记忆卡，随时会忘记。阿仔（柯震东 饰）是窃听组最年轻的警察，每天都能听到这个城市很多人的心跳，但陪伴他的，只有猪扒饭。吃咖喱猪扒饭的那天，他遇到了穿PRADA的胜男（Angelababy 饰），吃日式猪扒饭的那天，他和她玩起了只玩浪漫不玩爱情的游戏。7天以后，他在窃听器里听到了她的声音。爱情里最浪漫的三个字，不是我爱你，而是在一起，他们能在一起吗？','Together','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','爱情','中国大陆','move_img/men15.png','2020-01-26','29.9','9.1',99,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(16,'四年二班',998993,'预售','预告片',0,'影片讲述了几位来自不同家庭环境、不同性格的同班同学，在学习和生活上遇到困难时，互相帮助、互相鼓励、共同成长的故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 儿童','中国大陆','move_img/men16.png','2020-04-06','29.9','9.3',84,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(17,'菊次郎的夏天',null,'在售','热播',92.97,'暑假到来，自幼丧父的小学三年级学生正男（关口雄介 饰），如今和奶奶生活在一起，暑假特别无聊。他拿出母亲从外地寄回的信，准备自己一个人去爱知县丰桥市看望母亲。 邻居阿姨（ 岸本加世子 饰）发现后，决定帮正男完成心愿。她拿出一笔钱做为旅费，还安排游手好闲的老公菊次郎（北野武 饰）陪伴正男一起踏上寻母之途。可是在第一天，菊次郎就把老婆给的钱全部输光，于是两个人只好步行前往爱知。 一路搭顺风车，惹了不少麻烦后，菊次郎终于带着正男到了他母亲的家，但小男孩却十分沮丧。归途中，菊次郎努力安慰他，二人过得十分愉快，夏天就这么过去了。','菊次郎の夏','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/men17.png','2020-03-02','29.9','8.2',120,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');





create table move_lunbo (
	sid int primary key,
	lunbo varchar(1000)  #轮播图1
);
insert into move_lunbo values(1,'move_img/index1.png');
insert into move_lunbo values(2,'move_img/index2.jpg');
insert into move_lunbo values(3,'move_img/men1.png');
insert into move_lunbo values(4,'move_img/lunbo4.png');




#影院列表
create table move_name(
sid bigint primary key,
name varchar(20),
address varchar(50),
phone int,
move_desc varchar(200),
img varchar(50),
famillc bigint,
 foreign key(famillc) references M_server(M_id)

);

insert into move_name values(1,'万达影院','雁塔区万达广场','029-8964052/029-89640501','雁塔区韦一街中路22号','move_img/2.jpg',1);
insert into move_name values(2,'香港未来主题','金沙国际购物广场','029-99564/029-9456231','雁塔区长安中路65号小寨金莎国际(海港城北侧)','move_img/2.jpg',3);
insert into move_name values(3,'中国飞尚国际影城','新城区','029-65655511','新城区长乐西路益田假日世界7层（地铁1号线朝阳门站B出口）','move_img/2.jpg',2);
insert into move_name values(4,'GGV影城','未央区','029-65596511','未央区三桥新街1076号华润万象城4层','move_img/2.jpg',2);
insert into move_name values(5,'文投国标影城','新城区','029-6961511','新城区朝阳门外长乐西路128号华东万悦城7层','move_img/2.jpg',3);
insert into move_name values(6,'奥斯卡国际影城','长安区','029-6963644','长安区西长安街与府东一路交叉口东南角城南新天地南区负一层（长安新区政府斜对面）','move_img/2.jpg',3);
insert into move_name values(7,'花溪湾电影城','雁塔区','029-6965046','雁塔区丈八东路118号（电子正街）','move_img/2.jpg',1);
insert into move_name values(8,'麦西影城','雁塔区','029-6965046','新城区解放路欢乐城西三路口（盒马生鲜隔壁电梯7F）','move_img/2.jpg',2);
insert into move_name values(9,'首映国际影城','新城区','029-69659806','新城区金花路十字苏宁东侧西北国际茶城4楼','move_img/move_yinyuan7.jpg,move_img/move_yinyuan7_1.jpg,move_img/move_yinyuan7_2.jpg,move_img/move_yinyuan7_3.jpg',3);


#影院座位


create table setdown(
	sid int,
	row1 varchar(50),
	row2 varchar(50),
	row3 varchar(50),
	row4 varchar(50),
	row5 varchar(50),
	row6 varchar(50),
	row7 varchar(50),
	row8 varchar(50),
	row9 varchar(50),
	row10 varchar(50),
	row11  varchar(50),
	row12 varchar(50),
	row13 varchar(50),
	row14 varchar(50),
	row15 varchar(50),
	row16 varchar(50),
	row17 varchar(50),
	row18 varchar(50),
	row19 varchar(50),
	row20 varchar(50),
	row21 varchar(50),
	row22 varchar(50),
	row23 varchar(50)
);
insert into setdown values(1,'','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','','','','','','','','','');
insert into setdown values(2,'','','','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','','','','','','','','');
insert into setdown values(3,'','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','','','','','','','','','','');
insert into setdown values(4,'','','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','','','','','','','','');
insert into setdown values(5,'','','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','','','','','','','','','');
insert into setdown values(7,'','','','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','','','','','');

insert into setdown values(8,'','','','','','','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','','','','','','','');
insert into setdown values(9,'','','','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','','','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','');
insert into setdown values(10,'','','','','','','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','','','','','');
insert into setdown values(11,'','','','','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','','','','','','');


#演职人员
create table actor(
	sid bigint,
	move_write varchar(200),#编剧/导演
	writeimg varchar(200),#编剧图片
	actor varchar(200),#演员
	actor_shi varchar(200),#饰演
	actorimg varchar(200),#演员图片
	actor_music varchar(200),#音乐编辑
	music varchar(200),#音乐编辑图片
	producer varchar(200),#影视制片人
	producer_img varchar(200),#影视制片人图片
	small_img varchar(200), #小图片
	famillc bigint, #绑定电影id外键约束
	 foreign key(famillc) references  move_row(move_sid)
);
insert into actor values(1,'沈乐平','move_img/shenlp.jpg','张琦','饰：六岁唐三','move_img/zhangqi.jpg','蔡天楠','move_img/caitn.jpg','蔡天楠','move_img/caitn.jpg','move_img/dou_1.png',1);
insert into actor values(2,'','','沈磊','饰：前世唐三','move_img/shenlei.jpg','唐家三少','move_img/tangjss.jpg','','','move_img/dou_2.png',1);
insert into actor values(3,'','','程玉珠','饰：老杰克','move_img/chenyuzhu.jpg','黄志平','move_img/huangdb.jpg','','','move_img/dou_3.png',1);
insert into actor values(4,'','','黄翔宇','','move_img/huangxy.jpg','','','','','move_img/dou_4.png',1);
insert into actor values(5,'','','王肖兵','饰：唐大长老','move_img/wangxb.jpg','','','','','move_img/dou_5.png',1);
insert into actor values(6,'','','倪康','饰：唐二长老','move_img/nikang.jpg','','','','','move_img/dou_6.png',1);
insert into actor values(7,'李凌霄','move_img/lilinx.jpg','小连杀','饰：丁果','move_img/xiaolx.jpg','三弦','move_img/sanxian.jpg','周深','move_img/zhoushen.jpg','move_img/miao_1.jpg',2);
insert into actor values(8,'','','宝木中阳','饰：赶鸭人','move_img/baomzy.jpg','不思凡','move_img/busifan.jpg','','','move_img/miao_2.png',2);
insert into actor values(9,'','','王晓倩','饰：殷凤','move_img/wangxq.jpg','','','','','move_img/miao_3.png',2);
insert into actor values(10,'','','朱蓉蓉','饰：云香','move_img/zhurr.jpg','','','','','move_img/miao_4.png',2);
insert into actor values(11,'','','林强','饰：梁衍','move_img/linqiang.jpg','','','','','move_img/miao_5.png',2);






#优惠活动
create table coupon(
con_id bigint,
move_type varchar(200),
cut decimal(9,2),
target decimal(9,2)
);


insert into coupon values(1,'满减',3.00,15.00);
insert into coupon values(2,'满减',10.00,40.00);
insert into coupon values(3,'满减',20.00,60.00);
insert into coupon values(4,'打折',0.9,50.00);
insert into coupon values(5,'打折',0.85,100.00);

select * from  move_name;

