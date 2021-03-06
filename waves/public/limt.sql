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
	M_stop varchar(100),
	M_img varchar(100)
);

insert  into M_server values(1,'未取票用户放映前1分钟可退票','未取票用户放映前1分钟可退票','
3D眼镜需要自备或前台购买。','每位观影用户可免费带领1名身高1.3米（含）以下儿童同场观影，在大人陪同下可免费观看3D，2D电影（无座位）','可停车','move_img/move_yinyuan7.jpg');
insert into M_server values(2,'未取票用户放映前60分钟可退票','未取票用户放映前60分钟可退票','
无押金','每位观影用户可免费带领1名身高1.3米（含）以下儿童同场观影，该儿童观影与大','可停车','move_img/move_yinyuan7_1.jpg');
insert into M_server values(3,'未取票用户放映前60分钟可退票','未取票用户放映前60分钟可退票','
免押金','1.3m以下儿童观看2D,3D电影免票，每个成年人仅','凭观影票根至检票口加2元可兑换1小时停车票','move_img/move_yinyuan7_3.jpg');

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
insert into move_row values(3,'哈利.波特与魔法石',null,'在售','热播',615.16,'哈利波特是一个孤儿，从小寄养在姨妈家，受尽欺凌。但就在哈利11岁生日的时候，他意外收到了霍格沃茨学院的入学通知书。哈利从该学院派来接他的巨人海格口中得知，这是一间魔法学院，并得知了自己的身世，原来哈利的父母都是伟大的魔法师，在对付伏地魔的战斗中双双献身，唯有哈利幸免于难。哈利进入霍格沃茨后，表现出了超乎想象的飞行天赋，得到麦格教授的推荐进入了格兰芬多的魁地奇球队。另一方面，哈利发现霍格沃茨学院内有一股黑暗势力似乎在暗暗滋长，揭开谜团的关键就在有凶恶的三头犬守护的房间内。哈利、罗恩和赫敏三个好朋友决定探个究竟s。','Harry Potter and the Philosopher’s Sto','Todd Arnow，迈克尔·巴尔纳森，大卫·海曼，克里斯，哥伦布，马克·雷德克里夫','move_img/Todd.jpg,move_img/maikr.jpg,move_img/dawei.jpg,move_img/gelb.jpg,move_img/make.jpg','皮特·安东尼，David Arch 约翰','move_img/pite.jpg,move_img/david.jpg,move_img/weilms.jpg,move_img/laisl.jpg,move_img/bulks.jpg,move_img/lanbkd.jpg','西蒙·金，约翰·威廉姆斯','move_img/ximeng.jpg,move_img/yuehan.jpg',' 奇幻  冒险 ','美国 英国','move_img/1.jpg','2020-02-14','32.9','8.6',152,'move_img/1_1.jpg,move_img/1_2.jpg,move_img/1_3.jpg,move_img/1_4.jpg,move_img/1_5.jpg,move_img/1_6.jpg,move_img/1_7.jpg,move_img/1_8.jpg,move_img/1_9.jpg,move_img/1_10.jpg');
insert into move_row values(4,'八佰',null,'在售','热播',361.65,'淞沪会战后期，中国军队第88师524团团附谢晋元临危受命，率领400余名官兵（外界称“八百壮士”），坚守闸北四行仓库，掩护主力部队撤退。“八百壮士”抱定为国捐躯的决心，以弹丸之地抗击侵略者，激战四昼夜，打退敌人十余次疯狂进攻。其战斗事迹之英勇，爱国气节之豪壮，振奋国人，震惊世界。','The Eight Hundred','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 剧情  战争 历史 ','中国大陆','move_img/31.jpg','2020-08-31','29.9','9.2',147,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');

insert into move_row values(5,'姜子牙',21512814,'预售','预告片',0,'动画电影《姜子牙》的故事发生于封神大战后。姜子牙率领众神伐纣，赢得封神大战胜利，以为可以唤回世间安宁。然而，一切并未结束。一个偶然，姜子牙发现了原来“封神大战”之下酝酿着更大的阴谋。姜子牙开始踏上探寻真相的旅途......','JIANG ZIYA：Legend Of Deification','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','动画 动作 冒险','中国大陆','move_img/men4.png','2020-08-31','29.9','9.1',110,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');

insert into move_row values(6,'我和我的家乡',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/men.png','2020-10-22','29.9','8.6',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');

insert into move_row values(7,'夺冠',64535611,'预售','预告片',0,'2008年8月15日，北京奥运会女排比赛，中国VS美国。戴着金丝框眼镜的郎平（巩俐 饰）坐在美国队教练席上，大气沉稳，目光如电；中国队教练陈忠和（黄渤 饰）站在场边，全神贯注，面带笑容。陈忠和望向郎平，目光充满深意，不断经过的人影遮蔽了他的视线，中国女排三十余年的沉浮图景被缓缓打开……','中国女排','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情','中国大陆','move_img/men7.png','2021-01-31','29.9','9.2',135,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(8,'急先锋',3265512,'预售','预告片',0,'中国商人秦国立在英国惨遭雇佣兵组织“北极狼”绑架，秦的女儿Fareeda（徐若晗 饰）也卷入其中，遭到追杀。千钧一发之际，急先锋国际安保团队成为他们唯一的希望，由总指挥唐焕庭（成龙饰）带领雷震宇（杨洋饰）、张凯旋（艾伦饰）、弥雅（母其弥雅饰）、神雕（朱正廷饰）等组成的急先锋行动小组，上天入地，辗转全球各地施展惊险营救。解救人质的过程中，竟发现“北极狼”背后的犯罪集团还策划了一场惊天密谋……','Vanguard','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 动作 冒险  喜剧 ','中国大陆','move_img/men8.png','2020-12-01','29.9','9.1',108,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(9,'一点就到家',null,'在售','热播',384.98,'魏晋北（刘昊然 饰）、彭秀兵（彭昱畅 饰）、李绍群（尹昉 饰）三个性格迥异的年轻人从大城市回到云南千年古寨，机缘巧合下共同创业，与古寨“格格不入”的他们用真诚改变了所有人，开启了一段非常疯狂、纯真的梦想之旅。','Coffee or Tea','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 青春 ','中国大陆','move_img/men9.png','2021-06-02','29.9','8.8',97,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(10,'再见吧！少年',1658436,'预售','预告片',0,'少年王新阳（荣梓杉 饰）的生活因突患白血病而彻底改变。面对未知的明天，新阳依然乐观坚强，努力实现青春梦想，做不被打败的自己。','Let Life Be Beautiful','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg',' 剧情 ','中国大陆','move_img/men_10.png','2021-09-02','29.9','9.4',119,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(11,'厉鬼将映',null,'在售','热播',152.46,'电影放映员谦（德·辰塔维西 饰）因沉迷大麻而陷入经济危机，毒瘾发作之际甚至不惜典当女友诵（Punch-Vorakarn Rojjanavatchra 饰）的手表，为此诵愤然离开。决心洗心革面的谦此时仍在泥潭之中，为了还上欠款，他被黑道人物逼迫盗录还未上映的新片，以谋取不义之财。某晚，谦和好友育在影院盗录一部即将上映的恐怖片《厉鬼》。中途打瞌睡的谦醒来，却发现育已不见踪影，最后竟发现育的尸体出现在影片之中。不久后他得知，影片根据一个真实事件改编，片中死于吊颈的扶桑嫂竟然确有其人。他和诵共同走访案件发生地，却无意中得知了影片拍摄过程中的秘密……','โปรแกรมหน้า วิญญาณอาฆาต','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','惊悚 恐怖 ','多平台上线','move_img/men11.png','2021-02-12','29.9','8.3',95,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(12,'唐人街探案',null,'在售','热播',86.82,'影片讲述了一对表叔侄被卷入离奇黄金凶杀案，多方追捕下到处逃窜途中发生的搞笑故事。天赋异禀的结巴少年秦风（刘昊然 饰）警校落榜，被姥姥遣送泰国找远房表舅“唐人街第一神探”唐仁（王宝强 饰）散心。不想一夜花天酒地后，唐仁沦为离奇凶案嫌疑人，不得不和秦风亡命天涯…… 穷追不舍的警探黄兰登（陈赫 饰）；无敌幸运的警探坤泰（肖央 饰）；穷凶极恶、阴差阳错的“匪帮三人组”；高深莫测的“唐人街教父”等悉数登场！他们能否在躲避警察追捕、匪帮追杀、黑帮围剿的同时，在短短七天内，完成找到失落的黄金、查明真凶、为自己洗清罪名这些逆天的任务？','Detective Chinatown','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','喜剧 动作 悬疑','中国大陆','move_img/men12.png','2020-02-02','29.9','8.9',135,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(13,'西游记大圣归来',null,'在售','热播',99.12,'大闹天宫后四百年多年，齐天大圣成了一个传说，在山妖横行的长安城，孤儿江流儿（林子杰 配音）与行脚僧法明（吴文伦 配音）相依为命，小小少年常常神往大闹天宫的孙悟空（张磊 配音）。 有一天，山妖（吴迪 配音）来劫掠童男童女，江流儿救了一个小女孩，惹得山妖追杀，他一路逃跑，跑进了五行山，盲打误撞地解除了孙悟空的封印。悟空自由之后只想回花果山，却无奈腕上封印未解，又欠江流儿人情，勉强地护送他回长安城。 一路上八戒（刘九容 配音）和白龙马也因缘际化地现身，但或落魄或魔性大发，英雄不再。妖王（童自荣 配音）为抢女童，布下夜店迷局，却发现悟空法力尽失，轻而易举地抓走了女童。悟空不愿再去救女童，江流儿决定自己去救。 日全食之日，在悬空寺，妖王准备将童男童女投入丹炉中，江流儿却冲进了道场，最后一战开始了……','Monkey King: Hero is Back','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','动画 动作 奇幻','中国大陆','move_img/men13.png','2020-04-16','29.9','8.7',89,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(14,'我的机器人女友',9945663,'预售','预告片',0,'次郎是个寂寞的大学生，到了生日也没人为他祝福。次郎跑到百货公司给自 己买二十岁生日的礼物，他碰到了一个好像刚从火灾现场逃出来的可爱女孩，女孩随手挑了件连衣裙穿上，没付钱就扬长而去。接着，次郎在餐厅独自吃饭时，又碰到了她。“今天也是我生日啊！”女孩拉着次郎一起庆祝生日。次郎被她搞得团团转，还被她打，两人因为吃霸王餐给警察狂追。次郎的人生中从来没有过这么刺激的夜晚。然而，当次郎坠入爱河、深深被这个不按理出牌的漂亮女孩吸引时，她却突然不知所踪。 一年后，次郎在21岁生日那天居然又遇到了她！然而，她似乎发生了微妙的变化。一个持枪男子袭击餐厅，在次郎即将被子弹击中的瞬间，女孩化解了次郎的危机。女孩说出了真相，原来她是来自未来的机器人——一直忘不了20岁生日那场邂逅的未来的次郎，制作了一个和那个女孩完全一样的机器人送到过去，想要改变自己不走运的人生。由此，不知所措的次郎开始了和机器人女友朝夕相处的奇妙生活。 　　机器人女孩不仅在家里照顾次郎，而且还去大学和打工的地方看次郎。她利用特殊能力屡屡帮助次郎，还把他带往过去享受快乐的时光旅行。次郎渐渐爱上了她，爱上了这个没有情感的机器人。为了让她嫉妒，次郎故意和别的女孩约会，然而机器人根本不懂什么是嫉妒。绝望的次郎一气之下把机器人女孩赶出了家门，随即独自一人伤心不已。 一天，大地震突然爆发，次郎坠楼濒危。在混乱的局面中，次郎与机器人女孩意外重逢。他们之间的爱创作出奇迹，战胜了次郎死于事故的命运，超越了生物人与机器人的隔阂。','僕の彼女はサイボーグ','张大军','move_img/zhangdj.jpg','朱问久，樊路远，李洁，李晓萍','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','喜剧 爱情 科幻','中国大陆','move_img/men14.png','2020-05-23','29.9','9.2',115,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(15,'在一起',9916593,'预售','预告片',0,'他有个外号，叫Mr.Cool（甄子丹 饰），其实他也想笑，可惜是真的笑不出来，笑只会给他带来剧痛。“阿唐在哪？”少女乔（陈妍希 饰）一直在找，“你是谁？”她一直在问。只有她见过他的笑容，可惜她就像一个只有50M记忆体的外展记忆卡，随时会忘记。阿仔（柯震东 饰）是窃听组最年轻的警察，每天都能听到这个城市很多人的心跳，但陪伴他的，只有猪扒饭。吃咖喱猪扒饭的那天，他遇到了穿PRADA的胜男（Angelababy 饰），吃日式猪扒饭的那天，他和她玩起了只玩浪漫不玩爱情的游戏。7天以后，他在窃听器里听到了她的声音。爱情里最浪漫的三个字，不是我爱你，而是在一起，他们能在一起吗？','Together','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','爱情','中国大陆','move_img/men15.png','2020-01-26','29.9','9.1',99,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(16,'四年二班',998993,'预售','预告片',0,'影片讲述了几位来自不同家庭环境、不同性格的同班同学，在学习和生活上遇到困难时，互相帮助、互相鼓励、共同成长的故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 儿童','中国大陆','move_img/men16.png','2020-04-06','29.9','9.3',84,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(17,'菊次郎的夏天',null,'在售','热播',92.97,'暑假到来，自幼丧父的小学三年级学生正男（关口雄介 饰），如今和奶奶生活在一起，暑假特别无聊。他拿出母亲从外地寄回的信，准备自己一个人去爱知县丰桥市看望母亲。 邻居阿姨（ 岸本加世子 饰）发现后，决定帮正男完成心愿。她拿出一笔钱做为旅费，还安排游手好闲的老公菊次郎（北野武 饰）陪伴正男一起踏上寻母之途。可是在第一天，菊次郎就把老婆给的钱全部输光，于是两个人只好步行前往爱知。 一路搭顺风车，惹了不少麻烦后，菊次郎终于带着正男到了他母亲的家，但小男孩却十分沮丧。归途中，菊次郎努力安慰他，二人过得十分愉快，夏天就这么过去了。','菊次郎の夏','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/men17.png','2020-03-02','29.9','8.2',120,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(18,'我和我的家乡',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/men.png','2020-10-22','29.9','8.7',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(19,'金刚川',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia1.png','2020-10-22','29.9','8.3',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(20,'喜宝',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia2.png','2020-10-22','29.9','8.1',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(21,'七号房的礼物',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia3.png','2020-10-22','29.9','8.5',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(22,'最可爱的人',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia4.png','2020-10-22','29.9','8.3',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(23,'月半爱丽丝',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia5.png','2020-10-22','29.9','8.4',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(24,'呼吸',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia6.png','2020-10-22','29.9','8.9',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(25,'82号古宅',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia7.png','2020-10-22','29.9','8.7',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(26,'天道王',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia8.png','2020-10-22','29.9','8.3',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(27,'网络凶铃',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia9.png','2020-10-22','29.9','9.3',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(28,'小妇人',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia10.png','2020-10-22','29.9','9.2',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(29,'秀美人生',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia11.png','2020-10-22','29.9','8.1',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(30,'信念一生',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia12.png','2020-10-22','29.9','8.3',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');
insert into move_row values(31,'以寡敌众',null,'在售','热播',258.34,'电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。','','张大军','move_img/zhangdj.jpg','朱问久，樊路远','move_img/zhuwj.jpg,move_img/fanly.jpg,move_img/lijie.jpg,move_img/lixp.jpg','曹郁','move_img/caoyu.jpg','剧情 喜剧','中国大陆','move_img/tianjia13.png','2020-10-22','29.9','9.6',153,'move_img/31_1.jpg,move_img/31_2.jpg,move_img/31_3.jpg,move_img/31_4.jpg,move_img/31_5.jpg,move_img/31_6.jpg,move_img/31_7.jpg,move_img/31_8.jpg,move_img/31_9.jpg,move_img/31_10.jpg');





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
	row12 varchar(50)
);
insert into setdown values(1,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(2,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(3,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(4,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(5,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(6,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(7,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(8,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(9,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png');
insert into setdown values(10,'move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_1.png');
insert into setdown values(11,'','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','');
insert into setdown values(12,'','','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','move_img/zuo_1.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_0.png','move_img/zuo_1.png','');

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



#嘉欣
CREATE TABLE jd_business(
bid INT,
b_name VARCHAR(20),
b_place VARCHAR(10),
b_address VARCHAR(50),
b_score DECIMAL(5,1),
b_evaluate VARCHAR(20),
b_service_1 VARCHAR(50),
b_service_2 VARCHAR(50),
b_service_3 VARCHAR(50),
b_service_4 VARCHAR(50),
b_tag_1 VARCHAR(10),
b_tag_2 VARCHAR(10),
b_tag_3 VARCHAR(10),
b_type VARCHAR(10),
b_mg VARCHAR(200),
b_phone VARCHAR(20),
b_intro VARCHAR(200),
b_pic VARCHAR(200),
p_name_1 VARCHAR(20),
p_name_2 VARCHAR(20),
p_name_3 VARCHAR(20),
p_fancility VARCHAR(50),
p_pic VARCHAR(200)
);
INSERT INTO jd_business VALUES('1','7天酒店·西安理工大学长乐公园地铁站店','[交通大学/兴庆公园]','碑林区互助路26号（互助路与东二环路交叉口西200米路南，中国银行隔壁）','4.7','很好','无线上网','有线上网','收费停车','行李寄存','订','安心住','停车场','经济型','2014年装修2013年开业','029-89335700/029-89330777','本店每2小时一次对酒店公共区域进行消毒，前台配备红外线测温仪、免洗消毒洗手液供您使用。疫情期间，勤洗手，戴口罩。 本店入住即提供睡前牛奶！全体员工热诚欢迎您的光临！','/jd_img/qt.jpg','标准双床房','标准大床房','高级双床房','上网wifi 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('2','穆居酒店式公寓(钟鼓楼回民街店)','[钟鼓楼/回民街]','莲湖区西羊市54号（近回民街、钟鼓楼）','4.7','很好','无线上网','有线上网','收费停车','行李寄存','订','安心住','近地铁','经济型','2014年装修2013年开业','029-89335700/029-89330777','本店每2小时一次对酒店公共区域进行消毒，前台配备红外线测温仪、免洗消毒洗手液供您使用。疫情期间，勤洗手，戴口罩。 本店入住即提供睡前牛奶！全体员工热诚欢迎您的光临！','/jd_img/mj.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/mj_b.jpg');
INSERT INTO jd_business VALUES('3','布丁酒店(西安钟楼北大街地铁站店)','[钟鼓楼/回民街]','新城区西七路291号西北设计院内（近回民街，北大街地铁站D出口）','4.9','很好','无线上网','有线上网','收费停车','行李寄存','订','安心住','溜溜住','经济型','2017年装修2016年开业','029-68765333-802','酒店位于西安市中心，距离钟楼、鼓楼、回民街仅一站路程，步行8分钟，距离大雁塔、网红唐人街仅15分钟车程；酒店周边交通便利，配套设施齐全，开元商城、新世界百货、世纪金花、SKP应有尽有，距离明城墙仅2分钟即可到达，酒店位于钟楼北大街西七路291号，西北设计研究院内，闹钟取静，地铁1号和2号线北大街站B口出。是您商务出行及旅游下榻不错的选择.','/jd_img/bd.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/bd_b.jpg');
INSERT INTO jd_business VALUES('4','优瑞商旅酒店(西安交大南门铁一中店)','[交通大学/兴庆公园]','碑林区建东街东段2号（建东街与乐居场交汇处西南角，距交大西门300米）','4.9','很好','无线上网','有线上网','行李寄存','餐厅','订','安心住','溜溜住','舒适型','2017年装修 2015年开业','029-63609888','酒店提供市话、光纤接入、每间客房独立8兆网速、WIFi覆盖、提供早餐。 酒店全体员工秉承『优质服务，宾客至上』的精神，竭诚为您提供舒适、周到的服务，专业的管理团队定会带给您超值的入住感受。','/jd_img/yr.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/yr_b.jpg');
INSERT INTO jd_business VALUES('5','乐巢酒店','[泾渭开发区]','高陵区长庆东路10号（金陵广场东侧）','4.9','很好','无线上网','有线上网','行李寄存','餐厅','订','安心住','溜溜住','舒适型','2017年装修 2015年开业','029-63609888','酒店提供市话、光纤接入、每间客房独立8兆网速、WIFi覆盖、提供早餐。 酒店全体员工秉承『优质服务，宾客至上』的精神，竭诚为您提供舒适、周到的服务，专业的管理团队定会带给您超值的入住感受。','/jd_img/lc.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/lc_b.jpg');
INSERT INTO jd_business VALUES('6','唐圣阁大酒店','[钟鼓楼/回民街]','莲湖区习武园8号（近省农业厅，距地铁站1号线洒金桥站B口500米）','4.8','很好','无线上网','有线上网','有停车场','行李寄存','订','安心住','预约发票','三星级','2020年装修 2007年开业','029-87315999','位于西安市莲湖区习武园8号，距火车站10分钟车程，距离西安国际机场40分钟车程。','/jd_img/tsg.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/tsg_b.jpg');
INSERT INTO jd_business VALUES('7','速8酒店(西安韦曲南地铁站店)','[长安区/城南]','长安区南长安街199号','5','很好','无线上网','行李寄存','热水洗浴','电吹风','订','安心住','溜溜住','经济型','2019年装修 2019年开业','029-85951328/18091837572','速8酒店（西安韦曲南地铁站店）位于南长安街与皂河路交汇处东南角，有停车场，购物广场、超市等分布酒店周边。交通便利酒店对面均是各路车站，北边是长安汽车站；西行车程10分钟左右就是西安政法学院、西安邮电学院、西安师范大学、体育馆等高等院校，学生居多，车程半小时左右就能到达西安主城区，火车、汽车、飞机、地铁等交通工具丰富，出行便捷，位置优越；卫生干净，环境优雅，期待您的光临。','/jd_img/su8.jpg','高级大床房','标准大床房','特价双床房','上网宽带 公共卫浴 无窗户 可住2人','/jd_img/s8_b.jpg');
INSERT INTO jd_business VALUES('8','锦江之星(西安钟楼北门地铁站店)','[北关/龙首村]','新城区北关正街19号（华润万家对面，近地铁安远门站C出口）','4.8','很好','无线上网','有线上网','行李寄存','餐厅','订','安心住','溜溜住','经济型','2020年装修 2013年开业','029-84506666','得天独厚的地理位置，全市一家真正地铁口上的酒店，地铁二号线安远门C出口即到，和钟楼，鼓楼，回民街地铁两站直达无缝对接！酒店的每位员工热忱期待您的光临！','/jd_img/jjzx.jpg','高级大床房','标准大床房','精品双床房','上网宽带+wifi 独立卫浴 无窗户 可住2人','/jd_img/jjzx_b.jpg');
INSERT INTO jd_business VALUES('9','途客中国酒店(西安和平门地铁站店)','[李家村赛格电脑城]','碑林区雁塔北路78号（华润万家对面，地铁4号线和平门站B出口西50米）','4.9','很好','无线上网','有停车场','会议室','早餐','订','安心住','溜溜住','高档型','2018年装修 2018年开业','029-68531919','途客中 国（on the way)以“旅行中的生活方式“作为品牌经营理念，并以“城市与人的关系“作为品牌经营方向的观念型品牌酒店。是一群爱消遣、爱旅游、爱文字具有小资情结客户群里的理想选择。途客HOTEL在设计上更强调对旅客心理的安抚作用。无论是灯光的处理，还是工作人员的服装风格，无一不在向进门投宿的顾客传递着「回家」的视觉语言。途客中 国对细节尤其关注，以及每月一换的睡前与旅途阅读本，这就是您值得体验的观念型酒店，途客HOTEL作为新晋品牌，致力于为一些爱旅游、喜欢设计感、个性张扬的旅客们提供舒适、宁静的休息环境。提供便捷、安心的客房服务。为您及您的家人、朋友、伴侣带来幸福，温暖窝心的照顾，是酒店的服务宗旨。酒店有标准房、大床房，提供24小时热水、无线WIFI全覆盖、商务中心、健身房、咖啡吧、早餐厅、会议室、IP电视等配套设施、酒店将用专业的水准，敬业的态度，让每位宾客享受到物图所值的享受，是您外出商务办公，家居旅游的理想选择，我们将恭候您的光临！','/jd_img/tk.jpg','高级大床房','特惠大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('10','希岸酒店(西安高新区太白南路地铁站店)','[高新技术开发区]','雁塔区太白南路正茂广场1楼（距地铁3号线太白南路站C1出口200米）','4.8','很好','无线上网','有线上网','有停车场','接送服务','订','新开业/新装修','停车场','高档型','2019年装修 2019年开业','029-81501155/029-81501299','酒店是铂涛集团旗下一个定位为时尚轻奢跨界精品的酒店品牌，以“小幸感，宠你开始”为核心价值主张，倡导一种旅途中的新生活态度，无论何时，出游何地，选择一个贴心、懂自己的休憩空间。 本店处于西安市高新区繁华地带（太白南路甲字6号），距地铁3号线太白南路地铁C1出口步行3分钟即到，附近购物中心（世纪金花、国美电器,赛格国际购物中心等中高端商场）；距离较近的大学有西安电子科技大学、西安文理学院、西安培华学院、西安工业大学（友谊校区）、美术学院等都可步行或骑行到达。历史博物馆、大雁塔、大唐芙蓉园等仅15分钟车程，距离西安咸阳机场驾车55分钟车程。 酒店将宠爱文化渗透每个角落，从进门开始有专人提拉行李、迎接您的是热毛巾和特色花茶……有高颜值小姐姐提供贴心的管家服务，带您感受独特的味道；酒店每间房配备独立WiFi，同时还配有行李寄存，叫醒服务等。我们不为其他，只为将您狠狠宠爱，希望您在这里的每一天，都是您精彩的绽放。 无论是出差、旅行、小憩，酒店都是您上佳的选择，我们诚挚期待您的光临！','/jd_img/xa.jpg','高级大床房','标准大床房','商务房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('11','汉庭(西安钟鼓楼回民街店)','[交通大学/兴庆公园]','莲湖区西大街439号（浙商银行院内，儿童医院东100米）','4.9','很好','无线上网','有停车场','餐厅','接送服务','订','安心住','停车场','舒适型','2018年装修 2015年开业','029-87368899','酒店出门即可看见明城墙西门，步行经过都城隍庙，到小吃一条街回民街只需要10分钟，距西安市标志性景点钟楼，鼓楼只有3站路程，距永宁门，碑林博物馆4站路程。','/jd_img/qt.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('12','西安加利利连锁酒店(高新软件园店)','[高新技术开发区]','雁塔区高新开发区唐兴路8号（枫叶新都市南门正对面，陕鼓北门）','4.8','很好','无线上网','有线上网','有停车场','行李寄存','订','安心住','溜溜住','经济型','2015年装修 2009年开业','029-88191777','加利利快捷酒店遵循标准化、程序化和持续化的经营理念，恪守“干净、友好、安全、标准”的服务原则，旨在营造一种全新的现代生活方式，既是宾客出差在外便捷的随身“办公室”，又是宾客旅途中温馨的“家”。加利利快捷酒店以“现代、舒适、超值”的特色、简约的设计风格和豪华的卫浴设施，竭力为宾客营造时尚、典雅的酒店氛围、舒适的休闲环境和方便的商务会所，至始至终关注每位宾客的入住感受，让宾客的商务行程轻松便捷。','/jd_img/jll.jpg','高级大床房','单人房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('13','之茂酒店(钟楼回民街洒金桥地铁站店)','[钟鼓楼/回民街]','莲湖区习武园1号（距1号线洒金桥地铁站B出口400米）','4.8','很好','无线上网','有线上网','免费停车','行李寄存','订','好睡眠 零压房','预约发票','舒适型','2017年装修 2014年开业','029-87368888','酒店内共计140 间客房，根据北欧酒店理念打造，具有独特的装修风格，至今沿用酒店所配备的冰箱，保险箱，卫星电话、中央空调、美标整体卫浴、金可儿床垫等设施，整体给人简洁，明亮的风格，是大多旅行者和商旅人士的之地。同时我们秉承“东方礼、尊茂情”的待客理念，致力于为每一位下榻酒店的人士给予优厚的服务。酒店各楼层均装饰有陕西特色的观赏区，如：剪纸墙、古城老片、皮影墙、兵马俑展示玩偶等诸多具有陕西特色的元素。同时酒店内设有多功能会议室，能同时容纳200人不同形式的会议。餐厅内设有早中晚餐，早餐特别添加了陕西小吃，如：锅盔、凉皮等食物。满足您味蕾上挑剔的要求。 尊敬的客人：酒店全体员工将以饱满的热情和专业的服务，全力以赴为您的旅程增添美好的回忆。','/jd_img/zm.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('14','H酒店·西安回民街北大街地铁站精品店','[钟鼓楼/回民街]','莲湖区莲湖路55号（莲湖公园北门斜对面，北大街地铁站A2出口西300米）','5','很好','无线上网','有线上网','有停车场','餐厅','订','安心住','溜溜住','高档型','2018年装修 2017年开业','029-88882508/18220599213','【分店优势】 网络：高速光纤，全WIFI覆盖。 床品布草：高品质床垫及床上用品。 特色房型：装修轻奢时尚、配备智能客控系统此外，多功能会议室、茶餐厅、24小时便利店、自助洗衣房，中餐晚餐点餐及停车服务，缔造商旅生活多维空间的舒适享受； 我在西安等您，我在这里等您，带您穿越五千年历史长河；我们恭候您的到来。','/jd_img/h.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('15','莫泰酒店(西安西京医院交通大学店)','[交通大学/兴庆公园]','碑林区兴庆路23号（兴庆公园东门对面）','4.9','很好','无线上网','有线上网','收费停车','行李寄存','订','溜溜住','即时确认','经济型','2013年装修 2013年开业','029-68660999-9','本店位于西安市碑林区兴庆路中段23号（兴庆公园东门对面）酒店地理位置优越，周边高校林立环境清幽。酒店正对面为兴庆宫公园，是在唐黄家园林兴庆宫遗址上修建而成：毗邻百年知名高校-西安交通大学：东临西安理工大学：向北仅两站路则为知名的第四军医大学西京医院：向南距离景区大雁塔，曲江遗址公园驱车只需15分钟：向西驱车10分钟即可到达世界保存完整的城墙-明城墙东门：酒店交通便捷，门前及周边有多条公交线路可直达地铁一号线康复路站`地铁3号线咸宁路站。轻工批发市场·火车站丶钟楼丶鼓楼丶大雁塔丶大唐芙蓉园丶市中心等处。酒店设施齐全，装修风格时尚简约，客房提供无线WIFI丶24小时热水丶无线电视等设施。','/jd_img/mt.jpg','精品大床房','标准大床房','高级套房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('16','桔子酒店(西安高新区锦业路店)','[高新管委会/绿地会展中心]','雁塔区丈八一路3号旺都大厦C座5楼（丈八一路与锦业路交叉口东北角）','4.8','很好','免费停车','餐厅','行李寄存','','订','安心住','主题酒店','高档型','2018年装修 2018年开业','029-81126123','本店位于西安高新区丈八一路（锦业路与丈八一路交叉口东北角），临近高新管委会、都市之门、绿地笔克会展中心、SOHO、汇鑫IBC、绿地缤纷荟、韩国街、万达广场等商务商圈；周边配套设施丰富，交通便利，距离丈八四路绕城高速出口约1.2公里；紧邻丈八一路地铁站、绿地城市候机楼； 本店属于华住集团旗下中高端设计师品牌，集团旗下18个品牌其中包含索菲特、美爵、诺富特、美居、桔子水晶、桔子、CitiGO、全季、宜必思、汉庭等品牌。酒店是国外知名设计师设计，设计师用“秦岭之巅、秦岭雅颂”作为酒店的设计主题，结合西安璀璨的历史文化为设计元素，通过现代的设计方式解读西安文化特色。客房隔音系统由清华声学所设计，保证您一夜安静睡眠、舒适、简约。房内无线网络全覆盖，配以音响系统支持蓝牙、Iphone、Ipad、电动窗帘等高科技设备，确保您拥有一个安静舒适的休憩空间。','/jd_img/jz.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('17','贝壳酒店(西安钟鼓楼美食街永宁门地铁站店)','[南门（城中心）]','碑林区朱雀大街北段与邮电北巷交汇处西100米路北（国税局斜对面）','5','很好','无线上网','行李寄存','热水洗浴','电吹风','订','安心住','即时确认','','2019年装修 2019年开业','029-85248366','本店新开业，我们用优质的服务，干净，整洁，舒适的环境给您一次满意的住宿体验，欢迎您的光临，期待您的下次光临！','/jd_img/bk.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('18','轻住联盟·美客酒店(钟鼓楼回民街骡马市店)','[钟鼓楼/回民街]','碑林区东大街万星综合楼4楼（与北柳巷交汇处南80米，民生百货东侧）','4.9','很好','无线上网','有线上网','热水洗浴','电吹风','订','近地铁','停车场','','2019年装修 2014年开业','029-87278686','【位置交通] 酒店坐落于西安市钟楼东大街北柳巷28号，位于东大街路口处，与钟楼、鼓楼、回民街等地标景点相交辉映，步行十分钟左右即可到达，南邻南门明城墙，均可步行前往游览。酒店门口公交地铁出行便利，处于地铁2号线C出口，四通八达。酒店楼下也有停车位提供。 [酒店房型] 本店设有精致特惠大床房（廊窗），舒适温馨大床房，悦享阳光大床房；温馨特惠双床（廊窗），悦享阳光双床房，数码亲子家庭房。 [服务设施] 做精致温馨型快捷酒店，内装简约大方，温馨舒适，设有二十四小时热水，WIFI全覆盖，独立挂机空调安全便捷方便使用。酒店带给您的是给您家人一般的服务体验，干净整洁的卫生服务，贴心温暖的前台服务，给您的外出旅行带来舒心的陪伴。 [周边配套] 本店位于西安市中心钟楼，处于市中心繁华街区东大街上，周边设有民生百货商场，开元商城，世纪金花，南门SKP等热门商圈，酒店对面设有曲江国际影城。酒店楼下更是网红餐饮打卡店密集，即有金龙咖喱，明洞炸酱等超人气网红餐厅，也有老米家泡馍，秦豫肉夹馍等老字号名小吃。距离美食天堂回民街更是近在咫尺，让您在本店住的舒心，玩的开心，吃的畅快！酒店旨在提供一种便捷现代的生活方式，既是外出旅人的温馨小家，又是年轻人休息小憩的空间。酒店以“绿色、舒适、超值”的经营理念，专注让每位客人拥有一个美好的居住体验。','/jd_img/mk.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('19','西安华美达兆瑞酒店','[钟鼓楼/回民街]','新城区北大街79号（近西华门大街）','4.5','很好','无线上网','有线上网','免费停车','餐厅','订','近地铁','近火车站','高档型','2017年装修 2011年开业','029-87283999','华美达兆瑞酒店是以现代时尚为主题的智能化、数字化、信息化和多功能环保为一体的豪华商务会议酒店。宾客站在客房内就可凭窗远眺，大唐盛茂尽收眼底，大大的方便了宾客游览众多著名的历史文化古迹，是休闲、旅游、度假的理想居/jd_img/停之地。华美达兆瑞酒店自助餐引入世界多国豪华料理，将自助餐提升至奢华境界，食材新鲜，口味鲜美，就餐环境优雅，是聚会洽谈的绝佳选择','/jd_img/hmd.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('20','花间堂·与鹿酒店','[长安区]','长安区沣河东路818号诗经里景区25号','4.8','很好','无线上网','有线上网','热水洗浴','电吹风','订','安心住','情侣约会','舒适型','2019年装修 2020年开业','029-89505111/18109280470','千年汉学美景“关关雎鸠，在河之洲。窈窕淑女，君子好逑……” 尽在这，酒店坐落于诗经里南25号，与拥有浓重汉文化气息的诗经里仅有一墙之隔。整体的布局错落有致、视野开阔。院内种植了西安常见的紫荆花。早春时节，紫荆闻春而绽，如蔷薇般的颜色，犹如翩翩而舞的蝴蝶，满树嫣红。夏秋时节，散布在园中，可以看见芦苇花在阳光下熠熠生活，“田园牧歌”正是此时的很好写照。住宿区域多房型及3幢独栋别墅可满足不同客户需求选择，房间布局完全以现代居住形式规划空间，因园区建筑位置分布不同而面对各色院景，全幅落地窗成全自然之色，阳光下的美景尽显眼帘。酒店整体无边泳池，婚礼草坪，茶室，私人影院，茴香餐厅，会议室，宴会厅及院景的住宿空间一应俱全，为困倦于城市喧嚣的客人营造宁静、祥和的心灵港湾。','/jd_img/hjt.jpg','高级大床房','特惠单人房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('21','麗枫酒店(西安钟楼店)','[钟鼓楼/回民街]','碑林区骡马市步行街46号（近钟楼地铁站C出口，距兴正元广场20米）','5','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','预约发票','高档型','2020年装修 2018年开业','029-81100999/17719516630','本店是铂涛集团旗下力推的中高端连锁酒店，以薰衣草为主题，香氛文化和酒店结合，倡导“多一点自在”生活哲学。通过对睡眠系统，洗浴系统，智能系统，服务系统的深度刻画，为商旅客人提供自在舒适的住宿体验。 酒店地处古城繁华的核心地带西安钟楼骡马市步行街内，毗邻钟楼、鼓楼、回民街、古城墙等景点，步行五分钟即可到达。距西安北站30分钟即可达到，距离兵马俑、大唐芙蓉园，大唐不夜城的美景驾车1小时即可达到，地理位置优越、交通便利、周边旅游、购物商场、商务写字楼一应俱全。客房位于酒店5—6层，每个房间都配备有独有的慕思床垫、定制洗护用品、沐浴音乐、香薰仪、空气净化器、冰柜等、独立WIFI等，让每位入住的客人都有种回家的感觉，期待您的光临！ 铂涛集团加入【阳光诚信联盟】，作为铂涛集团旗下的中端连锁品牌，您阳光同行，诚信经营。','/jd_img/lf.png','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('22','西安中兴和泰酒店','[高新管委会/绿地会展中心]','雁塔区高新区唐延南路10号（唐延南路与南三环十字南300米路西中兴产业园）','4.7','很好','无线上网','有线上网','热水洗浴','电吹风','订','健身房','停车场','高档型','2019年装修 2013年开业','029-68776666','西安中兴和泰酒店位于西安高新技术产业开发区新商务中心核心地带，距离南三环和绕城高速仅200米之遥，交通十分便利。西安中兴和泰酒店是中兴通讯在陕西省高端商务酒店。拥有各类客房三百余间（套）房间。豪华客房尽显尊贵本色，房间均配有完备的现代化设施，特设行政楼层和会所，为商务人士提供了多项尊贵的礼遇。西安中兴和泰酒店有可容纳400人的大型宴会厅及15个中小型会议室，可举行各类大型的宴会及会议，所有会议室均配备先进的视听器材及完善的会议辅助设施，提供专业精准的“一站式服务”使您无后顾之忧。西安中兴和泰酒店餐饮设施齐全，中餐厅温馨、华丽并特聘名厨主理，高端粤菜与川、陕特色菜肴相搭配，为不同的客人提供不同的口味，中餐厅设有23个风格各异的精美包房，无论你是旅游度假还是商务宴请，都能让您在舒适的用餐环境中享受宾至如归的服务；在高贵典雅的西餐厅，我们将为您提供丰盛精美的异国风味自助式早餐，零点午餐和晚餐（无论您是在正式宴会还是休闲的聚会，它都将给您带来难忘的一天，打破美食疆界，体验多元珍撰。西安中兴和泰酒店同时拥有棋牌，桌球、乒乓、健身房等娱乐设施，给您带来休闲娱乐的全新概念，装修豪华的酒吧及KTV包房更是您享受都市夜生活的好去处，带给您非同一般的私密奢华新体验。','/jd_img/zxht.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('23','宜尚酒店(西安明城墙南门店)','[钟鼓楼/回民街]','莲湖区丰庆路39号御溪望城4号楼（近西北大学，水司汽车站对面）','5','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','停车场','高档型','2018年装修 2018年开业','029-65662111','本店位于西安市莲湖区丰庆路39号水司汽车站对面，处于西安古城墙西南角，距离城墙步行仅400米，距离知名的钟鼓楼商圈、回民街仅3KM，毗邻大唐西市、世纪金花、西稍门机场大巴，开元商城等大型购物中心，生活便利。酒店三分之一的房间，躺在床上即可观赏古城墙。从“型接”、“型吃”、“型玩”、“型饮”、“型睡”带来轻时尚、型生活”的住宿体验，打造出时尚、创意的格调酒店，诠释轻时尚北欧现代生活方式。在北欧设计风格的功能跨界大堂，咖啡吧的现磨咖啡，享受着轻松愉悦的自然服务；踏入灵动半开放空间设计的客房里，香薰洗护产品，卸下繁琐压力，感受品质带来的轻奢睡眠体验；时尚餐饮的自助早餐，开启元气满满的一天。酒店同时推出迎宾爽饮，食尚良宵，有情路早，清神白露，衣顺百顺等服务，希望您在这里有一个美好的体验，品味千年文化，领略故都风采。【景点路线介绍】钟鼓楼/回民街：马路正对面丰庆路东口公交站，坐15/43路至桥梓口站、广济街站下车，路北均为回民街区域，车程20分钟左右；至钟楼站下车即到，鼓楼位于钟楼西侧三百米，车程约为三十分钟；陕西省历史博物馆：①丰庆路东口站上车，521路直达陕西省历史博物馆站，下车即到②水司公交站上车，701路直达陕西省历史博物馆站，下车即到；大雁塔/大唐芙蓉园：向东步行约450米至水司站，乘坐21路公交车，沿线公交有大雁塔站/大唐芙蓉园站，下车即到；机场大巴：从丰庆路东口坐公交车K631路至西稍门站下车即到或出租车至西稍门下车；西安火车站：向东步行约450米至水司站，乘205/206路可直达终点火车站，下车处为火车站西广场路口；西安北客站（高铁站）：马路正对面丰庆路东口站公交①坐910/800路至南门站下车，转乘地铁2号线至西安北站②43/15路至钟楼站下车，转乘地铁2号线至西安北站。两条线路车程均为一小时左右。【早餐】酒店有48+2种自助营养早餐，早餐时间是7:00—10:00；【酒店特色】床垫、自助洗衣机、咖啡厅、酒吧；酒店禁止宠物入内。','/jd_img/ys.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('24','西安印力诺富特酒店','[北关/龙首村]','未央区未央路33号（紧邻印象城购物中心，近地铁二号线龙首原站D出口）','4.5','很好','无线上网','有线上网','免费停车','餐厅','订','近地铁','即时确认','舒适型','2016年装修 2016年开业','029-86268888','酒店位于龙首印象城商圈，与大型购物中心印象城相连，南依城墙，东近大明宫遗址公园。这里紧邻地铁2号线龙首原站，地铁直达钟楼、西安高铁北客站和西安咸阳机场。酒店客房拥有48寸电视、音乐播放器、空气净化机，让您安心舒适，同时7层的互动餐饮，和儿童体验区等独特而现代的服务设施将令你倍感舒适惬意。','/jd_img/ylnft.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('25','西安丽思卡尔顿酒店','[高新技术开发区]','雁塔区科技二路50号','4.8','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','溜溜住','豪华型','2019年装修 2019年开业','029-88818888','以典雅迷人的不凡品质铸就商务与休闲住宿新典范。如艺术般尽善尽美的待客之道是酒店一贯崇尚的服务理念，近苛刻的准则为宾客们打造非同凡响的豪华体验。','/jd_img/lsked.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('26','西安丽思卡尔顿酒店','[高新技术开发区]','雁塔区科技二路50号','4.8','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','溜溜住','豪华型','2019年装修 2019年开业','029-88818888','以典雅迷人的不凡品质铸就商务与休闲住宿新典范。如艺术般尽善尽美的待客之道是酒店一贯崇尚的服务理念，近苛刻的准则为宾客们打造非同凡响的豪华体验。','/jd_img/lsked.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('27','宜尚酒店(西安明城墙南门店)','[钟鼓楼/回民街]','莲湖区丰庆路39号御溪望城4号楼（近西北大学，水司汽车站对面）','5','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','停车场','高档型','2018年装修 2018年开业','029-65662111','本店位于西安市莲湖区丰庆路39号水司汽车站对面，处于西安古城墙西南角，距离城墙步行仅400米，距离知名的钟鼓楼商圈、回民街仅3KM，毗邻大唐西市、世纪金花、西稍门机场大巴，开元商城等大型购物中心，生活便利。酒店三分之一的房间，躺在床上即可观赏古城墙。从“型接”、“型吃”、“型玩”、“型饮”、“型睡”带来轻时尚、型生活”的住宿体验，打造出时尚、创意的格调酒店，诠释轻时尚北欧现代生活方式。在北欧设计风格的功能跨界大堂，咖啡吧的现磨咖啡，享受着轻松愉悦的自然服务；踏入灵动半开放空间设计的客房里，香薰洗护产品，卸下繁琐压力，感受品质带来的轻奢睡眠体验；时尚餐饮的自助早餐，开启元气满满的一天。酒店同时推出迎宾爽饮，食尚良宵，有情路早，清神白露，衣顺百顺等服务，希望您在这里有一个美好的体验，品味千年文化，领略故都风采。【景点路线介绍】钟鼓楼/回民街：马路正对面丰庆路东口公交站，坐15/43路至桥梓口站、广济街站下车，路北均为回民街区域，车程20分钟左右；至钟楼站下车即到，鼓楼位于钟楼西侧三百米，车程约为三十分钟；陕西省历史博物馆：①丰庆路东口站上车，521路直达陕西省历史博物馆站，下车即到②水司公交站上车，701路直达陕西省历史博物馆站，下车即到；大雁塔/大唐芙蓉园：向东步行约450米至水司站，乘坐21路公交车，沿线公交有大雁塔站/大唐芙蓉园站，下车即到；机场大巴：从丰庆路东口坐公交车K631路至西稍门站下车即到或出租车至西稍门下车；西安火车站：向东步行约450米至水司站，乘205/206路可直达终点火车站，下车处为火车站西广场路口；西安北客站（高铁站）：马路正对面丰庆路东口站公交①坐910/800路至南门站下车，转乘地铁2号线至西安北站②43/15路至钟楼站下车，转乘地铁2号线至西安北站。两条线路车程均为一小时左右。【早餐】酒店有48+2种自助营养早餐，早餐时间是7:00—10:00；【酒店特色】床垫、自助洗衣机、咖啡厅、酒吧；酒店禁止宠物入内。','/jd_img/ys.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('28','麗枫酒店(西安钟楼店)','[钟鼓楼/回民街]','碑林区骡马市步行街46号（近钟楼地铁站C出口，距兴正元广场20米）','5','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','预约发票','高档型','2020年装修 2018年开业','029-81100999/17719516630','本店是铂涛集团旗下力推的中高端连锁酒店，以薰衣草为主题，香氛文化和酒店结合，倡导“多一点自在”生活哲学。通过对睡眠系统，洗浴系统，智能系统，服务系统的深度刻画，为商旅客人提供自在舒适的住宿体验。 酒店地处古城繁华的核心地带西安钟楼骡马市步行街内，毗邻钟楼、鼓楼、回民街、古城墙等景点，步行五分钟即可到达。距西安北站30分钟即可达到，距离兵马俑、大唐芙蓉园，大唐不夜城的美景驾车1小时即可达到，地理位置优越、交通便利、周边旅游、购物商场、商务写字楼一应俱全。客房位于酒店5—6层，每个房间都配备有独有的慕思床垫、定制洗护用品、沐浴音乐、香薰仪、空气净化器、冰柜等、独立WIFI等，让每位入住的客人都有种回家的感觉，期待您的光临！ 铂涛集团加入【阳光诚信联盟】，作为铂涛集团旗下的中端连锁品牌，您阳光同行，诚信经营。','/jd_img/lf.png','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('29','莫泰酒店(西安西京医院交通大学店)','[交通大学/兴庆公园]','碑林区兴庆路23号（兴庆公园东门对面）','4.9','很好','无线上网','有线上网','收费停车','行李寄存','订','溜溜住','即时确认','经济型','2013年装修 2013年开业','029-68660999-9','本店位于西安市碑林区兴庆路中段23号（兴庆公园东门对面）酒店地理位置优越，周边高校林立环境清幽。酒店正对面为兴庆宫公园，是在唐黄家园林兴庆宫遗址上修建而成：毗邻百年知名高校-西安交通大学：东临西安理工大学：向北仅两站路则为知名的第四军医大学西京医院：向南距离景区大雁塔，曲江遗址公园驱车只需15分钟：向西驱车10分钟即可到达世界保存完整的城墙-明城墙东门：酒店交通便捷，门前及周边有多条公交线路可直达地铁一号线康复路站`地铁3号线咸宁路站。轻工批发市场·火车站丶钟楼丶鼓楼丶大雁塔丶大唐芙蓉园丶市中心等处。酒店设施齐全，装修风格时尚简约，客房提供无线WIFI丶24小时热水丶无线电视等设施。','/jd_img/mt.jpg','精品大床房','标准大床房','高级套房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('30','桔子酒店(西安高新区锦业路店)','[高新管委会/绿地会展中心]','雁塔区丈八一路3号旺都大厦C座5楼（丈八一路与锦业路交叉口东北角）','4.8','很好','免费停车','餐厅','行李寄存','','订','安心住','主题酒店','高档型','2018年装修 2018年开业','029-81126123','本店位于西安高新区丈八一路（锦业路与丈八一路交叉口东北角），临近高新管委会、都市之门、绿地笔克会展中心、SOHO、汇鑫IBC、绿地缤纷荟、韩国街、万达广场等商务商圈；周边配套设施丰富，交通便利，距离丈八四路绕城高速出口约1.2公里；紧邻丈八一路地铁站、绿地城市候机楼； 本店属于华住集团旗下中高端设计师品牌，集团旗下18个品牌其中包含索菲特、美爵、诺富特、美居、桔子水晶、桔子、CitiGO、全季、宜必思、汉庭等品牌。酒店是国外知名设计师设计，设计师用“秦岭之巅、秦岭雅颂”作为酒店的设计主题，结合西安璀璨的历史文化为设计元素，通过现代的设计方式解读西安文化特色。客房隔音系统由清华声学所设计，保证您一夜安静睡眠、舒适、简约。房内无线网络全覆盖，配以音响系统支持蓝牙、Iphone、Ipad、电动窗帘等高科技设备，确保您拥有一个安静舒适的休憩空间。','/jd_img/jz.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('31','莫泰酒店(西安西京医院交通大学店)','[交通大学/兴庆公园]','碑林区兴庆路23号（兴庆公园东门对面）','4.9','很好','无线上网','有线上网','收费停车','行李寄存','订','溜溜住','即时确认','经济型','2013年装修 2013年开业','029-68660999-9','本店位于西安市碑林区兴庆路中段23号（兴庆公园东门对面）酒店地理位置优越，周边高校林立环境清幽。酒店正对面为兴庆宫公园，是在唐黄家园林兴庆宫遗址上修建而成：毗邻百年知名高校-西安交通大学：东临西安理工大学：向北仅两站路则为知名的第四军医大学西京医院：向南距离景区大雁塔，曲江遗址公园驱车只需15分钟：向西驱车10分钟即可到达世界保存完整的城墙-明城墙东门：酒店交通便捷，门前及周边有多条公交线路可直达地铁一号线康复路站`地铁3号线咸宁路站。轻工批发市场·火车站丶钟楼丶鼓楼丶大雁塔丶大唐芙蓉园丶市中心等处。酒店设施齐全，装修风格时尚简约，客房提供无线WIFI丶24小时热水丶无线电视等设施。','/jd_img/mt.jpg','精品大床房','标准大床房','高级套房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('32','桔子酒店(西安高新区锦业路店)','[高新管委会/绿地会展中心]','雁塔区丈八一路3号旺都大厦C座5楼（丈八一路与锦业路交叉口东北角）','4.8','很好','免费停车','餐厅','行李寄存','','订','安心住','主题酒店','高档型','2018年装修 2018年开业','029-81126123','本店位于西安高新区丈八一路（锦业路与丈八一路交叉口东北角），临近高新管委会、都市之门、绿地笔克会展中心、SOHO、汇鑫IBC、绿地缤纷荟、韩国街、万达广场等商务商圈；周边配套设施丰富，交通便利，距离丈八四路绕城高速出口约1.2公里；紧邻丈八一路地铁站、绿地城市候机楼； 本店属于华住集团旗下中高端设计师品牌，集团旗下18个品牌其中包含索菲特、美爵、诺富特、美居、桔子水晶、桔子、CitiGO、全季、宜必思、汉庭等品牌。酒店是国外知名设计师设计，设计师用“秦岭之巅、秦岭雅颂”作为酒店的设计主题，结合西安璀璨的历史文化为设计元素，通过现代的设计方式解读西安文化特色。客房隔音系统由清华声学所设计，保证您一夜安静睡眠、舒适、简约。房内无线网络全覆盖，配以音响系统支持蓝牙、Iphone、Ipad、电动窗帘等高科技设备，确保您拥有一个安静舒适的休憩空间。','/jd_img/jz.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('33','贝壳酒店(西安钟鼓楼美食街永宁门地铁站店)','[南门（城中心）]','碑林区朱雀大街北段与邮电北巷交汇处西100米路北（国税局斜对面）','5','很好','无线上网','行李寄存','热水洗浴','电吹风','订','安心住','即时确认','','2019年装修 2019年开业','029-85248366','本店新开业，我们用优质的服务，干净，整洁，舒适的环境给您一次满意的住宿体验，欢迎您的光临，期待您的下次光临！','/jd_img/bk.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('34','轻住联盟·美客酒店(钟鼓楼回民街骡马市店)','[钟鼓楼/回民街]','碑林区东大街万星综合楼4楼（与北柳巷交汇处南80米，民生百货东侧）','4.9','很好','无线上网','有线上网','热水洗浴','电吹风','订','近地铁','停车场','','2019年装修 2014年开业','029-87278686','【位置交通] 酒店坐落于西安市钟楼东大街北柳巷28号，位于东大街路口处，与钟楼、鼓楼、回民街等地标景点相交辉映，步行十分钟左右即可到达，南邻南门明城墙，均可步行前往游览。酒店门口公交地铁出行便利，处于地铁2号线C出口，四通八达。酒店楼下也有停车位提供。 [酒店房型] 本店设有精致特惠大床房（廊窗），舒适温馨大床房，悦享阳光大床房；温馨特惠双床（廊窗），悦享阳光双床房，数码亲子家庭房。 [服务设施] 做精致温馨型快捷酒店，内装简约大方，温馨舒适，设有二十四小时热水，WIFI全覆盖，独立挂机空调安全便捷方便使用。酒店带给您的是给您家人一般的服务体验，干净整洁的卫生服务，贴心温暖的前台服务，给您的外出旅行带来舒心的陪伴。 [周边配套] 本店位于西安市中心钟楼，处于市中心繁华街区东大街上，周边设有民生百货商场，开元商城，世纪金花，南门SKP等热门商圈，酒店对面设有曲江国际影城。酒店楼下更是网红餐饮打卡店密集，即有金龙咖喱，明洞炸酱等超人气网红餐厅，也有老米家泡馍，秦豫肉夹馍等老字号名小吃。距离美食天堂回民街更是近在咫尺，让您在本店住的舒心，玩的开心，吃的畅快！酒店旨在提供一种便捷现代的生活方式，既是外出旅人的温馨小家，又是年轻人休息小憩的空间。酒店以“绿色、舒适、超值”的经营理念，专注让每位客人拥有一个美好的居住体验。','/jd_img/mk.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('35','西安华美达兆瑞酒店','[钟鼓楼/回民街]','新城区北大街79号（近西华门大街）','4.5','很好','无线上网','有线上网','免费停车','餐厅','订','近地铁','近火车站','高档型','2017年装修 2011年开业','029-87283999','华美达兆瑞酒店是以现代时尚为主题的智能化、数字化、信息化和多功能环保为一体的豪华商务会议酒店。宾客站在客房内就可凭窗远眺，大唐盛茂尽收眼底，大大的方便了宾客游览众多著名的历史文化古迹，是休闲、旅游、度假的理想居/jd_img/停之地。华美达兆瑞酒店自助餐引入世界多国豪华料理，将自助餐提升至奢华境界，食材新鲜，口味鲜美，就餐环境优雅，是聚会洽谈的绝佳选择','/jd_img/hmd.jpg','标准双床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('36','西安加利利连锁酒店(高新软件园店)','[高新技术开发区]','雁塔区高新开发区唐兴路8号（枫叶新都市南门正对面，陕鼓北门）','4.8','很好','无线上网','有线上网','有停车场','行李寄存','订','安心住','溜溜住','经济型','2015年装修 2009年开业','029-88191777','加利利快捷酒店遵循标准化、程序化和持续化的经营理念，恪守“干净、友好、安全、标准”的服务原则，旨在营造一种全新的现代生活方式，既是宾客出差在外便捷的随身“办公室”，又是宾客旅途中温馨的“家”。加利利快捷酒店以“现代、舒适、超值”的特色、简约的设计风格和豪华的卫浴设施，竭力为宾客营造时尚、典雅的酒店氛围、舒适的休闲环境和方便的商务会所，至始至终关注每位宾客的入住感受，让宾客的商务行程轻松便捷。','/jd_img/jll.jpg','高级大床房','单人房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('37','之茂酒店(钟楼回民街洒金桥地铁站店)','[钟鼓楼/回民街]','莲湖区习武园1号（距1号线洒金桥地铁站B出口400米）','4.8','很好','无线上网','有线上网','免费停车','行李寄存','订','好睡眠 零压房','预约发票','舒适型','2017年装修 2014年开业','029-87368888','酒店内共计140 间客房，根据北欧酒店理念打造，具有独特的装修风格，至今沿用酒店所配备的冰箱，保险箱，卫星电话、中央空调、美标整体卫浴、金可儿床垫等设施，整体给人简洁，明亮的风格，是大多旅行者和商旅人士的之地。同时我们秉承“东方礼、尊茂情”的待客理念，致力于为每一位下榻酒店的人士给予优厚的服务。酒店各楼层均装饰有陕西特色的观赏区，如：剪纸墙、古城老片、皮影墙、兵马俑展示玩偶等诸多具有陕西特色的元素。同时酒店内设有多功能会议室，能同时容纳200人不同形式的会议。餐厅内设有早中晚餐，早餐特别添加了陕西小吃，如：锅盔、凉皮等食物。满足您味蕾上挑剔的要求。 尊敬的客人：酒店全体员工将以饱满的热情和专业的服务，全力以赴为您的旅程增添美好的回忆。','/jd_img/zm.jpg','高级大床房','优惠大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('38','西安丽思卡尔顿酒店','[高新技术开发区]','雁塔区科技二路50号','4.8','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','溜溜住','豪华型','2019年装修 2019年开业','029-88818888','以典雅迷人的不凡品质铸就商务与休闲住宿新典范。如艺术般尽善尽美的待客之道是酒店一贯崇尚的服务理念，近苛刻的准则为宾客们打造非同凡响的豪华体验。','/jd_img/lsked.jpg','高级大床房','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('39','西安丽思卡尔顿酒店','[高新技术开发区]','雁塔区科技二路50号','4.8','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','溜溜住','豪华型','2019年装修 2019年开业','029-88818888','以典雅迷人的不凡品质铸就商务与休闲住宿新典范。如艺术般尽善尽美的待客之道是酒店一贯崇尚的服务理念，近苛刻的准则为宾客们打造非同凡响的豪华体验。','/jd_img/lsked.jpg','高级大床房','特价套间','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');
INSERT INTO jd_business VALUES('40','宜尚酒店(西安明城墙南门店)','[钟鼓楼/回民街]','莲湖区丰庆路39号御溪望城4号楼（近西北大学，水司汽车站对面）','5','很好','无线上网','有线上网','免费停车','餐厅','订','安心住','停车场','高档型','2018年装修 2018年开业','029-65662111','本店位于西安市莲湖区丰庆路39号水司汽车站对面，处于西安古城墙西南角，距离城墙步行仅400米，距离知名的钟鼓楼商圈、回民街仅3KM，毗邻大唐西市、世纪金花、西稍门机场大巴，开元商城等大型购物中心，生活便利。酒店三分之一的房间，躺在床上即可观赏古城墙。从“型接”、“型吃”、“型玩”、“型饮”、“型睡”带来轻时尚、型生活”的住宿体验，打造出时尚、创意的格调酒店，诠释轻时尚北欧现代生活方式。在北欧设计风格的功能跨界大堂，咖啡吧的现磨咖啡，享受着轻松愉悦的自然服务；踏入灵动半开放空间设计的客房里，香薰洗护产品，卸下繁琐压力，感受品质带来的轻奢睡眠体验；时尚餐饮的自助早餐，开启元气满满的一天。酒店同时推出迎宾爽饮，食尚良宵，有情路早，清神白露，衣顺百顺等服务，希望您在这里有一个美好的体验，品味千年文化，领略故都风采。【景点路线介绍】钟鼓楼/回民街：马路正对面丰庆路东口公交站，坐15/43路至桥梓口站、广济街站下车，路北均为回民街区域，车程20分钟左右；至钟楼站下车即到，鼓楼位于钟楼西侧三百米，车程约为三十分钟；陕西省历史博物馆：①丰庆路东口站上车，521路直达陕西省历史博物馆站，下车即到②水司公交站上车，701路直达陕西省历史博物馆站，下车即到；大雁塔/大唐芙蓉园：向东步行约450米至水司站，乘坐21路公交车，沿线公交有大雁塔站/大唐芙蓉园站，下车即到；机场大巴：从丰庆路东口坐公交车K631路至西稍门站下车即到或出租车至西稍门下车；西安火车站：向东步行约450米至水司站，乘205/206路可直达终点火车站，下车处为火车站西广场路口；西安北客站（高铁站）：马路正对面丰庆路东口站公交①坐910/800路至南门站下车，转乘地铁2号线至西安北站②43/15路至钟楼站下车，转乘地铁2号线至西安北站。两条线路车程均为一小时左右。【早餐】酒店有48+2种自助营养早餐，早餐时间是7:00—10:00；【酒店特色】床垫、自助洗衣机、咖啡厅、酒吧；酒店禁止宠物入内。','/jd_img/ys.jpg','亲子间','标准大床房','高级双床房','上网宽带 独立卫浴 无窗户 可住2人','/jd_img/qt_b.jpg');

#韦伟

create table MT_family(
	fid int NOT NULL auto_increment,
	title varchar(50) default NULL,
	num varchar(10) default NULL,
	image varchar(100) default NULL,
	site varchar(50) default NULL,
	detailed_address varchar(200) default NULL,
	price_per decimal(6,2) default NULL,
	phone varchar(20) default NULL,
	opening_hours varchar(50) default NULL,
	service varchar(10) default NULL,
	tingchewei varchar(10) default NULL,
	shangpin varchar(200) default NULL,
	leixing varchar(50) default NULL,
	 PRIMARY KEY (fid)
);
create table MT_laptop(
	lid int NOT NULL auto_increment,
	fid int default NULL,
	image varchar(100) default NULL,
	title varchar(50) default NULL,
	sold_out int default NULL,
	expiration_data varchar(20) default NULL,
	price decimal(4) default NULL,
	original_price decimal(4) default NULL,
	 PRIMARY KEY  (lid)
);
create table MT_pl(
	eid int NOT NULL auto_increment,
	uname varchar(20) default NULL,
	times varchar(100) default NULL,
	image varchar(200)default NULL,
	images varchar(200)default NULL,
	Family_fid int default NULL,
	Laptop_lid int default NULL,
	e_comment varchar(500) default NULL,
	 PRIMARY KEY  (eid)
);
create table MY_like(
	id int NOT NULL auto_increment,
	image varchar(100) default NULL,
	title varchar(100) default NULL,
	pingjia varchar(10) default NULL,
	dizhi varchar(50) default NULL,
	price decimal(6,1) default NULL,
	PRIMARY KEY  (id)
);
insert into MT_family values(1,'福帆百草堂·未沫足咖影院式（高新店）',1473,'/KTV-img/34.jpg','南二环西段','莲湖区二环南路西段东桃园商业楼5号楼5层（财富中心对面）','174','029-84200022','周一至周日 12:00-04:00','提供WiFi','停车位','55元/券，ROG区4小时(显卡2080S显示器2K165)，20元/券，休闲区晚场券，30元/券，休闲区畅玩4小时，10元/券，休闲区早场券，29元/券，［新人专享礼包］','足疗/按摩');

insert into MT_family values(2,'八叁幺深度密室体验馆（中贸广场店）',380,'/KTV-img/47.jpg','小雁塔/南稍门','碑林区南关正街中贸广场商场四楼',' 126',' 15529620767','周一至周日 全天','提供WiFi','停车位','9元/券，新客体验超值网费包（不限区域），30元/券，新办会员网费陆拾元+一杯肥宅快乐水，65元/券，金銮殿【不带床包间】5小时包时，30元/券，【宝光殿】区域3小时包时，45元/券，金銮殿【不带床包间】3小时包时','密室逃脱');

insert into MT_family values(3,'柯洛克机械式沉浸密室（小寨金莎店）',3227,'/KTV-img/18.jpg','小寨','雁塔区长安中路金莎国际商场7楼（美食城旁边）','87','4009003690','周一至周日 10:00-24:00','提供WiFi','停车位','9元/券，新客体验超值网费包（不限区域），30元/券，新办会员网费陆拾元+一杯肥宅快乐水，65元/券，金銮殿【不带床包间】5小时包时，30元/券，【宝光殿】区域3小时包时，45元/券，金銮殿【不带床包间】3小时包时','密室逃脱');

insert into MT_family values(4,'筋骨堂热敷推拿按摩（白桦林居店）',682,'/KTV-img/48.jpg','文景路','未央区白桦林居小区东门向南50米（白桦林居公寓西侧底商）','76','029-89613340','周一至周日 10:00-22:00','提供WiFi','停车位','9元/券，新客体验超值网费包（不限区域），30元/券，新办会员网费陆拾元+一杯肥宅快乐水，65元/券，金銮殿【不带床包间】5小时包时，30元/券，【宝光殿】区域3小时包时，45元/券，金銮殿【不带床包间】3小时包时','足疗/按摩');

insert into MT_family values(5,'机械师超级密室（小寨赛格国际购物中心店）',3208,'/KTV-img/19.jpg','小寨','雁塔区小寨东路赛格国际购物中心13层（小寨地铁D出口旁，麗枫酒店塔楼观光电梯入口）','71',' 029-89329550/17788059175',' 周一至周日 09:30-24:00','提供WiFi','停车位','49元/券，【会员优惠】52网费兑换券，19元/券，【新会员专享】80网费券+1杯饮品，60元/券，【会员优惠】50网费+一杯鱼奶茶，135元/券，【会员优惠】150网费兑换券，105元/券，【会员优惠】100网费+一杯冰摇柠檬红','密室逃脱');
insert into MT_family values(6,'绿树网咖（凤城六路店）',223,'/KTV-img/36.jpg','未央路沿线','未央区凤城六路与未央路交叉口往北旺景国际大厦5楼','24','4001578188',' 周一至周日 全天','提供WiFi','停车位','49元/券，【会员优惠】52网费兑换券，19元/券，【新会员专享】80网费券+1杯饮品，60元/券，【会员优惠】50网费+一杯鱼奶茶，135元/券，【会员优惠】150网费兑换券，105元/券，【会员优惠】100网费+一杯冰摇柠檬红','网吧网咖');
insert into MT_family values(7,'太初电竞（高新店）',646,'/KTV-img/39.jpg','高新软件园','高新区科技四路绿港花园北门','71',' 17791971892/18272513066',' 周一至周日 全天','提供WiFi','停车位','49元/券，【会员优惠】52网费兑换券，19元/券，【新会员专享】80网费券+1杯饮品，60元/券，【会员优惠】50网费+一杯鱼奶茶，135元/券，【会员优惠】150网费兑换券，105元/券，【会员优惠】100网费+一杯冰摇柠檬红','网吧网咖');
insert into MT_family values(8,'西说网咖（钟楼店）',511,'/KTV-img/37.jpg','钟楼/鼓楼','碑林区东柳巷24号','22',' 029-85550550/13279476953','  周一至周日 全天','提供WiFi','停车位','29元/券，网费(5小时)+耳机套湿巾+LOL特权+DNF特权，49元/券，网费(约9小时)+湿巾耳机套+钻石特权，100元/券，新会员专享上网套餐，40元/券，高端体验区夜机9小时（23点-8点），35元/券，休闲娱乐区夜机9小时（23点-8点）','网吧网咖');
insert into MT_family values(9,'莱昂电竞馆',3208,'/KTV-img/38.jpg','西稍门','莲湖区西安莲湖区丰庆路御溪望城4号楼4F','24',' 17802937296/15664778571','  周一至周日 全天','提供WiFi','停车位','29元/券，网费(5小时)+耳机套湿巾+LOL特权+DNF特权，49元/券，网费(约9小时)+湿巾耳机套+钻石特权，100元/券，新会员专享上网套餐，40元/券，高端体验区夜机9小时（23点-8点），35元/券，休闲娱乐区夜机9小时（23点-8点）','网吧网咖');
insert into MT_family values(10,'魔王电竞（小寨店）',3208,'/KTV-img/40.jpg','小寨','雁塔区长安中路西旅国际中心3楼','50','17391986632',' 周一至周日 全天','提供WiFi','停车位','29元/券，网费(5小时)+耳机套湿巾+LOL特权+DNF特权，49元/券，网费(约9小时)+湿巾耳机套+钻石特权，100元/券，新会员专享上网套餐，40元/券，高端体验区夜机9小时（23点-8点），35元/券，休闲娱乐区夜机9小时（23点-8点）','网吧网咖');
insert into MT_family values(11,'NOVEL新奇实景娱乐·密室·剧本·狼人竞技',78,'/KTV-img/49.jpg','和平门/建国门','碑林区环城南路中段68号','50','17392957593/18629193418',' 周一至周日 13:30-05:30','提供WiFi','停车位','78元/券，剧本推理单人体验优惠（普通盒装），98元/券，剧本推理单人体验（精品盒装），118元/券，限定剧本《在人间》单人体验，108元/券，城市限定剧本《镜子》体验券，108元/券，城市限定剧本《黑水湾》体验券','密室逃脱');
insert into MT_family values(12,'长藤鬼校（小寨金莎店）',3086,'/KTV-img/50.jpg','小寨','雁塔区长安中路65号金莎国际购物中心6楼','83','18165361335',' 周一至周日 10:00-23:00','提供WiFi','停车位','88元/券，】单人体验票','密室逃脱');
insert into MT_family values(13,'谜古屋剧情密室逃脱（小寨华旗店）',2318,'/KTV-img/51.jpg','小寨','雁塔区小寨地铁口C出口旁华旗国际商场6楼02（麦当劳左边观光电梯）','55','13709262638',' 周一至周日 10:00-24:00','提供WiFi','停车位','58元/券，【密室逃脱】精品主题优惠券15选1，78元/券，【密室逃脱】精品主题优惠券5选1，19元/券，全国等位桌游畅玩，100元/券，全国通用团建定制单','密室逃脱');
insert into MT_family values(14,'造梦师实景剧情密室（小寨赛格一店）',3623,'/KTV-img/52.jpg','小寨','雁塔区长安中路阳明国际12层1201室（小寨地铁C口左转，汉唐书城向南70米，名创优品旁通道进入）','87','029-85429216/17792942508','周一至周日 10:00-23:30','提供WiFi','停车位','64元/券，·剧本8选1，78元/券，·剧本8选1，1099元/券，【多主题套餐】造梦师密室·剧本19个主题通关券，138元/券，「午夜玩具店」NPC剧情版单人体验，98元/券，烧脑专区','密室逃脱');

insert into MT_laptop values(1,1,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(2,1,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(3,1,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(4,1,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(5,1,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(6,2,'/KTV-img/15.jpg','人气主题 大祭司单人70分钟体验套餐','406','2021年06月12日','88','158');
insert into MT_laptop values(7,2,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(8,2,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(10,2,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(11,2,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(12,3,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(13,3,'/KTV-img/15.jpg','西安、太原通用优惠券【精品主题18选1】','42371','2021年01月22日','89','100');
insert into MT_laptop values(14,3,'/KTV-img/15.jpg','(首单特惠）全身放松热敷推拿按摩（草本\青盐热敷）','32962','2021年09月09日','49','158');
insert into MT_laptop values(15,3,'/KTV-img/34.jpg','机械师密室（34选1）【超值主题单人票】','62228','2021年03月05日','48','60');
insert into MT_laptop values(16,4,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(17,4,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(18,4,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(19,4,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(20,5,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(21,5,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(22,5,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(23,5,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(24,5,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(25,6,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(26,6,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(27,6,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(28,6,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(29,6,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(30,7,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(31,7,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(32,7,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(33,7,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(34,8,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(35,8,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(36,8,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(37,8,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(38,8,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(39,9,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(40,9,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(41,9,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(42,9,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(43,10,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(44,10,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(45,10,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');
insert into MT_laptop values(46,10,'/KTV-img/41.jpg','丫丫漫步足疗套餐【100分钟】','11451','2020年12月20日','178','198');
insert into MT_laptop values(47,11,'/KTV-img/42.jpg','今犹未沫全身按摩套餐【120分钟】','912','2020年12月20日','298','318');
insert into MT_laptop values(48,11,'/KTV-img/43.jpg','大把时光足浴套餐【110分钟】','2779','2020年12月20日','238','258');
insert into MT_laptop values(49,11,'/KTV-img/44.jpg','【幽 · SPA】全身SPA 90分钟','805','2020年12月20日','378','388');
insert into MT_laptop values(50,11,'/KTV-img/45.jpg','沫上花开新品足疗【80分钟】','2001','2020年12月20日','158','168');

insert into MT_pl values(1,'静净5031','2020年12月12日','/KTV-img/28.jpg','/KTV-img/30.jpg',1,1,'第一次来这家店，环境很好，大厅布置很时尚，也很幽静，水吧很精致，帅哥美女接待都很热情，最关键美女们都很漂亮，踩着平衡车待客。包间装修也很精致，都有投影，还都是VIP奇异果，可以随便追剧，养生师丫丫美丽大方，手法一流，推拿，按摩力度都很到位，整个过程很享受，很放松，……良心企业，以后会经常带朋友来');
insert into MT_pl values(2,'守己哈哈哈18','2020年4月1日','/KTV-img/31.jpg','/KTV-img/29.jpg',2,2,'【服务】￼这家店铺位置挺好找的直接跟着导航过去就可以找到。￼￼ 【特色】他们家的里面场景挺多的，密室也有好几个，可以根据自己的需要来挑选看难易程度哪个比较适合你。￼如果你是新手或者第一次去玩的话，建议选一个简单一点的。￼ 【场景】这个迷雾模式的话是刚刚新出的，玩的人也比较少，我们也是属于新的玩家，整体的话里面就是挺黑的，但是我感觉不是特别恐怖。￼线索所在密室里面的话还是挺难找的，整体的话我觉得难度属于四颗星，我们用了很久，而且也用了很多的提示，最后才玩完了。整体的性价比很高，不贵好玩。￼');

insert into MT_pl values(3,'EYj950443471','2020年8月17日','/KTV-img/29.jpg','/KTV-img/32.jpg',3,3,'国庆无聊，带着朋友们来玩，没事儿。在美团上搜了一下，他家排名第一，直接预定好就过来了。国庆期间都是需要拼场的。吧台小姑娘非常热情，故事情节跌宕起伏，内置机关巧妙绝伦。玩到雪姬封印这个主题。工作人员没有骗我们这个主题确实不恐怖，难度的话也一般。不到一个小时就出来了。店里小哥哥小姐姐服务都很好，不会因为人很多而不耐烦。通关了以后还会付给送一张免单卡。下次的话可以再来体验一下其他主题。');
insert into MT_pl values(4,'桃乐丝110','2020年1月2日','/KTV-img/32.jpg','/KTV-img/28.jpg',4,4,'新客专享买入的，不过买了很久一直没有做，其实他家是连锁店，经常在南稍门路过看到，大部分都在商场内，还有部分门店在临街。 这家店必须实名好评，按摩师父都是年轻人，沟通完全没有障碍，根据个人情况给推荐保养方法，挺棒的。');
insert into MT_pl values(5,'山田和和','2020年9月20日','/KTV-img/28.jpg','/KTV-img/32.jpg',5,5,'今天跟小伙伴一起来玩密室逃脱，本人之前已经玩过机械师的其他密室，所以就玩了神秘照相馆。 提前就了解到有真人npc，很好奇npc会以什么样的方式出现，确实没有想到。 而且也不是特别特别恐怖，如果有想挑战微恐密室的朋友一定要选择这个。 总结一下优点： 1.价格实惠，性价比超级高！ 2.密室有趣，有需要关注细节的地方也有烧脑的地方。 3.气氛很赞，npc的出场方式真是意料之外。 4.店员小哥又帅声音又好听，而且也很有趣qwqqq 5.桌游也好玩 总而言之，玩密室不来这还能去哪里捏');
insert into MY_like values(1,'/KTV-img/21.jpg','拉菲达牛排自助（赛格国际店）','19005','小寨','66.0');
insert into MY_like values(2,'/KTV-img/23.jpg','阿香米线（中贸广场店）','251','小雁塔/南稍门','28.1');
insert into MY_like values(3,'/KTV-img/22.jpg','赛百味（金莎店）','3374','小寨','17.9');
insert into MY_like values(4,'/KTV-img/20.jpg','杨翔豆皮涮牛肚（西咸万象城店）','899','三桥','89.0');
insert into MY_like values(5,'/KTV-img/24.jpg','螺小胖螺蛳粉（凤城一路店）','93','未央路沿线','13.8');
insert into MY_like values(6,'/KTV-img/25.jpg','御品轩（锦园店）',1755,'西稍门','29.9');
insert into MY_like values(7,'/KTV-img/35.jpg','勇利赵家烤肉坊（丈八路店）',1971,'明德门','93.0');
insert into MY_like values(8,'/KTV-img/26.jpg','聚海国际健身俱乐部','2659','大寨路','38.0');

#朱绍银


CREATE TABLE user(
	uid INT  NOT NULL AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	birthday VARCHAR(8),
	phone VARCHAR(11) NOT NULL ,
	avatar VARCHAR(128),
	user_name VARCHAR(32),
	gender INT,
	PRIMARY KEY  (uid)
);
/* 插入数据 */
INSERT INTO user VALUES('1','dangdang','123456','1997-1-2','13991400593','img/avatar/default.png','当当','1');
INSERT INTO user VALUES('2','dingding','223456','1998-10-12','13991437593','img/avatar/default.png','叮叮喵','0');
INSERT INTO user VALUES('3','doudou','456789','1999-12-28','13991408523','img/avatar/default.png','窦志强','1');
INSERT INTO user VALUES('4','yaya','123456','1996-8-2','13501234560','img/avatar/default.png','秦小雅','0');
INSERT INTO user VALUES('5','siyongbo','123456','1997-1-2','13991508513','img/avatar/default.png','依依','0');
INSERT INTO user VALUES('6','haodao','439910','1995-3-17','13991522986','img/avatar/default.png','路飞','1');

/* 创建用户地址列表 */
CREATE TABLE mt_receiver_address(
	aid INT  AUTO_INCREMENT,
	user_id INT,
	receiver VARCHAR(16),
	province VARCHAR(16),
	city VARCHAR(16),
	county VARCHAR(16),
	address VARCHAR(128),
	cellphone VARCHAR(16),
	tag VARCHAR(16),
	is_default BOOLEAN,
	PRIMARY KEY  (aid)
	/*FOREIGN KEY(user_id) REFERENCES user(uid)*/
);
/* 插入数据 */
INSERT INTO mt_receiver_address VALUES('1','1','当当','陕西省','西安市','雁塔区','丈八北路太华小区1单元1204','13991400593','01','1');
INSERT INTO mt_receiver_address VALUES('2','1','当当','陕西省','西安市','雁塔区','丈八北路太华小区1单元1204','13991400593','02','0');
INSERT INTO mt_receiver_address VALUES('3','1','当当','陕西省','西安市','雁塔区','丈八北路太华小区1单元1204','13991400593','03','0');
INSERT INTO mt_receiver_address VALUES('4','3','窦志强','陕西省','西安市','雁塔区','丈八北路太华小区2单元2208','13991400593','01','1');
INSERT INTO mt_receiver_address VALUES('5','4','秦小雅','陕西省','西安市','雁塔区','丈八北路太华小区1单元1204','13501234560','01','1');
INSERT INTO mt_receiver_address VALUES('6','6','路飞','陕西省','西安市','雁塔区','丈八北路太华小区8单元1606','13991500953','01','1');

/* 创建用户订单表 */
CREATE TABLE mt_order(
	oid INT AUTO_INCREMENT,
	user_id INT,
	address_id INT,
	status INT,   #订单状态,1-等待付款,2-等待发货,3-运输中,4-已签收,5-已取消 
	order_time BIGINT,
	pay_time BIGINT,
	deliver_time BIGINT,
	received_time BIGINT,
	count INT,
	PRIMARY KEY  (oid)
	/*FOREIGN KEY(user_id) REFERENCES user(uid)
	FOREIGN KEY(address_id) REFERENCES mt_receiver_address(aid)*/
);
/* 插入数据 */
INSERT INTO mt_order VALUES('1','1','1','2','11:00','11:12','11:25','12:33','1');
INSERT INTO mt_order VALUES('2','3','4','3','11:00','11:12','11:25','12:33','1');
INSERT INTO mt_order VALUES('3','4','5','2','11:00','11:12','11:25','12:23','1');
INSERT INTO mt_order VALUES('4','6','6','4','10:34','10:42','10:58','12:03','1');

/* 创建用户订单详情表 */
CREATE TABLE mt_order_detail(
	did INT AUTO_INCREMENT,
	order_id INT,
	product_id INT,
	count INT,
	PRIMARY KEY  (did)
	/*FOREIGN KEY(order_id) REFERENCES mt_order(oid)*/
);
/* 插入数据 */
INSERT INTO mt_order_detail VALUES('1','1','22','1');
INSERT INTO mt_order_detail VALUES('2','2','10','1');
INSERT INTO mt_order_detail VALUES('3','3','25','1');
INSERT INTO mt_order_detail VALUES('4','4','36','1');

/* 创建首页轮播图表 */
CREATE TABLE mt_index_carousel(
	cid INT AUTO_INCREMENT,
	img VARCHAR(128),
	title VARCHAR(64),
	href VARCHAR(128),
	PRIMARY KEY  (cid)
);
/* 插入数据 */
INSERT INTO mt_index_carousel VALUES('1','img/mt/mt-header/banner1.jpn', '轮播广告1', 'product_details.html?lid=28');
INSERT INTO mt_index_carousel VALUES('2','img/mt/mt-header/banner2.jpn', '轮播广告2', 'product_details.html?lid=19');
INSERT INTO mt_index_carousel VALUES('3','img/mt/mt-header/banner3.jpn', '轮播广告3', 'lookforward.html');
INSERT INTO mt_index_carousel VALUES('4','img/mt/mt-header/banner4.jpn', '轮播广告4', 'lookforward.html');
INSERT INTO mt_index_carousel VALUES('5','img/mt/mt-header/banner5.png', '轮播广告5', 'lookforward.html');


#刘艳萍

CREATE TABLE product(
  p_id INT PRIMARY KEY AUTO_INCREMENT,
  p_name VARCHAR(8) ,
  price  DECIMAL(12),
  p_count INT
);

INSERT INTO product VALUES(1,'牛油鸳鸯锅','35',6);
INSERT INTO product VALUES(2,'麻辣小龙虾','40',2);
INSERT INTO product VALUES(3,'巧克力蛋糕','25',2);
INSERT INTO product VALUES(4,'孜然蘑菇爱上饭','15',2);
INSERT INTO product VALUES(7,'红豆奶茶','12',2);
INSERT INTO product VALUES(8,'炒年糕','16',2);
INSERT INTO product VALUES(9,'落寞小酒','36',2);
INSERT INTO product VALUES(10,'生鱼片','60',6);
INSERT INTO product VALUES(11,'榴莲披萨','40',2);
/*商家表*/
CREATE TABLE bussines (
  b_id INT PRIMARY KEY AUTO_INCREMENT,
  b_name VARCHAR(20),
  phone BIGINT,
  average_person INT,
  huors  VARCHAR(20),
  address VARCHAR(30),
  b_pic VARCHAR(200),
  b_product  INT,
  b_desc VARCHAR(30),
  FOREIGN KEY(b_product) REFERENCES product(p_id)
);
INSERT INTO bussines  VALUES('1','渝水情老火锅','13759669826','40','周一至周日 10:00-22:30','雁塔区电子正街88号','img/ysq.png','1','重庆火锅|电子城');
INSERT INTO bussines  VALUES('2','千味坊串串香','13759669825','45','周一至周日 10:00-22:30','长安区长安家园小区门口','img/qianwei.png','1','串串火锅|长安区');
INSERT INTO bussines  VALUES('3','玲一日本料理','13759669896','40','周一至周日 10:00-22:30','玲一日本料理高新区','img/lingyi.png','10','料理|高新区');
INSERT INTO bussines  VALUES('4','故事里海鲜大餐','13759669845','40','周一至周日 10:00-22:30','莲湖区北马道巷91号(玉祥门内向南100米)','img/haixian.png','2','海鲜大餐|高新区');
INSERT INTO bussines  VALUES('5','欢喜记重庆火锅','13759669678','90','周一至周日 10:00-22:30','雁塔区西影路466号西安量子晨4209','img/huanxi.png','1','重庆火锅|雁塔区');
INSERT INTO bussines  VALUES('6','九喜龙虾(韦曲店)','18392366645','70','周一至周日 14:00-02:00','长安区滨河大道长安通易坊A-11号门面房','img/jiuxi.png','2','龙虾大餐|长安区');
INSERT INTO bussines  VALUES('7','米斯特比萨','02984497908]','60','周一至周日 11:00-21:00','高新区唐延路北段22号(金辉国际广场1层11-12室)','img/misite.png','11','披萨|高新区');
INSERT INTO bussines  VALUES('8','品格蛋糕','17392486064','50','周一至周日 10:00-18:00','雁塔区长安南路西八里村78号','img/pinge.png','3','生日蛋糕|雁塔区');
INSERT INTO bussines  VALUES('9','蘑菇爱上饭','02985364611','50','周一至周日 10:00-20:00','雁塔区长安南路237号路东(西安音乐学院对面)','img/mogu.png','4','蘑菇炒饭|雁塔区');
INSERT INTO bussines  VALUES('10','玛喜达韩国年糕料理','02987656473','70','周一至周日 10:30-14:30 ','碑林区东大街骡马市1号民生百货6层','img/maxida.png','8','年糕料理|碑林区');
INSERT INTO bussines  VALUES('11','阿姨奶茶专卖','02968867121','40','周一至周日 10:00-22:30','雁塔区长安中路177号海港城一层J-23','img/naicha.png','7','原味奶茶|雁塔区');

-- 右边商家
CREATE TABLE bus (
  r_id INT PRIMARY KEY AUTO_INCREMENT,
  r_name VARCHAR(20),
  r_adr VARCHAR(30),
  price  DECIMAL(12),
  r_pic VARCHAR(200)
);
INSERT INTO bus VALUES(1,'螺小胖螺蛳粉（凤城一路店）','未央路','40','img/luo.png');
INSERT INTO bus VALUES(2,'阿香米线（中贸广场店）','南稍门','30','img/a_xiang.png');
INSERT INTO bus VALUES(3,'百富烤霸（北大街店）','钟楼/鼓楼','20','img/baifu.png');
INSERT INTO bus VALUES(4,'东东包（盛龙广场店）','未央路','20','img/dong.png');
INSERT INTO bus VALUES(5,'拉菲达牛排自助（赛格国际店）','小寨','90','img/la.png');
INSERT INTO bus VALUES(6,'御品轩（锦园店）','西稍门','60','img/yu.png');
INSERT INTO bus VALUES(7,'御品轩（锦园店）','西稍门','60','img/yu.png');
INSERT INTO bus VALUES(8,'成都钢管厂五区小郡肝串串香（半坡店)','纺织城','80','img/cheng.png');
INSERT INTO bus VALUES(9,'千家粗粮王（盛龙广场店）','未央路','40','img/qian.png');
INSERT INTO bus VALUES(10,'杨翔豆皮涮牛肚（西咸万象城店）','三桥','50','img/yang.png');
INSERT INTO bus VALUES(11,'勇利赵家烤肉坊（丈八路店）','明德门','80','img/yong.png');
INSERT INTO bus VALUES(12,'金迈源自助涮烤王','建工路','90','img/jinmai.png');


-- 购物车
CREATE TABLE buy (
  u_id INT PRIMARY KEY AUTO_INCREMENT,
  u_name VARCHAR(20),
  u_price  DECIMAL(12),
  num  INT
);

INSERT INTO buy VALUES(1,'渝水情老火锅:渝水情老火锅2人餐','220','1');


select * from  move_name;

