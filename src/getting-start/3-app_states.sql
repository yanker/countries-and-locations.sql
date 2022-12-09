CREATE TABLE IF NOT exists `app_states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `country_id` int NOT NULL,
  `ccaa_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_states_x_countries_idx` (`country_id`),
  KEY `fk_ccaa_x_states_idx` (`ccaa_id`),
  CONSTRAINT `fk_ccaa_x_states` FOREIGN KEY (`ccaa_id`) REFERENCES `app_ccaa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_states_x_countries` FOREIGN KEY (`country_id`) REFERENCES `app_countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
