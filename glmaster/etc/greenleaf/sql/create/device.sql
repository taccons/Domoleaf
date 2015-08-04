SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS device;

CREATE TABLE `device` (
  `device_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL DEFAULT '',
  `protocol_id` int(10) unsigned DEFAULT NULL,
  `application_id` int(10) unsigned DEFAULT NULL,
  `scripted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `namede` varchar(63) NOT NULL DEFAULT '',
  `namees` varchar(63) NOT NULL DEFAULT '',
  `namefr` varchar(63) NOT NULL DEFAULT '',
  `nameit` varchar(63) NOT NULL DEFAULT '',
  `mc_element` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`device_id`),
  KEY `application_id` (`application_id`),
  KEY `protocol_id` (`protocol_id`),
  KEY `namede` (`namede`),
  KEY `namees` (`namees`),
  KEY `namefr` (`namefr`),
  KEY `nameit` (`nameit`),
  KEY `name` (`name`),
  KEY `mc_element` (`mc_element`),
  CONSTRAINT `device_ibfk_1` FOREIGN KEY (`protocol_id`) REFERENCES `protocol` (`protocol_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `device_ibfk_2` FOREIGN KEY (`application_id`) REFERENCES `application` (`application_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `device` (`device_id`, `name`, `protocol_id`, `application_id`, `scripted`, `namede`, `namees`, `namefr`, `nameit`, `mc_element`)
VALUES
	(1, 'Distribution board', 1, NULL, 1, '', '', 'Tableau éléctrique', '', 0),
	(2, 'Indoor camera', 6, 13, 0, '', '', 'Caméra intérieure', '', 1),
	(3, 'LED lamp', 1, 1, 1, '', '', 'Lampe LED', '', 1),
	(4, 'Halogen lamp', 1, 1, 0, '', '', 'Lampe halogène', '', 1),
	(5, 'Thermometer', 1, 17, 0, '', '', 'Capteur', '', 1),
	(6, 'Fluorescent lamp', 1, 1, 0, '', '', 'Lampe fluo', '', 1),
	(7, 'Radiant heating system', 1, 2, 0, '', '', 'Radiateur rayonnant', '', 1),
	(8, 'Towel dryer', 1, 2, 0, '', '', 'Sèche-serviette', '', 1),
	(9, 'Heating floor', 1, 2, 0, '', '', 'Plancher chauffant électrique', '', 1),
	(10, 'Rolling shutter', 1, 3, 0, '', '', 'Volet roulant', '', 1),
	(11, 'Store banne', 1, 3, 0, '', '', 'Store banne', '', 1),
	(12, 'Wall mounted air conditioning', 1, 5, 0, '', '', 'Climatisation murale', '', 1),
	(13, 'Ductable air conditioning', 1, 5, 0, '', '', 'Climatisation gainable', '', 1),
	(14, 'Stereo amplifier', 7, 6, 0, '', '', 'Ampli Stéréo', '', 1),
	(15, 'CD player', 6, 6, 0, '', '', 'Lecteur CD', '', 1),
	(17, 'Multichannel amplifier', 7, 6, 0, '', '', 'Ampli multicanaux', '', 1),
	(18, 'Watering pump', 1, 8, 0, '', '', 'Pompe d\'arrosage', '', 1),
	(19, 'Central vacuum cleaner system', 1, 9, 0, '', '', 'Centrale d\'aspiration', '', 1),
	(20, 'Boiler feed', 1, 10, 0, '', '', 'Alimentation de chaudière', '', 1),
	(21, 'Boiler circulator', 1, 10, 0, '', '', 'Circulateur de chaudière', '', 1),
	(22, 'Pool motor', 1, 8, 0, '', '', 'Moteur de piscine', '', 1),
	(23, 'Pool heating', 1, 8, 0, '', '', 'Réchauffeur de piscine', '', 1),
	(24, 'Heat pump supply', 1, 2, 0, '', '', 'Alimentation de pompe à chaleur', '', 1),
	(25, 'CMV fan', 1, 11, 0, '', '', 'Ventilateur de VMC', '', 1),
	(26, 'CMV heating', 1, 11, 0, '', '', 'Bouche chauffante', '', 1),
	(27, 'SPA supply', 1, 12, 0, '', '', 'Alimentation de SPA', '', 1),
	(28, 'Heating SPA', 1, 12, 0, '', '', 'Réchauffeur de SPA', '', 1),
	(29, 'Outdoor camera', 6, 13, 0, '', '', 'Caméra extérieure', '', 1),
	(30, 'Siren', 1, 14, 0, '', '', 'Sirène', '', 1),
	(31, 'Portal', 1, 15, 0, '', '', 'Portail', '', 1),
	(32, 'Latch', 1, 15, 0, '', '', 'Gàche', '', 1),
	(33, 'Water heater', 1, 10, 0, '', '', 'Chauffe eau', '', 1),
	(34, 'Global cachÃ©', 6, 5, 0, '', '', 'Passerelle Climatisation KNX', '', 1),
	(36, 'Actuator', 1, NULL, 1, '', '', 'Actionneur', '', 0),
	(38, 'Switch', 1, 17, 0, '', '', 'Interrupteur', '', 0),
	(40, 'Supply', 1, NULL, 1, '', '', 'Alimentation', '', 0),
	(41, 'Coupler', 1, NULL, 1, '', '', 'Coupleur', '', 0),
	(42, 'Pulser', 1, NULL, 0, '', '', 'Emetteur', '', 0),
	(43, 'Motion sensor', 1, 17, 0, '', '', 'Détecteur de mouvements', '', 1),
	(47, 'Electricity meter', 1, 4, 0, '', '', 'Compteur électrique', '', 1),
	(48, 'Central home automation system', 1, 17, 0, '', '', 'Centrale domotique', '', 1),
	(49, 'Thermostat', 1, 2, 0, '', '', 'Thermostat', '', 1),
	(50, 'Lecteur réseau', 6, 6, 0, '', '', 'Lecteur réseau', '', 1),
	(51, 'Entrée Binaire', 1, 17, 0, '', '', 'Entrée Binaire', '', 1),
	(52, 'Baie Coulissante', 1, 15, 0, '', '', 'Baie Coulissante', '', 1),
	(53, 'Passerelle KNX/IR', 1, 6, 0, '', '', 'Passerelle KNX/IR', '', 1),
	(54, 'Porte', 1, 15, 0, '', '', 'Porte', '', 1),
	(55, 'Lampe 1-10 Volts', 1, 1, 0, '', '', 'Lampe 1-10 Volts', '', 1),
	(56, 'Lampe DALI', 1, 1, 0, '', '', 'Lampe DALI', '', 1),
	(57, 'Lampe DMX', 1, 1, 0, '', '', 'Lampe DMX', '', 1),
	(58, 'Vannes motorisées', 1, 2, 0, '', '', 'Vannes motorisées', '', 1),
	(59, 'Plancher chauffant hydraulique', 1, 2, 0, '', '', 'Plancher chauffant hydraulique', '', 1),
	(60, 'Détecteur de luminosité', 1, 17, 0, '', '', 'Détecteur de luminosité', '', 1),
	(61, 'Station Météo', 1, 17, 0, '', '', 'Station Météo', '', 1),
	(62, 'Climatisation Daikin VRV', 1, 5, 0, '', '', 'Climatisation Daikin VRV', '', 0),
	(63, 'Climatisation Daikin Sky', 1, 5, 0, '', '', 'Climatisation Daikin Sky', '', 0),
	(64, 'Unité Intérieure Daikin', 1, 5, 0, '', '', 'Unité Intérieure Daikin', '', 0),
	(65, 'Climatisation Airzone InnoBUS', 1, 5, 0, '', '', 'Climatisation Airzone InnoBUS', '', 0),
	(66, 'Climatisation Arcelik', 1, 5, 0, '', '', 'Climatisation Arcelik', '', 0),
	(67, 'Climatisation Fujitsu', 1, 5, 0, '', '', 'Climatisation Fujitsu', '', 0),
	(68, 'Climatisation General', 1, 5, 0, '', '', 'Climatisation General', '', 0),
	(69, 'Climatisation Fuji Electric', 1, 5, 0, '', '', 'Climatisation Fuji Electric', '', 0),
	(70, 'Climatisation Hiyasu', 1, 5, 0, '', '', 'Climatisation Hiyasu', '', 0),
	(71, 'Climatisation LG', 1, 5, 0, '', '', 'Climatisation LG', '', 0),
	(72, 'Climatisation LG VRF', 1, 5, 0, '', '', 'Climatisation LG VRF', '', 0),
	(73, 'Climatisation Midéa', 1, 5, 0, '', '', 'Climatisation Midéa', '', 0),
	(74, 'Climatisation Mitsubishi', 1, 5, 0, '', '', 'Climatisation Mitsubishi', '', 0),
	(75, 'Climatisation Panasonic', 1, 5, 0, '', '', 'Climatisation Panasonic', '', 0),
	(76, 'Climatisation Samsung', 1, 5, 0, '', '', 'Climatisation Samsung', '', 0),
	(77, 'Climatisation Toshiba', 1, 5, 0, '', '', 'Climatisation Toshiba', '', 0),
	(78, 'Controleur RGB', 1, 1, 0, '', '', 'Controleur RGB', '', 0),
	(80, 'Enceintes Amplifiées', 6, 6, 0, '', '', 'Enceintes Amplifiées', '', 0),
	(81, 'Ecoute Bébé', 6, 13, 0, '', '', 'Ecoute Bébé', '', 0);

SET FOREIGN_KEY_CHECKS=1;