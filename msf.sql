-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 05 oktober 2011 kl 18:35
-- Serverversion: 5.1.54
-- PHP-version: 5.3.5-1ubuntu7.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `msf`
--

-- --------------------------------------------------------

--
-- Struktur för tabell `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question1` varchar(200) DEFAULT NULL,
  `qtype1` int(11) DEFAULT NULL,
  `question2` varchar(200) DEFAULT NULL,
  `qtype2` int(11) DEFAULT NULL,
  `question3` varchar(200) DEFAULT NULL,
  `qtype3` int(11) DEFAULT NULL,
  `question4` varchar(200) DEFAULT NULL,
  `qtype4` int(11) DEFAULT NULL,
  `question5` varchar(200) DEFAULT NULL,
  `qtype5` int(11) DEFAULT NULL,
  `question6` varchar(200) DEFAULT NULL,
  `qtype6` int(11) DEFAULT NULL,
  `question7` varchar(200) DEFAULT NULL,
  `qtype7` int(11) DEFAULT NULL,
  `question8` varchar(200) DEFAULT NULL,
  `qtype8` int(11) DEFAULT NULL,
  `question9` varchar(200) DEFAULT NULL,
  `qtype9` int(11) DEFAULT NULL,
  `question10` varchar(200) DEFAULT NULL,
  `qtype10` int(11) DEFAULT NULL,
  `question11` varchar(200) DEFAULT NULL,
  `qtype11` int(11) DEFAULT NULL,
  `question12` varchar(200) DEFAULT NULL,
  `qtype12` int(11) DEFAULT NULL,
  `question13` varchar(200) DEFAULT NULL,
  `qtype13` int(11) DEFAULT NULL,
  `question14` varchar(200) DEFAULT NULL,
  `qtype14` int(11) DEFAULT NULL,
  `question15` varchar(200) DEFAULT NULL,
  `qtype15` int(11) DEFAULT NULL,
  `question16` varchar(200) DEFAULT NULL,
  `qtype16` int(11) DEFAULT NULL,
  `question17` varchar(200) DEFAULT NULL,
  `qtype17` int(11) DEFAULT NULL,
  `question18` varchar(200) DEFAULT NULL,
  `qtype18` int(11) DEFAULT NULL,
  `question19` varchar(200) DEFAULT NULL,
  `qtype19` int(11) DEFAULT NULL,
  `question20` varchar(200) DEFAULT NULL,
  `qtype20` int(11) DEFAULT NULL,
  `question21` varchar(200) DEFAULT NULL,
  `qtype21` int(11) DEFAULT NULL,
  `question22` varchar(200) DEFAULT NULL,
  `qtype22` int(11) DEFAULT NULL,
  `question23` varchar(200) DEFAULT NULL,
  `qtype23` int(11) DEFAULT NULL,
  `question24` varchar(200) DEFAULT NULL,
  `qtype24` int(11) DEFAULT NULL,
  `question25` varchar(200) DEFAULT NULL,
  `qtype25` int(11) DEFAULT NULL,
  `question26` varchar(200) DEFAULT NULL,
  `qtype26` int(11) DEFAULT NULL,
  `question27` varchar(200) DEFAULT NULL,
  `qtype27` int(11) DEFAULT NULL,
  `question28` varchar(200) DEFAULT NULL,
  `qtype28` int(11) DEFAULT NULL,
  `question29` varchar(200) DEFAULT NULL,
  `qtype29` int(11) DEFAULT NULL,
  `question30` varchar(200) DEFAULT NULL,
  `qtype30` int(11) DEFAULT NULL,
  `question31` varchar(200) DEFAULT NULL,
  `qtype31` int(11) DEFAULT NULL,
  `question32` varchar(200) DEFAULT NULL,
  `qtype32` int(11) DEFAULT NULL,
  `question33` varchar(200) DEFAULT NULL,
  `qtype33` int(11) DEFAULT NULL,
  `question34` varchar(200) DEFAULT NULL,
  `qtype34` int(11) DEFAULT NULL,
  `question35` varchar(200) DEFAULT NULL,
  `qtype35` int(11) DEFAULT NULL,
  `question36` varchar(200) DEFAULT NULL,
  `qtype36` int(11) DEFAULT NULL,
  `question37` varchar(200) DEFAULT NULL,
  `qtype37` int(11) DEFAULT NULL,
  `question38` varchar(200) DEFAULT NULL,
  `qtype38` int(11) DEFAULT NULL,
  `question39` varchar(200) DEFAULT NULL,
  `qtype39` int(11) DEFAULT NULL,
  `question40` varchar(200) DEFAULT NULL,
  `qtype40` int(11) DEFAULT NULL,
  `question41` varchar(200) DEFAULT NULL,
  `qtype41` int(11) DEFAULT NULL,
  `question42` varchar(200) DEFAULT NULL,
  `qtype42` int(11) DEFAULT NULL,
  `question43` varchar(200) DEFAULT NULL,
  `qtype43` int(11) DEFAULT NULL,
  `question44` varchar(200) DEFAULT NULL,
  `qtype44` int(11) DEFAULT NULL,
  `question45` varchar(200) DEFAULT NULL,
  `qtype45` int(11) DEFAULT NULL,
  `question46` varchar(200) DEFAULT NULL,
  `qtype46` int(11) DEFAULT NULL,
  `question47` varchar(200) DEFAULT NULL,
  `qtype47` int(11) DEFAULT NULL,
  `question48` varchar(200) DEFAULT NULL,
  `qtype48` int(11) DEFAULT NULL,
  `question49` varchar(200) DEFAULT NULL,
  `qtype49` int(11) DEFAULT NULL,
  `question50` varchar(200) DEFAULT NULL,
  `qtype50` int(11) DEFAULT NULL,
  `question51` varchar(200) DEFAULT NULL,
  `qtype51` int(11) DEFAULT NULL,
  `question52` varchar(200) DEFAULT NULL,
  `qtype52` int(11) DEFAULT NULL,
  `question53` varchar(200) DEFAULT NULL,
  `qtype53` int(11) DEFAULT NULL,
  `question54` varchar(200) DEFAULT NULL,
  `qtype54` int(11) DEFAULT NULL,
  `question55` varchar(200) DEFAULT NULL,
  `qtype55` int(11) DEFAULT NULL,
  `question56` varchar(200) DEFAULT NULL,
  `qtype56` int(11) DEFAULT NULL,
  `question57` varchar(200) DEFAULT NULL,
  `qtype57` int(11) DEFAULT NULL,
  `question58` varchar(200) DEFAULT NULL,
  `qtype58` int(11) DEFAULT NULL,
  `question59` varchar(200) DEFAULT NULL,
  `qtype59` int(11) DEFAULT NULL,
  `question60` varchar(200) DEFAULT NULL,
  `qtype60` int(11) DEFAULT NULL,
  `question61` varchar(200) DEFAULT NULL,
  `qtype61` int(11) DEFAULT NULL,
  `question62` varchar(200) DEFAULT NULL,
  `qtype62` int(11) DEFAULT NULL,
  `question63` varchar(200) DEFAULT NULL,
  `qtype63` int(11) DEFAULT NULL,
  `question64` varchar(200) DEFAULT NULL,
  `qtype64` int(11) DEFAULT NULL,
  `question65` varchar(200) DEFAULT NULL,
  `qtype65` int(11) DEFAULT NULL,
  `question66` varchar(200) DEFAULT NULL,
  `qtype66` int(11) DEFAULT NULL,
  `question67` varchar(200) DEFAULT NULL,
  `qtype67` int(11) DEFAULT NULL,
  `question68` varchar(200) DEFAULT NULL,
  `qtype68` int(11) DEFAULT NULL,
  `question69` varchar(200) DEFAULT NULL,
  `qtype69` int(11) DEFAULT NULL,
  `question70` varchar(200) DEFAULT NULL,
  `qtype70` int(11) DEFAULT NULL,
  `question71` varchar(200) DEFAULT NULL,
  `qtype71` int(11) DEFAULT NULL,
  `question72` varchar(200) DEFAULT NULL,
  `qtype72` int(11) DEFAULT NULL,
  `question73` varchar(200) DEFAULT NULL,
  `qtype73` int(11) DEFAULT NULL,
  `question74` varchar(200) DEFAULT NULL,
  `qtype74` int(11) DEFAULT NULL,
  `question75` varchar(200) DEFAULT NULL,
  `qtype75` int(11) DEFAULT NULL,
  `question76` varchar(200) DEFAULT NULL,
  `qtype76` int(11) DEFAULT NULL,
  `question77` varchar(200) DEFAULT NULL,
  `qtype77` int(11) DEFAULT NULL,
  `question78` varchar(200) DEFAULT NULL,
  `qtype78` int(11) DEFAULT NULL,
  `question79` varchar(200) DEFAULT NULL,
  `qtype79` int(11) DEFAULT NULL,
  `question80` varchar(200) DEFAULT NULL,
  `qtype80` int(11) DEFAULT NULL,
  `question81` varchar(200) DEFAULT NULL,
  `qtype81` int(11) DEFAULT NULL,
  `question82` varchar(200) DEFAULT NULL,
  `qtype82` int(11) DEFAULT NULL,
  `question83` varchar(200) DEFAULT NULL,
  `qtype83` int(11) DEFAULT NULL,
  `question84` varchar(200) DEFAULT NULL,
  `qtype84` int(11) DEFAULT NULL,
  `question85` varchar(200) DEFAULT NULL,
  `qtype85` int(11) DEFAULT NULL,
  `question86` varchar(200) DEFAULT NULL,
  `qtype86` int(11) DEFAULT NULL,
  `question87` varchar(200) DEFAULT NULL,
  `qtype87` int(11) DEFAULT NULL,
  `question88` varchar(200) DEFAULT NULL,
  `qtype88` int(11) DEFAULT NULL,
  `question89` varchar(200) DEFAULT NULL,
  `qtype89` int(11) DEFAULT NULL,
  `question90` varchar(200) DEFAULT NULL,
  `qtype90` int(11) DEFAULT NULL,
  `question91` varchar(200) DEFAULT NULL,
  `qtype91` int(11) DEFAULT NULL,
  `question92` varchar(200) DEFAULT NULL,
  `qtype92` int(11) DEFAULT NULL,
  `question93` varchar(200) DEFAULT NULL,
  `qtype93` int(11) DEFAULT NULL,
  `question94` varchar(200) DEFAULT NULL,
  `qtype94` int(11) DEFAULT NULL,
  `question95` varchar(200) DEFAULT NULL,
  `qtype95` int(11) DEFAULT NULL,
  `question96` varchar(200) DEFAULT NULL,
  `qtype96` int(11) DEFAULT NULL,
  `question97` varchar(200) DEFAULT NULL,
  `qtype97` int(11) DEFAULT NULL,
  `question98` varchar(200) DEFAULT NULL,
  `qtype98` int(11) DEFAULT NULL,
  `question99` varchar(200) DEFAULT NULL,
  `qtype99` int(11) DEFAULT NULL,
  `question100` varchar(200) DEFAULT NULL,
  `qtype100` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `forms`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `forms_has_questions`
