#
# TABLE STRUCTURE FOR: admin
#
DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel;
USE hotel;

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `admin` (`id`, `login`, `email`, `password`, `hash_password`) VALUES ('1', 'est', 'надежда83@example.net', 'officiis', '574d7a0fa2f43bc56a171eba0d3bc8c3cd1250a1');
INSERT INTO `admin` (`id`, `login`, `email`, `password`, `hash_password`) VALUES ('2', 'iure', 'злата.носков@example.org', 'est', '46db43da0f43ef0679e728fe11ea17fd0e503e4e');
INSERT INTO `admin` (`id`, `login`, `email`, `password`, `hash_password`) VALUES ('3', 'voluptatem', 'pданилов@example.net', 'dolorem', '161f61a5e279a4109c4ce0b7f78604a3cafd98aa');
INSERT INTO `admin` (`id`, `login`, `email`, `password`, `hash_password`) VALUES ('4', 'ut', 'доминика89@example.org', 'et', '5e00a8827f2931734d2bd8c7d0e8dd8c5affc837');
INSERT INTO `admin` (`id`, `login`, `email`, `password`, `hash_password`) VALUES ('5', 'placeat', 'yфролов@example.com', 'eum', '40c16dcf9eda93c1f6b951b5918701a40e12aaf8');


