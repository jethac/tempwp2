DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wp_posts` WRITE;
INSERT INTO `wp_posts` VALUES ('1','1','2015-06-16 12:33:48','2015-06-16 12:33:48','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2015-06-16 12:33:48','2015-06-16 12:33:48','','0','http://10.0.0.134/w/three/?p=1','0','post','','1'), ('2','1','2015-06-16 12:33:48','2015-06-16 12:33:48','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://10.0.0.134/w/three/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2015-06-16 12:33:48','2015-06-16 12:33:48','','0','http://10.0.0.134/w/three/?page_id=2','0','page','','0'), ('3','1','2015-06-16 12:33:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2015-06-16 12:33:57','0000-00-00 00:00:00','','0','http://10.0.0.134/w/three/?p=3','0','post','','0'), ('4','1','2015-06-16 12:37:19','2015-06-16 12:37:19','','gitignore','','publish','closed','closed','','gitignore','','','2015-06-16 12:37:19','2015-06-16 12:37:19','','0','http://10.0.0.134/w/three/?post_type=revisr_commits&#038;p=4','0','revisr_commits','','0'), ('5','1','2015-06-16 12:37:53','2015-06-16 12:37:53','','gitignore','','publish','closed','closed','','gitignore-2','','','2015-06-16 12:37:53','2015-06-16 12:37:53','','0','http://10.0.0.134/w/three/?post_type=revisr_commits&#038;p=5','0','revisr_commits','','0'), ('6','1','2015-06-16 12:38:42','2015-06-16 12:38:42','','gitignore','','publish','closed','closed','','gitignore-3','','','2015-06-16 12:38:42','2015-06-16 12:38:42','','0','http://10.0.0.134/w/three/?post_type=revisr_commits&#038;p=6','0','revisr_commits','','0'), ('7','1','2015-06-16 12:39:46','2015-06-16 12:39:46','','foo','','publish','closed','closed','','foo','','','2015-06-16 12:39:46','2015-06-16 12:39:46','','0','http://10.0.0.134/w/three/?post_type=revisr_commits&#038;p=7','0','revisr_commits','','0'), ('8','1','2015-06-16 12:40:24','2015-06-16 12:40:24','rfawgeshrdtjfyukgi,hjl..','hey i am a test post','','publish','open','open','','hey-i-am-a-test-post','','','2015-06-16 12:40:24','2015-06-16 12:40:24','','0','http://10.0.0.134/w/three/?p=8','0','post','','0'), ('9','1','2015-06-16 12:40:24','2015-06-16 12:40:24','rfawgeshrdtjfyukgi,hjl..','hey i am a test post','','inherit','open','open','','8-revision-v1','','','2015-06-16 12:40:24','2015-06-16 12:40:24','','8','http://10.0.0.134/w/three/index.php/2015/06/16/8-revision-v1/','0','revision','','0'), ('10','1','2015-06-16 12:40:34','2015-06-16 12:40:34','wafgsdehrfjtgyhk,uj','i am a second test post','','publish','open','open','','i-am-a-second-test-post','','','2015-06-16 12:40:34','2015-06-16 12:40:34','','0','http://10.0.0.134/w/three/?p=10','0','post','','0'), ('11','1','2015-06-16 12:40:34','2015-06-16 12:40:34','wafgsdehrfjtgyhk,uj','i am a second test post','','inherit','open','open','','10-revision-v1','','','2015-06-16 12:40:34','2015-06-16 12:40:34','','10','http://10.0.0.134/w/three/index.php/2015/06/16/10-revision-v1/','0','revision','','0'), ('12','1','2015-06-16 12:41:38','2015-06-16 12:41:38','','first two posts','','publish','closed','closed','','first-two-posts','','','2015-06-16 12:41:38','2015-06-16 12:41:38','','0','http://10.0.0.134/w/three/?post_type=revisr_commits&#038;p=12','0','revisr_commits','','0');
UNLOCK TABLES;
