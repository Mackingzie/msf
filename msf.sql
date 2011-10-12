-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Skapad: 07 oktober 2011 kl 22:08
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
  `form_type` int(11) NOT NULL,
  `active_start` date NOT NULL,
  `active_end` date NOT NULL,
  `hidden_type` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(100) DEFAULT NULL,
  `timer` time NOT NULL,
  `q1` int(10) DEFAULT NULL,
  `qtype1` int(2) DEFAULT NULL,
  `q2` int(10) DEFAULT NULL,
  `qtype2` int(2) DEFAULT NULL,
  `q3` int(10) DEFAULT NULL,
  `qtype3` int(2) DEFAULT NULL,
  `q4` int(10) DEFAULT NULL,
  `qtype4` int(2) DEFAULT NULL,
  `q5` int(10) DEFAULT NULL,
  `qtype5` int(2) DEFAULT NULL,
  `q6` int(10) DEFAULT NULL,
  `qtype6` int(2) DEFAULT NULL,
  `q7` int(10) DEFAULT NULL,
  `qtype7` int(2) DEFAULT NULL,
  `q8` int(10) DEFAULT NULL,
  `qtype8` int(2) DEFAULT NULL,
  `q9` int(10) DEFAULT NULL,
  `qtype9` int(2) DEFAULT NULL,
  `q10` int(10) DEFAULT NULL,
  `qtype10` int(2) DEFAULT NULL,
  `q11` int(10) DEFAULT NULL,
  `qtype11` int(2) DEFAULT NULL,
  `q12` int(10) DEFAULT NULL,
  `qtype12` int(2) DEFAULT NULL,
  `q13` int(10) DEFAULT NULL,
  `qtype13` int(2) DEFAULT NULL,
  `q14` int(10) DEFAULT NULL,
  `qtype14` int(2) DEFAULT NULL,
  `q15` int(10) DEFAULT NULL,
  `qtype15` int(2) DEFAULT NULL,
  `q16` int(10) DEFAULT NULL,
  `qtype16` int(2) DEFAULT NULL,
  `q17` int(10) DEFAULT NULL,
  `qtype17` int(2) DEFAULT NULL,
  `q18` int(10) DEFAULT NULL,
  `qtype18` int(2) DEFAULT NULL,
  `q19` int(10) DEFAULT NULL,
  `qtype19` int(2) DEFAULT NULL,
  `q20` int(10) DEFAULT NULL,
  `qtype20` int(2) DEFAULT NULL,
  `q21` int(10) DEFAULT NULL,
  `qtype21` int(2) DEFAULT NULL,
  `q22` int(10) DEFAULT NULL,
  `qtype22` int(2) DEFAULT NULL,
  `q23` int(10) DEFAULT NULL,
  `qtype23` int(2) DEFAULT NULL,
  `q24` int(10) DEFAULT NULL,
  `qtype24` int(2) DEFAULT NULL,
  `q25` int(10) DEFAULT NULL,
  `qtype25` int(2) DEFAULT NULL,
  `q26` int(10) DEFAULT NULL,
  `qtype26` int(2) DEFAULT NULL,
  `q27` int(10) DEFAULT NULL,
  `qtype27` int(2) DEFAULT NULL,
  `q28` int(10) DEFAULT NULL,
  `qtype28` int(2) DEFAULT NULL,
  `q29` int(10) DEFAULT NULL,
  `qtype29` int(2) DEFAULT NULL,
  `q30` int(10) DEFAULT NULL,
  `qtype30` int(2) DEFAULT NULL,
  `q31` int(10) DEFAULT NULL,
  `qtype31` int(2) DEFAULT NULL,
  `q32` int(10) DEFAULT NULL,
  `qtype32` int(2) DEFAULT NULL,
  `q33` int(10) DEFAULT NULL,
  `qtype33` int(2) DEFAULT NULL,
  `q34` int(10) DEFAULT NULL,
  `qtype34` int(2) DEFAULT NULL,
  `q35` int(10) DEFAULT NULL,
  `qtype35` int(2) DEFAULT NULL,
  `q36` int(10) DEFAULT NULL,
  `qtype36` int(2) DEFAULT NULL,
  `q37` int(10) DEFAULT NULL,
  `qtype37` int(2) DEFAULT NULL,
  `q38` int(10) DEFAULT NULL,
  `qtype38` int(2) DEFAULT NULL,
  `q39` int(10) DEFAULT NULL,
  `qtype39` int(2) DEFAULT NULL,
  `q40` int(10) DEFAULT NULL,
  `qtype40` int(2) DEFAULT NULL,
  `q41` int(10) DEFAULT NULL,
  `qtype41` int(2) DEFAULT NULL,
  `q42` int(10) DEFAULT NULL,
  `qtype42` int(2) DEFAULT NULL,
  `q43` int(10) DEFAULT NULL,
  `qtype43` int(2) DEFAULT NULL,
  `q44` int(10) DEFAULT NULL,
  `qtype44` int(2) DEFAULT NULL,
  `q45` int(10) DEFAULT NULL,
  `qtype45` int(2) DEFAULT NULL,
  `q46` int(10) DEFAULT NULL,
  `qtype46` int(2) DEFAULT NULL,
  `q47` int(10) DEFAULT NULL,
  `qtype47` int(2) DEFAULT NULL,
  `q48` int(10) DEFAULT NULL,
  `qtype48` int(2) DEFAULT NULL,
  `q49` int(10) DEFAULT NULL,
  `qtype49` int(2) DEFAULT NULL,
  `q50` int(10) DEFAULT NULL,
  `qtype50` int(2) DEFAULT NULL,
  `q51` int(10) DEFAULT NULL,
  `qtype51` int(2) DEFAULT NULL,
  `q52` int(10) DEFAULT NULL,
  `qtype52` int(2) DEFAULT NULL,
  `q53` int(10) DEFAULT NULL,
  `qtype53` int(2) DEFAULT NULL,
  `q54` int(10) DEFAULT NULL,
  `qtype54` int(2) DEFAULT NULL,
  `q55` int(10) DEFAULT NULL,
  `qtype55` int(2) DEFAULT NULL,
  `q56` int(10) DEFAULT NULL,
  `qtype56` int(2) DEFAULT NULL,
  `q57` int(10) DEFAULT NULL,
  `qtype57` int(2) DEFAULT NULL,
  `q58` int(10) DEFAULT NULL,
  `qtype58` int(2) DEFAULT NULL,
  `q59` int(10) DEFAULT NULL,
  `qtype59` int(2) DEFAULT NULL,
  `q60` int(10) DEFAULT NULL,
  `qtype60` int(2) DEFAULT NULL,
  `q61` int(10) DEFAULT NULL,
  `qtype61` int(2) DEFAULT NULL,
  `q62` int(10) DEFAULT NULL,
  `qtype62` int(2) DEFAULT NULL,
  `q63` int(10) DEFAULT NULL,
  `qtype63` int(2) DEFAULT NULL,
  `q64` int(10) DEFAULT NULL,
  `qtype64` int(2) DEFAULT NULL,
  `q65` int(10) DEFAULT NULL,
  `qtype65` int(2) DEFAULT NULL,
  `q66` int(10) DEFAULT NULL,
  `qtype66` int(2) DEFAULT NULL,
  `q67` int(10) DEFAULT NULL,
  `qtype67` int(2) DEFAULT NULL,
  `q68` int(10) DEFAULT NULL,
  `qtype68` int(2) DEFAULT NULL,
  `q69` int(10) DEFAULT NULL,
  `qtype69` int(2) DEFAULT NULL,
  `q70` int(10) DEFAULT NULL,
  `qtype70` int(2) DEFAULT NULL,
  `q71` int(10) DEFAULT NULL,
  `qtype71` int(2) DEFAULT NULL,
  `q72` int(10) DEFAULT NULL,
  `qtype72` int(2) DEFAULT NULL,
  `q73` int(10) DEFAULT NULL,
  `qtype73` int(2) DEFAULT NULL,
  `q74` int(10) DEFAULT NULL,
  `qtype74` int(2) DEFAULT NULL,
  `q75` int(10) DEFAULT NULL,
  `qtype75` int(2) DEFAULT NULL,
  `q76` int(10) DEFAULT NULL,
  `qtype76` int(2) DEFAULT NULL,
  `q77` int(10) DEFAULT NULL,
  `qtype77` int(2) DEFAULT NULL,
  `q78` int(10) DEFAULT NULL,
  `qtype78` int(2) DEFAULT NULL,
  `q79` int(10) DEFAULT NULL,
  `qtype79` int(2) DEFAULT NULL,
  `q80` int(10) DEFAULT NULL,
  `qtype80` int(2) DEFAULT NULL,
  `q81` int(10) DEFAULT NULL,
  `qtype81` int(2) DEFAULT NULL,
  `q82` int(10) DEFAULT NULL,
  `qtype82` int(2) DEFAULT NULL,
  `q83` int(10) DEFAULT NULL,
  `qtype83` int(2) DEFAULT NULL,
  `q84` int(10) DEFAULT NULL,
  `qtype84` int(2) DEFAULT NULL,
  `q85` int(10) DEFAULT NULL,
  `qtype85` int(2) DEFAULT NULL,
  `q86` int(10) DEFAULT NULL,
  `qtype86` int(2) DEFAULT NULL,
  `q87` int(10) DEFAULT NULL,
  `qtype87` int(2) DEFAULT NULL,
  `q88` int(10) DEFAULT NULL,
  `qtype88` int(2) DEFAULT NULL,
  `q89` int(10) DEFAULT NULL,
  `qtype89` int(2) DEFAULT NULL,
  `q90` int(10) DEFAULT NULL,
  `qtype90` int(2) DEFAULT NULL,
  `q91` int(10) DEFAULT NULL,
  `qtype91` int(2) DEFAULT NULL,
  `q92` int(10) DEFAULT NULL,
  `qtype92` int(2) DEFAULT NULL,
  `q93` int(10) DEFAULT NULL,
  `qtype93` int(2) DEFAULT NULL,
  `q94` int(10) DEFAULT NULL,
  `qtype94` int(2) DEFAULT NULL,
  `q95` int(10) DEFAULT NULL,
  `qtype95` int(2) DEFAULT NULL,
  `q96` int(10) DEFAULT NULL,
  `qtype96` int(2) DEFAULT NULL,
  `q97` int(10) DEFAULT NULL,
  `qtype97` int(2) DEFAULT NULL,
  `q98` int(10) DEFAULT NULL,
  `qtype98` int(2) DEFAULT NULL,
  `q99` int(10) DEFAULT NULL,
  `qtype99` int(2) DEFAULT NULL,
  `q100` int(10) DEFAULT NULL,
  `qtype100` int(2) DEFAULT NULL,
  `q101` int(10) DEFAULT NULL,
  `qtype101` int(2) DEFAULT NULL,
  `q102` int(10) DEFAULT NULL,
  `qtype102` int(2) DEFAULT NULL,
  `q103` int(10) DEFAULT NULL,
  `qtype103` int(2) DEFAULT NULL,
  `q104` int(10) DEFAULT NULL,
  `qtype104` int(2) DEFAULT NULL,
  `q105` int(10) DEFAULT NULL,
  `qtype105` int(2) DEFAULT NULL,
  `q106` int(10) DEFAULT NULL,
  `qtype106` int(2) DEFAULT NULL,
  `q107` int(10) DEFAULT NULL,
  `qtype107` int(2) DEFAULT NULL,
  `q108` int(10) DEFAULT NULL,
  `qtype108` int(2) DEFAULT NULL,
  `q109` int(10) DEFAULT NULL,
  `qtype109` int(2) DEFAULT NULL,
  `q110` int(10) DEFAULT NULL,
  `qtype110` int(2) DEFAULT NULL,
  `q111` int(10) DEFAULT NULL,
  `qtype111` int(2) DEFAULT NULL,
  `q112` int(10) DEFAULT NULL,
  `qtype112` int(2) DEFAULT NULL,
  `q113` int(10) DEFAULT NULL,
  `qtype113` int(2) DEFAULT NULL,
  `q114` int(10) DEFAULT NULL,
  `qtype114` int(2) DEFAULT NULL,
  `q115` int(10) DEFAULT NULL,
  `qtype115` int(2) DEFAULT NULL,
  `q116` int(10) DEFAULT NULL,
  `qtype116` int(2) DEFAULT NULL,
  `q117` int(10) DEFAULT NULL,
  `qtype117` int(2) DEFAULT NULL,
  `q118` int(10) DEFAULT NULL,
  `qtype118` int(2) DEFAULT NULL,
  `q119` int(10) DEFAULT NULL,
  `qtype119` int(2) DEFAULT NULL,
  `q120` int(10) DEFAULT NULL,
  `qtype120` int(2) DEFAULT NULL,
  `q121` int(10) DEFAULT NULL,
  `qtype121` int(2) DEFAULT NULL,
  `q122` int(10) DEFAULT NULL,
  `qtype122` int(2) DEFAULT NULL,
  `q123` int(10) DEFAULT NULL,
  `qtype123` int(2) DEFAULT NULL,
  `q124` int(10) DEFAULT NULL,
  `qtype124` int(2) DEFAULT NULL,
  `q125` int(10) DEFAULT NULL,
  `qtype125` int(2) DEFAULT NULL,
  `q126` int(10) DEFAULT NULL,
  `qtype126` int(2) DEFAULT NULL,
  `q127` int(10) DEFAULT NULL,
  `qtype127` int(2) DEFAULT NULL,
  `q128` int(10) DEFAULT NULL,
  `qtype128` int(2) DEFAULT NULL,
  `q129` int(10) DEFAULT NULL,
  `qtype129` int(2) DEFAULT NULL,
  `q130` int(10) DEFAULT NULL,
  `qtype130` int(2) DEFAULT NULL,
  `q131` int(10) DEFAULT NULL,
  `qtype131` int(2) DEFAULT NULL,
  `q132` int(10) DEFAULT NULL,
  `qtype132` int(2) DEFAULT NULL,
  `q133` int(10) DEFAULT NULL,
  `qtype133` int(2) DEFAULT NULL,
  `q134` int(10) DEFAULT NULL,
  `qtype134` int(2) DEFAULT NULL,
  `q135` int(10) DEFAULT NULL,
  `qtype135` int(2) DEFAULT NULL,
  `q136` int(10) DEFAULT NULL,
  `qtype136` int(2) DEFAULT NULL,
  `q137` int(10) DEFAULT NULL,
  `qtype137` int(2) DEFAULT NULL,
  `q138` int(10) DEFAULT NULL,
  `qtype138` int(2) DEFAULT NULL,
  `q139` int(10) DEFAULT NULL,
  `qtype139` int(2) DEFAULT NULL,
  `q140` int(10) DEFAULT NULL,
  `qtype140` int(2) DEFAULT NULL,
  `q141` int(10) DEFAULT NULL,
  `qtype141` int(2) DEFAULT NULL,
  `q142` int(10) DEFAULT NULL,
  `qtype142` int(2) DEFAULT NULL,
  `q143` int(10) DEFAULT NULL,
  `qtype143` int(2) DEFAULT NULL,
  `q144` int(10) DEFAULT NULL,
  `qtype144` int(2) DEFAULT NULL,
  `q145` int(10) DEFAULT NULL,
  `qtype145` int(2) DEFAULT NULL,
  `q146` int(10) DEFAULT NULL,
  `qtype146` int(2) DEFAULT NULL,
  `q147` int(10) DEFAULT NULL,
  `qtype147` int(2) DEFAULT NULL,
  `q148` int(10) DEFAULT NULL,
  `qtype148` int(2) DEFAULT NULL,
  `q149` int(10) DEFAULT NULL,
  `qtype149` int(2) DEFAULT NULL,
  `q150` int(10) DEFAULT NULL,
  `qtype150` int(2) DEFAULT NULL,
  `q151` int(10) DEFAULT NULL,
  `qtype151` int(2) DEFAULT NULL,
  `q152` int(10) DEFAULT NULL,
  `qtype152` int(2) DEFAULT NULL,
  `q153` int(10) DEFAULT NULL,
  `qtype153` int(2) DEFAULT NULL,
  `q154` int(10) DEFAULT NULL,
  `qtype154` int(2) DEFAULT NULL,
  `q155` int(10) DEFAULT NULL,
  `qtype155` int(2) DEFAULT NULL,
  `q156` int(10) DEFAULT NULL,
  `qtype156` int(2) DEFAULT NULL,
  `q157` int(10) DEFAULT NULL,
  `qtype157` int(2) DEFAULT NULL,
  `q158` int(10) DEFAULT NULL,
  `qtype158` int(2) DEFAULT NULL,
  `q159` int(10) DEFAULT NULL,
  `qtype159` int(2) DEFAULT NULL,
  `q160` int(10) DEFAULT NULL,
  `qtype160` int(2) DEFAULT NULL,
  `q161` int(10) DEFAULT NULL,
  `qtype161` int(2) DEFAULT NULL,
  `q162` int(10) DEFAULT NULL,
  `qtype162` int(2) DEFAULT NULL,
  `q163` int(10) DEFAULT NULL,
  `qtype163` int(2) DEFAULT NULL,
  `q164` int(10) DEFAULT NULL,
  `qtype164` int(2) DEFAULT NULL,
  `q165` int(10) DEFAULT NULL,
  `qtype165` int(2) DEFAULT NULL,
  `q166` int(10) DEFAULT NULL,
  `qtype166` int(2) DEFAULT NULL,
  `q167` int(10) DEFAULT NULL,
  `qtype167` int(2) DEFAULT NULL,
  `q168` int(10) DEFAULT NULL,
  `qtype168` int(2) DEFAULT NULL,
  `q169` int(10) DEFAULT NULL,
  `qtype169` int(2) DEFAULT NULL,
  `q170` int(10) DEFAULT NULL,
  `qtype170` int(2) DEFAULT NULL,
  `q171` int(10) DEFAULT NULL,
  `qtype171` int(2) DEFAULT NULL,
  `q172` int(10) DEFAULT NULL,
  `qtype172` int(2) DEFAULT NULL,
  `q173` int(10) DEFAULT NULL,
  `qtype173` int(2) DEFAULT NULL,
  `q174` int(10) DEFAULT NULL,
  `qtype174` int(2) DEFAULT NULL,
  `q175` int(10) DEFAULT NULL,
  `qtype175` int(2) DEFAULT NULL,
  `q176` int(10) DEFAULT NULL,
  `qtype176` int(2) DEFAULT NULL,
  `q177` int(10) DEFAULT NULL,
  `qtype177` int(2) DEFAULT NULL,
  `q178` int(10) DEFAULT NULL,
  `qtype178` int(2) DEFAULT NULL,
  `q179` int(10) DEFAULT NULL,
  `qtype179` int(2) DEFAULT NULL,
  `q180` int(10) DEFAULT NULL,
  `qtype180` int(2) DEFAULT NULL,
  `q181` int(10) DEFAULT NULL,
  `qtype181` int(2) DEFAULT NULL,
  `q182` int(10) DEFAULT NULL,
  `qtype182` int(2) DEFAULT NULL,
  `q183` int(10) DEFAULT NULL,
  `qtype183` int(2) DEFAULT NULL,
  `q184` int(10) DEFAULT NULL,
  `qtype184` int(2) DEFAULT NULL,
  `q185` int(10) DEFAULT NULL,
  `qtype185` int(2) DEFAULT NULL,
  `q186` int(10) DEFAULT NULL,
  `qtype186` int(2) DEFAULT NULL,
  `q187` int(10) DEFAULT NULL,
  `qtype187` int(2) DEFAULT NULL,
  `q188` int(10) DEFAULT NULL,
  `qtype188` int(2) DEFAULT NULL,
  `q189` int(10) DEFAULT NULL,
  `qtype189` int(2) DEFAULT NULL,
  `q190` int(10) DEFAULT NULL,
  `qtype190` int(2) DEFAULT NULL,
  `q191` int(10) DEFAULT NULL,
  `qtype191` int(2) DEFAULT NULL,
  `q192` int(10) DEFAULT NULL,
  `qtype192` int(2) DEFAULT NULL,
  `q193` int(10) DEFAULT NULL,
  `qtype193` int(2) DEFAULT NULL,
  `q194` int(10) DEFAULT NULL,
  `qtype194` int(2) DEFAULT NULL,
  `q195` int(10) DEFAULT NULL,
  `qtype195` int(2) DEFAULT NULL,
  `q196` int(10) DEFAULT NULL,
  `qtype196` int(2) DEFAULT NULL,
  `q197` int(10) DEFAULT NULL,
  `qtype197` int(2) DEFAULT NULL,
  `q198` int(10) DEFAULT NULL,
  `qtype198` int(2) DEFAULT NULL,
  `q199` int(10) DEFAULT NULL,
  `qtype199` int(2) DEFAULT NULL,
  `q200` int(10) DEFAULT NULL,
  `qtype200` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Data i tabell `forms`