#
# TABLE STRUCTURE FOR: client
#

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL DEFAULT 'example@example.com',
  `password` varchar(255) NOT NULL DEFAULT '1111',
  `hash_password` varchar(255) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `modified_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `customers_phone_idx` (`phone`),
  KEY `customers_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('1', 'Наталья Сергеевич Капустин', 'светлана.блохин@example.com', 'dicta', 'b032613fe9b8b85136150b04daa376aca89dcf37', '(495) 571-5920', '2020-03-07 04:05:39', '1972-03-18 04:34:58');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('2', 'Евдокимов назар Фёдорович', 'gкалинин@example.org', 'corrupti', 'e60c5d75197ef32e40e0da69f972cf443f3fd5ac', '8-800-861-8513', '2014-09-20 05:00:25', '1997-01-19 04:35:44');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('3', 'Ксения Евгеньевич Белов', 'владлен71@example.com', 'voluptas', '0cd43bc4f4344ab0a9d7b44deaa5d75880dfbfa2', '(35222) 12-3000', '1990-02-26 01:42:50', '2012-09-16 08:48:49');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('4', 'Гаврилов Зоя Львович', 'нестеров.алексей@example.net', 'voluptates', '1b406e78211f5aef1085020caba56b8d8519ddc6', '(495) 805-7713', '1971-01-07 03:43:05', '1988-05-30 21:27:19');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('5', 'Анжелика Владимирович Егоров', 'максим.антонов@example.net', 'et', '6533f27539f486b907e60ce50e8997350174e4e4', '+7 (922) 548-5921', '1972-02-26 07:19:17', '2017-12-22 21:01:03');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('6', 'Филатов ростислав Дмитриевич', 'анжелика40@example.net', 'dignissimos', 'eb227e19729e9e9b82834df8d91f344272d17529', '+7 (922) 198-6863', '2012-09-29 01:29:44', '1990-09-11 13:22:51');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('7', 'Анна Романович Якушев', 'диана.блохин@example.org', 'praesentium', '53db09f7979f3a445bcea168563029a3da7f72ff', '(35222) 77-7261', '1972-06-04 09:31:31', '1974-10-28 22:53:01');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('8', 'Рогов Флорентина Фёдорович', 'альберт81@example.com', 'consequuntur', '6120ce81a39ec977d483cb8dc759a094df908b0b', '8-800-019-2536', '1973-03-15 22:11:32', '1980-11-13 09:35:52');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('9', 'Колобов Зоя Владимирович', 'hгришин@example.net', 'culpa', 'fcd1c573fd356abcd4c0e6d50f076817f7e41d9e', '(812) 410-23-54', '1984-05-19 10:52:03', '1999-06-26 23:46:17');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('10', 'Олег Владимирович Марков', 'григорий25@example.net', 'in', '3d625844f9b07a0714348cdea7b21377f6194399', '(495) 806-6699', '1973-05-29 01:50:03', '1983-08-27 20:15:46');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('11', 'Калашников Михаил Андреевич', 'иннокентий25@example.org', 'minus', '058852b76c52a9d401d3fc0e0e57fd54ad2287fe', '(35222) 41-0652', '1988-03-02 00:00:22', '1992-02-13 09:36:39');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('12', 'Бирюков Эмма Фёдорович', 'соболев.зинаида@example.net', 'ducimus', '49f32cc21a65db301b212883a637b36461091f40', '(35222) 65-2405', '2009-09-19 10:34:58', '2025-01-06 00:48:22');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('13', 'Киселёв Варвара Романович', 'yмамонтов@example.net', 'nam', 'dd9cbd053842321986db4e05e58d4f4b986b3344', '+7 (922) 359-6770', '2015-07-14 10:40:46', '1975-05-05 17:03:51');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('14', 'Вероника Евгеньевич Антонов', 'жданов.инесса@example.org', 'consectetur', 'e6670ae69ae991b213bf7fc40c1e87a43367eee2', '(35222) 76-2710', '1988-12-25 17:27:17', '1987-06-03 21:11:12');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('15', 'Зыков Инга Фёдорович', 'wжуравлёв@example.com', 'harum', '88a86df97715122ab154fb585c1214dcb9c3f058', '(812) 636-96-47', '2012-04-08 01:23:54', '2001-10-21 23:23:40');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('16', 'Дан Иванович Цветков', 'кудрявцев.алёна@example.com', 'dignissimos', '7de43e06407fad64d48821126424c53cf557da8e', '(495) 719-0210', '1987-09-15 23:29:40', '1979-06-13 16:55:24');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('17', 'Ульяна Максимович Мухин', 'aмоисеев@example.net', 'cumque', 'd6c42a6ae49243c3e4ee9411809fbdb355e72ef1', '+7 (922) 605-3551', '1989-10-26 06:03:56', '1995-02-25 00:14:35');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('18', 'артемий Евгеньевич Лыткин', 'vконстантинов@example.org', 'enim', '29423291c64dc3b5166470146e6f734e80d2dca9', '+7 (922) 373-0257', '1986-04-08 19:25:55', '1975-12-28 08:50:19');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('19', 'Калинин Анатолий Дмитриевич', 'елисеев.яков@example.com', 'et', '622e6227d358ad0a1309dcbc442f2ebbe0bfd811', '(35222) 55-9954', '2022-09-09 14:19:14', '1999-03-07 20:07:47');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('20', 'степан Борисович Савельев', 'михаил51@example.org', 'neque', 'f58a7a189d00e30794589d8518c2481054653707', '(495) 837-1013', '1998-10-24 02:50:22', '1974-11-27 03:41:40');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('21', 'Харитонов Клементина Алексеевич', 'kкузьмин@example.org', 'deserunt', 'cf947ac49b87ee7835969ea1308e672f686c12a0', '+7 (922) 557-9493', '1972-02-16 03:51:21', '2018-04-16 09:02:44');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('22', 'Игорь Романович Сафонов', 'яна91@example.org', 'quia', '4c281db7d48f71f63dce3411d364238004a5ad1d', '(812) 391-66-63', '2002-01-21 22:48:10', '1987-02-04 16:55:59');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('23', 'Ярослав Сергеевич Тимофеев', 'вениамин.никитин@example.net', 'esse', '4408bf7a92deebe95abf0b56286b68c2780f08ef', '(812) 244-25-28', '2005-05-25 12:07:29', '2001-02-09 13:14:24');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('24', 'Ковалёв Прохор Фёдорович', 'rустинов@example.org', 'eaque', '301d3cb1b3ff4759504ff89b7e983f8122f67a07', '(35222) 18-2623', '1981-07-18 20:44:55', '1991-02-12 01:16:54');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('25', 'Журавлёв Сергей Владимирович', 'yкомиссаров@example.org', 'voluptas', '0de592f4f1dd4c0254e22d0ae49df90703ea11b5', '(812) 676-26-74', '2015-08-26 09:22:38', '1970-05-20 19:26:31');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('26', 'Полина Иванович Беляев', 'jсидоров@example.com', 'dolores', '5f81d7eea37ca89f5d12d728985f03fe930e2924', '+7 (922) 770-0173', '2020-03-14 08:53:48', '1984-07-19 02:26:22');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('27', 'Гурьев Нелли Сергеевич', 'журавлёв.ефим@example.net', 'optio', '411f7c171c0e67a2f742ecf2084d842cd8bee7da', '(812) 790-30-36', '2014-09-11 13:29:38', '2014-05-09 22:50:28');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('28', 'Беспалов Ананий Романович', 'антонов.марта@example.com', 'nostrum', 'b5973f2db7aa8c6732b8e487ac1bfab5ad7da4fc', '(35222) 43-1666', '2012-10-20 03:57:48', '1989-02-13 20:24:17');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('29', 'Ян Владимирович Давыдов', 'регина13@example.net', 'explicabo', 'd055be6623775c91f5cecdb09349cad40c5a0ef7', '8-800-114-7772', '2000-05-19 08:19:26', '1988-12-28 10:58:15');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('30', 'Маслов Аркадий Львович', 'никитин.ирина@example.org', 'ad', 'a55b4a2807c6307e0653b241bc9cd3ef71b3fec0', '(495) 550-2588', '1996-03-16 09:16:53', '2024-05-13 00:43:24');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('31', 'Дина Алексеевич Яковлев', 'костин.розалина@example.com', 'quia', '5d773eb4a055edc0c5ad45483b2e10e1444e94e9', '+7 (922) 065-4332', '1996-01-25 14:46:33', '2022-06-13 13:02:32');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('32', 'Анфиса Львович Тихонов', 'ситников.борис@example.org', 'provident', '185af934cde298ee00d1c45cf0c658ec733b427a', '(812) 169-77-74', '2009-02-19 01:16:44', '2009-12-18 15:23:47');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('33', 'Лыткин Наталья Иванович', 'мухин.розалина@example.com', 'officia', '04658869420559133420caf30b2e04dd073e224b', '(812) 384-27-32', '1993-11-10 23:27:03', '1977-07-11 13:52:25');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('34', 'Евгений Иванович Лазарев', 'майя.зайцев@example.net', 'voluptatum', 'b3324050bc2425be093563615b35f9ca6b0d446d', '(812) 045-69-40', '1990-06-25 20:31:17', '2010-04-06 09:41:05');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('35', 'Овчинников Николай Иванович', 'глеб47@example.com', 'et', '0893b97fcce3c4fc41e914cb7291817f1be05d62', '8-800-610-2184', '1994-06-12 21:17:50', '1985-01-28 14:54:42');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('36', 'Майя Львович Беляков', 'антонин07@example.org', 'ex', 'dc00e1cce7776d9891812a08ac354645bac46b96', '(812) 334-39-54', '2024-07-20 22:41:01', '1978-06-30 06:49:41');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('37', 'Илья Иванович Соколов', 'gбеляков@example.com', 'molestias', '0b36b7aae5c9b4c9f78d0601bc312920bc62d02f', '+7 (922) 835-9965', '2010-02-17 11:36:48', '1971-12-13 06:44:59');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('38', 'Ксения Иванович Филиппов', 'баранов.зоя@example.org', 'provident', 'f532b6d1b0a46d983b327561dcd78e84fa52b690', '+7 (922) 491-9443', '2022-10-02 04:53:23', '2018-02-19 16:01:18');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('39', 'Павлов герман Дмитриевич', 'макар92@example.net', 'sit', '33e0f09b7938acfb6dfbea2b953aacdfae6a23cb', '+7 (922) 293-1730', '2017-10-09 00:37:59', '1995-03-31 08:54:02');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('40', 'Евгений Владимирович Якушев', 'mлогинов@example.org', 'quis', '29859965cd109a9b7597846139c2ad67190c0d6c', '(35222) 02-2402', '2006-05-10 02:00:22', '1985-03-09 08:16:39');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('41', 'Зиновьев лев Владимирович', 'gсамсонов@example.net', 'earum', 'fe96c1c111195183ed4eb3fec556943eec973e29', '(812) 761-97-16', '2014-03-25 04:03:07', '1990-08-01 00:30:58');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('42', 'богдан Львович Никифоров', 'ларионов.лаврентий@example.com', 'et', '6b15cab14bfd6754480a0c849b614fa392e4bb59', '(35222) 49-1680', '1974-05-20 03:31:53', '2009-08-26 04:09:14');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('43', 'Олег Иванович Исаев', 'елена.бобров@example.org', 'repellat', '4f1b7ccf5f99d20ae74b35a502e984683dbc10a4', '8-800-171-3622', '2013-02-27 16:30:10', '2016-11-04 22:30:30');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('44', 'Таисия Максимович Суворов', 'юлия22@example.org', 'veniam', '8c8acb1e4cb4497c170e3fd3630d9e31104ae514', '8-800-896-8386', '2013-10-08 03:11:16', '2014-05-18 00:04:34');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('45', 'Наумов Валентин Евгеньевич', 'пётр.корнилов@example.org', 'sed', '948eee08beb6fc691d719899c3e2c4f0da6d6836', '(812) 966-43-38', '2015-04-09 20:04:22', '2009-03-07 10:15:00');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('46', 'Волков Ульяна Владимирович', 'артемий.михеев@example.com', 'sunt', '0d166179a5cb9f8318746b2fd181cf545fea87cc', '(495) 383-4799', '2015-11-09 20:57:35', '1993-01-09 17:09:04');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('47', 'Тарасов Любовь Владимирович', 'qкулагин@example.com', 'et', 'd4c15f47d47e1021cfccb803ca9e71493bd6a024', '(495) 056-9016', '2010-12-11 16:29:03', '1978-11-05 12:27:32');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('48', 'Тимур Львович Аксёнов', 'дан.шашков@example.com', 'quisquam', '2bdaa8250bc1e33008c7d4f3902352cf0ad6be25', '(35222) 44-8325', '2016-05-14 15:14:04', '2001-03-31 09:01:48');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('49', 'Клим Борисович Матвеев', 'глеб.бобылёв@example.net', 'ea', '2086df4353a55fa3ac0b49e0f44bf7a50a8c19b9', '(35222) 76-2306', '1991-11-12 06:12:55', '1978-04-28 18:56:44');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('50', 'глеб Андреевич Фролов', 'ксения81@example.com', 'nihil', 'ff5721af31d6323a86389cff3b58f4fd4096b501', '(35222) 20-5073', '2025-01-04 05:50:52', '1980-03-10 18:28:11');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('51', 'Геннадий Львович Александров', 'яна48@example.net', 'id', '2f84730f71b96d3bac086480ba1ef3736107051f', '(35222) 48-1983', '2007-07-09 20:58:54', '1977-11-01 21:49:40');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('52', 'Марта Фёдорович Носов', 'третьяков.инга@example.net', 'maxime', 'fe1844dc48b6f682e81ad8dedbfd6a10885837f4', '8-800-877-0549', '2024-05-16 17:19:53', '1977-10-12 18:06:06');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('53', 'Цветков Анжелика Львович', 'ярослав68@example.net', 'sit', '5ea21bdf5e8a10f4cba83ce81f12cc0fbce2b8ed', '(495) 931-5223', '2005-04-19 04:18:20', '2003-11-03 18:00:47');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('54', 'Гурьев Ярослава Алексеевич', 'герман66@example.net', 'quis', 'a667a2964479cd6570399111006909bc5dbaf927', '8-800-277-1051', '1992-10-23 20:34:25', '1978-12-03 09:40:12');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('55', 'Лилия Владимирович Лебедев', 'oсубботин@example.org', 'fuga', '959cd4a068e4e6e57279a103458e7ee757e5f7f6', '8-800-358-7406', '1971-06-06 01:55:41', '2001-07-24 05:56:56');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('56', 'Вадим Сергеевич Мартынов', 'семён.казаков@example.org', 'deserunt', '0387df985259966f325def79d03ad33910808ea3', '(35222) 97-8760', '2016-04-13 16:47:47', '2020-03-25 13:25:10');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('57', 'Виноградов Роберт Борисович', 'исаков.алина@example.org', 'maxime', 'b0534d049375b1117d71c2940f3c857bb0451b66', '(35222) 63-8474', '1976-01-06 09:56:34', '2019-02-19 03:28:15');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('58', 'Игорь Иванович Абрамов', 'ольга.власов@example.org', 'veritatis', 'f949118d102e6e04314fbc3b34b022c3b65143e3', '(35222) 89-2926', '2022-03-06 05:25:04', '1979-10-11 00:19:59');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('59', 'Роман Сергеевич Савельев', 'пестов.маргарита@example.net', 'dolores', '411da21b99dcc018245367eaf739d11a39881051', '+7 (922) 631-7501', '1970-02-20 19:36:07', '2013-06-07 01:22:53');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('60', 'герасим Борисович Карпов', 'uлихачёв@example.net', 'maxime', '0216178c2a8fc76ca095b74a58eeb56e568638e0', '(495) 299-1231', '2016-03-08 17:00:15', '2003-05-14 01:23:38');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('61', 'Воронцов Евгения Евгеньевич', 'антонина.мельников@example.com', 'itaque', '0d76c714ff69a881647fa91a60f7258e2f7bf598', '(495) 824-6349', '2011-10-17 15:47:09', '1971-07-31 21:34:10');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('62', 'Алёна Владимирович Комиссаров', 'спартак.мясников@example.com', 'similique', 'fece2686fe073ec7abde2fae96e2147ad5fa34d2', '8-800-387-0467', '2005-04-08 02:32:41', '1971-01-27 19:03:23');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('63', 'Морозов Ника Андреевич', 'mвасильев@example.net', 'ut', '524f90f98bbd8905624c3a0780b2f7da6c843c5f', '(495) 023-9033', '1976-01-18 07:22:43', '2005-10-15 01:02:30');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('64', 'Лада Максимович Щукин', 'инга.кабанов@example.net', 'explicabo', '1ca0fe9bce2e25addf07adbfd07310469d15e35c', '(812) 049-12-10', '2016-12-26 02:34:03', '2009-02-22 02:42:37');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('65', 'Якушев Лаврентий Владимирович', 'егор89@example.net', 'illum', '886336a2dfd1d72c336029043ec837dcde268f80', '8-800-235-2970', '1981-07-08 12:26:42', '2013-05-16 07:34:31');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('66', 'Соловьёв Инесса Алексеевич', 'yкошелев@example.com', 'dolorem', 'b8d5f90990db1e245af8a82c98ec6a865553c285', '(812) 168-18-41', '2019-12-20 13:25:34', '1990-02-18 09:11:05');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('67', 'Клара Сергеевич Харитонов', 'jвишняков@example.net', 'aperiam', '953f68d2b84c671adc8d81616fe4e27731a603be', '+7 (922) 757-3154', '2010-07-21 10:49:26', '2000-12-14 04:27:25');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('68', 'Никонов Алексей Борисович', 'ростислав.терентьев@example.org', 'laudantium', '9d9cb5e5a3c44ec621f4cea8e92969ae68dddd05', '8-800-014-2904', '2007-12-11 21:48:59', '2016-01-24 23:50:25');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('69', 'Альберт Андреевич Марков', 'bсавельев@example.com', 'fugit', 'd6dcb1f6fd5c462b8c71c13ea55697a16a166aa6', '(812) 192-63-46', '2008-12-10 10:45:03', '1972-03-10 07:18:37');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('70', 'Изабелла Романович Юдин', 'эмилия.субботин@example.org', 'ad', 'dc0cfc08bb3cb81702c15ec4a2c2b2368fe47473', '(35222) 72-5216', '1995-04-20 13:06:57', '1982-08-17 23:59:31');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('71', 'Наумов болеслав Андреевич', 'надежда.мельников@example.com', 'tempore', '88ad64d10e92d2bb2d07efb64a4c93553cb9d2cb', '(495) 535-6314', '1998-12-19 07:35:09', '2004-08-07 23:34:01');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('72', 'Филатов Алиса Александрович', 'мельников.ксения@example.net', 'ut', 'e03651669a4fbe5fbd383b56096dca9468370489', '(495) 762-0681', '2021-07-26 12:17:49', '1976-04-12 10:41:39');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('73', 'Никонов сава Борисович', 'eназаров@example.net', 'error', '0541826880cd079ffe6c80ca3a93a63d664da2f9', '(495) 624-7390', '2022-02-21 03:09:40', '1970-05-01 23:32:56');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('74', 'Сысоев Елена Сергеевич', 'yпахомов@example.net', 'tempora', '71033e89d9c9c89c4f5a2ed5ceb013c61e5cc5b7', '(35222) 84-8437', '1980-04-21 09:33:00', '1981-04-10 00:33:38');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('75', 'Злата Дмитриевич Беспалов', 'владислав19@example.com', 'distinctio', '072fee9a4a9ca85a7ffc94eef040921fb7b9404d', '(35222) 24-8043', '1979-12-18 12:47:28', '2008-10-24 07:44:17');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('76', 'Яковлев Николай Максимович', 'стефан.гаврилов@example.org', 'ducimus', '3f425ad8553031a511d30ba05680ecf175d5ec88', '(495) 147-6225', '1986-01-03 22:32:32', '1974-10-14 16:07:47');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('77', 'Юрий Евгеньевич Шаров', 'wмоисеев@example.com', 'exercitationem', '3fe48c11d3d6faf0f36aed06d192c8bbdf09fbef', '(812) 817-58-00', '2004-12-11 06:24:58', '1994-04-05 20:08:25');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('78', 'Шестаков Артём Евгеньевич', 'pсысоев@example.com', 'corrupti', 'dbb0ee903d90b8228a8e89741fdffc2697ae93b4', '(812) 070-35-92', '1986-04-20 03:25:06', '2009-09-11 22:39:57');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('79', 'Федосеев Савва Алексеевич', 'диана.волков@example.org', 'alias', '65599a1f1690e0a6fbce68be2d66d5d41526eee5', '8-800-213-4603', '1994-04-06 18:52:54', '1988-09-14 11:21:01');
