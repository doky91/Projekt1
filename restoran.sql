-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2015 at 12:28 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `jela`
--

CREATE TABLE IF NOT EXISTS `jela` (
  `id` int(11) NOT NULL,
  `nazivHR` text COLLATE utf8_croatian_ci NOT NULL,
  `nazivENG` text COLLATE utf8_croatian_ci NOT NULL,
  `opisHR` text COLLATE utf8_croatian_ci NOT NULL,
  `opisENG` text COLLATE utf8_croatian_ci NOT NULL,
  `slika` text COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `jela`
--

INSERT INTO `jela` (`id`, `nazivHR`, `nazivENG`, `opisHR`, `opisENG`, `slika`) VALUES
(1, 'Lazanje', 'Lasagna', 'Sloj mekane tjestenine, sočnog mesnog umaka od mljevenog mesa a’la bolognese, bechamel sa malo vrhnja i sir koji se onako fino topi u ustima.Dobar ručak je zagarantiran!', 'A layer of soft pasta, juicy meat sauce of minced meat a la Bolognese, bechamel with a little cream and cheese that finely melts in mouth.Good lunch is guaranteed!', 'images/lazanje.jpg'),
(2, 'Pileća salata', 'Chicken salad', 'Piletina je meso koje se pored ribe preporučuje tokom visokih temperatura. Obogaćena povrćem dat će kompletan obrok.', 'Chicken is the meat that is next to the fish recommended during high temperatures. Enriched with vegetables give a complete meal.', 'images/pileca-salata.jpg'),
(4, 'Pizza', 'Pizza', 'Savršenstvo okusa pizze popravi i razvedri dan!', 'Perfection flavors of pizza fix and brighten the day!', 'images/pizza.jpg'),
(6, 'Škampi ', 'Shrimp stew', 'Škampi su najcjenjenija morska delicija.Ukusna, nutritivna i ljekovita niskokalorična hrana i njihov bogat sadržaj proteina čini ih izvrsnom alternativom mesu, a prednost je i to što imaju mali udio masti. ', 'Shrimp are most appreciated sea delicija.Delicious, nutritional and medicinal low calorie food and their rich protein content makes them an excellent alternative to meat, and the advantage is that there are a small proportion of fat.', 'images/skampi.jpg'),
(7, 'Povrtna juha', 'Spring soup', 'Juha u tanjuru – tanjur pun zdravlja. Bila ona bistra ili gusta, mesna ili povrtna, uvijek prija i krijepi dušu', 'Soup in a plate - a plate full of health. Whether clear or thick, vegetable or meat, always pleasing and refreshes the soul.', 'images/juha.jpg'),
(8, 'Lignje', 'Squid', 'Lignje su nezaobilazni dodatak jelima mediteranske kuhinje. Posebno su popularne pržene, zbog odličnog ukusa i brzine pripreme.', 'Squid are indispensable seasoning Mediterranean cuisine.Fried are especially popular because of their great taste and quick preparation.', 'images/lignje.jpg'),
(9, 'Janjetina', 'Roast lamb', 'Pečena janjetina s krumpirima.', 'Roast lamb with potatoes.', 'images/janjetina.jpg'),
(10, 'Plata pršuta', 'Appetizer', 'Savršeno predjelo. Pršut,sir,francuska salata.', 'The perfect appetizer. Ham, cheese, french salad.', 'images/plata.jpg'),
(11, 'Meso', 'Meat', 'Plata mesa za cijelu obitelj. Šnicle,pomfri,čevapi.', 'Meat for whole family. Steaks, fries and cevapi.', 'images/meso.jpg'),
(14, 'Teleći rižot', 'Veal risotto', 'Teletina u odnosu na druge vrste mesa ima znatno nižu energetsku vrijednost, visok nivo proteina, a nizak nivo masti, pa je mnogi uspoređuju sa pilećim mesom. ', 'Beef compared to other meat has significantly lower energy value with  high level of protein and low fat content,so many people compare it with chicken.', 'images/rizoto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pice`
--

CREATE TABLE IF NOT EXISTS `pice` (
`id` int(11) NOT NULL,
  `naziv` text COLLATE utf8_unicode_ci NOT NULL,
  `cijena` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pice`
--

INSERT INTO `pice` (`id`, `naziv`, `cijena`) VALUES
(1, 'Kava s mlijekom', '12'),
(2, 'Limunada', '15'),
(3, 'Crna kava', '7'),
(4, 'Jamnica Sensation 1l', '20'),
(5, 'Merlot 1l', '80'),
(6, 'Graševina 1l', '70'),
(7, 'Bezalkoholna gazirana pića', '15'),
(8, 'Prirodni sokovi', '15'),
(9, 'Tomislav pivo 0,5l', '15'),
(10, 'Leffe 0,33l', '18');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE IF NOT EXISTS `rezervacija` (
  `broj` text COLLATE utf8_croatian_ci NOT NULL,
  `datum` text COLLATE utf8_croatian_ci NOT NULL,
  `vrijeme` text COLLATE utf8_croatian_ci NOT NULL,
  `ime` text COLLATE utf8_croatian_ci NOT NULL,
  `kontakt` text COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`broj`, `datum`, `vrijeme`, `ime`, `kontakt`) VALUES
('2', '2015-05-21', '20:00', 'Ddo', 'dolores.skugor@gmail.com'),
('', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jela`
--
ALTER TABLE `jela`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pice`
--
ALTER TABLE `pice`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pice`
--
ALTER TABLE `pice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
