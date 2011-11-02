-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 02 november 2011 kl 19:57
-- Serverversion: 5.1.54
-- PHP-version: 5.3.5-1ubuntu7.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Databas: `msf`
--

-- --------------------------------------------------------

--
-- Struktur för tabell `ci_sessions`
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
-- Data i tabell `ci_sessions`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `forms`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Data i tabell `forms`
--

INSERT INTO `forms` (`id`, `form_type`, `active_start`, `active_end`, `hidden_type`, `author_id`, `created`, `title`, `timer`, `q1`, `q_points1`, `q2`, `q_points2`, `q3`, `q_points3`, `q4`, `q_points4`, `q5`, `q_points5`, `q6`, `q_points6`, `q7`, `q_points7`, `q8`, `q_points8`, `q9`, `q_points9`, `q10`, `q_points10`, `q11`, `q_points11`, `q12`, `q_points12`, `q13`, `q_points13`, `q14`, `q_points14`, `q15`, `q_points15`, `q16`, `q_points16`, `q17`, `q_points17`, `q18`, `q_points18`, `q19`, `q_points19`, `q20`, `q_points20`, `q21`, `q_points21`, `q22`, `q_points22`, `q23`, `q_points23`, `q24`, `q_points24`, `q25`, `q_points25`, `q26`, `q_points26`, `q27`, `q_points27`, `q28`, `q_points28`, `q29`, `q_points29`, `q30`, `q_points30`, `q31`, `q_points31`, `q32`, `q_points32`, `q33`, `q_points33`, `q34`, `q_points34`, `q35`, `q_points35`, `q36`, `q_points36`, `q37`, `q_points37`, `q38`, `q_points38`, `q39`, `q_points39`, `q40`, `q_points40`, `q41`, `q_points41`, `q42`, `q_points42`, `q43`, `q_points43`, `q44`, `q_points44`, `q45`, `q_points45`, `q46`, `q_points46`, `q47`, `q_points47`, `q48`, `q_points48`, `q49`, `q_points49`, `q50`, `q_points50`, `q51`, `q_points51`, `q52`, `q_points52`, `q53`, `q_points53`, `q54`, `q_points54`, `q55`, `q_points55`, `q56`, `q_points56`, `q57`, `q_points57`, `q58`, `q_points58`, `q59`, `q_points59`, `q60`, `q_points60`, `q61`, `q_points61`, `q62`, `q_points62`, `q63`, `q_points63`, `q64`, `q_points64`, `q65`, `q_points65`, `q66`, `q_points66`, `q67`, `q_points67`, `q68`, `q_points68`, `q69`, `q_points69`, `q70`, `q_points70`, `q71`, `q_points71`, `q72`, `q_points72`, `q73`, `q_points73`, `q74`, `q_points74`, `q75`, `q_points75`, `q76`, `q_points76`, `q77`, `q_points77`, `q78`, `q_points78`, `q79`, `q_points79`, `q80`, `q_points80`, `q81`, `q_points81`, `q82`, `q_points82`, `q83`, `q_points83`, `q84`, `q_points84`, `q85`, `q_points85`, `q86`, `q_points86`, `q87`, `q_points87`, `q88`, `q_points88`, `q89`, `q_points89`, `q90`, `q_points90`, `q91`, `q_points91`, `q92`, `q_points92`, `q93`, `q_points93`, `q94`, `q_points94`, `q95`, `q_points95`, `q96`, `q_points96`, `q97`, `q_points97`, `q98`, `q_points98`, `q99`, `q_points99`, `q100`, `q_points100`, `q101`, `q_points101`, `q102`, `q_points102`, `q103`, `q_points103`, `q104`, `q_points104`, `q105`, `q_points105`, `q106`, `q_points106`, `q107`, `q_points107`, `q108`, `q_points108`, `q109`, `q_points109`, `q110`, `q_points110`, `q111`, `q_points111`, `q112`, `q_points112`, `q113`, `q_points113`, `q114`, `q_points114`, `q115`, `q_points115`, `q116`, `q_points116`, `q117`, `q_points117`, `q118`, `q_points118`, `q119`, `q_points119`, `q120`, `q_points120`, `q121`, `q_points121`, `q122`, `q_points122`, `q123`, `q_points123`, `q124`, `q_points124`, `q125`, `q_points125`, `q126`, `q_points126`, `q127`, `q_points127`, `q128`, `q_points128`, `q129`, `q_points129`, `q130`, `q_points130`, `q131`, `q_points131`, `q132`, `q_points132`, `q133`, `q_points133`, `q134`, `q_points134`, `q135`, `q_points135`, `q136`, `q_points136`, `q137`, `q_points137`, `q138`, `q_points138`, `q139`, `q_points139`, `q140`, `q_points140`, `q141`, `q_points141`, `q142`, `q_points142`, `q143`, `q_points143`, `q144`, `q_points144`, `q145`, `q_points145`, `q146`, `q_points146`, `q147`, `q_points147`, `q148`, `q_points148`, `q149`, `q_points149`, `q150`, `q_points150`, `q151`, `q_points151`, `q152`, `q_points152`, `q153`, `q_points153`, `q154`, `q_points154`, `q155`, `q_points155`, `q156`, `q_points156`, `q157`, `q_points157`, `q158`, `q_points158`, `q159`, `q_points159`, `q160`, `q_points160`, `q161`, `q_points161`, `q162`, `q_points162`, `q163`, `q_points163`, `q164`, `q_points164`, `q165`, `q_points165`, `q166`, `q_points166`, `q167`, `q_points167`, `q168`, `q_points168`, `q169`, `q_points169`, `q170`, `q_points170`, `q171`, `q_points171`, `q172`, `q_points172`, `q173`, `q_points173`, `q174`, `q_points174`, `q175`, `q_points175`, `q176`, `q_points176`, `q177`, `q_points177`, `q178`, `q_points178`, `q179`, `q_points179`, `q180`, `q_points180`, `q181`, `q_points181`, `q182`, `q_points182`, `q183`, `q_points183`, `q184`, `q_points184`, `q185`, `q_points185`, `q186`, `q_points186`, `q187`, `q_points187`, `q188`, `q_points188`, `q189`, `q_points189`, `q190`, `q_points190`, `q191`, `q_points191`, `q192`, `q_points192`, `q193`, `q_points193`, `q194`, `q_points194`, `q195`, `q_points195`, `q196`, `q_points196`, `q197`, `q_points197`, `q198`, `q_points198`, `q199`, `q_points199`, `q200`, `q_points200`) VALUES
(2, 3, '2011-10-06', '2011-10-12', 2, 2, '2011-10-06 18:05:12', 'apans frågor', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, '2011-10-07', '2011-10-07', 1, 2, '2011-10-07 20:02:28', '', '00:00:00', 10, NULL, 9, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Data i tabell `forms_has_questions`
--

INSERT INTO `forms_has_questions` (`id`, `form_id`, `question_id`) VALUES
(1, 2, 9);

-- --------------------------------------------------------

--
-- Struktur för tabell `forms_has_tags`
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
-- Data i tabell `forms_has_tags`
--

INSERT INTO `forms_has_tags` (`id`, `form_id`, `tag_id`) VALUES
(1, 2, 1),
(2, 2, 3),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Struktur för tabell `form_active`
--

DROP TABLE IF EXISTS `form_active`;
CREATE TABLE IF NOT EXISTS `form_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `form_key` int(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `form_active`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `questions`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Data i tabell `questions`
--

INSERT INTO `questions` (`id`, `author_id`, `created`, `question`, `type`, `answ1`, `answ2`, `answ3`, `answ4`, `answ5`, `answ6`, `answ7`, `answ8`, `answ9`, `answ10`, `cansw1`, `cansw2`, `cansw3`, `cansw4`, `cansw5`, `cansw6`, `cansw7`, `cansw8`, `cansw9`, `cansw10`) VALUES
(2, 0, '0000-00-00 00:00:00', 'How old am I?', 3, '28', '13', '16', '18', '34', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, '2011-10-07 13:44:04', 'How many programlanguages in front end exists', 2, '12', '2', '6', '4', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, '2011-10-07 14:10:58', 'Heading', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, '2011-10-29 18:02:48', 'dfgfdg', 2, 'dfgdf', 'dfgdf', 'dfgdf', 'gfdgdfg', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur för tabell `questions_has_tags`
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
-- Data i tabell `questions_has_tags`
--

INSERT INTO `questions_has_tags` (`id`, `tag_id`, `question_id`) VALUES
(1, 1, 9),
(2, 2, 9);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Data i tabell `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'label'),
(2, 'heading'),
(3, 'Ad10'),
(4, 'School');

