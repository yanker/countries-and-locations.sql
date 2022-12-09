CREATE TABLE IF NOT exists `app_locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `states_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_states_x_locations_idx` (`states_id`),
  CONSTRAINT `fk_states_x_locations` FOREIGN KEY (`states_id`) REFERENCES `app_states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
