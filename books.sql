-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 18. 11:20
-- Kiszolgáló verziója: 10.4.25-MariaDB
-- PHP verzió: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `books`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `szerzo` text COLLATE utf8_hungarian_ci NOT NULL,
  `kat_id` int(11) NOT NULL,
  `kiadas` int(11) NOT NULL DEFAULT 0,
  `isbn` varchar(20) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `books`
--

INSERT INTO `books` (`id`, `nev`, `szerzo`, `kat_id`, `kiadas`, `isbn`) VALUES
(1, 'Albert Einstein igaz története 1', 'Jürgen Neffe', 0, 2011, '978 963 279 426 6'),
(2, 'Csernobil Tények, okok, hiedelmek', 'Dr. Szatmáry Zoltán, Dr. Aszódi Attila', 0, 2005, '978 963 493 060 0'),
(3, 'Ready Player One', 'Ernest Cline', 0, 2018, '978 963 419 461 3'),
(4, 'A speciális és általános relativitás elmélet', 'Albert Einstein', 0, 1978, '963 280 662 10'),
(5, 'Lineáris Algebra Példákkal', 'Dr. Obádovics J. Gyula', 0, 2019, '978 963 244 168 9'),
(6, 'Integrálszámitás és alkalmazása', 'Dr. Obádovics J. Gyula', 0, 2013, '978 963 244 409 3'),
(7, 'Differenciálszámitás és alkalmazása', 'Dr. Obádovics J. Gyula', 0, 2011, '978 963 244 306 5'),
(8, 'Vektoralgebra mátrixok, determinánsok többváltozós függvények', 'Dr. Obádovics J. Gyula', 0, 2019, '978 963 244 571 7'),
(9, 'Felsőbb matematika', 'Dr. Obádovics J. Gyula, Dr. Szarka Zoltán', 0, 2017, '978 963 244 058 3'),
(10, 'A hálózatok Tudománya', 'Barabási Albert-László', 0, 2016, '978 963 310 787 4'),
(11, 'Négyjegyű Függvénytáblázatok, összefüggések és adatok', 'Dr. Hack Frigyes Ph.D, Dr. Fülöp Ferenc, Kugler Sándorné, Dr. Radnai Gyula, Urbán János, Dr. Szabados László, Dr. Nemerkényi Antal, Dr. Balázs Lóránt, Dr. Büki András', 0, 2005, '978 963 195 703 7'),
(12, 'Ennyit kell(ene) tudnod Matematikából', 'Blázsovics József', 0, 2000, '963 780 371 8'),
(13, 'Családom és egyéb állatfajták', 'Gerald Durrell', 0, 2007, '978 963 078 083 4'),
(14, 'Apolló 13', 'Jim Lovell, Jeffrey Kluger', 0, 1995, '963 305 010 3'),
(15, 'Nemo kapitány', 'Jules Verne', 0, 2016, '978 963 349 156 0'),
(16, 'A rejtelmes sziget', 'Jules Verne', 0, 2017, '978 963 346 729 9'),
(17, 'Kozmikus katasztrófák', 'J. Craig Wheeler', 0, 2000, '963 368 682 2'),
(18, 'Elon Musk', 'Ashlee Vance', 0, 2015, '978 963 304 300 4'),
(19, 'A tornádó oldalszele', 'Király Júlia', 0, 2019, '978 963 355 517 0'),
(20, 'Utazás a Föld középpontja felé', 'Jules Verne', 0, 2018, '978 963 245 179 4'),
(21, '100 - Huszonegy nap', 'Kass Morgan', 0, 2017, '978 963 261 754 1'),
(22, 'Elon Musk és a fantasztikus jövő feltalálása (ifjúsági változat) ', 'Ashlee Vance', 0, 2019, '978 963 304 758 3'),
(23, 'Kezdő hackerek kézikönyve', 'Fehér Krisztián', 0, 2016, '978 615 547 744 7'),
(24, 'Hackertechnikák', 'Fehér Krisztián', 0, 2018, '978 615 547 764 5'),
(25, 'Stranger Things - Gyanakvó elmék', 'Gwenda Bond', 0, 2019, '978 963 266 672 3'),
(26, 'Rettenthetetlenek', 'Mark Hertsgard', 0, 2017, '978 963 457 171 1'),
(27, '100 - Hazatérés', 'Kass Morgan', 0, 2017, '978 963 261 854 8'),
(28, 'Neumann János és a modern számitástechnika kezdetei', 'William Aspray', 0, 2004, '963 932 398 5'),
(29, 'Egy űrhajós tanácsai földlakóknak', 'Chris Hadfield ezredes', 0, 2014, '978 963 252 080 3'),
(30, 'A C programozási nyelv', 'B. W. Kernighan, D. M. Ritchie', 0, 1988, '963 107 916 3'),
(31, 'Elmék Harca', 'Stephen Budiansky', 0, 2005, '963 955 236 4'),
(32, 'Határozó kézikönyvek - Kőzetek és Ásványok', 'Chris Pellant', 0, 2008, '978 963 877 993 9'),
(33, 'PC hardverek kézikönyve', 'Sikos László', 0, 2007, '978 963 942 515 6'),
(34, 'Középiskolai földrajzi atlasz', 'Dr. Papp-Váry Árpád', 0, 2008, '978 963 262 131 9'),
(35, 'Holdséta - A Holdra szállás története', 'Dancsó Béla', 0, 2004, '963 944 224 0'),
(36, 'Radioaktív elemek Po-...', 'I. V. Petrjanov-Szokolov akadémikus', 0, 1979, NULL),
(37, 'Tanuljuk meg a JavaScript használatát 24 óra allat', 'Michael Moncur', 0, 2007, '963 963 716 5'),
(38, 'C# mesteri szinten 21 nap alatt', 'Bradley L. Jones', 0, 2004, '963 930 173 6'),
(39, 'HTML és CSS Webszerkesztés stílusosan', 'Virginia DeBolt', 0, 2005, '963 930 196 5'),
(40, 'JavaScript Programozói referencia', 'Christian MacAuley-Paul Jobson', 0, 2003, '963 545 368 10'),
(41, 'JavaScript 1.5 kliens oldalon', 'Sikos László', 0, 2004, '963 863 923 7'),
(42, 'Bevezetés a PHP5 programozásába', 'Dave W. Mercer, Allan Kent, Steven D. Nowicki, David Mercer, Dan Squier, Wankyu Choi', 0, 2006, '963 545 450 3'),
(43, 'PHP fejlesztés felsőfokon', 'George Schlossnagle', 0, 2004, '963 930 180 9'),
(44, 'A MySQL kezelése és használata', 'Georg Reese, Randy Jay Yarger, Tim King, Hugh E. Williams', 0, 2003, '963 094 386 7'),
(45, 'Tanuljuk meg a MySQL használatát 24 óra alatt', 'Julie C. Meloni', 0, 2003, '963 930 149 3'),
(46, 'Tanuljuk meg a PHP5 használatát 24 óra alatt', 'Matt Zandstra', 0, 2005, '963 930 186 8'),
(47, 'Tanuljuk meg a XML használatát 24 óra alatt', 'Michael Morrison', 0, 2006, '963 963 709 2'),
(48, 'PHP haladóknak Fekete Könyv', 'Peter Moulding', 0, 2002, '963 009 558 0'),
(49, 'Python zsebkönyv', 'Brad Dayley', 0, 2008, '978 963 963 741 2'),
(50, 'Házi kedvenceink - A hullámos papagáj', 'Axel Gutjahr', 0, 2011, '978 963 297 434 7'),
(51, 'Androidos szoftverfejlesztés alapfokon', 'Fehér Krisztián', 0, 2014, '978 963 942 588 0'),
(52, 'Az első ember - Neil Armstrong élete', 'James R. Hansen', 0, 2018, '978 963 252 112 1'),
(53, 'Euklidész ablaka', 'Leonard Mlodinow', 0, 2003, '963 942 916 3'),
(54, 'Az idő születése', 'John Gribbin', 0, 2000, '963 780 373 4'),
(55, 'Az elegáns univerzum', 'Brian Greene', 0, 2003, '963 942 932 5'),
(56, 'Az isteni a-tom', 'Leon Lederman', 0, 1995, '963 754 654 5'),
(57, 'Bill Gates és a Microsoft regénye', 'Daniel Ichbiah', 0, 1996, '963 784 653 0'),
(58, 'A vörös határ - A világegyetem szelének kutatása', 'Timothy Ferris', 0, 1985, '963 281 543 2'),
(59, 'Kvantummechanika mindenkinek', 'V. J. Ridnyik', 0, 1975, '963 280 216 0'),
(60, 'A rész és az egész - beszélgetések az atomfizikáról', 'Werner Heisenberg', 0, 1983, '963 281 292 1'),
(61, 'Fizika a huszadik században - válogatott tanulményok', 'Victor F. Weisskopf', 0, 1978, '963 280 536 4'),
(62, 'Gondolat - Válogatott tanulmányok', 'Carl Friedrich, Von Weizsäcker', 0, 1980, '963 280 753 7'),
(63, 'Isaac Asimov - Alapitvány', 'Isaac Asimov', 0, 1971, '963 211 514 7'),
(64, 'A nyolcadik utas a halál', 'Alan Dean Foster', 0, 1987, '963 211 763 8'),
(65, 'A bolygó neve: Halál', 'A. D. Foster', 0, 1988, '963 116 318 0'),
(66, 'Az út végén Halál', 'Alan Dean Foster', 0, 1992, '963 117 040 3'),
(67, 'Tréfál, Feynman úr?', 'Richard P. Feynman', 0, 2001, '963 530 524 9'),
(68, 'Gondolat - Relativitás és kosmológia', 'William J. Kaufmann, III', 0, 1985, '963 281 552 1'),
(69, 'Gondolat - Az első három perc', 'Steven Weinberg', 0, 1982, '963 281 224 7'),
(70, 'Einstein álma és egyáb írások', 'Stephen Hawking', 0, 1999, '963 919 226 0'),
(71, 'A fizika világképe', 'John D. Barrow', 0, 1994, '963 056 808 10'),
(72, 'Az idő rövid története', 'Stephen Hawking', 0, 1989, '963 742 518 7'),
(73, 'A tér és az idő természete', 'Stephen Hawking, Roger Penrose', 0, 1999, '963 645 023 4'),
(74, 'Szilárd Leó', 'William Lanouette', 0, 1997, '963 907 502 7'),
(75, 'Bűvös-lenyűgöző Immunológia', 'Hans-Wolf Baenkler', 0, 1994, '963 834 302 8'),
(76, 'A fizikusok Öt modern dráma', 'Gorkij Bercht Miller, Beckett Bürrenmatt', 0, 1986, NULL),
(77, 'A megélt matematka', 'Staar Gyula', 0, 1990, '963 282 174 2'),
(78, 'A Nobel-díjasok kislexikona', 'Vészits Ferencné', 0, 1985, '963 281 611 0'),
(79, 'És ez melyik csillag?', 'Joachim Herrmann', 0, 2003, '963 813 883 1'),
(80, 'Hawking', 'Paul Strathern', 0, 2000, '963 920 554 0'),
(81, 'SH atlasz Űrtan', 'Almár-Both-Horváth-Szabó', 0, 1996, '963 845 582 9'),
(82, 'A periódusos birodalom', 'P. W. Atkins', 0, 1995, '963 782 681 5'),
(83, 'Négyjegyű függvénytáblázatok Matematika, fizikai, kémiai összefüggvések', 'Hack Frigyes, Kugler Sándorné, Radnai Gyula, Kugler Sándor, Tóth Géza, Balázs Lóránt', 0, 1989, '963 181 937 10'),
(84, 'Matematika', 'Dr. Obádovics J. Gyula', 0, 2019, '978 963 244 979 1'),
(85, 'Valószínűségszámitás és Matematikai statisztika', 'Dr. Obádovics J. Gyula', 0, 2020, '978 963 244 067 5'),
(86, 'Óbudai Egyetem Kandó Kálmán Villamosmérnöki Kar - Matematika feladatgyűjtemény', 'Dr. Baróti György, Kis Miklós, Schmidt Edit, Sréterné dr. Lukács Zsuzsanna', 0, 2010, NULL),
(87, 'Mesterséges intelligencia, avagy Pandora digitális szelencéje', 'Fehér Krisztián, dr, Kökényesi-Bartos Attila, Bártfai Barnabás', 0, 2020, '978 615 547 786 7'),
(88, 'Bolyai', 'Láng Zsolt', 0, 2020, '978 963 518 076 9'),
(89, 'Einstein - Egy zseni élete és világa', 'Walter Isaacson', 0, 2019, '978 963 479 033 4'),
(90, 'Fizikusok útvesztőben - Hogyan csábít tévutakra a matematikai szépség', 'Sabine Hossenfelder', 0, 2020, '978 963 355 578 1'),
(91, 'Modern átverések - avagy IT biztonség a hétköznapokban', 'Fekete Imre', 0, 2019, '978 615 547 784 3'),
(92, 'Behálózva - A hálózatok új tudomány', 'Barabási Albert-László', 0, 2020, '978 963 433 776 8'),
(93, 'Webalkalmazások fejlesztése Ajax segítségével', 'Kris Hadlock', 0, 2007, '978 963 963 723 8'),
(94, 'A Föld atlasz', 'Géczi Zoltán, Sipos Norbert', 0, 2007, '963 861 081 6'),
(95, 'Az Elektromosság világa', 'Bíró Imre, Szakadáti Veronika, Péter Gyula, Bíró Rebeka', 0, 1000, '978 963 958 182 1'),
(96, 'Csillagászat gyerekeknek', 'Scolar Kalauz', 0, 2007, '978 963 919 369 7'),
(97, 'A 14 karátos autó - Színes képregény', 'Rejtő Jenő, Korcsmáros Pál', 0, 2012, '978 963 869 640 3'),
(98, 'Lucky Luke - Billy, a kölyök', 'Goscinny, Morris', 0, 2006, '963 061 095 7'),
(99, 'Csillagunk: a Nap - Gyorsuló idő', 'Hédervári Péter', 0, 1980, '963 271 143 2'),
(100, 'Kvázirészecskék - Gondolat', 'M. I. Kaganov, I. M. Lifsic', 0, 1984, '963 281 433 9'),
(101, 'A sakk esztétikája', 'Iszaak Linder', 0, 1983, '963 253 414 10'),
(102, 'középiskolai Történelmi atlasz', 'Foki Tamás, Hidas Gábor, Kereszty Péter, Lovas Erika, MiklósLászló, Sasi Attila, Schmidt Gabriella, Száray Miklós, Dr. Urán Aladár', 0, 2013, '978 963 262 557 7'),
(103, 'Az anyag', 'Ralph E. Lapp', 0, 1979, '963 102 475 10'),
(104, 'Az időjárás', 'John Lynch', 0, 2002, '963 368 414 5'),
(105, 'A fizika kultúrtörténete - Gondolat', 'Simonyi Károly', 0, 1981, '963 281 172 0'),
(106, 'A művészi világegyetem', 'John D. Barrow', 0, 1998, '963 906 917 5'),
(107, 'Stephen W. Hawking Élete a tudomány', 'Michael Whithe, John Gribbin', 0, 2000, '963 907 223 0'),
(108, 'Fizika', 'George Gamow, John M. Cleveland', 0, 1973, NULL),
(109, 'Csillagok születésük, életük, pusztulásuk - Gondolat', 'J. Sz. Sklovszkij', 0, 1981, '963 280 977 7'),
(110, 'Csillagászat - Gondolat', 'Donald H. Manzel', 0, 1980, '963 280 823 1'),
(111, 'Az internet pszichológiája', 'Patricia Wallace', 0, 2002, '963 389 233 3'),
(112, 'TCP/IP és Ethernet hálózatok a gyakorlatban', 'Deon Reynders, Edwin Wright', 0, 2005, '963 930 191 4'),
(113, 'XHTML a HTML megújulása XML alapokon', 'Sikos László', 0, 2004, '963 863 927 10'),
(114, 'JavaScript webfejlesztőknek', 'Dan Barrett', 0, 2003, '963 094 476 6'),
(115, 'A csillagok útján', 'Jeanne Cavelos', 0, 2001, '963 926 126 2'),
(116, 'XML Elmélet és gyakorlat', 'Chris Bates', 0, 2004, '963 545 393 0'),
(117, 'A világháló lehetőségei', 'Bócz Péter, Szász Péter', 0, 2001, '963 618 188 8'),
(118, 'CSS & DHTML webfejlesztőknek', 'Dan Livingston', 0, 2003, '963 094 475 8'),
(119, 'Webmesterek kézikönyve', 'Tápai Csaba', 0, 1996, ''),
(120, 'Kódjátszma', 'Andrew Hodges', 0, 2015, '978 963 406 011 6'),
(121, 'Cyber-csapda - Hogyan változtatja meg az online tér az emberi viselkedést?', 'Dr. Mary Aiken', 0, 2020, ''),
(122, 'Csernobili ima', 'Szvetlana Alekszijevics', 0, 2016, '978 963 504 022 3'),
(123, 'Amikor Einstein Gödellel sétált - kirándulás az értelem peremén', 'Jim Holt', 0, 2019, '978 963 463 055 6'),
(124, 'Einstein csodálatos éve', 'Trevor Limpscombe, Alice Calaprice, Sam Elworthy', 0, 2004, '963 942 954 6'),
(125, 'Nikola Tesla és az univerzum titkai', 'Kocsis G. István', 0, 2020, '978 615 009 587 5'),
(126, 'Alien Isolation - Izoláció', 'Keith R. A. DeCandido', 0, 2020, '978 963 497 613 4'),
(127, 'A Marsi', 'Andy Weir', 0, 2015, '978 615 551 433 3'),
(128, 'Ásványhatározó', 'Bognár László', 0, 1987, '963 281 818 0'),
(129, 'Mesterséges intelligencia A-Z', 'Jenny Raggett, William Bains', 0, 1994, '963 056 784 9'),
(130, 'Az Energia', 'Mitchell Wilson', 0, 1978, '963 102 476 8'),
(131, 'Fizika 1. szakközépsikolásoknak', 'Dr. Balogh Lászlóné', 0, 2008, '978 963 162 764 0'),
(132, 'Meterológiáról mindenkinek', 'Günter D. Roth', 0, 2000, '963 547 115 7'),
(133, 'Éjszakai égbolt', 'Nigel Henbest MSc FRAS, Stuart Atkinson', 0, 2010, '978 963 251 158 0'),
(134, 'A majmok bolygója', 'Pierre Boulle', 0, 1971, '963 211 473 6'),
(135, 'Éjfél Csernobilban', 'Adam Higginbotham', 0, 2019, '978 963 635 712 2'),
(136, 'Játék a végtelennel - Matematika kívülálloknak', 'Péter Rózsa', 0, 2004, '978 963 493 004 4'),
(137, 'Amatőr csillagászat számítógepen és okostelefonon', 'Nagy Róbert', 0, 2016, '978 615 547 748 5'),
(138, 'Időjárás', 'Alastair Smith, Phillip Clarke', 0, 2010, '978 963 251 156 6'),
(139, 'Az idő rövid Története - A felújított kiadás illusztrát változata', 'Stephen Hawking', 0, 2004, '978 963 252 121 3'),
(140, 'Az idő még rövidebb története', 'Stephen Hawking, Leonard Mlodinow', 0, 2015, '978 963 353 087 2');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

