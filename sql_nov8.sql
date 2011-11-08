-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2011 at 05:36 PM
-- Server version: 5.1.54
-- PHP Version: 5.3.5-1ubuntu7.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `msf`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--


-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_type` int(11) NOT NULL,
  `active_start` date NOT NULL,
  `active_end` date NOT NULL,
  `hidden_type` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(100) DEFAULT NULL,
  `timer` time NOT NULL,
  `q1` int(10) DEFAULT NULL,
  `q_points1` int(2) DEFAULT NULL,
  `q2` int(10) DEFAULT NULL,
  `q_points2` int(2) DEFAULT NULL,
  `q3` int(10) DEFAULT NULL,
  `q_points3` int(2) DEFAULT NULL,
  `q4` int(10) DEFAULT NULL,
  `q_points4` int(2) DEFAULT NULL,
  `q5` int(10) DEFAULT NULL,
  `q_points5` int(2) DEFAULT NULL,
  `q6` int(10) DEFAULT NULL,
  `q_points6` int(2) DEFAULT NULL,
  `q7` int(10) DEFAULT NULL,
  `q_points7` int(2) DEFAULT NULL,
  `q8` int(10) DEFAULT NULL,
  `q_points8` int(2) DEFAULT NULL,
  `q9` int(10) DEFAULT NULL,
  `q_points9` int(2) DEFAULT NULL,
  `q10` int(10) DEFAULT NULL,
  `q_points10` int(2) DEFAULT NULL,
  `q11` int(10) DEFAULT NULL,
  `q_points11` int(2) DEFAULT NULL,
  `q12` int(10) DEFAULT NULL,
  `q_points12` int(2) DEFAULT NULL,
  `q13` int(10) DEFAULT NULL,
  `q_points13` int(2) DEFAULT NULL,
  `q14` int(10) DEFAULT NULL,
  `q_points14` int(2) DEFAULT NULL,
  `q15` int(10) DEFAULT NULL,
  `q_points15` int(2) DEFAULT NULL,
  `q16` int(10) DEFAULT NULL,
  `q_points16` int(2) DEFAULT NULL,
  `q17` int(10) DEFAULT NULL,
  `q_points17` int(2) DEFAULT NULL,
  `q18` int(10) DEFAULT NULL,
  `q_points18` int(2) DEFAULT NULL,
  `q19` int(10) DEFAULT NULL,
  `q_points19` int(2) DEFAULT NULL,
  `q20` int(10) DEFAULT NULL,
  `q_points20` int(2) DEFAULT NULL,
  `q21` int(10) DEFAULT NULL,
  `q_points21` int(2) DEFAULT NULL,
  `q22` int(10) DEFAULT NULL,
  `q_points22` int(2) DEFAULT NULL,
  `q23` int(10) DEFAULT NULL,
  `q_points23` int(2) DEFAULT NULL,
  `q24` int(10) DEFAULT NULL,
  `q_points24` int(2) DEFAULT NULL,
  `q25` int(10) DEFAULT NULL,
  `q_points25` int(2) DEFAULT NULL,
  `q26` int(10) DEFAULT NULL,
  `q_points26` int(2) DEFAULT NULL,
  `q27` int(10) DEFAULT NULL,
  `q_points27` int(2) DEFAULT NULL,
  `q28` int(10) DEFAULT NULL,
  `q_points28` int(2) DEFAULT NULL,
  `q29` int(10) DEFAULT NULL,
  `q_points29` int(2) DEFAULT NULL,
  `q30` int(10) DEFAULT NULL,
  `q_points30` int(2) DEFAULT NULL,
  `q31` int(10) DEFAULT NULL,
  `q_points31` int(2) DEFAULT NULL,
  `q32` int(10) DEFAULT NULL,
  `q_points32` int(2) DEFAULT NULL,
  `q33` int(10) DEFAULT NULL,
  `q_points33` int(2) DEFAULT NULL,
  `q34` int(10) DEFAULT NULL,
  `q_points34` int(2) DEFAULT NULL,
  `q35` int(10) DEFAULT NULL,
  `q_points35` int(2) DEFAULT NULL,
  `q36` int(10) DEFAULT NULL,
  `q_points36` int(2) DEFAULT NULL,
  `q37` int(10) DEFAULT NULL,
  `q_points37` int(2) DEFAULT NULL,
  `q38` int(10) DEFAULT NULL,
  `q_points38` int(2) DEFAULT NULL,
  `q39` int(10) DEFAULT NULL,
  `q_points39` int(2) DEFAULT NULL,
  `q40` int(10) DEFAULT NULL,
  `q_points40` int(2) DEFAULT NULL,
  `q41` int(10) DEFAULT NULL,
  `q_points41` int(2) DEFAULT NULL,
  `q42` int(10) DEFAULT NULL,
  `q_points42` int(2) DEFAULT NULL,
  `q43` int(10) DEFAULT NULL,
  `q_points43` int(2) DEFAULT NULL,
  `q44` int(10) DEFAULT NULL,
  `q_points44` int(2) DEFAULT NULL,
  `q45` int(10) DEFAULT NULL,
  `q_points45` int(2) DEFAULT NULL,
  `q46` int(10) DEFAULT NULL,
  `q_points46` int(2) DEFAULT NULL,
  `q47` int(10) DEFAULT NULL,
  `q_points47` int(2) DEFAULT NULL,
  `q48` int(10) DEFAULT NULL,
  `q_points48` int(2) DEFAULT NULL,
  `q49` int(10) DEFAULT NULL,
  `q_points49` int(2) DEFAULT NULL,
  `q50` int(10) DEFAULT NULL,
  `q_points50` int(2) DEFAULT NULL,
  `q51` int(10) DEFAULT NULL,
  `q_points51` int(2) DEFAULT NULL,
  `q52` int(10) DEFAULT NULL,
  `q_points52` int(2) DEFAULT NULL,
  `q53` int(10) DEFAULT NULL,
  `q_points53` int(2) DEFAULT NULL,
  `q54` int(10) DEFAULT NULL,
  `q_points54` int(2) DEFAULT NULL,
  `q55` int(10) DEFAULT NULL,
  `q_points55` int(2) DEFAULT NULL,
  `q56` int(10) DEFAULT NULL,
  `q_points56` int(2) DEFAULT NULL,
  `q57` int(10) DEFAULT NULL,
  `q_points57` int(2) DEFAULT NULL,
  `q58` int(10) DEFAULT NULL,
  `q_points58` int(2) DEFAULT NULL,
  `q59` int(10) DEFAULT NULL,
  `q_points59` int(2) DEFAULT NULL,
  `q60` int(10) DEFAULT NULL,
  `q_points60` int(2) DEFAULT NULL,
  `q61` int(10) DEFAULT NULL,
  `q_points61` int(2) DEFAULT NULL,
  `q62` int(10) DEFAULT NULL,
  `q_points62` int(2) DEFAULT NULL,
  `q63` int(10) DEFAULT NULL,
  `q_points63` int(2) DEFAULT NULL,
  `q64` int(10) DEFAULT NULL,
  `q_points64` int(2) DEFAULT NULL,
  `q65` int(10) DEFAULT NULL,
  `q_points65` int(2) DEFAULT NULL,
  `q66` int(10) DEFAULT NULL,
  `q_points66` int(2) DEFAULT NULL,
  `q67` int(10) DEFAULT NULL,
  `q_points67` int(2) DEFAULT NULL,
  `q68` int(10) DEFAULT NULL,
  `q_points68` int(2) DEFAULT NULL,
  `q69` int(10) DEFAULT NULL,
  `q_points69` int(2) DEFAULT NULL,
  `q70` int(10) DEFAULT NULL,
  `q_points70` int(2) DEFAULT NULL,
  `q71` int(10) DEFAULT NULL,
  `q_points71` int(2) DEFAULT NULL,
  `q72` int(10) DEFAULT NULL,
  `q_points72` int(2) DEFAULT NULL,
  `q73` int(10) DEFAULT NULL,
  `q_points73` int(2) DEFAULT NULL,
  `q74` int(10) DEFAULT NULL,
  `q_points74` int(2) DEFAULT NULL,
  `q75` int(10) DEFAULT NULL,
  `q_points75` int(2) DEFAULT NULL,
  `q76` int(10) DEFAULT NULL,
  `q_points76` int(2) DEFAULT NULL,
  `q77` int(10) DEFAULT NULL,
  `q_points77` int(2) DEFAULT NULL,
  `q78` int(10) DEFAULT NULL,
  `q_points78` int(2) DEFAULT NULL,
  `q79` int(10) DEFAULT NULL,
  `q_points79` int(2) DEFAULT NULL,
  `q80` int(10) DEFAULT NULL,
  `q_points80` int(2) DEFAULT NULL,
  `q81` int(10) DEFAULT NULL,
  `q_points81` int(2) DEFAULT NULL,
  `q82` int(10) DEFAULT NULL,
  `q_points82` int(2) DEFAULT NULL,
  `q83` int(10) DEFAULT NULL,
  `q_points83` int(2) DEFAULT NULL,
  `q84` int(10) DEFAULT NULL,
  `q_points84` int(2) DEFAULT NULL,
  `q85` int(10) DEFAULT NULL,
  `q_points85` int(2) DEFAULT NULL,
  `q86` int(10) DEFAULT NULL,
  `q_points86` int(2) DEFAULT NULL,
  `q87` int(10) DEFAULT NULL,
  `q_points87` int(2) DEFAULT NULL,
  `q88` int(10) DEFAULT NULL,
  `q_points88` int(2) DEFAULT NULL,
  `q89` int(10) DEFAULT NULL,
  `q_points89` int(2) DEFAULT NULL,
  `q90` int(10) DEFAULT NULL,
  `q_points90` int(2) DEFAULT NULL,
  `q91` int(10) DEFAULT NULL,
  `q_points91` int(2) DEFAULT NULL,
  `q92` int(10) DEFAULT NULL,
  `q_points92` int(2) DEFAULT NULL,
  `q93` int(10) DEFAULT NULL,
  `q_points93` int(2) DEFAULT NULL,
  `q94` int(10) DEFAULT NULL,
  `q_points94` int(2) DEFAULT NULL,
  `q95` int(10) DEFAULT NULL,
  `q_points95` int(2) DEFAULT NULL,
  `q96` int(10) DEFAULT NULL,
  `q_points96` int(2) DEFAULT NULL,
  `q97` int(10) DEFAULT NULL,
  `q_points97` int(2) DEFAULT NULL,
  `q98` int(10) DEFAULT NULL,
  `q_points98` int(2) DEFAULT NULL,
  `q99` int(10) DEFAULT NULL,
  `q_points99` int(2) DEFAULT NULL,
  `q100` int(10) DEFAULT NULL,
  `q_points100` int(2) DEFAULT NULL,
  `q101` int(10) DEFAULT NULL,
  `q_points101` int(2) DEFAULT NULL,
  `q102` int(10) DEFAULT NULL,
  `q_points102` int(2) DEFAULT NULL,
  `q103` int(10) DEFAULT NULL,
  `q_points103` int(2) DEFAULT NULL,
  `q104` int(10) DEFAULT NULL,
  `q_points104` int(2) DEFAULT NULL,
  `q105` int(10) DEFAULT NULL,
  `q_points105` int(2) DEFAULT NULL,
  `q106` int(10) DEFAULT NULL,
  `q_points106` int(2) DEFAULT NULL,
  `q107` int(10) DEFAULT NULL,
  `q_points107` int(2) DEFAULT NULL,
  `q108` int(10) DEFAULT NULL,
  `q_points108` int(2) DEFAULT NULL,
  `q109` int(10) DEFAULT NULL,
  `q_points109` int(2) DEFAULT NULL,
  `q110` int(10) DEFAULT NULL,
  `q_points110` int(2) DEFAULT NULL,
  `q111` int(10) DEFAULT NULL,
  `q_points111` int(2) DEFAULT NULL,
  `q112` int(10) DEFAULT NULL,
  `q_points112` int(2) DEFAULT NULL,
  `q113` int(10) DEFAULT NULL,
  `q_points113` int(2) DEFAULT NULL,
  `q114` int(10) DEFAULT NULL,
  `q_points114` int(2) DEFAULT NULL,
  `q115` int(10) DEFAULT NULL,
  `q_points115` int(2) DEFAULT NULL,
  `q116` int(10) DEFAULT NULL,
  `q_points116` int(2) DEFAULT NULL,
  `q117` int(10) DEFAULT NULL,
  `q_points117` int(2) DEFAULT NULL,
  `q118` int(10) DEFAULT NULL,
  `q_points118` int(2) DEFAULT NULL,
  `q119` int(10) DEFAULT NULL,
  `q_points119` int(2) DEFAULT NULL,
  `q120` int(10) DEFAULT NULL,
  `q_points120` int(2) DEFAULT NULL,
  `q121` int(10) DEFAULT NULL,
  `q_points121` int(2) DEFAULT NULL,
  `q122` int(10) DEFAULT NULL,
  `q_points122` int(2) DEFAULT NULL,
  `q123` int(10) DEFAULT NULL,
  `q_points123` int(2) DEFAULT NULL,
  `q124` int(10) DEFAULT NULL,
  `q_points124` int(2) DEFAULT NULL,
  `q125` int(10) DEFAULT NULL,
  `q_points125` int(2) DEFAULT NULL,
  `q126` int(10) DEFAULT NULL,
  `q_points126` int(2) DEFAULT NULL,
  `q127` int(10) DEFAULT NULL,
  `q_points127` int(2) DEFAULT NULL,
  `q128` int(10) DEFAULT NULL,
  `q_points128` int(2) DEFAULT NULL,
  `q129` int(10) DEFAULT NULL,
  `q_points129` int(2) DEFAULT NULL,
  `q130` int(10) DEFAULT NULL,
  `q_points130` int(2) DEFAULT NULL,
  `q131` int(10) DEFAULT NULL,
  `q_points131` int(2) DEFAULT NULL,
  `q132` int(10) DEFAULT NULL,
  `q_points132` int(2) DEFAULT NULL,
  `q133` int(10) DEFAULT NULL,
  `q_points133` int(2) DEFAULT NULL,
  `q134` int(10) DEFAULT NULL,
  `q_points134` int(2) DEFAULT NULL,
  `q135` int(10) DEFAULT NULL,
  `q_points135` int(2) DEFAULT NULL,
  `q136` int(10) DEFAULT NULL,
  `q_points136` int(2) DEFAULT NULL,
  `q137` int(10) DEFAULT NULL,
  `q_points137` int(2) DEFAULT NULL,
  `q138` int(10) DEFAULT NULL,
  `q_points138` int(2) DEFAULT NULL,
  `q139` int(10) DEFAULT NULL,
  `q_points139` int(2) DEFAULT NULL,
  `q140` int(10) DEFAULT NULL,
  `q_points140` int(2) DEFAULT NULL,
  `q141` int(10) DEFAULT NULL,
  `q_points141` int(2) DEFAULT NULL,
  `q142` int(10) DEFAULT NULL,
  `q_points142` int(2) DEFAULT NULL,
  `q143` int(10) DEFAULT NULL,
  `q_points143` int(2) DEFAULT NULL,
  `q144` int(10) DEFAULT NULL,
  `q_points144` int(2) DEFAULT NULL,
  `q145` int(10) DEFAULT NULL,
  `q_points145` int(2) DEFAULT NULL,
  `q146` int(10) DEFAULT NULL,
  `q_points146` int(2) DEFAULT NULL,
  `q147` int(10) DEFAULT NULL,
  `q_points147` int(2) DEFAULT NULL,
  `q148` int(10) DEFAULT NULL,
  `q_points148` int(2) DEFAULT NULL,
  `q149` int(10) DEFAULT NULL,
  `q_points149` int(2) DEFAULT NULL,
  `q150` int(10) DEFAULT NULL,
  `q_points150` int(2) DEFAULT NULL,
  `q151` int(10) DEFAULT NULL,
  `q_points151` int(2) DEFAULT NULL,
  `q152` int(10) DEFAULT NULL,
  `q_points152` int(2) DEFAULT NULL,
  `q153` int(10) DEFAULT NULL,
  `q_points153` int(2) DEFAULT NULL,
  `q154` int(10) DEFAULT NULL,
  `q_points154` int(2) DEFAULT NULL,
  `q155` int(10) DEFAULT NULL,
  `q_points155` int(2) DEFAULT NULL,
  `q156` int(10) DEFAULT NULL,
  `q_points156` int(2) DEFAULT NULL,
  `q157` int(10) DEFAULT NULL,
  `q_points157` int(2) DEFAULT NULL,
  `q158` int(10) DEFAULT NULL,
  `q_points158` int(2) DEFAULT NULL,
  `q159` int(10) DEFAULT NULL,
  `q_points159` int(2) DEFAULT NULL,
  `q160` int(10) DEFAULT NULL,
  `q_points160` int(2) DEFAULT NULL,
  `q161` int(10) DEFAULT NULL,
  `q_points161` int(2) DEFAULT NULL,
  `q162` int(10) DEFAULT NULL,
  `q_points162` int(2) DEFAULT NULL,
  `q163` int(10) DEFAULT NULL,
  `q_points163` int(2) DEFAULT NULL,
  `q164` int(10) DEFAULT NULL,
  `q_points164` int(2) DEFAULT NULL,
  `q165` int(10) DEFAULT NULL,
  `q_points165` int(2) DEFAULT NULL,
  `q166` int(10) DEFAULT NULL,
  `q_points166` int(2) DEFAULT NULL,
  `q167` int(10) DEFAULT NULL,
  `q_points167` int(2) DEFAULT NULL,
  `q168` int(10) DEFAULT NULL,
  `q_points168` int(2) DEFAULT NULL,
  `q169` int(10) DEFAULT NULL,
  `q_points169` int(2) DEFAULT NULL,
  `q170` int(10) DEFAULT NULL,
  `q_points170` int(2) DEFAULT NULL,
  `q171` int(10) DEFAULT NULL,
  `q_points171` int(2) DEFAULT NULL,
  `q172` int(10) DEFAULT NULL,
  `q_points172` int(2) DEFAULT NULL,
  `q173` int(10) DEFAULT NULL,
  `q_points173` int(2) DEFAULT NULL,
  `q174` int(10) DEFAULT NULL,
  `q_points174` int(2) DEFAULT NULL,
  `q175` int(10) DEFAULT NULL,
  `q_points175` int(2) DEFAULT NULL,
  `q176` int(10) DEFAULT NULL,
  `q_points176` int(2) DEFAULT NULL,
  `q177` int(10) DEFAULT NULL,
  `q_points177` int(2) DEFAULT NULL,
  `q178` int(10) DEFAULT NULL,
  `q_points178` int(2) DEFAULT NULL,
  `q179` int(10) DEFAULT NULL,
  `q_points179` int(2) DEFAULT NULL,
  `q180` int(10) DEFAULT NULL,
  `q_points180` int(2) DEFAULT NULL,
  `q181` int(10) DEFAULT NULL,
  `q_points181` int(2) DEFAULT NULL,
  `q182` int(10) DEFAULT NULL,
  `q_points182` int(2) DEFAULT NULL,
  `q183` int(10) DEFAULT NULL,
  `q_points183` int(2) DEFAULT NULL,
  `q184` int(10) DEFAULT NULL,
  `q_points184` int(2) DEFAULT NULL,
  `q185` int(10) DEFAULT NULL,
  `q_points185` int(2) DEFAULT NULL,
  `q186` int(10) DEFAULT NULL,
  `q_points186` int(2) DEFAULT NULL,
  `q187` int(10) DEFAULT NULL,
  `q_points187` int(2) DEFAULT NULL,
  `q188` int(10) DEFAULT NULL,
  `q_points188` int(2) DEFAULT NULL,
  `q189` int(10) DEFAULT NULL,
  `q_points189` int(2) DEFAULT NULL,
  `q190` int(10) DEFAULT NULL,
  `q_points190` int(2) DEFAULT NULL,
  `q191` int(10) DEFAULT NULL,
  `q_points191` int(2) DEFAULT NULL,
  `q192` int(10) DEFAULT NULL,
  `q_points192` int(2) DEFAULT NULL,
  `q193` int(10) DEFAULT NULL,
  `q_points193` int(2) DEFAULT NULL,
  `q194` int(10) DEFAULT NULL,
  `q_points194` int(2) DEFAULT NULL,
  `q195` int(10) DEFAULT NULL,
  `q_points195` int(2) DEFAULT NULL,
  `q196` int(10) DEFAULT NULL,
  `q_points196` int(2) DEFAULT NULL,
  `q197` int(10) DEFAULT NULL,
  `q_points197` int(2) DEFAULT NULL,
  `q198` int(10) DEFAULT NULL,
  `q_points198` int(2) DEFAULT NULL,
  `q199` int(10) DEFAULT NULL,
  `q_points199` int(2) DEFAULT NULL,
  `q200` int(10) DEFAULT NULL,
  `q_points200` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `form_type`, `active_start`, `active_end`, `hidden_type`, `author_id`, `created`, `title`, `timer`, `q1`, `q_points1`, `q2`, `q_points2`, `q3`, `q_points3`, `q4`, `q_points4`, `q5`, `q_points5`, `q6`, `q_points6`, `q7`, `q_points7`, `q8`, `q_points8`, `q9`, `q_points9`, `q10`, `q_points10`, `q11`, `q_points11`, `q12`, `q_points12`, `q13`, `q_points13`, `q14`, `q_points14`, `q15`, `q_points15`, `q16`, `q_points16`, `q17`, `q_points17`, `q18`, `q_points18`, `q19`, `q_points19`, `q20`, `q_points20`, `q21`, `q_points21`, `q22`, `q_points22`, `q23`, `q_points23`, `q24`, `q_points24`, `q25`, `q_points25`, `q26`, `q_points26`, `q27`, `q_points27`, `q28`, `q_points28`, `q29`, `q_points29`, `q30`, `q_points30`, `q31`, `q_points31`, `q32`, `q_points32`, `q33`, `q_points33`, `q34`, `q_points34`, `q35`, `q_points35`, `q36`, `q_points36`, `q37`, `q_points37`, `q38`, `q_points38`, `q39`, `q_points39`, `q40`, `q_points40`, `q41`, `q_points41`, `q42`, `q_points42`, `q43`, `q_points43`, `q44`, `q_points44`, `q45`, `q_points45`, `q46`, `q_points46`, `q47`, `q_points47`, `q48`, `q_points48`, `q49`, `q_points49`, `q50`, `q_points50`, `q51`, `q_points51`, `q52`, `q_points52`, `q53`, `q_points53`, `q54`, `q_points54`, `q55`, `q_points55`, `q56`, `q_points56`, `q57`, `q_points57`, `q58`, `q_points58`, `q59`, `q_points59`, `q60`, `q_points60`, `q61`, `q_points61`, `q62`, `q_points62`, `q63`, `q_points63`, `q64`, `q_points64`, `q65`, `q_points65`, `q66`, `q_points66`, `q67`, `q_points67`, `q68`, `q_points68`, `q69`, `q_points69`, `q70`, `q_points70`, `q71`, `q_points71`, `q72`, `q_points72`, `q73`, `q_points73`, `q74`, `q_points74`, `q75`, `q_points75`, `q76`, `q_points76`, `q77`, `q_points77`, `q78`, `q_points78`, `q79`, `q_points79`, `q80`, `q_points80`, `q81`, `q_points81`, `q82`, `q_points82`, `q83`, `q_points83`, `q84`, `q_points84`, `q85`, `q_points85`, `q86`, `q_points86`, `q87`, `q_points87`, `q88`, `q_points88`, `q89`, `q_points89`, `q90`, `q_points90`, `q91`, `q_points91`, `q92`, `q_points92`, `q93`, `q_points93`, `q94`, `q_points94`, `q95`, `q_points95`, `q96`, `q_points96`, `q97`, `q_points97`, `q98`, `q_points98`, `q99`, `q_points99`, `q100`, `q_points100`, `q101`, `q_points101`, `q102`, `q_points102`, `q103`, `q_points103`, `q104`, `q_points104`, `q105`, `q_points105`, `q106`, `q_points106`, `q107`, `q_points107`, `q108`, `q_points108`, `q109`, `q_points109`, `q110`, `q_points110`, `q111`, `q_points111`, `q112`, `q_points112`, `q113`, `q_points113`, `q114`, `q_points114`, `q115`, `q_points115`, `q116`, `q_points116`, `q117`, `q_points117`, `q118`, `q_points118`, `q119`, `q_points119`, `q120`, `q_points120`, `q121`, `q_points121`, `q122`, `q_points122`, `q123`, `q_points123`, `q124`, `q_points124`, `q125`, `q_points125`, `q126`, `q_points126`, `q127`, `q_points127`, `q128`, `q_points128`, `q129`, `q_points129`, `q130`, `q_points130`, `q131`, `q_points131`, `q132`, `q_points132`, `q133`, `q_points133`, `q134`, `q_points134`, `q135`, `q_points135`, `q136`, `q_points136`, `q137`, `q_points137`, `q138`, `q_points138`, `q139`, `q_points139`, `q140`, `q_points140`, `q141`, `q_points141`, `q142`, `q_points142`, `q143`, `q_points143`, `q144`, `q_points144`, `q145`, `q_points145`, `q146`, `q_points146`, `q147`, `q_points147`, `q148`, `q_points148`, `q149`, `q_points149`, `q150`, `q_points150`, `q151`, `q_points151`, `q152`, `q_points152`, `q153`, `q_points153`, `q154`, `q_points154`, `q155`, `q_points155`, `q156`, `q_points156`, `q157`, `q_points157`, `q158`, `q_points158`, `q159`, `q_points159`, `q160`, `q_points160`, `q161`, `q_points161`, `q162`, `q_points162`, `q163`, `q_points163`, `q164`, `q_points164`, `q165`, `q_points165`, `q166`, `q_points166`, `q167`, `q_points167`, `q168`, `q_points168`, `q169`, `q_points169`, `q170`, `q_points170`, `q171`, `q_points171`, `q172`, `q_points172`, `q173`, `q_points173`, `q174`, `q_points174`, `q175`, `q_points175`, `q176`, `q_points176`, `q177`, `q_points177`, `q178`, `q_points178`, `q179`, `q_points179`, `q180`, `q_points180`, `q181`, `q_points181`, `q182`, `q_points182`, `q183`, `q_points183`, `q184`, `q_points184`, `q185`, `q_points185`, `q186`, `q_points186`, `q187`, `q_points187`, `q188`, `q_points188`, `q189`, `q_points189`, `q190`, `q_points190`, `q191`, `q_points191`, `q192`, `q_points192`, `q193`, `q_points193`, `q194`, `q_points194`, `q195`, `q_points195`, `q196`, `q_points196`, `q197`, `q_points197`, `q198`, `q_points198`, `q199`, `q_points199`, `q200`, `q_points200`) VALUES
(2, 3, '2011-10-06', '2011-11-07', 2, 1, '2011-10-06 18:05:12', 'apans frågor4', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, '2011-10-05', '2011-11-06', 1, 2, '2011-10-07 20:02:28', 'gfhfgh', '00:00:00', 10, NULL, 9, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, '2011-11-08', '2011-11-10', 3, 1, '2011-11-08 15:53:44', 'Exam 2', '03:20:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, '2011-10-05', '2011-11-06', 1, 1, '2011-11-08 16:45:32', 'gfhfgh', '00:00:00', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forms_active`
--

