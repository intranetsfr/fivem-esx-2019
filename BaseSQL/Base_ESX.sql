-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           10.3.11-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour essentialmode
CREATE DATABASE IF NOT EXISTS `essentialmode` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `essentialmode`;

-- Export de la structure de la table essentialmode. addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table essentialmode.addon_account : ~0 rows (environ)
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table essentialmode.addon_account_data : ~0 rows (environ)
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table essentialmode.addon_inventory : ~0 rows (environ)
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table essentialmode.addon_inventory_items : ~0 rows (environ)
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Export de données de la table essentialmode.characters : ~0 rows (environ)
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table essentialmode.datastore : ~0 rows (environ)
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table essentialmode.datastore_data : ~0 rows (environ)
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Export de données de la table essentialmode.items : ~19 rows (environ)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('alive_chicken', 'Poulet vivant', 20, 0, 1),
	('clothe', 'Vêtement', 40, 0, 1),
	('copper', 'Cuivre', 56, 0, 1),
	('cutted_wood', 'Bois coupé', 20, 0, 1),
	('diamond', 'Diamant', 50, 0, 1),
	('essence', 'Essence', 24, 0, 1),
	('fabric', 'Tissu', 80, 0, 1),
	('fish', 'Poisson', 100, 0, 1),
	('gold', 'Or', 21, 0, 1),
	('iron', 'Fer', 42, 0, 1),
	('packaged_chicken', 'Poulet en barquette', 100, 0, 1),
	('packaged_plank', 'Paquet de planches', 100, 0, 1),
	('petrol', 'Pétrole', 24, 0, 1),
	('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1),
	('slaughtered_chicken', 'Poulet abattu', 20, 0, 1),
	('stone', 'Pierre', 7, 0, 1),
	('washed_stone', 'Pierre Lavée', 7, 0, 1),
	('wood', 'Bois', 20, 0, 1),
	('wool', 'Laine', 40, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Export de données de la table essentialmode.jobs : ~7 rows (environ)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('fisherman', 'Pêcheur', 0),
	('fueler', 'Raffineur', 0),
	('lumberjack', 'Bûcheron', 0),
	('miner', 'Mineur', 0),
	('slaughterer', 'Abatteur', 0),
	('tailor', 'Couturier', 0),
	('unemployed', 'RSA', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Export de données de la table essentialmode.job_grades : ~7 rows (environ)
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Sans Emplois', 200, '{}', '{}'),
	(2, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
	(3, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
	(4, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
	(6, 'tailor', 0, 'employee', 'Intérimaire', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}'),
	(7, 'miner', 0, 'employee', 'Intérimaire', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}'),
	(8, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT '',
  `phone_number` int(11) DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  `status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table essentialmode.users : ~0 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `money` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Export de données de la table essentialmode.user_accounts : ~0 rows (environ)
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Export de la structure de la table essentialmode. user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Export de données de la table essentialmode.user_inventory : ~0 rows (environ)
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
