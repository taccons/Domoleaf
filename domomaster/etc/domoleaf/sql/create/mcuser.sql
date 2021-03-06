CREATE TABLE IF NOT EXISTS `mcuser` (
  `mcuser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `mcuser_mail` varchar(63) DEFAULT NULL,
  `mcuser_level` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `mcuser_password` varchar(64) DEFAULT NULL,
  `lastname` varchar(64) DEFAULT '',
  `firstname` varchar(64) DEFAULT '',
  `gender` tinyint(3) unsigned DEFAULT '0',
  `phone` varchar(64) DEFAULT '',
  `language` varchar(3) NOT NULL DEFAULT 'fr',
  `design` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bg_color` varchar(15) DEFAULT '#eee',
  `border_color` varchar(15) DEFAULT '#f5f5f5',
  `activity` int(10) unsigned DEFAULT '0',
  `mcuser_sauth` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`mcuser_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