DROP TABLE IF EXISTS `forms_active`;
CREATE TABLE IF NOT EXISTS `forms_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `forms_active`
--

INSERT INTO `forms_active` (`id`, `form_id`, `sender`, `user_id`, `active`) VALUES
(1, 2, 2, 1, 0),
(2, 1, 1, 2, 1),
(5, 2, 3, 1, 0),
(4, 5, 4, 1, 0),
(6, 2, 1, 4, 1),
(7, 2, 1, 3, 1),
(8, 2, 1, 2, 1),
(9, 21, 1, 4, 1),
(10, 21, 1, 1, 1),
(11, 21, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `forms_has_questions`
--

DROP TABLE IF EXISTS `forms_has_questions`;
CREATE TABLE IF NOT EXISTS `forms_has_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_id` (`form_id`,`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `forms_has_questions`
--

INSERT INTO `forms_has_questions` (`id`, `form_id`, `question_id`) VALUES
(1, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `forms_has_tags`
--

DROP TABLE IF EXISTS `forms_has_tags`;
CREATE TABLE IF NOT EXISTS `forms_has_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`form_id`,`tag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `forms_has_tags`
--

INSERT INTO `forms_has_tags` (`id`, `form_id`, `tag_id`) VALUES
(1, 2, 1),
(2, 2, 3),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `question` text NOT NULL,
  `type` int(11) NOT NULL,
  `answ1` text,
  `answ2` text,
  `answ3` text,
  `answ4` text,
  `answ5` text,
  `answ6` varchar(100) DEFAULT NULL,
  `answ7` varchar(100) DEFAULT NULL,
  `answ8` varchar(100) DEFAULT NULL,
  `answ9` varchar(100) DEFAULT NULL,
  `answ10` varchar(100) DEFAULT NULL,
  `cansw1` int(11) NOT NULL DEFAULT '0',
  `cansw2` int(11) NOT NULL DEFAULT '0',
  `cansw3` int(11) NOT NULL DEFAULT '0',
  `cansw4` int(11) NOT NULL DEFAULT '0',
  `cansw5` int(11) NOT NULL DEFAULT '0',
  `cansw6` int(11) NOT NULL DEFAULT '0',
  `cansw7` int(11) NOT NULL DEFAULT '0',
  `cansw8` int(11) NOT NULL DEFAULT '0',
  `cansw9` int(11) NOT NULL DEFAULT '0',
  `cansw10` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `author_id`, `created`, `question`, `type`, `answ1`, `answ2`, `answ3`, `answ4`, `answ5`, `answ6`, `answ7`, `answ8`, `answ9`, `answ10`, `cansw1`, `cansw2`, `cansw3`, `cansw4`, `cansw5`, `cansw6`, `cansw7`, `cansw8`, `cansw9`, `cansw10`) VALUES