INSERT INTO `client` (`id`, `name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('80', 'Татьяна Алексеевич Капустин', 'зоя.копылов@example.org', 'et', '3726faa1125871cd39f2371566fd05dc1064f584', '(495) 019-8994', '1972-07-29 06:10:12', '1980-05-30 12:56:33');
INSERT INTO `client` (`name`, `email`, `password`, `hash_password`, `phone`, `created_at`, `modified_at`) VALUES ('Татьяна Алексеевич Капустин', 'зоя.копылов@example.org', 'et', '3726faa1125871cd39f2371566fd05dc1064f584', '(495) 019-8994', '1972-07-29 06:10:12', '1980-05-30 12:56:33');


#
# TABLE STRUCTURE FOR: room
#

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `rooms_quantity` enum('Одноместный ','Двухместный','Трёхместный ','Четырёхместный') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('1', '1', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('2', '2', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('3', '3', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('4', '4', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('5', '5', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('6', '6', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('7', '7', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('8', '8', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('9', '9', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('10', '10', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('11', '11', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('12', '12', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('13', '13', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('14', '14', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('15', '15', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('16', '16', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('17', '17', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('18', '18', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('19', '19', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('20', '20', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('21', '21', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('22', '22', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('23', '23', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('24', '24', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('25', '25', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('26', '26', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('27', '27', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('28', '28', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('29', '29', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('30', '30', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('31', '31', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('32', '32', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('33', '33', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('34', '34', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('35', '35', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('36', '36', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('37', '37', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('38', '38', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('39', '39', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('40', '40', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('41', '41', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('42', '42', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('43', '43', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('44', '44', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('45', '45', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('46', '46', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('47', '47', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('48', '48', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('49', '49', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('50', '50', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('51', '51', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('52', '52', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('53', '53', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('54', '54', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('55', '55', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('56', '56', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('57', '57', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('58', '58', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('59', '59', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('60', '60', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('61', '61', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('62', '62', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('63', '63', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('64', '64', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('65', '65', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('66', '66', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('67', '67', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('68', '68', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('69', '69', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('70', '70', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('71', '71', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('72', '72', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('73', '73', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('74', '74', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('75', '75', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('76', '76', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('77', '77', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('78', '78', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('79', '79', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('80', '80', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('81', '1', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('82', '2', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('83', '3', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('84', '4', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('85', '5', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('86', '6', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('87', '7', 'Трёхместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('88', '8', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('89', '9', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('90', '10', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('91', '11', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('92', '12', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('93', '13', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('94', '14', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('95', '15', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('96', '16', 'Двухместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('97', '17', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('98', '18', 'Четырёхместный');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('99', '19', 'Одноместный ');
INSERT INTO `room` (`id`, `client_id`, `rooms_quantity`) VALUES ('100', '20', 'Трёхместный ');

#
# TABLE STRUCTURE FOR: order_clients_rooms
#

DROP TABLE IF EXISTS `order_clients_rooms`;

CREATE TABLE `order_clients_rooms` (
  `client_id` bigint(20) unsigned NOT NULL,
  `room_id` bigint(20) unsigned NOT NULL,
  `order_date_at` datetime DEFAULT current_timestamp(),
  `order_date_end` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`client_id`,`room_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `order_clients_rooms_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_clients_rooms_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('1', '1', '2025-03-19 00:50:09', '2025-03-25 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('1', '81', '2025-11-02 03:42:55', '2025-11-22 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('2', '2', '2025-06-12 03:11:08', '2025-07-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('2', '82', '2025-01-07 00:56:29', '2025-01-27 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('3', '3', '2025-05-29 08:58:21', '2025-06-15 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('3', '83', '2025-09-01 09:46:25', '2025-09-25 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('4', '4', '2025-05-28 14:14:03', '2025-05-31 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('4', '84', '2025-09-15 04:17:12', '2025-09-21 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('5', '5', '2025-10-06 22:40:58', '2025-10-30 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('5', '85', '2025-02-09 18:34:41', '2025-02-10 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('6', '6', '2025-10-07 05:56:29', '2025-10-25 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('6', '86', '2025-09-24 16:31:40', '2025-10-02 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('7', '7', '2025-03-11 05:50:41', '2025-03-17 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('7', '87', '2025-02-21 06:38:02', '2025-03-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('8', '8', '2025-08-13 14:19:03', '2025-08-17 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('8', '88', '2025-09-23 20:09:20', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('9', '9', '2025-09-03 02:29:21', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('9', '89', '2025-12-13 14:45:00', '2025-12-21 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('10', '10', '2025-10-13 23:16:12', '2025-11-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('10', '90', '2025-11-25 19:18:05', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('11', '11', '2025-07-04 23:30:41', '2025-07-11 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('11', '91', '2025-09-03 22:46:42', '2025-09-11 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('12', '12', '2025-10-21 07:47:49', '2025-11-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('12', '92', '2025-12-28 10:40:03', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('13', '13', '2025-12-01 08:31:40', '2025-12-13 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('13', '93', '2025-07-25 13:44:49', '2025-08-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('14', '14', '2025-01-22 17:04:15', '2025-02-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('14', '94', '2025-04-08 21:24:10', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('15', '15', '2025-11-11 05:03:46', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('15', '95', '2025-01-20 20:26:33', '2025-02-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('16', '16', '2025-08-08 16:45:57', '2025-09-02 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('16', '96', '2025-03-13 21:44:32', '2025-04-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('17', '17', '2025-03-17 15:59:01', '2025-04-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('17', '97', '2025-11-02 11:08:09', '2025-11-21 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('18', '18', '2025-04-17 14:54:45', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('18', '98', '2025-08-11 04:19:28', '2025-08-22 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('19', '19', '2025-06-20 03:45:12', '2025-07-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('19', '99', '2025-11-13 02:44:43', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('20', '20', '2025-04-17 02:26:18', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('20', '100', '2025-08-09 00:05:33', '2025-09-29 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('21', '21', '2025-06-09 19:05:56', '2025-07-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('22', '22', '2025-09-10 12:26:46', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('23', '23', '2025-04-13 13:45:12', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('24', '24', '2025-08-08 06:25:03', '2025-09-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('25', '25', '2025-11-30 20:39:04', '2025-12-11 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('26', '26', '2025-08-19 16:23:18', '2025-08-23 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('27', '27', '2025-01-08 02:34:09', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('28', '28', '2025-11-20 16:48:23', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('29', '29', '2025-04-12 18:59:25', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('30', '30', '2025-10-11 22:35:36', '2025-12-11 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('31', '31', '2025-09-06 21:03:54', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('32', '32', '2025-11-15 02:46:33', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('33', '33', '2025-06-09 18:53:21', '2025-06-15 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('34', '34', '2025-04-02 13:47:31', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('35', '35', '2025-05-19 07:28:21', '2025-05-26 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('36', '36', '2025-11-20 16:33:14', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('37', '37', '2025-10-20 14:09:53', '2025-11-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('38', '38', '2025-09-08 22:21:41', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('39', '39', '2025-08-13 06:01:04', '2025-08-17 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('40', '40', '2025-07-31 12:24:54', '2025-09-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('41', '41', '2025-03-01 23:40:24', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('42', '42', '2025-07-27 06:08:27', '2025-08-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('43', '43', '2025-09-14 09:26:02', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('44', '44', '2025-06-28 05:25:36', '2025-07-21 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('45', '45', '2025-09-30 02:03:01', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('46', '46', '2025-01-19 12:09:01', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('47', '47', '2025-10-26 08:41:14', '2025-11-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('48', '48', '2025-11-25 21:22:30', '2025-12-03 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('49', '49', '2025-11-24 12:42:17', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('50', '50', '2025-01-27 15:45:37', '2025-03-02 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('51', '51', '2025-12-27 10:15:28', '2025-12-31 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('52', '52', '2025-03-05 11:04:33', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('53', '53', '2025-06-06 20:48:19', '2025-06-26 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('54', '54', '2025-10-22 13:09:15', '2025-11-27 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('55', '55', '2025-12-12 14:59:57', '2025-12-29 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('56', '56', '2025-01-30 21:26:58', '2025-02-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('57', '57', '2025-02-03 19:40:46', '2025-03-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('58', '58', '2025-02-24 11:43:48', '2025-03-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('59', '59', '2025-03-18 09:16:48', '2025-04-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('60', '60', '2025-11-20 14:44:01', '2025-12-10 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('61', '61', '2025-12-28 19:26:08', '2025-12-31 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('62', '62', '2025-11-17 19:48:37', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('63', '63', '2025-09-12 14:13:45', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('64', '64', '2025-03-25 23:53:17', '2025-05-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('65', '65', '2025-11-23 23:18:22', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('66', '66', '2025-02-18 16:47:48', '2025-03-11 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('67', '67', '2025-05-10 20:13:08', '2025-06-14 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('68', '68', '2025-01-08 17:51:46', '2025-02-18 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('69', '69', '2025-07-05 10:41:34', '2025-08-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('70', '70', '2025-05-09 06:30:52', '2025-06-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('71', '71', '2025-08-01 22:40:39', '2025-09-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('72', '72', '2025-10-16 10:51:53', '2025-10-22 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('73', '73', '2025-07-19 23:44:54', '2025-08-05 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('74', '74', '2025-07-01 21:22:54', '2025-07-19 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('75', '75', '2025-04-18 23:08:14', '2025-04-27 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('76', '76', '2025-09-12 18:33:01', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('77', '77', '2025-01-15 04:59:43', '2025-01-18 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('78', '78', '2025-11-17 02:28:32', '2025-12-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('79', '79', '2025-09-23 19:55:00', '2025-10-01 00:00:00');
INSERT INTO `order_clients_rooms` (`client_id`, `room_id`, `order_date_at`, `order_date_end`) VALUES ('80', '80', '2025-03-08 13:44:35', '2025-03-19 00:00:00');


DROP TRIGGER IF EXISTS set_hash_password_client;
DELIMITER //
CREATE TRIGGER set_hash_password_client
BEFORE INSERT
ON client FOR EACH ROW
BEGIN
  SET NEW.hash_password = SHA1(NEW.password);
END //
DELIMITER ;

DROP TRIGGER IF EXISTS set_hash_password_admin;
DELIMITER //
CREATE TRIGGER set_hash_password_admin
BEFORE INSERT
ON admin FOR EACH ROW
BEGIN
  SET NEW.hash_password = SHA1(NEW.password);
END //
DELIMITER ;



