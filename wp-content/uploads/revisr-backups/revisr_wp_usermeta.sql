DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
LOCK TABLES `wp_usermeta` WRITE;
INSERT INTO `wp_usermeta` VALUES ('1','1','nickname','jetha'), ('2','1','first_name',''), ('3','1','last_name',''), ('4','1','description',''), ('5','1','rich_editing','true'), ('6','1','comment_shortcuts','false'), ('7','1','admin_color','fresh'), ('8','1','use_ssl','0'), ('9','1','show_admin_bar_front','true'), ('10','1','wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'), ('11','1','wp_user_level','10'), ('12','1','dismissed_wp_pointers','wp360_locks,wp390_widgets'), ('13','1','show_welcome_panel','1'), ('14','1','session_tokens','a:1:{s:64:\"551dac1b409f84aa3e85e00656cd56eb43e49668f6288996d0a855fef7f12abf\";a:4:{s:10:\"expiration\";i:1434630836;s:2:\"ip\";s:10:\"10.0.0.133\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.39 Safari/537.36\";s:5:\"login\";i:1434458036;}}'), ('15','1','wp_dashboard_quick_press_last_post_id','3');
UNLOCK TABLES;
