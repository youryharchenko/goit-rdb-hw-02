-- goit.order_list definition

CREATE TABLE `order_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `ware_id` int NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_list_order_FK` (`order_id`),
  KEY `order_list_ware_FK` (`ware_id`),
  CONSTRAINT `order_list_order_FK` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `order_list_ware_FK` FOREIGN KEY (`ware_id`) REFERENCES `ware` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;