-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mer 07 Août 2019 à 16:40
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `immobilier`
--
CREATE DATABASE IF NOT EXISTS `immobilier` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `immobilier`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `login`, `mdp`) VALUES
(1, '#admin4569', '#admin4569');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(30) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `lieu_naissance` varchar(50) NOT NULL,
  `regime_matrimonial` varchar(20) NOT NULL,
  `num_cni` int(11) NOT NULL,
  `num_passeport` int(11) NOT NULL,
  `num_membre` int(11) NOT NULL,
  `nationalite` varchar(20) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `salarie` varchar(3) NOT NULL,
  `anciente` int(11) NOT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idClient`, `nom_client`, `prenom`, `login`, `mdp`, `date_naissance`, `lieu_naissance`, `regime_matrimonial`, `num_cni`, `num_passeport`, `num_membre`, `nationalite`, `adresse`, `telephone`, `email`, `profession`, `salarie`, `anciente`) VALUES
(1, 'CISSE', 'Djibril', '', '', '2019-06-14', 'Dakar', 'Mr', 14545545, 1245455454, 2147483647, 'SÃ©nÃ©galaise', 'HLM Mariste Immeuble N', 77898999, 'djibrilcisse600@gmail.com', 'DÃ©veloppeur Informatique', 'Oui', 4),
(2, 'Faty', 'Mouhamed', '', '', '2000-07-15', 'Dakar', 'Mr', 14545545, 1245455454, 2147483647, 'SÃ©nÃ©galaise', 'HLM Mariste Immeuble N', 77898999, 'systemed3@hotmail.fr', 'DÃ©veloppeur Informatique', 'Oui', 4),
(11, 'Ndiaye', 'Adama', '', '', '2019-07-24', 'Dakar', 'Mr', 14545545, 1245455454, 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 77898999, 'djibrilcisse600@gmail.com', 'Développeur Informatique', 'Oui', 4),
(10, 'Ndiaye', 'Adama', '', '', '2019-07-24', 'Dakar', 'Mr', 14545545, 1245455454, 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 77898999, 'djibrilcisse600@gmail.com', 'Développeur Informatique', 'Oui', 4),
(7, 'Sow', 'Mamadou Ndiang', '', '', '1999-02-15', 'Kaolack', 'Mr', 14545545, 1245455454, 2147483647, 'Sénégalaise', 'HLM Grand Yoff', 77898999, 'sowo788@gmail.com', 'Développeur Informatique', 'Oui', 3),
(9, 'Ndiaye', 'Adama', '', '', '2019-07-24', 'Dakar', 'Mr', 14545545, 1245455454, 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 77898999, 'djibrilcisse600@gmail.com', 'Développeur Informatique', 'Oui', 4);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise_immo`
--

