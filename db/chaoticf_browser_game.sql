SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `chaoticf_browser_game` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chaoticf_browser_game`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` char(96) NOT NULL,
  `salt` char(96) NOT NULL,
  `email` varchar(100) NOT NULL,
  `key` int(4) default NULL,
  `activated` tinyint(1) NOT NULL,
  `isadmin` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

CREATE TABLE IF NOT EXISTS `facebook_users` (
  `user_id` int(11) NOT NULL,
  `facebook_id` int(11) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`,`facebook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;