-- --------------------------------------------------------

--
-- Struktur för tabell `users`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Data i tabell `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `user_level`, `a_key`, `created`) VALUES
(1, '111', 'mm@mm.se', 900, 1, '2011-11-02 16:47:16'),
(2, '111', 'aa@aa.se', 100, 1, '2011-11-02 18:27:36'),
(3, '111', 'ss@aa.se', 900, 1, '2011-11-02 18:27:36');

-- --------------------------------------------------------

--
-- Struktur för tabell `users_beto_groups`
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
-- Data i tabell `users_beto_groups`
--

INSERT INTO `users_beto_groups` (`id`, `group_id`, `user_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 1),
(4, 2, 4);

-- --------------------------------------------------------

--
-- Struktur för tabell `users_has_groups`
--

DROP TABLE IF EXISTS `users_has_groups`;
CREATE TABLE IF NOT EXISTS `users_has_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Data i tabell `users_has_groups`
--

INSERT INTO `users_has_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1);

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

-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 29 oktober 2011 kl 18:18
-- Serverversion: 5.1.54
-- PHP-version: 5.3.5-1ubuntu7.3

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
-- Struktur för tabell `ci_sessions`
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
-- Data i tabell `ci_sessions`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `fa_country`
--

DROP TABLE IF EXISTS `fa_country`;
CREATE TABLE IF NOT EXISTS `fa_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Data i tabell `fa_country`
--

INSERT INTO `fa_country` (`id`, `iso`, `name`, `iso3`, `numcode`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', 4),
(2, 'AL', 'Albania', 'ALB', 8),
(3, 'DZ', 'Algeria', 'DZA', 12),
(4, 'AS', 'American Samoa', 'ASM', 16),
(5, 'AD', 'Andorra', 'AND', 20),
(6, 'AO', 'Angola', 'AGO', 24),
(7, 'AI', 'Anguilla', 'AIA', 660),
(8, 'AQ', 'Antarctica', NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 'ATG', 28),
(10, 'AR', 'Argentina', 'ARG', 32),
(11, 'AM', 'Armenia', 'ARM', 51),
(12, 'AW', 'Aruba', 'ABW', 533),
(13, 'AU', 'Australia', 'AUS', 36),
(14, 'AT', 'Austria', 'AUT', 40),
(15, 'AZ', 'Azerbaijan', 'AZE', 31),
(16, 'BS', 'Bahamas', 'BHS', 44),
(17, 'BH', 'Bahrain', 'BHR', 48),
(18, 'BD', 'Bangladesh', 'BGD', 50),
(19, 'BB', 'Barbados', 'BRB', 52),
(20, 'BY', 'Belarus', 'BLR', 112),
(21, 'BE', 'Belgium', 'BEL', 56),
(22, 'BZ', 'Belize', 'BLZ', 84),
(23, 'BJ', 'Benin', 'BEN', 204),
(24, 'BM', 'Bermuda', 'BMU', 60),
(25, 'BT', 'Bhutan', 'BTN', 64),
(26, 'BO', 'Bolivia', 'BOL', 68),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', 70),
(28, 'BW', 'Botswana', 'BWA', 72),
(29, 'BV', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'Brazil', 'BRA', 76),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 'Brunei Darussalam', 'BRN', 96),
(33, 'BG', 'Bulgaria', 'BGR', 100),
(34, 'BF', 'Burkina Faso', 'BFA', 854),
(35, 'BI', 'Burundi', 'BDI', 108),
(36, 'KH', 'Cambodia', 'KHM', 116),
(37, 'CM', 'Cameroon', 'CMR', 120),
(38, 'CA', 'Canada', 'CAN', 124),
(39, 'CV', 'Cape Verde', 'CPV', 132),
(40, 'KY', 'Cayman Islands', 'CYM', 136),
(41, 'CF', 'Central African Republic', 'CAF', 140),
(42, 'TD', 'Chad', 'TCD', 148),
(43, 'CL', 'Chile', 'CHL', 152),
(44, 'CN', 'China', 'CHN', 156),
(45, 'CX', 'Christmas Island', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 'Colombia', 'COL', 170),
(48, 'KM', 'Comoros', 'COM', 174),
(49, 'CG', 'Congo', 'COG', 178),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', 180),
(51, 'CK', 'Cook Islands', 'COK', 184),
(52, 'CR', 'Costa Rica', 'CRI', 188),
(53, 'CI', 'Cote D''Ivoire', 'CIV', 384),
(54, 'HR', 'Croatia', 'HRV', 191),
(55, 'CU', 'Cuba', 'CUB', 192),
(56, 'CY', 'Cyprus', 'CYP', 196),
(57, 'CZ', 'Czech Republic', 'CZE', 203),
(58, 'DK', 'Denmark', 'DNK', 208),
(59, 'DJ', 'Djibouti', 'DJI', 262),
(60, 'DM', 'Dominica', 'DMA', 212),
(61, 'DO', 'Dominican Republic', 'DOM', 214),
(62, 'EC', 'Ecuador', 'ECU', 218),
(63, 'EG', 'Egypt', 'EGY', 818),
(64, 'SV', 'El Salvador', 'SLV', 222),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', 226),
(66, 'ER', 'Eritrea', 'ERI', 232),
(67, 'EE', 'Estonia', 'EST', 233),
(68, 'ET', 'Ethiopia', 'ETH', 231),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', 238),
(70, 'FO', 'Faroe Islands', 'FRO', 234),
(71, 'FJ', 'Fiji', 'FJI', 242),
(72, 'FI', 'Finland', 'FIN', 246),
(73, 'FR', 'France', 'FRA', 250),
(74, 'GF', 'French Guiana', 'GUF', 254),
(75, 'PF', 'French Polynesia', 'PYF', 258),
(76, 'TF', 'French Southern Territories', NULL, NULL),
(77, 'GA', 'Gabon', 'GAB', 266),
(78, 'GM', 'Gambia', 'GMB', 270),
(79, 'GE', 'Georgia', 'GEO', 268),
(80, 'DE', 'Germany', 'DEU', 276),
(81, 'GH', 'Ghana', 'GHA', 288),
(82, 'GI', 'Gibraltar', 'GIB', 292),
(83, 'GR', 'Greece', 'GRC', 300),
(84, 'GL', 'Greenland', 'GRL', 304),
(85, 'GD', 'Grenada', 'GRD', 308),
(86, 'GP', 'Guadeloupe', 'GLP', 312),
(87, 'GU', 'Guam', 'GUM', 316),
(88, 'GT', 'Guatemala', 'GTM', 320),
(89, 'GN', 'Guinea', 'GIN', 324),
(90, 'GW', 'Guinea-Bissau', 'GNB', 624),
(91, 'GY', 'Guyana', 'GUY', 328),
(92, 'HT', 'Haiti', 'HTI', 332),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', 336),
(95, 'HN', 'Honduras', 'HND', 340),
(96, 'HK', 'Hong Kong', 'HKG', 344),
(97, 'HU', 'Hungary', 'HUN', 348),
(98, 'IS', 'Iceland', 'ISL', 352),
(99, 'IN', 'India', 'IND', 356),
(100, 'ID', 'Indonesia', 'IDN', 360),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', 364),
(102, 'IQ', 'Iraq', 'IRQ', 368),
(103, 'IE', 'Ireland', 'IRL', 372),
(104, 'IL', 'Israel', 'ISR', 376),
(105, 'IT', 'Italy', 'ITA', 380),
(106, 'JM', 'Jamaica', 'JAM', 388),
(107, 'JP', 'Japan', 'JPN', 392),
(108, 'JO', 'Jordan', 'JOR', 400),
(109, 'KZ', 'Kazakhstan', 'KAZ', 398),
(110, 'KE', 'Kenya', 'KEN', 404),
(111, 'KI', 'Kiribati', 'KIR', 296),
(112, 'KP', 'Korea, Democratic People''s Republic of', 'PRK', 408),
(113, 'KR', 'Korea, Republic of', 'KOR', 410),
(114, 'KW', 'Kuwait', 'KWT', 414),
(115, 'KG', 'Kyrgyzstan', 'KGZ', 417),
(116, 'LA', 'Lao People''s Democratic Republic', 'LAO', 418),
(117, 'LV', 'Latvia', 'LVA', 428),
(118, 'LB', 'Lebanon', 'LBN', 422),
(119, 'LS', 'Lesotho', 'LSO', 426),
(120, 'LR', 'Liberia', 'LBR', 430),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', 434),
(122, 'LI', 'Liechtenstein', 'LIE', 438),
(123, 'LT', 'Lithuania', 'LTU', 440),
(124, 'LU', 'Luxembourg', 'LUX', 442),
(125, 'MO', 'Macao', 'MAC', 446),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
(127, 'MG', 'Madagascar', 'MDG', 450),
(128, 'MW', 'Malawi', 'MWI', 454),
(129, 'MY', 'Malaysia', 'MYS', 458),
(130, 'MV', 'Maldives', 'MDV', 462),
(131, 'ML', 'Mali', 'MLI', 466),
(132, 'MT', 'Malta', 'MLT', 470),
(133, 'MH', 'Marshall Islands', 'MHL', 584),
(134, 'MQ', 'Martinique', 'MTQ', 474),
(135, 'MR', 'Mauritania', 'MRT', 478),
(136, 'MU', 'Mauritius', 'MUS', 480),
(137, 'YT', 'Mayotte', NULL, NULL),
(138, 'MX', 'Mexico', 'MEX', 484),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', 583),
(140, 'MD', 'Moldova, Republic of', 'MDA', 498),
(141, 'MC', 'Monaco', 'MCO', 492),
(142, 'MN', 'Mongolia', 'MNG', 496),
(143, 'MS', 'Montserrat', 'MSR', 500),
(144, 'MA', 'Morocco', 'MAR', 504),
(145, 'MZ', 'Mozambique', 'MOZ', 508),
(146, 'MM', 'Myanmar', 'MMR', 104),
(147, 'NA', 'Namibia', 'NAM', 516),
(148, 'NR', 'Nauru', 'NRU', 520),
(149, 'NP', 'Nepal', 'NPL', 524),
(150, 'NL', 'Netherlands', 'NLD', 528),
(151, 'AN', 'Netherlands Antilles', 'ANT', 530),
(152, 'NC', 'New Caledonia', 'NCL', 540),
(153, 'NZ', 'New Zealand', 'NZL', 554),
(154, 'NI', 'Nicaragua', 'NIC', 558),
(155, 'NE', 'Niger', 'NER', 562),
(156, 'NG', 'Nigeria', 'NGA', 566),
(157, 'NU', 'Niue', 'NIU', 570),
(158, 'NF', 'Norfolk Island', 'NFK', 574),
(159, 'MP', 'Northern Mariana Islands', 'MNP', 580),
(160, 'NO', 'Norway', 'NOR', 578),
(161, 'OM', 'Oman', 'OMN', 512),
(162, 'PK', 'Pakistan', 'PAK', 586),
(163, 'PW', 'Palau', 'PLW', 585),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL),
(165, 'PA', 'Panama', 'PAN', 591),
(166, 'PG', 'Papua New Guinea', 'PNG', 598),
(167, 'PY', 'Paraguay', 'PRY', 600),
(168, 'PE', 'Peru', 'PER', 604),
(169, 'PH', 'Philippines', 'PHL', 608),
(170, 'PN', 'Pitcairn', 'PCN', 612),
(171, 'PL', 'Poland', 'POL', 616),
(172, 'PT', 'Portugal', 'PRT', 620),
(173, 'PR', 'Puerto Rico', 'PRI', 630),
(174, 'QA', 'Qatar', 'QAT', 634),
(175, 'RE', 'Reunion', 'REU', 638),
(176, 'RO', 'Romania', 'ROM', 642),
(177, 'RU', 'Russian Federation', 'RUS', 643),
(178, 'RW', 'Rwanda', 'RWA', 646),
(179, 'SH', 'Saint Helena', 'SHN', 654),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', 659),
(181, 'LC', 'Saint Lucia', 'LCA', 662),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', 666),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', 670),
(184, 'WS', 'Samoa', 'WSM', 882),
(185, 'SM', 'San Marino', 'SMR', 674),
(186, 'ST', 'Sao Tome and Principe', 'STP', 678),
(187, 'SA', 'Saudi Arabia', 'SAU', 682),
(188, 'SN', 'Senegal', 'SEN', 686),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL),
(190, 'SC', 'Seychelles', 'SYC', 690),
(191, 'SL', 'Sierra Leone', 'SLE', 694),
(192, 'SG', 'Singapore', 'SGP', 702),
(193, 'SK', 'Slovakia', 'SVK', 703),
(194, 'SI', 'Slovenia', 'SVN', 705),
(195, 'SB', 'Solomon Islands', 'SLB', 90),
(196, 'SO', 'Somalia', 'SOM', 706),
(197, 'ZA', 'South Africa', 'ZAF', 710),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
(199, 'ES', 'Spain', 'ESP', 724),
(200, 'LK', 'Sri Lanka', 'LKA', 144),
(201, 'SD', 'Sudan', 'SDN', 736),
(202, 'SR', 'Suriname', 'SUR', 740),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', 744),
(204, 'SZ', 'Swaziland', 'SWZ', 748),
(205, 'SE', 'Sweden', 'SWE', 752),
(206, 'CH', 'Switzerland', 'CHE', 756),
(207, 'SY', 'Syrian Arab Republic', 'SYR', 760),
(208, 'TW', 'Taiwan, Province of China', 'TWN', 158),
(209, 'TJ', 'Tajikistan', 'TJK', 762),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', 834),
(211, 'TH', 'Thailand', 'THA', 764),
(212, 'TL', 'Timor-Leste', NULL, NULL),
(213, 'TG', 'Togo', 'TGO', 768),
(214, 'TK', 'Tokelau', 'TKL', 772),
(215, 'TO', 'Tonga', 'TON', 776),
(216, 'TT', 'Trinidad and Tobago', 'TTO', 780),
(217, 'TN', 'Tunisia', 'TUN', 788),
(218, 'TR', 'Turkey', 'TUR', 792),
(219, 'TM', 'Turkmenistan', 'TKM', 795),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', 796),
(221, 'TV', 'Tuvalu', 'TUV', 798),
(222, 'UG', 'Uganda', 'UGA', 800),
(223, 'UA', 'Ukraine', 'UKR', 804),
(224, 'AE', 'United Arab Emirates', 'ARE', 784),
(225, 'GB', 'United Kingdom', 'GBR', 826),
(226, 'US', 'United States', 'USA', 840),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL),
(228, 'UY', 'Uruguay', 'URY', 858),
(229, 'UZ', 'Uzbekistan', 'UZB', 860),
(230, 'VU', 'Vanuatu', 'VUT', 548),
(231, 'VE', 'Venezuela', 'VEN', 862),
(232, 'VN', 'Viet Nam', 'VNM', 704),
(233, 'VG', 'Virgin Islands, British', 'VGB', 92),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', 850),
(235, 'WF', 'Wallis and Futuna', 'WLF', 876),
(236, 'EH', 'Western Sahara', 'ESH', 732),
(237, 'YE', 'Yemen', 'YEM', 887),
(238, 'ZM', 'Zambia', 'ZMB', 894),
(239, 'ZW', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Struktur för tabell `fa_user`
--

DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE IF NOT EXISTS `fa_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `forgotten_password_code` varchar(50) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_FI_1` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `fa_user`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `fa_user_profile`
--

DROP TABLE IF EXISTS `fa_user_profile`;
CREATE TABLE IF NOT EXISTS `fa_user_profile` (
  `id` int(11) NOT NULL,
  `field_1` varchar(50) DEFAULT NULL,
  `field_2` varchar(50) DEFAULT NULL,
  `call_me_nicely` varchar(3) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Data i tabell `fa_user_profile`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `fa_user_temp`
--

DROP TABLE IF EXISTS `fa_user_temp`;
CREATE TABLE IF NOT EXISTS `fa_user_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `activation_code` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_FI_1` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data i tabell `fa_user_temp`
--


-- --------------------------------------------------------

--
-- Struktur för tabell `forms`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Data i tabell `forms`
--

INSERT INTO `forms` (`id`, `form_type`, `active_start`, `active_end`, `hidden_type`, `author_id`, `created`, `title`, `timer`, `q1`, `q_points1`, `q2`, `q_points2`, `q3`, `q_points3`, `q4`, `q_points4`, `q5`, `q_points5`, `q6`, `q_points6`, `q7`, `q_points7`, `q8`, `q_points8`, `q9`, `q_points9`, `q10`, `q_points10`, `q11`, `q_points11`, `q12`, `q_points12`, `q13`, `q_points13`, `q14`, `q_points14`, `q15`, `q_points15`, `q16`, `q_points16`, `q17`, `q_points17`, `q18`, `q_points18`, `q19`, `q_points19`, `q20`, `q_points20`, `q21`, `q_points21`, `q22`, `q_points22`, `q23`, `q_points23`, `q24`, `q_points24`, `q25`, `q_points25`, `q26`, `q_points26`, `q27`, `q_points27`, `q28`, `q_points28`, `q29`, `q_points29`, `q30`, `q_points30`, `q31`, `q_points31`, `q32`, `q_points32`, `q33`, `q_points33`, `q34`, `q_points34`, `q35`, `q_points35`, `q36`, `q_points36`, `q37`, `q_points37`, `q38`, `q_points38`, `q39`, `q_points39`, `q40`, `q_points40`, `q41`, `q_points41`, `q42`, `q_points42`, `q43`, `q_points43`, `q44`, `q_points44`, `q45`, `q_points45`, `q46`, `q_points46`, `q47`, `q_points47`, `q48`, `q_points48`, `q49`, `q_points49`, `q50`, `q_points50`, `q51`, `q_points51`, `q52`, `q_points52`, `q53`, `q_points53`, `q54`, `q_points54`, `q55`, `q_points55`, `q56`, `q_points56`, `q57`, `q_points57`, `q58`, `q_points58`, `q59`, `q_points59`, `q60`, `q_points60`, `q61`, `q_points61`, `q62`, `q_points62`, `q63`, `q_points63`, `q64`, `q_points64`, `q65`, `q_points65`, `q66`, `q_points66`, `q67`, `q_points67`, `q68`, `q_points68`, `q69`, `q_points69`, `q70`, `q_points70`, `q71`, `q_points71`, `q72`, `q_points72`, `q73`, `q_points73`, `q74`, `q_points74`, `q75`, `q_points75`, `q76`, `q_points76`, `q77`, `q_points77`, `q78`, `q_points78`, `q79`, `q_points79`, `q80`, `q_points80`, `q81`, `q_points81`, `q82`, `q_points82`, `q83`, `q_points83`, `q84`, `q_points84`, `q85`, `q_points85`, `q86`, `q_points86`, `q87`, `q_points87`, `q88`, `q_points88`, `q89`, `q_points89`, `q90`, `q_points90`, `q91`, `q_points91`, `q92`, `q_points92`, `q93`, `q_points93`, `q94`, `q_points94`, `q95`, `q_points95`, `q96`, `q_points96`, `q97`, `q_points97`, `q98`, `q_points98`, `q99`, `q_points99`, `q100`, `q_points100`, `q101`, `q_points101`, `q102`, `q_points102`, `q103`, `q_points103`, `q104`, `q_points104`, `q105`, `q_points105`, `q106`, `q_points106`, `q107`, `q_points107`, `q108`, `q_points108`, `q109`, `q_points109`, `q110`, `q_points110`, `q111`, `q_points111`, `q112`, `q_points112`, `q113`, `q_points113`, `q114`, `q_points114`, `q115`, `q_points115`, `q116`, `q_points116`, `q117`, `q_points117`, `q118`, `q_points118`, `q119`, `q_points119`, `q120`, `q_points120`, `q121`, `q_points121`, `q122`, `q_points122`, `q123`, `q_points123`, `q124`, `q_points124`, `q125`, `q_points125`, `q126`, `q_points126`, `q127`, `q_points127`, `q128`, `q_points128`, `q129`, `q_points129`, `q130`, `q_points130`, `q131`, `q_points131`, `q132`, `q_points132`, `q133`, `q_points133`, `q134`, `q_points134`, `q135`, `q_points135`, `q136`, `q_points136`, `q137`, `q_points137`, `q138`, `q_points138`, `q139`, `q_points139`, `q140`, `q_points140`, `q141`, `q_points141`, `q142`, `q_points142`, `q143`, `q_points143`, `q144`, `q_points144`, `q145`, `q_points145`, `q146`, `q_points146`, `q147`, `q_points147`, `q148`, `q_points148`, `q149`, `q_points149`, `q150`, `q_points150`, `q151`, `q_points151`, `q152`, `q_points152`, `q153`, `q_points153`, `q154`, `q_points154`, `q155`, `q_points155`, `q156`, `q_points156`, `q157`, `q_points157`, `q158`, `q_points158`, `q159`, `q_points159`, `q160`, `q_points160`, `q161`, `q_points161`, `q162`, `q_points162`, `q163`, `q_points163`, `q164`, `q_points164`, `q165`, `q_points165`, `q166`, `q_points166`, `q167`, `q_points167`, `q168`, `q_points168`, `q169`, `q_points169`, `q170`, `q_points170`, `q171`, `q_points171`, `q172`, `q_points172`, `q173`, `q_points173`, `q174`, `q_points174`, `q175`, `q_points175`, `q176`, `q_points176`, `q177`, `q_points177`, `q178`, `q_points178`, `q179`, `q_points179`, `q180`, `q_points180`, `q181`, `q_points181`, `q182`, `q_points182`, `q183`, `q_points183`, `q184`, `q_points184`, `q185`, `q_points185`, `q186`, `q_points186`, `q187`, `q_points187`, `q188`, `q_points188`, `q189`, `q_points189`, `q190`, `q_points190`, `q191`, `q_points191`, `q192`, `q_points192`, `q193`, `q_points193`, `q194`, `q_points194`, `q195`, `q_points195`, `q196`, `q_points196`, `q197`, `q_points197`, `q198`, `q_points198`, `q199`, `q_points199`, `q200`, `q_points200`) VALUES
(2, 3, '2011-10-06', '2011-10-12', 2, 2, '2011-10-06 18:05:12', 'apans frågor', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, '2011-10-07', '2011-10-07', 1, 2, '2011-10-07 20:02:28', '', '00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Data i tabell `forms_has_questions`
--

INSERT INTO `forms_has_questions` (`id`, `form_id`, `question_id`) VALUES
(1, 2, 9);

-- --------------------------------------------------------

--
-- Struktur för tabell `forms_has_tags`
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
-- Data i tabell `forms_has_tags`
--

INSERT INTO `forms_has_tags` (`id`, `form_id`, `tag_id`) VALUES
(1, 2, 1),
(2, 2, 3),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Struktur för tabell `questions`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Data i tabell `questions`
--

INSERT INTO `questions` (`id`, `author_id`, `created`, `question`, `type`, `answ1`, `answ2`, `answ3`, `answ4`, `answ5`, `answ6`, `answ7`, `answ8`, `answ9`, `answ10`, `cansw1`, `cansw2`, `cansw3`, `cansw4`, `cansw5`, `cansw6`, `cansw7`, `cansw8`, `cansw9`, `cansw10`) VALUES
(2, 0, '0000-00-00 00:00:00', 'How old am I?', 3, '28', '13', '16', '18', '34', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, '2011-10-07 13:44:04', 'How many programlanguages in front end exists', 2, '12', '2', '6', '4', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, '2011-10-07 14:10:58', 'Heading', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 0, '2011-10-29 18:02:48', 'dfgfdg', 2, 'dfgdf', 'dfgdf', 'dfgdf', 'gfdgdfg', '', '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur för tabell `questions_has_tags`
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
-- Data i tabell `questions_has_tags`
--

INSERT INTO `questions_has_tags` (`id`, `tag_id`, `question_id`) VALUES
(1, 1, 9),
(2, 2, 9);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Data i tabell `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'label'),
(2, 'heading'),
(3, 'Ad10'),
(4, 'School');

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