CREATE TABLE IF NOT EXISTS `entreprise_immo` (
  `idEntreprise` int(11) NOT NULL AUTO_INCREMENT,
  `nom_entreprise` varchar(50) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `site_web` varchar(150) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `projet` text NOT NULL,
  `detail_type` text NOT NULL,
  PRIMARY KEY (`idEntreprise`),
  UNIQUE KEY `nom_entreprise` (`nom_entreprise`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `entreprise_immo`
--

INSERT INTO `entreprise_immo` (`idEntreprise`, `nom_entreprise`, `adresse`, `telephone`, `mail`, `site_web`, `logo`, `projet`, `detail_type`) VALUES
(1, 'SATUR SA', 'CITE CDC BAMBILOR', 773124589, 'contact@sature.com', 'https://satursa.business.site', 'logo sature.jpg', 'Sur une surface globale de sept hectares (7 ha), «Dakar Eco City» sera composé de deux cent vingt-trois (223) logements, trois (3) espaces verts, un espace commercial, et des équipements sociaux (école maternelle et crèche, centre médical).-Un cadre paysager par la mise à disposition de trois (3) espaces verts aménagés prolongés sur toutes les rues par un alignement de palmiers ;-Des espaces paysagers par la mise à disposition de trois (3) espaces verts aménagés prolongés sur toutes les rues par un alignement de palmiers ;-Une clôture végétale autour de la cité avec deux entrées organisées ;-Un style architectural moderne où tout est planifié pour libérer les énergies avec un accent particulier sur l’aménagement des routes en pavés.', 'Ces villas sont construites sur des surfaces spéciales à formes irrégulières et seront réalisées selon leurs situations. Les prix sont étudiés au cas par cas et sont au-dessus de ceux usuels.Les innovations sont les suivantes: Un kit solaire dimensionné à la taille de la villa permettant une alimentation des différents appareils ménagers; Une isolation thermique et phonique par la fabrication de briques spéciales de 20cm d’épaisseur faits à base de poudre de pierre; L’utilisation de verres pour la grande menuiserie à double vitrage triplex et par la protection de la toiture par du polystyrène; Un système d’évacuation des eaux de pluie par une canalisation couverte et des eaux usées par égouts; Une électrification aux normes européennes avec un câblage entièrement enterré, centralisé par par un poste de transformation construit sur le site pour autonomie énergétique; L’utilisation de matériaux de finition nobles importés d’Europe (carreaux, sanitaires, quincaillerie). Toutes ces innovations techniques autorisent et assureront à nos résidents une sécurité et un confort d’habitat.'),
(2, 'STRUCTURE B', 'Keur Ndiaye LO', 2147483647, 'contact@structureb.com', 'https://www.structurebsa.com/', 'logo structure b.png', 'Née d’une réelle passion pour l’entrepreneuriat et d’une profonde détermination, Structure B SA relève des défis conséquents à travers une offre de haut niveau dans le management de projets. ​ Aboutissement d’une collaboration professionnelle initiée en 2008, Structure B SA s’installe à Dakar pour répondre au développement de son activité de Consulting, d’Engineering et de Construction. ​ Elle se positionne autant sur des phases de tendering, d’avant-projet, que sur des phases de réalisation ou encore de mise en service et déploiement. ​ Son équipe de spécialistes aguerris, possédant plus de 30 ans d’expérience tant dans les marchés locaux qu’internationaux, met un point d’honneur à privilégier larelation client et l’efficacité dans toutes ses démarches.', 'Acheter votre maison ou appartement n’est pas une décision à prendre à la légère et nous en sommes conscients. Nombreuses sont les questions que l’on se pose. Quelle zone choisir ? Quel coût investir ? Le bâtiment est-il assez solide ? Etc. Il est connu aujourd’hui que l’immobilier au Sénégal est un secteur très dynamique avec une demande de plus en plus forte. Pendant longtemps, cette demande était concentrée à Dakar, mais ceci commence à changer avec les projets immobiliers en cours dans les zones telles que Diamniadio, Zac Mbao, Keur Ndiaye Lo etc. Zac Mbao, the place you NEED to invest in et on vous dit pourquoi ? Les Avantages : 1- Zac Mbao bénéficie d’une position stratégique, situé entre Dakar et Diamniadio avec un accès facile grâce à l’autoroute à péage, vous permettant de vous éloigner du bruit, des embouteillages et de l’effervescence de Dakar. 2- Vous bénéficiez d’espaces plus grands que vous n’en auriez à Dakar. 3- Vous aurez également un accès à plus de commodités, plus d’espaces verts etc. ( ce qu’on ne trouve plus dans la capitale). 4- Et enfin l’élément clé : LE PRIX. Eh oui ! En choisissant d’investir dans une zone telle que Zac Mbao vous bénéficiez de prix largement au-dessous de ce qui vous serez proposé à Dakar et ceci avec plus d’espace.'),
(3, 'PHYSALIS', 'BAMBILOR', 338974578, 'contact@physalis.com', 'http://www.unefamilleuntoit.gouv.sn/fr/promoteur/srt-physalis', 'logo phylasis.png', 'Le projet immobilier CDC Bambilor est géré par la société SRT qui est le fruit d’ une joint-venture créée par la Caisse de dépôt et de consignation (CDC) dans le but de développer un programme de logements de qualité a des prix très accessibles. Le projet, qui va faire émerger de terre 4 445 villas de types F3, F4 et F5, va permettre aux Sénégalais d’accéder à la propriété a des couts très avantageux. Sur ce site seront réalisé des logements ainsi que les infrastructures nécessaires pour l’épanouissement des populations (mosquées, écoles, marchés, aires de jeux, etc.). .', 'Type de villas Il a été convenu une option sur trois types de logements au niveau de la CITE CDC BAMBILOR avec les prix ci-dessus: - Type économique : Villa F3/150 m2 (10mx15m) RDC : 15.000.000 Frs CFA (HT) 2 chambres, 1 salon, 1 toilette, 1 garage, 1 cuisine -	Type économique amélioré : Villa F4/150 m2 (10mx15m) RDC : 18.000.000 Frs CFA (HT) 3 chambres, 1 salon, espace familiale, 1 toilette, 1 garage, 1 cuisine -	Grand standing : Villa F5/250m2 (10mx25m) -	R+1: 49.900.000 Frs CFA (HT) 4 chambres, 1 salon, 1 terrasse, 2 salles de bains, 2 toilettes, 1 espace familiale, 1 espace pour les enfants, 1 garage, 1 cuisine, 1 balcon');

-- --------------------------------------------------------


--
-- Structure de la table `logement`
--

CREATE TABLE IF NOT EXISTS `logements` (
  `idLogement` int(11) NOT NULL AUTO_INCREMENT,
  `num_lot` int(11) NOT NULL,
  `superficie` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `idEntreprise` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `nom_entreprise` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  `reserve` varchar(3) NOT NULL,
  PRIMARY KEY (`idLogement`),
  UNIQUE KEY `num_lot` (`num_lot`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123;

--
-- Contenu de la table `logement`
--

INSERT INTO `logement` (`idLogement`, `num_lot`, `superficie`, `location`, `idEntreprise`, `idType`, `libelle`, `nom_entreprise`, `prix`, `reserve`) VALUES
(1, 9, 216, 'Tivaouane Peulh', 1, 4, 'F5B EN R+1', 'SATUR SA', 60000000, 'non'),
(2, 10, 216, 'Tivaouane Peulh', 1, 4, 'F5B EN R+1', 'SATUR SA', 60000000, 'non'),
(3, 11, 216, 'Tivaouane Peulh', 1, 4, 'F5B EN R+1', 'SATUR SA', 60000000, 'non'),
(9, 12, 216, 'Tivaouane Peulh', 1, 4, 'F5B EN R+1', 'SATUR SA', 60000000, 'non'),
(10, 13, 270, 'Tivaouane Peulh', 1, 4, 'F5B EN R+1', 'SATUR SA', 60000000, 'non'),
(11, 37, 155, 'Tivaouane Peulh', 1, 5, 'VILLAS SPECIALES', 'SATUR SA', 0, 'non'),
(19, 38, 222, 'Tivaouane Peulh', 1, 5, 'VILLAS SPECIALES', 'SATUR SA', 0, 'non'),
(21, 39, 180, 'Tivaouane Peulh', 1, 3, 'F5A EN R+1', 'SATUR SA', 55000000, 'non'),
(31, 40, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(32, 44, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(33, 45, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(34, 46, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(35, 47, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(36, 49, 235, 'Tivaouane Peulh', 1, 5, 'VILLA SPECIALE', 'SATUR SA', 0, 'non'),
(37, 62, 160, 'Tivaouane Peulh', 1, 5, 'VILLA SPECIALE', 'SATUR SA', 0, 'non'),
(38, 64, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(39, 65, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(40, 66, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(41, 67, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(42, 68, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(43, 69, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(44, 70, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(45, 71, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(46, 72, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(47, 73, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(48, 77, 227, 'Tivaouane Peulh', 1, 5, 'VILLA SPECIALE', 'SATUR SA', 0, 'non'),
(49, 78, 259, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(50, 79, 295, 'Tivaouane Peulh', 1, 5, 'VILLA SPECIALE', 'SATUR SA', 0, 'non'),
(51, 80, 266, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(52, 81, 237, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(53, 82, 237, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(54, 83, 269, 'Tivaouane Peulh', 1, 4, 'F5B EN R+1', 'SATUR SA', 60000000, 'non'),
(55, 84, 218, 'Tivaouane Peulh', 1, 5, 'VILLAS SPECIALES', 'SATUR SA', 0, 'non'),
(56, 85, 207, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(57, 86, 197, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(58, 87, 188, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(59, 88, 178, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(60, 89, 168, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(61, 90, 204, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(62, 91, 189, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(63, 92, 175, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(64, 93, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(65, 94, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(66, 95, 238, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(67, 101, 196, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(68, 102, 196, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(69, 103, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(70, 104, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(71, 107, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(72, 108, 238, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(73, 109, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(74, 110, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(75, 111, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(76, 112, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(77, 113, 168, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(78, 115, 160, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(79, 116, 160, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(80, 117, 160, 'Tivaouane Peulh', 1, 1, 'F4', 'SATUR SA', 28000000, 'non'),
(81, 118, 200, 'Tivaouane Peulh', 1, 5, 'VILLAS SPECIALES', 'SATUR SA', 0, 'non'),
(82, 119, 240, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(83, 120, 234, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(84, 121, 236, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(85, 122, 183, 'Tivaouane Peulh', 1, 5, 'VILLAS SPECIALES', 'SATUR SA', 0, 'non'),
(86, 123, 217, 'Tivaouane Peulh', 1, 5, 'VILLAS SPECIALES', 'SATUR SA', 0, 'non'),
(87, 124, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(88, 125, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(89, 126, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(90, 128, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(91, 129, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(92, 130, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(93, 131, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(94, 132, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(95, 133, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(96, 134, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(97, 135, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(98, 136, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(99, 137, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(100, 138, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(101, 139, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(102, 140, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(103, 141, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(104, 142, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(105, 144, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(106, 145, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(107, 146, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(108, 147, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(109, 148, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(110, 149, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(111, 150, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(112, 151, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(113, 154, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(114, 155, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(115, 159, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(116, 160, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(117, 161, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(118, 162, 216, 'Tivaouane Peulh', 1, 4, 'F5B en R+1', 'SATUR SA', 60000000, 'non'),
(119, 164, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(120, 169, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(121, 170, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non'),
(122, 171, 180, 'Tivaouane Peulh', 1, 3, 'F5A en R+1', 'SATUR SA', 55000000, 'non');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE IF NOT EXISTS `paiement` (
  `idPaiement` int(11) NOT NULL AUTO_INCREMENT,
  `date_paie` date NOT NULL,
  `montant` double NOT NULL,
  `montant_apport` double NOT NULL,
  `option_achat` varchar(50) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idLogement` int(11) NOT NULL,
  PRIMARY KEY (`idPaiement`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `idProjet` int(11) NOT NULL AUTO_INCREMENT,
  `nom_projet` varchar(100) NOT NULL,
  `idEntreprise` int(11) NOT NULL,
  PRIMARY KEY (`idProjet`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`idProjet`, `nom_projet`, `idEntreprise`) VALUES
(1, 'Dakar Eco City', 1),
(2, 'Cité de la Diaspora', 2),
(3, 'CDC Bambilor', 3),
(4, 'Avenir', 4),
(5, 'Ma proprieté', 4),
(6, 'Senegal City', 5),
(7, 'Dakar Vie', 6);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `idReservation` int(11) NOT NULL AUTO_INCREMENT,
  `prenomClient` varchar(50) NOT NULL,
  `nomClient` varchar(30) NOT NULL,
  `dateNaissClient` date NOT NULL,
  `numCarteClient` int(11) NOT NULL,
  `nationaliteClient` varchar(50) NOT NULL,
  `adresseClient` varchar(100) NOT NULL,
  `emailClient` varchar(50) NOT NULL,
  `professionClient` varchar(50) NOT NULL,
  `salarie` varchar(3) NOT NULL,
  `localisationLog` varchar(100) NOT NULL,
  `typeLog` varchar(10) NOT NULL,
  `optionAchat` varchar(50) NOT NULL,
  `prixLog` int(11) NOT NULL,
  `montant_apport` int(11) NOT NULL,
  PRIMARY KEY (`idReservation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `prenomClient`, `nomClient`, `dateNaissClient`, `numCarteClient`, `nationaliteClient`, `adresseClient`, `emailClient`, `professionClient`, `salarie`, `localisationLog`, `typeLog`, `optionAchat`, `prixLog`, `montant_apport`) VALUES
(1, 'Djibril', 'Ndiaye', '1999-02-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Non', '', '', 'Crédit', 0, 0),
(2, 'Djibril', 'Ndiaye', '1999-02-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Non', '', '', 'Crédit', 0, 0),
(3, 'Djibril', 'Ndiaye', '1999-02-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Oui', 'Diamniadio', 'F3', 'Comptant', 80000000, 0),
(4, 'Djibril', 'Ndiaye', '1999-02-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Oui', 'Diamniadio', 'F3', 'Comptant', 80000000, 0),
(5, 'Ousmane', 'Ndiaye', '2000-05-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Non', 'Diamniadio', 'F3', 'VEFA', 80000000, 500000),
(6, 'Ousmane', 'Fall', '1999-02-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Non', 'Bambilor', 'F5', 'VEFA', 55000000, 100000),
(13, 'Fatma', 'Ndiaye', '1988-05-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'fatmandiaye@gmail.com', 'Secrétaire', 'Oui', 'Diamniadio', 'F5', 'VEFA', 50000000, 0),
(14, 'Lamine', 'Diop', '1988-05-14', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'lamine@gmail.com', 'Informaticien', 'Oui', 'Diamniadio', 'F5', 'VEFA', 50000000, 100000),
(15, 'Ahmeth', 'Diagne', '1888-05-06', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'ahmeth@gmail.com', 'Comptable', 'Oui', 'Diamniadio', 'F3', 'Crédit', 80000000, 100000),
(16, 'Gana', 'Gueye', '1985-05-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'idrissa@gmail.com', 'footbaleur', 'Oui', 'Diamniadio', 'F3', 'VEFA', 80000000, 100000),
(17, 'Djibril', 'Ndiaye', '1888-05-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Informaticien', 'Oui', 'Diamniadio', 'F3', 'VEFA', 80000000, 100000),
(18, 'Djibril', 'Ndiaye', '1888-05-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Informaticien', 'Oui', 'Diamniadio', 'F3', 'VEFA', 80000000, 100000),
(19, 'Fatma', 'Diop', '1888-05-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Oui', 'Tivaoune Peulh', 'F5B EN R+1', 'Comptant', 60000000, 0),
(20, 'Fatma', 'Diop', '1888-05-15', 2147483647, 'Sénégalaise', 'HLM Mariste Immeuble N', 'djibrilndiaye@gmail.com', 'Comptable', 'Oui', 'Tivaoune Peulh', 'F5B EN R+1', 'Comptant', 60000000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `idType` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL DEFAULT '0',
  `nbre_chambre` int(11) NOT NULL DEFAULT '0',
  `nbre_salon` int(11) NOT NULL DEFAULT '0',
  `nbre_toilettes` int(11) NOT NULL DEFAULT '0',
  `nbre_garage` int(11) NOT NULL DEFAULT '0',
  `nbre_cuisines` int(11) NOT NULL DEFAULT '0',
  `espace_familal` int(11) NOT NULL DEFAULT '0',
  `terasse` int(11) NOT NULL DEFAULT '0',
  `nbre_salle_bain` int(11) NOT NULL DEFAULT '0',
  `espace_enfant` int(11) NOT NULL DEFAULT '0',
  `nbre_balcon` int(11) NOT NULL DEFAULT '0',
  `sejour` int(11) NOT NULL DEFAULT '0',
  `nbre_cours` int(11) NOT NULL DEFAULT '0',
  `garage` int(11) NOT NULL DEFAULT '0',
  `mur_cloture` int(11) NOT NULL DEFAULT '0',
  `sejour_manger` int(11) NOT NULL DEFAULT '0',
  `cours_service` int(11) NOT NULL DEFAULT '0',
  `sejour_open` int(11) NOT NULL DEFAULT '0',
  `jardin` int(11) NOT NULL DEFAULT '0',
  `debaras` int(11) NOT NULL DEFAULT '0',
  `prix` double NOT NULL,
  `site` varchar(100) NOT NULL,
  `im_1` varchar(100) NOT NULL,
  `im_2` varchar(100) NOT NULL,
  `im_3` varchar(100) NOT NULL,
  PRIMARY KEY (`idType`),
  UNIQUE KEY `libelle` (`libelle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`idType`, `libelle`, `nbre_chambre`, `nbre_salon`, `nbre_toilettes`, `nbre_garage`, `nbre_cuisines`, `espace_familal`, `terasse`, `nbre_salle_bain`, `espace_enfant`, `nbre_balcon`, `sejour`, `nbre_cours`, `garage`, `mur_cloture`, `sejour_manger`, `cours_service`, `sejour_open`, `jardin`, `debaras`, `prix`, `site`, `im_1`, `im_2`, `im_3`) VALUES
(1, 'F4', 3, 0, 0, 0, 1, 0, 0, 2, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 28000000, 'Tivaouane Peulh', 'structure1.jpg', 'structure2.jpg', 'structure3.jpg'),
(2, 'F4+ en R+1', 3, 0, 0, 0, 1, 1, 0, 2, 0, 0, 1, 2, 1, 1, 0, 0, 0, 0, 0, 42500000, 'Tivaouane Peulh', 'structure7.PNG', 'structure8.PNG', 'structure9.PNG'),
(3, 'F5A en R+1', 4, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 1, 1, 1, 3, 0, 0, 0, 55000000, 'Tivaouane Peulh', 'sature4.png', 'sature5.png', 'sature6.png'),
(4, 'F5B en R+1', 4, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 1, 1, 0, 3, 1, 0, 0, 60000000, 'Tivaouane Peulh', 'structure6.PNG', 'structure1.jpg', 'structure10.PNG'),
(5, 'VILLAS SPECIALES', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tivaouane Peulh', 'structure10.PNG', 'structure5.jpg', 'structure9.PNG');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