CREATE TABLE `kategoriak` (
  `id` int(11) NOT NULL,
  `nev` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoriak`
--

INSERT INTO `kategoriak` (`id`, `nev`) VALUES
(1, 'Sci-fi'),
(2, 'Életrajzi'),
(3, 'Ismeretterjesztő'),
(4, 'Regény'),
(5, 'Novella'),
(6, 'Vers'),
(7, 'Történelmi'),
(8, 'Tudományos'),
(9, 'Kaland'),
(10, 'Dráma'),
(11, 'Fantasy'),
(12, 'Horror'),
(13, 'Matematika'),
(14, 'Fizika'),
(15, 'Kémia'),
(16, 'Filozófia'),
(17, 'Vallás'),
(18, 'Krimi'),
(19, 'Informatika'),
(20, 'Gazdaság'),
(21, 'Tankönyv'),
(22, 'Képregény'),
(23, 'Mesekönyv'),
(24, 'Ifjúsági'),
(25, 'Szótár'),
(26, 'Orvosi'),
(27, 'Csillagászat'),
(28, 'Pszichológia');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kat_book`
--

CREATE TABLE `kat_book` (
  `id` int(11) NOT NULL,
  `kat_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kat_book`
--

INSERT INTO `kat_book` (`id`, `kat_id`, `book_id`) VALUES
(1, 2, 1),
(2, 7, 1),
(3, 14, 1),
(4, 3, 2),
(5, 8, 2),
(6, 14, 2),
(7, 1, 3),
(8, 4, 3),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 8, 4),
(13, 13, 4),
(14, 14, 4),
(15, 13, 5),
(16, 21, 5),
(17, 13, 6),
(18, 21, 6),
(19, 13, 7),
(20, 21, 7),
(21, 13, 8),
(22, 21, 8),
(23, 13, 9),
(24, 21, 9),
(25, 19, 10),
(26, 21, 10),
(27, 8, 11),
(28, 13, 11),
(29, 14, 11),
(30, 15, 11),
(31, 19, 11),
(32, 21, 11),
(33, 13, 12),
(34, 21, 12),
(35, 4, 13),
(36, 24, 13),
(37, 2, 14),
(38, 7, 14),
(39, 10, 14),
(40, 4, 15),
(41, 9, 15),
(42, 23, 15),
(43, 24, 15),
(44, 4, 16),
(45, 9, 16),
(46, 23, 16),
(47, 24, 16),
(48, 3, 17),
(49, 8, 17),
(50, 14, 17),
(51, 2, 18),
(52, 3, 18),
(53, 3, 19),
(54, 7, 19),
(55, 20, 19),
(56, 4, 20),
(57, 9, 20),
(58, 23, 20),
(59, 24, 20),
(60, 1, 21),
(61, 4, 21),
(62, 10, 21),
(63, 23, 21),
(64, 24, 21),
(65, 2, 22),
(66, 3, 22),
(67, 24, 22),
(68, 3, 23),
(69, 19, 23),
(70, 21, 23),
(71, 3, 24),
(72, 19, 24),
(73, 1, 25),
(74, 10, 25),
(75, 12, 25),
(76, 18, 25),
(77, 2, 26),
(78, 3, 26),
(79, 7, 26),
(80, 19, 26),
(81, 20, 26),
(82, 1, 27),
(83, 4, 27),
(84, 10, 27),
(85, 24, 27),
(86, 2, 28),
(87, 3, 28),
(88, 7, 28),
(89, 8, 28),
(90, 2, 29),
(91, 3, 29),
(92, 16, 29),
(93, 19, 30),
(94, 21, 30),
(95, 2, 31),
(96, 3, 31),
(97, 7, 31),
(98, 3, 32),
(99, 8, 32),
(100, 15, 32),
(101, 3, 33),
(102, 19, 33),
(103, 21, 33),
(104, 21, 34),
(105, 2, 35),
(106, 3, 35),
(107, 7, 35),
(108, 8, 36),
(109, 15, 36),
(110, 19, 37),
(111, 21, 37),
(112, 19, 38),
(113, 21, 38),
(114, 19, 39),
(115, 21, 39),
(116, 19, 40),
(117, 21, 40),
(118, 19, 41),
(119, 21, 41),
(120, 19, 42),
(121, 21, 42),
(123, 19, 43),
(124, 21, 43),
(125, 19, 44),
(126, 21, 44),
(127, 19, 45),
(128, 21, 45),
(129, 19, 46),
(130, 21, 46),
(131, 19, 47),
(132, 21, 47),
(133, 19, 48),
(134, 21, 48),
(135, 19, 49),
(136, 21, 49),
(137, 3, 50),
(138, 19, 51),
(139, 21, 51),
(140, 3, 52),
(141, 8, 52),
(142, 21, 52),
(143, 2, 52),
(144, 7, 52),
(145, 3, 53),
(146, 13, 53),
(147, 8, 53),
(148, 3, 54),
(149, 8, 54),
(150, 3, 55),
(151, 8, 55),
(152, 14, 56),
(153, 3, 56),
(154, 8, 56),
(155, 2, 57),
(156, 20, 57),
(157, 7, 57),
(158, 14, 58),
(159, 3, 58),
(160, 8, 58),
(161, 14, 59),
(162, 3, 59),
(163, 8, 59),
(164, 14, 60),
(165, 3, 60),
(166, 8, 60),
(167, 14, 61),
(168, 3, 61),
(169, 8, 61),
(170, 14, 62),
(171, 3, 62),
(172, 8, 62),
(173, 4, 63),
(174, 1, 63),
(175, 12, 64),
(176, 4, 64),
(177, 1, 64),
(178, 12, 65),
(179, 4, 65),
(180, 1, 65),
(181, 12, 66),
(182, 4, 66),
(183, 1, 66),
(184, 2, 67),
(185, 3, 67),
(186, 7, 67),
(187, 8, 67),
(188, 14, 68),
(189, 3, 68),
(190, 8, 68),
(191, 14, 69),
(192, 3, 69),
(193, 8, 69),
(194, 14, 70),
(195, 3, 70),
(196, 8, 70),
(197, 14, 71),
(198, 3, 71),
(199, 8, 71),
(200, 14, 72),
(201, 3, 72),
(202, 8, 72),
(203, 14, 73),
(204, 3, 73),
(205, 8, 73),
(206, 2, 74),
(207, 7, 74),
(208, 3, 75),
(209, 26, 75),
(210, 10, 76),
(211, 16, 76),
(212, 14, 76),
(213, 3, 76),
(214, 7, 76),
(215, 3, 77),
(216, 13, 77),
(217, 8, 77),
(218, 2, 78),
(219, 7, 78),
(220, 8, 78),
(221, 27, 79),
(222, 3, 79),
(223, 21, 79),
(224, 8, 79),
(225, 2, 80),
(226, 14, 80),
(227, 7, 80),
(228, 8, 80),
(229, 27, 81),
(230, 14, 81),
(231, 3, 81),
(232, 21, 81),
(233, 8, 81),
(234, 3, 82),
(235, 15, 82),
(236, 8, 82),
(237, 14, 83),
(238, 15, 83),
(239, 13, 83),
(240, 21, 83),
(241, 13, 84),
(242, 21, 84),
(243, 13, 85),
(244, 21, 85),
(245, 13, 86),
(246, 21, 86),
(247, 16, 87),
(248, 19, 87),
(249, 3, 87),
(250, 2, 88),
(251, 13, 88),
(252, 2, 89),
(253, 14, 89),
(254, 3, 89),
(255, 7, 89),
(256, 8, 89),
(257, 16, 90),
(258, 14, 90),
(259, 3, 90),
(260, 8, 90),
(261, 19, 91),
(262, 3, 91),
(263, 19, 92),
(264, 3, 92),
(265, 8, 92),
(266, 19, 93),
(267, 24, 94),
(268, 3, 94),
(269, 8, 94),
(270, 14, 95),
(271, 24, 95),
(272, 3, 95),
(273, 8, 95),
(274, 27, 96),
(275, 24, 96),
(276, 3, 96),
(277, 8, 96),
(278, 24, 97),
(279, 22, 97),
(280, 4, 97),
(281, 24, 98),
(282, 22, 98),
(283, 27, 99),
(284, 14, 99),
(285, 3, 99),
(286, 8, 99),
(287, 14, 100),
(288, 8, 100),
(289, 16, 101),
(290, 3, 101),
(291, 13, 101),
(292, 3, 102),
(293, 21, 102),
(294, 7, 102),
(295, 14, 103),
(296, 3, 103),
(297, 15, 103),
(298, 8, 103),
(299, 3, 104),
(300, 8, 104),
(301, 14, 105),
(302, 3, 105),
(303, 7, 105),
(304, 8, 105),
(305, 27, 106),
(306, 11, 106),
(307, 14, 106),
(308, 3, 106),
(309, 8, 106),
(310, 2, 107),
(311, 14, 107),
(312, 7, 107),
(313, 8, 107),
(314, 14, 108),
(315, 3, 108),
(316, 21, 108),
(317, 8, 108),
(318, 27, 109),
(319, 14, 109),
(320, 3, 109),
(321, 8, 109),
(322, 27, 110),
(323, 3, 110),
(324, 8, 110),
(325, 16, 111),
(326, 19, 111),
(327, 3, 111),
(328, 19, 112),
(329, 19, 113),
(330, 19, 114),
(331, 27, 115),
(332, 16, 115),
(333, 14, 115),
(334, 3, 115),
(335, 8, 115),
(336, 19, 116),
(337, 19, 117),
(338, 19, 118),
(339, 19, 119),
(340, 2, 120),
(341, 7, 120),
(342, 27, 121),
(343, 19, 121),
(344, 3, 121),
(345, 28, 121),
(346, 10, 122),
(347, 7, 122),
(348, 2, 123),
(349, 14, 123),
(350, 7, 123),
(351, 8, 123),
(352, 14, 124),
(353, 3, 124),
(354, 7, 124),
(355, 8, 124),
(356, 2, 125),
(357, 3, 125),
(358, 7, 125),
(359, 12, 126),
(360, 1, 126),
(361, 10, 127),
(362, 1, 127),
(363, 15, 128),
(364, 21, 128),
(365, 8, 128),
(366, 16, 129),
(367, 19, 129),
(368, 3, 129),
(369, 14, 130),
(370, 3, 130),
(371, 8, 130),
(372, 14, 131),
(373, 21, 131),
(374, 14, 132),
(375, 3, 132),
(376, 8, 132),
(377, 27, 133),
(378, 3, 133),
(379, 8, 133),
(380, 10, 134),
(381, 4, 134),
(382, 1, 134),
(383, 10, 135),
(384, 3, 135),
(385, 7, 135),
(386, 3, 136),
(387, 13, 136),
(388, 8, 136),
(389, 27, 137),
(390, 19, 137),
(391, 3, 137),
(392, 8, 137),
(393, 14, 138),
(394, 3, 138),
(395, 8, 138),
(396, 27, 139),
(397, 16, 139),
(398, 14, 139),
(399, 3, 139),
(400, 7, 139),
(401, 8, 139),
(402, 16, 140),
(403, 14, 140),
(404, 3, 140),
(405, 8, 140);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kategoriak`
--
ALTER TABLE `kategoriak`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kat_book`
--
ALTER TABLE `kat_book`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT a táblához `kategoriak`
--
ALTER TABLE `kategoriak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT a táblához `kat_book`
--
ALTER TABLE `kat_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
