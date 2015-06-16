DROP TABLE IF EXISTS `wp_revisr`;
CREATE TABLE `wp_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
LOCK TABLES `wp_revisr` WRITE;
INSERT INTO `wp_revisr` VALUES ('1','2015-06-16 12:37:19','Error staging files.','error'), ('2','2015-06-16 12:37:19','Error committing the changes to the local repository.','error'), ('3','2015-06-16 12:37:53','Error committing the changes to the local repository.','error'), ('4','2015-06-16 12:38:42','Error committing the changes to the local repository.','error'), ('5','2015-06-16 12:39:47','Committed <a href=\"http://10.0.0.134/w/three/wp-admin/post.php?post=7&action=edit\">#ccc387a</a> to the local repository.','commit');
UNLOCK TABLES;
