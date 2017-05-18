# Host: localhost  (Version: 5.5.47)
# Date: 2017-05-18 15:50:11
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "auth_group"
#

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_group"
#

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

#
# Structure for table "auth_group_permissions"
#

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_group_permissions"
#

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

#
# Structure for table "auth_permission"
#

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

#
# Data for table "auth_permission"
#

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blog',7,'add_blog'),(20,'Can change blog',7,'change_blog'),(21,'Can delete blog',7,'delete_blog'),(22,'Can add comment',8,'add_comment'),(23,'Can change comment',8,'change_comment'),(24,'Can delete comment',8,'delete_comment'),(25,'Can add category',9,'add_category'),(26,'Can change category',9,'change_category'),(27,'Can delete category',9,'delete_category'),(28,'Can add tag',10,'add_tag'),(29,'Can change tag',10,'change_tag'),(30,'Can delete tag',10,'delete_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

#
# Structure for table "auth_user"
#

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "auth_user"
#

/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$UVHm4X4xcU48$llQjGJRuUhq+CT2LVkKgJqvNkedyxA7rGEAzXmjNQZQ=','2017-04-27 08:55:54',1,'hxing','','','1074216264@qq.com',1,1,'2017-04-27 07:48:33');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

#
# Structure for table "auth_user_groups"
#

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_user_groups"
#

/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

#
# Structure for table "auth_user_user_permissions"
#

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "auth_user_user_permissions"
#

/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

#
# Structure for table "blog_blog"
#

DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `author` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  `time` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_category_id_c34d5f94` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "blog_blog"
#

/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'滕王阁序','王勃','时维九月， 序属三秋。 潦水尽而寒潭清， 烟光凝而暮山紫。 俨骖騑于上路， 访风景于崇阿； 临帝子之长洲， 得天人之旧馆。 层峦耸翠， 上出重霄； 飞阁流丹， 下临无地。 鹤汀凫渚， 穷岛屿之萦回； 桂殿兰宫， 即冈峦之体势。\r\n披绣闼， 俯雕甍， 山原旷其盈视， 川泽纡其骇瞩。 闾阎扑地， 钟鸣鼎食之家； 舸舰迷津， 青雀黄龙之舳。 云销雨霁， 彩彻区明。 落霞与孤鹜齐飞， 秋水共长天一色。 渔舟唱晚， 响穷彭蠡之滨； 雁阵惊寒， 声断衡阳之浦。','2017-04-27 08:59:59',1),(3,'双子座','双双','双子座的人往往喜好新鲜事物，他们有着小聪明，但做事常常不太专一。与双子座的人聊天也许会让你觉得很兴奋，因为他们脑子中那些新鲜的、稀奇古怪的东西会让有充满好奇。也许是对新鲜事物的追求和好奇，会让人觉得他们很花心，其实不然，他们仅仅是喜欢新鲜而已。','2017-04-27 09:02:08',4),(4,'长沙臭豆腐','little star','长沙臭豆腐是湖南长沙传统的特色名吃，长沙当地人又称臭干子。色墨黑，外焦里嫩，鲜而香辣。 焦脆而不糊、细嫩而不腻、初闻臭气扑鼻，细嗅浓香诱人。','2017-04-27 09:04:00',3),(5,'张家界一游','little star','2017年张家界旅游实用攻略--防骗防宰,帮您省500~2000元\r\n一、张家界旅游选择【旅行团】还是【自助游俱乐部】？\r\n虽然现在很多旅行社都打出“纯玩团”或者“无自费团”的幌子，但是很多旅行社为了吸引游客，往往把参团价格放的很低， 然后高价卖给导游来诱导客人进行二次消费来填坑，导游为了高额的买团费不得不软磨硬泡，脾气好一点的导游打出悲情牌，大倒个人家庭辛酸史，态度差的导游直接半强迫或者硬强迫，反正每个参团客人中途不再掏出千儿八百的别想走人。旅游市场就是这样乱了。而且参加旅行团很不自由，到哪里都是走马观花而且人头扎堆。上车睡觉，下车尿尿，拍个照片还要挨个叫号，这个是参团旅游的真实写照！\r\n正是因为参加旅行团的许多不好导致目前的自助游的一片火暴，因为自助游没有限制，无拘无束，非常自由，只要规划好时间和当地俱乐部联系好，就可以轻松搞定了。但琳琳要提醒的是，张家界凤凰以及周边地区，范围广、路线复杂、景点多且分散、公共交通不发达，很多当地人都搞不清楚，所以并不适合纯自助游，最适合的方式就是：半自助游；找一家当地的俱乐部，让俱乐部帮您设计好行程线路，然后参加俱乐部的套餐，又好玩有省钱！\r\n至于哪家俱乐部好？蚂蜂窝的金牌合作商【张家界草鞋帮旅游俱乐部】当然是不二之选了，没有购物、没有强制消费、住山顶看日出，还能帮你们省钱，带你们游玩网络上最受欢迎的景点如杨家界的天波府、乌龙寨，一步登天、空中走廊、空中田园、大观台、神堂湾、四大奇观之一的日出；不信，那些参加游客当地旅行社社的朋友可以回忆是否游玩了这些最能代表张家界景色的地方？ \r\n对于自驾游的客人，选择草鞋帮的好处是可以帮您把车直接开进景区里面（这个是别家俱乐部做不到的）。\r\n俱乐部能安排而旅行团无法安排的精华景点\r\n特色景点\r\n二、张家界住景区内山顶还是住景区外的山下？\r\n由于山上客栈不多，床位紧张，而且旅行团一般都是要求住星级酒店，所以旅行团多数还是住山外的武陵源镇上酒店，这样对于游览是很不方便的，每天进出景区、上下山浪费在路上等车，排队的时间很多，只能看看常规的大路货景点来安慰游客；而且每天还要重复乘坐缆车上下山，多花冤枉钱，更可悲的是，就这点有限的时间，团队导游还要挤占去购物进店和推销劣质景点。\r\n所以自助游的客人大多选择住山顶，虽然山顶没有太豪华的住宿条件，但是只要不是太挑剔的人，山顶客栈还是能满足大多数游客的住宿要求。\r\n选择住景区山顶客栈的理由\r\n1、节省时间和金钱： 宿山上客栈好处很多，无需每天进出景区，又因为绝大部分景点在山顶，所以也不需要每天上下山，也就无需每天上下重复的乘坐索道天梯，不仅节省时间还节省金钱；\r\n2、看旅行团无法安排的绝景：多出的时间可以看很多旅行团看不到的绝景，比如说袁家界、杨家界、乌龙寨、天波府、大观台、仙人桥、一步难行、老屋场游览线、空中田园、神兵聚会等，早晚还可以欣赏日出和晚霞，而且山顶空气清新，可与大自然亲密接触，体验土家山民生活！\r\n3、不受门票有效期限制：张家界门票是两天有效，采取的是进山验票、出山不验票制度；如果你住景区外面，超过2天再想进山，由于进山验票，景区知道您门票过期，您就需要重新购票；但是如果您在山里一直呆着不出来，超过2天后再出山，由于出山不验票制度，景区不会知道你门票过期，所以您也不用补票；这样的话，对于很多想在景区玩3天或3天以上的人来说，就节省了几百元的费用。\r\n蚂蜂窝推荐的山顶客栈--张家界草鞋屋\r\n前面琳琳说了，山顶的住宿条件不是特别豪华，相对来说，张家界山顶条件最好的客栈就是【张家界草鞋屋】了，草鞋屋规模也是最大的，在景区山顶有好几家客栈，能一次性接待几百人的住宿，草鞋屋的床上用品都是按照五星级酒店的档次配置的，草鞋屋不仅硬件是最好的，软件（服务）也是最好的，客栈每个工作人员都是笑脸相迎，热情周到，床单也是一客一洗，保证干净卫生，而且每个客栈都由掌柜把关，有任何要求都可以“麻烦”掌柜，草鞋屋由张家界草鞋帮俱乐部投资运营，旺季客房较紧张，一般需要提前十天订房，话不多说，上图\r\n山顶客栈\r\n三、张家界以及周边有哪些精华景区？\r\n前面说了，张家界以及周边景区景点众多，如何给各个景区景点分配时间，就显得非常必要了，当然如果您有钱有时间，也可以把所有的景区都走一遍了^_^，下面是琳琳根据景点的好玩程序做出的排序，仅供参考哦。\r\n\r\n\r\n\r\n琳琳在这里澄清一下，张家界核心景区(张家界森林公园或武陵源)指的是一个大的概念，包含黄石寨、金鞭溪、袁家界、杨家界、清风峡、天子山、大观台、老屋场、索溪峪、十里画廊，如果把张家界核心景区（张家界森林公园或武陵源）全部游完需要四到五天时间；\r\n张家界核心景区地貌全部为石英砂岩峰林峡谷地貌，方圆近400平方公里的景区上千座石峰大同小异，很多游客第一天到核心景区游览都异常兴奋的说：太神奇了；第二天游玩的时候说：还不错哦；到第三天再玩的时候的评价：一般般了。说句实在话，张家界核心景区这个地方的风景任何一块放在别的地方都是独一无二的，但就看美女，如果要你天天对着她看，你也会对她产生审美疲劳，所以琳琳建议您就其中的精华游玩2天即可，多余的时间选择去张家界市区周边（天门山、土司王城、天门狐仙），张家界西线旅游（九天洞、苦竹河大峡谷、茅岩河漂流）或张家界东线（娄江漂流、张家界大峡谷等），凤凰古城旅游（凤凰古城，苗寨），因为以上景点和张家界核心景区的风景是不同的类型，而且比张家界核心景区项目更丰富多彩，娱乐性更强 。\r\n四、张家界自助游如何选择合适的线路？\r\n张家界核心景区非常之大，面积达400平方公里，核心景区内岔路口非常多，很多漂亮的景点比较偏僻，从一个景点到另一个景点游人往往无法正确的估计时间，而且中间没有人报站，客人往往都是从始发站就坐到终点站去了，绕路和走往返的冤枉路是很多游客经常碰到的事情，另外，除了张家界核心景区，周边还有凤凰古城、张家界大峡谷、王村古镇、茅岩河漂流、九天洞、天门山、坐龙峡、土司城、老道湾、土家寨和苗寨等等好看好玩的景区，如何来串联？如何合理安排时间？如何转车？如何......是不是头晕了？呵呵，琳琳也曾试图把这些很好的分析清楚，最后发现这根本不可能，所以琳琳建议大家参加当地俱乐部的套餐，绝对是肺腑之言。\r\n每个俱乐部的自助游套餐都不尽相同，也各有各的特点，但是万变不离其宗，大家选择线路套餐的时候一定要记住以下三要点：\r\n（1）住宿位置要分清：现在很多俱乐部都以“住景区”为卖点，但很多俱乐部会把您安排在景区外门口附近入住（也就是山下），因为在当地人的意识里，景区门口方圆十公里都是景区，所以这一做法是被旅游局所认可的，这就很无语了，当然，琳琳并非让你们都住景区山顶，但是如果你有这方面的要求，一定要看清楚，否者差之毫厘失之千里。\r\n（2）价格太低要警惕：买东西大家都希望物美价廉，其实物美和价廉是不可能同时存在的，美好的东西价值都是很高的，琳琳说这话的意思并非是让大家都选贵的，一定要合理，不合理的低价只会让您损失更多，上次琳琳看到张家界导游拿刀逼迫游客中途另交800元自费的报道，太吓人了。\r\n（3）辨别资质要仔细：辨别对方是不是真正的俱乐部，一定要其出示营业执照，看营业执照上面的公司全称是不是有“俱乐部”三个字，如果没有，那就不是真正的俱乐部，因为俱乐部是需要旅游监管机构审查通过后才能注册的，很多俱乐部的营业执照是“XX旅游服务有限公司”，这都是没有自助游接待资质的，万一出现问题是无法得到满意的解决的！，当然，旅行社是有接待资质，但是不在咱们的考虑之内对吧，另外，还有一些个体户没有资质的，更是要立马排除掉。','2017-04-27 09:06:20',2);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;

#
# Structure for table "blog_blog_tags"
#

DROP TABLE IF EXISTS `blog_blog_tags`;
CREATE TABLE `blog_blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blog_tags_blog_id_tag_id_211c6be5_uniq` (`blog_id`,`tag_id`),
  KEY `blog_blog_tags_blog_id_e4cd5f6a` (`blog_id`),
  KEY `blog_blog_tags_tag_id_36a3abc6` (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

#
# Data for table "blog_blog_tags"
#

/*!40000 ALTER TABLE `blog_blog_tags` DISABLE KEYS */;
INSERT INTO `blog_blog_tags` VALUES (1,1,1),(4,3,2),(5,4,3),(6,5,4),(7,5,5);
/*!40000 ALTER TABLE `blog_blog_tags` ENABLE KEYS */;

#
# Structure for table "blog_category"
#

DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "blog_category"
#

/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (1,'文化'),(2,'旅行'),(3,'美食'),(4,'星座'),(5,'减肥');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;

#
# Structure for table "blog_comment"
#

DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `email` varchar(254) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_blog_id_c664fb0d` (`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "blog_comment"
#

/*!40000 ALTER TABLE `blog_comment` DISABLE KEYS */;
INSERT INTO `blog_comment` VALUES (1,'哈哈','12233@qq.com','11111','2017-04-27 10:07:19',5),(2,'哈哈','12233@qq.com','11111','2017-04-27 10:07:25',5),(3,'哈哈','12233@qq.com','11111','2017-04-27 10:07:43',5),(4,'哈哈','12233@qq.com','11111','2017-04-27 10:07:44',5),(5,'哈哈','12233@qq.com','11111','2017-04-27 10:07:46',5),(6,'哈哈','12233@qq.com','11111','2017-04-27 10:07:46',5),(7,'哈哈','12233@qq.com','11111','2017-04-27 10:07:46',5),(8,'哈哈','12233@qq.com','11111','2017-04-27 10:07:47',5),(9,'哈哈','12233@qq.com','11111','2017-04-27 10:07:47',5),(10,'哈哈','12233@qq.com','11111','2017-04-27 10:07:47',5),(11,'哈哈','12233@qq.com','11111','2017-04-27 10:07:47',5),(12,'hx','111@qq.com','122343','2017-04-27 10:08:13',5),(13,'hx','111@qq.com','122343','2017-04-27 10:08:19',5),(14,'hx','111@qq.com','122343','2017-04-27 10:09:19',5);
/*!40000 ALTER TABLE `blog_comment` ENABLE KEYS */;

#
# Structure for table "blog_tag"
#

DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "blog_tag"
#

/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (1,'古诗'),(2,'吐槽'),(3,'味道炒鸡棒'),(4,'刺激'),(5,'冒险模式');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;

#
# Structure for table "django_admin_log"
#

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "django_admin_log"
#

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-04-27 08:56:16','1','诗词',1,'[{\"added\": {}}]',9,1),(2,'2017-04-27 08:56:59','2','旅行',1,'[{\"added\": {}}]',9,1),(3,'2017-04-27 08:57:38','3','美食',1,'[{\"added\": {}}]',9,1),(4,'2017-04-27 08:57:43','4','星座',1,'[{\"added\": {}}]',9,1),(5,'2017-04-27 08:58:25','5','减肥',1,'[{\"added\": {}}]',9,1),(6,'2017-04-27 08:58:40','1','文化',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(7,'2017-04-27 08:59:56','1','古诗',1,'[{\"added\": {}}]',10,1),(8,'2017-04-27 08:59:59','1','滕王阁序',1,'[{\"added\": {}}]',7,1),(9,'2017-04-27 09:01:27','2','吐槽',1,'[{\"added\": {}}]',10,1),(10,'2017-04-27 09:01:33','2','双子座',1,'[{\"added\": {}}]',7,1),(11,'2017-04-27 09:01:41','2','双子座',3,'',7,1),(12,'2017-04-27 09:02:08','3','双子座',1,'[{\"added\": {}}]',7,1),(13,'2017-04-27 09:03:39','3','味道炒鸡棒',1,'[{\"added\": {}}]',10,1),(14,'2017-04-27 09:04:00','4','长沙臭豆腐',1,'[{\"added\": {}}]',7,1),(15,'2017-04-27 09:06:11','4','刺激',1,'[{\"added\": {}}]',10,1),(16,'2017-04-27 09:06:18','5','冒险模式',1,'[{\"added\": {}}]',10,1),(17,'2017-04-27 09:06:20','5','张家界一游',1,'[{\"added\": {}}]',7,1),(18,'2017-04-27 09:22:40','5','张家界一游',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(19,'2017-04-27 09:32:39','5','张家界一游',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

#
# Structure for table "django_content_type"
#

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "django_content_type"
#

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'blog','blog'),(8,'blog','comment'),(9,'blog','category'),(10,'blog','tag');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

#
# Structure for table "django_migrations"
#

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

#
# Data for table "django_migrations"
#

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-04-27 07:23:31'),(2,'auth','0001_initial','2017-04-27 07:23:32'),(3,'admin','0001_initial','2017-04-27 07:23:33'),(4,'admin','0002_logentry_remove_auto_add','2017-04-27 07:23:33'),(5,'contenttypes','0002_remove_content_type_name','2017-04-27 07:23:33'),(6,'auth','0002_alter_permission_name_max_length','2017-04-27 07:23:33'),(7,'auth','0003_alter_user_email_max_length','2017-04-27 07:23:33'),(8,'auth','0004_alter_user_username_opts','2017-04-27 07:23:33'),(9,'auth','0005_alter_user_last_login_null','2017-04-27 07:23:33'),(10,'auth','0006_require_contenttypes_0002','2017-04-27 07:23:33'),(11,'auth','0007_alter_validators_add_error_messages','2017-04-27 07:23:33'),(12,'auth','0008_alter_user_username_max_length','2017-04-27 07:23:33'),(13,'blog','0001_initial','2017-04-27 07:23:33'),(14,'blog','0002_auto_20170427_1522','2017-04-27 07:23:35'),(15,'sessions','0001_initial','2017-04-27 07:23:35');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

#
# Structure for table "django_session"
#

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "django_session"
#

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0mwqhyfo2164t06hjqhdbld59norc44b','NjAwMmIxNDNlYjg2N2Q3ZDlmYTQ4YzdjY2Y0N2ExZGY2ZTNlY2NhZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjliODYyZDUxOWE3NjEyZmU3OTYwNDU4MGQ3NzY4MTUxZmQ3MjYwZDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-11 07:53:28'),('e5dzqh9divl6ws9qzqkkfak3sz197z16','NjAwMmIxNDNlYjg2N2Q3ZDlmYTQ4YzdjY2Y0N2ExZGY2ZTNlY2NhZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjliODYyZDUxOWE3NjEyZmU3OTYwNDU4MGQ3NzY4MTUxZmQ3MjYwZDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-05-11 08:55:54');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
