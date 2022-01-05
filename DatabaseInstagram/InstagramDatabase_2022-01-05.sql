# ************************************************************
# Sequel Ace SQL dump
# Version 20021
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 5.7.34)
# Database: InstagramDatabase
# Generation Time: 2022-01-05 15:30:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_comments_userid` (`user_id`),
  KEY `fk_comments_photoid` (`photo_id`),
  CONSTRAINT `fk_comments_photoid` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`photos_id`),
  CONSTRAINT `fk_comments_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table followers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `followers`;

CREATE TABLE `followers` (
  `follower_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `follows_id` int(11) DEFAULT NULL,
  `following_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`follower_id`),
  KEY `fk_follows_userid` (`follows_id`),
  KEY `fk_following_userid` (`following_id`),
  CONSTRAINT `fk_following_userid` FOREIGN KEY (`following_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_follows_userid` FOREIGN KEY (`follows_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table likes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `user_id` int(11) DEFAULT NULL,
  `likes_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`likes_id`),
  KEY `fk_likes_userid` (`user_id`),
  KEY `fk_likes_photoid` (`photo_id`),
  CONSTRAINT `fk_likes_photoid` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`photos_id`),
  CONSTRAINT `fk_likes_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table photos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `photos_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`photos_id`),
  KEY `fk_photos_userid` (`user_id`),
  CONSTRAINT `fk_photos_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