--

DROP TABLE IF EXISTS `forms_has_questions`;
CREATE TABLE IF NOT EXISTS `forms_has_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_id` (`form_id`,`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `forms_has_questions`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `forms_has_tags`
--

DROP TABLE IF EXISTS `forms_has_tags`;
CREATE TABLE IF NOT EXISTS `forms_has_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `forms_has_tags`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `type` int(11) NOT NULL,
  `answ` text,
  `answ1` text,
  `answ2` text,
  `answ3` text,
  `answ4` text,
  `answ5` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Data i tabell `questions`
--

INSERT INTO `questions` (`id`, `question`, `type`, `answ`, `answ1`, `answ2`, `answ3`, `answ4`, `answ5`) VALUES
(1, 'How old am I?', 2, '', '28', '13', '16', '18', '34'),
(2, 'What''s my  name?', 1, 'My name is apan...', '', '', '', '', ''),
(3, 'Marcus', 6, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur för tabell `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `session_time_limit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `session`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `stats`
--

DROP TABLE IF EXISTS `stats`;
CREATE TABLE IF NOT EXISTS `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `average` int(11) NOT NULL,
  `users_answered` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `stats`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(96) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `tags`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `passw` varchar(60) NOT NULL,
  `session` varchar(255) NOT NULL,
  `akey` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`akey`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Data i tabell `users`
--

INSERT INTO `users` (`id`, `email`, `passw`, `session`, `akey`) VALUES
(1, 'nn@nn.se', '0', '1', '1');

-- --------------------------------------------------------

--
-- Struktur för tabell `users_has_tags`
--

DROP TABLE IF EXISTS `users_has_tags`;
CREATE TABLE IF NOT EXISTS `users_has_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `users_has_tags`
--