(2, 0, '0000-00-00 00:00:00', 'How old am I?', 3, '28', '13', '16', '18', '34', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, '2011-10-07 13:44:04', 'How many programlanguages in front end exists', 2, '12', '2', '6', '4', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, '2011-10-07 14:10:58', 'Heading', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, '2011-10-29 18:02:48', 'dfgfdg', 2, 'dfgdf', 'dfgdf', 'dfgdf', 'gfdgdfg', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(14, 0, '2011-11-08 16:02:18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 0, '2011-11-08 16:47:09', 'hej', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 0, '2011-11-08 16:48:36', 'Vilket är ett frontend språk?', 2, 'java', 'html', 'php', '', '', '', '', '', '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 0, '2011-11-08 16:56:17', 'informations arkitektur', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions_has_tags`
--

DROP TABLE IF EXISTS `questions_has_tags`;
CREATE TABLE IF NOT EXISTS `questions_has_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`question_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `questions_has_tags`
--

INSERT INTO `questions_has_tags` (`id`, `tag_id`, `question_id`) VALUES
(1, 1, 9),
(2, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `stats`
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
-- Dumping data for table `stats`
--


-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(96) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'label'),
(2, 'heading'),
(3, 'Ad10'),
(4, 'School');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `user_level` int(4) NOT NULL,
  `a_key` int(64) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `user_level`, `a_key`, `created`) VALUES
(1, '111', 'mm@mm.se', 900, 1, '2011-11-02 16:47:16'),
(2, '111', 'aa@aa.se', 100, 1, '2011-11-02 18:27:36'),
(3, '111', 'ss@aa.se', 900, 1, '2011-11-02 18:27:36'),
(4, '444', 'apan@apans.se', 1000, 1, '2011-11-07 10:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `users_beto_groups`
--

DROP TABLE IF EXISTS `users_beto_groups`;
CREATE TABLE IF NOT EXISTS `users_beto_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_beto_groups`
--

INSERT INTO `users_beto_groups` (`id`, `group_id`, `user_id`) VALUES
(1, 4, 2),
(2, 4, 1),
(3, 5, 1),
(4, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users_has_groups`
--

DROP TABLE IF EXISTS `users_has_groups`;
CREATE TABLE IF NOT EXISTS `users_has_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users_has_groups`
--

INSERT INTO `users_has_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 4),
(2, 1, 5),
(3, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users_has_tags`
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
-- Dumping data for table `users_has_tags`
--

