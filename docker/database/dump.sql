CREATE DATABASE IF NOT EXISTS `main`;
GRANT ALL ON `main`.* TO 'root'@'%';

USE main;

DROP TABLE IF EXISTS `myTable`;
CREATE TABLE `myTable` (
     `uid` int(11) NOT NULL AUTO_INCREMENT,
     `title` text NOT NULL,
     PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;