-- goit.customer definition

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_address_FK` (`address_id`),
  CONSTRAINT `customer_address_FK` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;v