--

INSERT INTO `forms` (`id`, `form_type`, `active_start`, `active_end`, `hidden_type`, `author_id`, `created`, `title`, `timer`, `q1`, `qtype1`, `q2`, `qtype2`, `q3`, `qtype3`, `q4`, `qtype4`, `q5`, `qtype5`, `q6`, `qtype6`, `q7`, `qtype7`, `q8`, `qtype8`, `q9`, `qtype9`, `q10`, `qtype10`, `q11`, `qtype11`, `q12`, `qtype12`, `q13`, `qtype13`, `q14`, `qtype14`, `q15`, `qtype15`, `q16`, `qtype16`, `q17`, `qtype17`, `q18`, `qtype18`, `q19`, `qtype19`, `q20`, `qtype20`, `q21`, `qtype21`, `q22`, `qtype22`, `q23`, `qtype23`, `q24`, `qtype24`, `q25`, `qtype25`, `q26`, `qtype26`, `q27`, `qtype27`, `q28`, `qtype28`, `q29`, `qtype29`, `q30`, `qtype30`, `q31`, `qtype31`, `q32`, `qtype32`, `q33`, `qtype33`, `q34`, `qtype34`, `q35`, `qtype35`, `q36`, `qtype36`, `q37`, `qtype37`, `q38`, `qtype38`, `q39`, `qtype39`, `q40`, `qtype40`, `q41`, `qtype41`, `q42`, `qtype42`, `q43`, `qtype43`, `q44`, `qtype44`, `q45`, `qtype45`, `q46`, `qtype46`, `q47`, `qtype47`, `q48`, `qtype48`, `q49`, `qtype49`, `q50`, `qtype50`, `q51`, `qtype51`, `q52`, `qtype52`, `q53`, `qtype53`, `q54`, `qtype54`, `q55`, `qtype55`, `q56`, `qtype56`, `q57`, `qtype57`, `q58`, `qtype58`, `q59`, `qtype59`, `q60`, `qtype60`, `q61`, `qtype61`, `q62`, `qtype62`, `q63`, `qtype63`, `q64`, `qtype64`, `q65`, `qtype65`, `q66`, `qtype66`, `q67`, `qtype67`, `q68`, `qtype68`, `q69`, `qtype69`, `q70`, `qtype70`, `q71`, `qtype71`, `q72`, `qtype72`, `q73`, `qtype73`, `q74`, `qtype74`, `q75`, `qtype75`, `q76`, `qtype76`, `q77`, `qtype77`, `q78`, `qtype78`, `q79`, `qtype79`, `q80`, `qtype80`, `q81`, `qtype81`, `q82`, `qtype82`, `q83`, `qtype83`, `q84`, `qtype84`, `q85`, `qtype85`, `q86`, `qtype86`, `q87`, `qtype87`, `q88`, `qtype88`, `q89`, `qtype89`, `q90`, `qtype90`, `q91`, `qtype91`, `q92`, `qtype92`, `q93`, `qtype93`, `q94`, `qtype94`, `q95`, `qtype95`, `q96`, `qtype96`, `q97`, `qtype97`, `q98`, `qtype98`, `q99`, `qtype99`, `q100`, `qtype100`, `q101`, `qtype101`, `q102`, `qtype102`, `q103`, `qtype103`, `q104`, `qtype104`, `q105`, `qtype105`, `q106`, `qtype106`, `q107`, `qtype107`, `q108`, `qtype108`, `q109`, `qtype109`, `q110`, `qtype110`, `q111`, `qtype111`, `q112`, `qtype112`, `q113`, `qtype113`, `q114`, `qtype114`, `q115`, `qtype115`, `q116`, `qtype116`, `q117`, `qtype117`, `q118`, `qtype118`, `q119`, `qtype119`, `q120`, `qtype120`, `q121`, `qtype121`, `q122`, `qtype122`, `q123`, `qtype123`, `q124`, `qtype124`, `q125`, `qtype125`, `q126`, `qtype126`, `q127`, `qtype127`, `q128`, `qtype128`, `q129`, `qtype129`, `q130`, `qtype130`, `q131`, `qtype131`, `q132`, `qtype132`, `q133`, `qtype133`, `q134`, `qtype134`, `q135`, `qtype135`, `q136`, `qtype136`, `q137`, `qtype137`, `q138`, `qtype138`, `q139`, `qtype139`, `q140`, `qtype140`, `q141`, `qtype141`, `q142`, `qtype142`, `q143`, `qtype143`, `q144`, `qtype144`, `q145`, `qtype145`, `q146`, `qtype146`, `q147`, `qtype147`, `q148`, `qtype148`, `q149`, `qtype149`, `q150`, `qtype150`, `q151`, `qtype151`, `q152`, `qtype152`, `q153`, `qtype153`, `q154`, `qtype154`, `q155`, `qtype155`, `q156`, `qtype156`, `q157`, `qtype157`, `q158`, `qtype158`, `q159`, `qtype159`, `q160`, `qtype160`, `q161`, `qtype161`, `q162`, `qtype162`, `q163`, `qtype163`, `q164`, `qtype164`, `q165`, `qtype165`, `q166`, `qtype166`, `q167`, `qtype167`, `q168`, `qtype168`, `q169`, `qtype169`, `q170`, `qtype170`, `q171`, `qtype171`, `q172`, `qtype172`, `q173`, `qtype173`, `q174`, `qtype174`, `q175`, `qtype175`, `q176`, `qtype176`, `q177`, `qtype177`, `q178`, `qtype178`, `q179`, `qtype179`, `q180`, `qtype180`, `q181`, `qtype181`, `q182`, `qtype182`, `q183`, `qtype183`, `q184`, `qtype184`, `q185`, `qtype185`, `q186`, `qtype186`, `q187`, `qtype187`, `q188`, `qtype188`, `q189`, `qtype189`, `q190`, `qtype190`, `q191`, `qtype191`, `q192`, `qtype192`, `q193`, `qtype193`, `q194`, `qtype194`, `q195`, `qtype195`, `q196`, `qtype196`, `q197`, `qtype197`, `q198`, `qtype198`, `q199`, `qtype199`, `q200`, `qtype200`) VALUES
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
  `answ` text,
  `answ1` text,
  `answ2` text,
  `answ3` text,
  `answ4` text,
  `answ5` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Data i tabell `questions`
--

INSERT INTO `questions` (`id`, `author_id`, `created`, `question`, `type`, `answ`, `answ1`, `answ2`, `answ3`, `answ4`, `answ5`) VALUES
(2, 0, '0000-00-00 00:00:00', 'How old am I?', 3, '', '28', '13', '16', '18', '34'),
(9, 0, '2011-10-07 13:44:04', 'How many programlanguages in front end exists', 2, '', '12', '2', '6', '4', '8'),
(10, 0, '2011-10-07 14:10:58', 'Heading', 4, NULL, NULL, NULL, NULL, NULL, NULL);

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

