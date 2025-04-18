-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 17 avr. 2025 à 12:04
-- Version du serveur : 8.0.41-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `SAE203`
--

-- --------------------------------------------------------

--
-- Structure de la table `Category`
--

CREATE TABLE `Category` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comédie'),
(3, 'Drame'),
(4, 'Science-fiction'),
(5, 'Animation'),
(6, 'Thriller'),
(7, 'Horreur'),
(8, 'Aventure'),
(9, 'Fantaisie'),
(10, 'Documentaire'),
(11, 'Romance');

-- --------------------------------------------------------

--
-- Structure de la table `Movie`
--

CREATE TABLE `Movie` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `description` text,
  `director` varchar(255) DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `min_age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `Movie`
--

INSERT INTO `Movie` (`id`, `name`, `year`, `length`, `description`, `director`, `id_category`, `image`, `trailer`, `min_age`) VALUES
(7, 'Interstellar', 2014, 169, 'Un groupe d\'explorateurs voyage à travers un trou de ver pour sauver l\'humanité.', 'Christopher Nolan', 4, 'interstellar.jpg', 'https://www.youtube.com/embed/VaOijhK3CRU?si=76Ke4uw4LYjuLuQ6', 12),
(12, 'La Liste de Schindler', 1993, 195, 'Un industriel allemand sauve des milliers de Juifs pendant l\'Holocauste.', 'Steven Spielberg', 3, 'schindler.webp', 'https://www.youtube.com/embed/ONWtyxzl-GE?si=xC3ASGGPy5Ib-aPn', 16),
(17, 'Your Name', 2016, 107, 'Deux adolescents échangent leurs corps de manière mystérieuse.', 'Makoto Shinkai', 5, 'your_name.jpg', 'https://www.youtube.com/embed/AROOK45LXXg?si=aUQyGk2VMCb_ToUL', 10),
(27, 'Le Bon, la Brute et le Truand', 1966, 161, 'Trois hommes se lancent à la recherche d\'un trésor caché.', 'Sergio Leone', 8, 'bon_brute_truand.jpg', 'https://www.youtube.com/embed/WA1hCZFOPqs?si=TwNZAoM4oj4KpGja', 12),
(35, 'Iron Man', 2008, 125, 'Un génie de l\'armement crée une armure de combat et devient un super-héros.', 'Jon Favreau', 1, 'ironman.jpg', 'https://www.youtube.com/embed/8ugaeA-nMTc?si=CW55BNh6o_WSuwF0', 7),
(37, 'Transformers', 2007, 144, 'Des robots aliens ayant la capacité de se transformer en véhicule s\'écrasent sur Terre, nouveau lieu de leur guerre éternelle.', 'Michael Bay', 1, 'transformers.jpg', 'https://www.youtube.com/embed/_XKAU3tYO9M?si=0KaVHYVMWfSJl_h9', 10),
(38, 'Kirikou et la Sorcière', 1998, 70, 'Un enfant d\'un village africain est le seul garçon de son village et il ne grandit pas, tout ça à cause d\'une malédiction lancée par une sorcière.', 'Michel Ocelot', 5, 'kirikou.jpg', 'https://www.youtube.com/embed/Bgc9Vy3EGV8?si=FVvmGVRpFjZnYLz_', 3),
(39, 'Scream', 1996, 111, 'Un an après le meurtre de sa mère, une adolescente est terrorisée par un nouveau meurtrier qui la cible, ainsi que ses amis, en utilisant des films d\'horreur dans le cadre d\'un jeu meurtrier.', 'Wes Craven', 7, 'scream.jpg', 'https://www.youtube.com/embed/i3J6ACKQ7K0?si=0OfAcrLklo29sbrw', 16),
(40, 'Les Tuche', 2011, 95, 'A Bouzolles, tout le monde connaît les Tuche. Respectueux de la philosophie Tuche, « l\'homme n\'est pas fait pour travailler », Jeff, Cathy et leurs trois enfants vivent gaiement du système D. Mais les 100 millions d\'euros gagnés à « l\'Euroloterie » vont bouleverser ce fragile équilibre.', 'Olivier Baroux', 2, 'tuche.jpg', 'https://www.youtube.com/embed/ndCzT6dyOqk?si=voab9cmZETG1XH8W', 7),
(41, 'Iron Man 2', 2010, 124, 'Au moment où Tony Stark révèle au monde qu\'il est Iron Man, à Moscou, Anton Vanko meurt dans la misère. Son fils Ivan décide alors de se venger de la famille Stark et jure de faire tomber Tony aussi bas que sa propre famille est tombée à cause d\'Howard Stark.', 'Jon Favreau', 1, 'ironman2.jpg', 'https://www.youtube.com/embed/BoohRoVA9WQ?si=DV94BdN8gz0Um2Rx', 12),
(42, 'Iron Man 3', 2013, 130, 'Tony Stark, alias Iron Man, mène une vie confortable aux côtés de sa compagne, Pepper. Cependant, il se retrouve confronté à Mandarin, chef d\'une organisation terroriste, qui détruit sa maison et tout son univers. Tony Stark part alors à la recherche de Pepper, disparue, et cherche à se venger. Démuni, il ne peut compter que sur son ingéniosité, ses multiples inventions et son instinct de survie pour protéger ses proches.', 'Shane Black', 1, 'ironman3.webp', 'https://www.youtube.com/embed/wnEr73Rq3Ac?si=TLjIb-tp6Z-Sk3sc', 12),
(43, 'Jeux d\'enfants', 2003, 93, 'Julien, 8 ans, est confronté au cancer de sa mère, tandis que Sophie doit affronter la xénophobie des autres écoliers. Très vite ils deviennent inséparables et s\'inventent un jeu : « cap ou pas cap ? ».  C\'est à celui qui, mis au défi par l\'autre, fera les pires bêtises, au grand désespoir des parents.', 'Yann Samuell', 11, 'jeux-d-enfants.webp', 'https://www.youtube.com/embed/ALNWGtzz3Y8?si=BieHkhE6HFXYSppE', 12),
(44, 'Demain est un autre jour', 2025, 125, 'Enlisée dans sa routine, Alex part en quête de ses rêves d\'adolescente. Une opportunité unique de se trouver elle même...et pourquoi pas le grand amour.', 'Adam Brooks', 11, 'demain-est-un-autre-jour.webp', 'https://www.youtube.com/embed/WoaX_qVWd2o?si=jzQqGs9s-KM_7I81 ', 13),
(47, 'Transformers 2 : La Revanche', 2009, 150, 'Deux ans se sont écoulés depuis que Sam Witwicky a sauvé l\'univers d\'une bataille décisive entre les deux clans rivaux de robots extraterrestres. Malgré ses exploits, Sam reste un adolescent préoccupé par les soucis des jeunes gens de son âge : alors qu\'il s\'apprête à entrer à l\'université, il lui faut aussi tenter d\'expliquer son départ à son nouvel ami, le robot Bumblebee.', 'Michael Bay', 1, 'transformers2.jpg', 'https://www.youtube.com/embed/tLyqSUMgr2E?si=TK4E2cGd4CZ6-gfC', 10),
(48, 'Les Tuche 2 : Le Rêve américain', 2016, 94, 'Les Tuche, une famille française modeste, voit sa vie changée après avoir gagné 100 millions d\'euros au loto. Grâce à l\'argent de ses parents, le benjamin de la fratrie, Donald, dit Coin-coin part un mois à Los Angeles pour améliorer son anglais. Sur le campus de l\'université de L.A., il rencontre Jennifer, la fille du célèbre financier américain Ron Carrington.', 'Olivier Baroux', 2, 'tuche2.jpg', 'https://www.youtube.com/embed/pKbox8S-se4?si=JhKIOphsnLbnze0o', 7),
(49, 'Les Tuche 3 : Liberté, Égalité, Fraternituche', 2018, 95, 'Jeff Tuche, se réjouit de l\'arrivée du TGV dans son village. Malheureusement, le train à grande vitesse ne fait que passer, sans s\'arrêter à Bouzolles. Déçu, il tente de joindre le président de la République pour que son village ne reste pas isolé du reste du territoire. Sans réponse de l\'Élysée, Jeff ne voit plus qu\'une seule solution pour se faire entendre : se présenter à l\'élection présidentielle. Jeff Tuche et toute sa famille vont s\'installer à l\'Élysée.', 'Olivier Baroux', 2, 'tuche3.jpg', 'https://www.youtube.com/embed/WqSPFOLA9sE?si=wAdBzcJeAMzdPuMt', 7),
(50, 'Les Tuche 4', 2021, 92, 'Après avoir démissionné de son poste de président de la République, Jeff et sa famille sont heureux de retrouver leur village de Bouzolles. À l\'approche des fêtes de fin d\'année, Cathy demande un unique cadeau : renouer les liens avec sa sœur Maguy, et son mari Jean-Yves avec qui Jeff est fâché depuis 10 ans. La réconciliation aurait pu se dérouler sans problème, sauf que lors d\'un déjeuner, Jeff et Jean-Yves, vont une nouvelle fois trouver un sujet de discorde : Noël.', 'Olivier Baroux', 2, 'tuche4.jpg', 'https://www.youtube.com/embed/vxWSTApFmR4?si=V058BEPeg9iUTJN3', 7),
(51, 'Les Tuche 5 : God Save the Tuche', 2025, 95, 'Les Tuche mènent à nouveau une vie paisible à Bouzolles, mais lorsque le petit-fils de Jeff et Cathy est sélectionné pour un stage de football à Londres, c\'est l\'occasion rêvée pour toute la famille d\'aller découvrir l\'Angleterre et de rencontrer la famille royale. Entre chocs culturels et maladresses, les Tuche se retrouvent plongés au cœur de la royauté anglaise, qui n\'est pas prête d\'oublier leur séjour.', 'Jean-Paul Rouve', 2, 'tuche5.jpg', 'https://www.youtube.com/embed/6KN8HbMckqA?si=4YZO_LV3Myxo0Gdr', 7),
(52, 'Twelve Years a Slave', 2013, 133, 'Homme noir libre, Salomon Northup vit paisiblement dans l\'État de New York aux côtés de sa femme et de ses deux enfants. Un jour, il est approché par deux hommes dont il ne se méfie pas et qui le droguent. Enlevé, destitué de ses droits et de son identité, il est ensuite embarqué sous le nom de Plate dans un bateau en partance pour La Nouvelle-Orléans.', 'Steve McQueen', 3, '12yaslave.webp', 'https://www.youtube.com/embed/gRZe0nyex-U?si=szqv3V_cBX-FTsu3', 12),
(53, 'Transformers 3 - La Face cachée de la Lune', 2011, 134, 'Avec l\'aide de Carly, Sam réussit à se faire embaucher dans l\'entreprise d\'aéronautique que dirige Bruce Brazos, à Washington. Parallèlement, Optimus Prime et les Autobots débarquent sur la Lune dans l\'intention d\'étudier de près l\'épave de l\'Arche, un vaisseau spatial qui s\'est échoué quelques années plus tôt. Ils y retrouvent leur ancien chef, Sentinel Prime. Celui-ci est dans un état piteux, mais cela ne décourage pas Optimus de tenter de le ramener à la vie.', 'Michael Bay', 1, 'transformers3.jpg', 'https://www.youtube.com/embed/bCDs7Su3xzo?si=zA3u0gwOYFsPgTja', 10),
(54, 'Transformers : l\'âge de l\'extinction', 2014, 145, 'Voilà cinq ans que des Transformers ont quasiment détruit Chicago et que la CIA traque les Autobots, des Transformers anciens alliés des forces américaines, afin de récupérer des pièces et créer de nouveaux robots parfaitement contrôlables. Elle recherche tout particulièrement leur puissant chef, Optimus Prime.', 'Michael Bay', 1, 'transformers4.jpg', 'https://www.youtube.com/embed/ebsZ15sJ35E?si=QN4ntpXOkw2S7juN', 10),
(55, 'Transformers: The Last Knight', 2017, 134, 'Les humains et les Transformers sont en guerre. Optimus Prime n\'est plus là et la clef du salut est enfouie dans les secrets du passé, dans l\'histoire cachée des Transformers sur Terre. Sauver le monde sera la mission d\'une alliance inattendue: Cade Yeager, Bumblebee, un lord anglais et un professeur d\'Oxford.', 'Michael Bay', 1, 'transformers5.webp', 'https://www.youtube.com/embed/6Vtf0MszgP8?si=B546suUJEjeMo0WK', 10),
(56, 'Indiana Jones 1 : L\'arche perdue', 1981, 115, 'Professeur d\'archéologie, Indiana Jones parcourt le monde à la recherche de trésors. Son rival, le Français René Belloq, travaille pour les nazis qui rêvent de retrouver l\'Arche d\'alliance contenant les Tables de la Loi. Or, feu le professeur Ravenwood, père de Marion, l\'ex-petite amie d\'Indiana Jones, détenait une médaille permettant de localiser l\'arche. Jones part sur les traces de Marion au Népal.', 'Steven Spielberg', 8, 'indiana.jpg', 'https://www.youtube.com/embed/liIQREC0X2A?si=wsLfz16nwcCtZCYf', 3),
(57, 'Indiana Jones 2 : Le Temple maudit', 1984, 118, 'À Shanghaï, Indiana Jones se trouve mêlé à un règlement de compte entre gangsters qui se disputent un bijou. Avec le jeune chinois Demi-Lune et de la chanteuse Willie Scott, Indiana fuit à bord d\'un avion de fortune. Ils atterrissent en plein coeur de l\'Inde où ils découvrent une population misérable depuis le vol d\'une pierre sacrée dotée de pouvoirs.', 'Steven Spielberg', 8, 'indiana2.jpg', 'https://www.youtube.com/embed/NGsWgHNxK9c?si=tVJAUbFzCdcW_1x7', 13),
(58, 'Indiana Jones 3 : La Dernière Croisade', 1989, 127, 'En 1912 dans l\'Utah, Indiana Jones, adolescent, surprend des pilleurs de trésors archéologiques avant d\'être poursuivi par les trafiquants. 26 ans plus tard, Jones apprend que son père, le professeur Henry Jones, parti à la recherche du Saint Graal, a disparu et il se rend alors à Venise où son père a été vu pour la dernière fois.', 'Steven Spielberg', 8, 'indiana3.jpg', 'https://www.youtube.com/embed/DKg36LBVgfg?si=EgGuwwj5Sh7khpIN', 9),
(59, 'Indiana Jones 4 : Le Royaume du crâne de cristal', 2008, 122, 'Ayant accepté d\'aider une jeune rebelle dans une mission personnelle, mais qui pourrait le mettre en présence d\'un artefact de valeur inestimable, le légendaire crâne de cristal d\'Akator, Indiana Jones met le cap vers une région éloignée du Pérou pour constater que des agents soviétiques sont également sur la piste, convaincus que le fameux crâne, s\'il révèle ses secrets, pourrait les aider à dominer le monde.', 'Steven Spielberg', 8, 'indiana4.jpg', 'https://www.youtube.com/embed/kTJy1rFBtVw?si=QR5zMIziMO65BGIJ', 7),
(60, 'Indiana Jones 5 : Le Cadran de la destinée', 2023, 142, 'Indiana Jones reçoit la visite surprise de sa filleule Helena Shaw, qui est à la recherche d\'un artefact rare que son père a confié à Indiana par le passé : le fameux cadran d\'Archimède, une relique qui aurait le pouvoir de localiser les fissures temporelles. Helena vole l\'objet et quitte précipitamment le pays afin de le vendre au plus offrant. Indy n\'a d\'autre choix que de se lancer à sa poursuite.\r\n', 'James Mangold', 8, 'indiana5.jpg', 'https://www.youtube.com/embed/eQfMbSe7F2g?si=hJK3JvPk_5EwlZE8', 3),
(61, 'Slumdog Millionaire', 2008, 120, 'Depuis son enfance dans les bidonvilles de Mumbai, Jamal Malik poursuit son rêve : retrouver Latika, une jeune orpheline dont il est amoureux. Alors qu\'il commence à perdre espoir, il imagine une solution surprenante pour retrouver son amour : participer au plus grand show télévisé du pays, Qui veut gagner des millions ? . Il atteint la question finale à 20 millions de roupies mais il est arrêté par la police, qui le soupçonne de tricherie.', 'Danny Boyle', 11, 'slumdog.jpg', 'https://www.youtube.com/embed/mpAlersIApg?si=Hu7_uMEyLeLKg1Ff', 16),
(62, 'Shrek', 2001, 89, 'Il était une fois, dans un marais lointain, un ogre au nom de Shrek qui voit sa précieuse solitude brisée pas une invasion de personnages de contes de fées agaçants. Ils ont tous été bannis de leur royaume par le méchant Lord Farquaad. Décidé à sauver leurs maisons -- pour ne pas dire la sienne -- Shrek conclut un marché avec Farquad et décide de sauver la princesse Fiona pour qu\'elle se marie avec ce dernier. Mais Shrek ne réalise pas que la princesse à un secret sombre et profond.\r\n', 'Andrew Adamson', 5, 'shrek.jpg', 'https://www.youtube.com/embed/CwXOrWvPBPk?si=oEuqw_W9Nm6OiCVv', 3),
(63, 'Shrek 2', 2004, 90, 'Devenus de jeunes mariés, Shrek et Fiona rentrent de leur heureuse lune de miel. Ils sont invités par les parents de Fiona à venir dîner dans leur royaume, à Far Far Away. Cependant, ils ne se doutent pas que leur fille est devenue une ravissante ogresse. Ce mariage met par ailleurs en péril l\'avenir et les projets les plus secrets du Roi.', 'Andrew Adamson', 5, 'shrek2.jpg', 'https://www.youtube.com/embed/xBgSfhp5Fxo?si=QZNtHHU_djcwSeM7', 3),
(64, 'Shrek 3', 2007, 93, 'Si Shrek a bel et bien épousé l\'amour de sa vie, la princesse Fiona, il n\'a jamais eu l\'intention de quitter son cher marécage et encore moins de devenir roi. Cependant, voilà, lorsque le père de Fiona meurt, l\'étau se resserre et Shrek va devoir faire face à ses obligations. Pourtant, l\'ogre ne s\'avoue pas vaincu et part à la recherche d\'un autre héritier potentiel avec ses fidèles compagnons.', 'Chris Miller', 5, 'shrek3.webp', 'https://www.youtube.com/embed/_MoIr7811Bs?si=sa8a5bp7xSQvbUfL', 3),
(65, 'Shrek 4 : Il était une fin', 2010, 93, 'Après avoir vaincu un méchant dragon, sauvé une belle princesse et le royaume de ses parents, que peut encore faire un ogre malodorant et mal léché ? Domestiqué, assagi, Shrek a perdu jusqu\'à l\'envie de rugir et regrette le bon vieux temps où il semait la terreur dans le royaume. Aujourd\'hui, tel une idole déchue, il se contente de signer des autographes à tour de bras. Trop triste.', 'Mike Mitchell', 5, 'shrek4.jpg', 'https://www.youtube.com/embed/3tRzdX2lG1o?si=Mu7bRc9mWI0_hedS', 3),
(66, 'Ace Ventura 1, détective chiens et chats', 1994, 86, 'Ace Ventura, un détective pour animaux, enquête sur l\'enlevement de Flocon de neige, le dauphin mascotte de l\'équipe des Dauphins de Miami. Mais Ace Ventura est un détective aux méthodes un peu particulières et au comportement étrange qui déplaît notamment beaucoup à la police de Miami avec qui il est censé collaborer.', 'Tom Shadyac', 2, 'Ace_Ventura.webp', 'https://www.youtube.com/embed/up7Cgj1UWgY?si=wuUJjzEqzUoRSMUO', 13),
(67, 'Ace Ventura 2, en Afrique', 1995, 94, 'Ace Ventura, détective pour animaux, se retrouve dans les sommets de l\'Himalaya, proche de la nature et des bestiaux qu\'il affectionne tant. Il provoque malgré lui la mort d\'un innocent petit putois, tombé du haut de la montagne. Pour Ace Ventura, c\'est la déprime grave. Il s\'isole dans un monastère tibétain. C\'est alors qu\'un attaché diplomatique l\'appelle à la rescousse. Il faut absolument qu\'il retrouve une chauve-souris sacrée, la Shikaka, symbole de paix entre deux tribus.', 'Steve Oedekerk', 2, 'Ace_Ventura2.jpg', 'https://www.youtube.com/embed/T8aos7_L4kA?si=Aa0Czo5NcpmBIRo3', 13),
(68, 'La Guerre des mondes', 2005, 116, 'Ray Ferrier est un docker divorcé qui n\'entretient que des relations épisodiques avec ses deux enfants. Quelques minutes après que son ex-femme lui a confié la garde des enfants, un puissant orage éclate. La terre se fend, laissant apparaître une machine de guerre juchée sur trois énormes pieds métalliques, qui se met à détruire toutes les maisons alentour. La première phase d\'une attaque massive d\'extraterrestres vient de s\'engager.', 'Steven Spielberg', 4, 'gdm.jpg', 'https://www.youtube.com/embed/JLDflS8FkOI?si=oBhZFlVLL2PNQ_Zd', 14),
(69, 'Seul sur Mars', 2015, 151, 'Lors d\'une expédition sur Mars, l\'astronaute Mark Watney est laissé pour mort par ses coéquipiers, une tempête les ayant obligés à décoller en urgence. Mais Mark a survécu et il est désormais seul, sans moyen de repartir, sur une planète hostile. Il va devoir faire appel à son intelligence et son ingéniosité pour tenter de survivre et trouver un moyen de contacter la Terre.', 'Ridley Scott', 4, 'seul_sur_mars.jpg', 'https://www.youtube.com/embed/FvPqdz0SZGg?si=_ERj-LapZ8PxEU9u', 7);

-- --------------------------------------------------------

--
-- Structure de la table `Profile`
--

CREATE TABLE `Profile` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `min_age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Profile`
--

INSERT INTO `Profile` (`id`, `name`, `avatar`, `min_age`) VALUES
(1, 'Manu', 'manu.png', 18),
(3, 'Addem', 'bzzbzz.jpg', 18),
(4, 'Peter', 'spidey.jpg', 10),
(11, 'Spongebob', 'bob.jpg', 10),
(12, 'Magik', 'magik.webp', 14);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `Profile`
--
ALTER TABLE `Profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `Profile`
--
ALTER TABLE `Profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Movie`
--
ALTER TABLE `Movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
