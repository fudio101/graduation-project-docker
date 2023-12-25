CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `username` varchar(255),
  `name` varchar(255),
  `email` varchar(255),
  `password` varchar(255),
  `role` int,
  `room_id` int
);

CREATE TABLE `houses` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `address` varchar(255),
  `province_id` int,
  `district_id` int,
  `ward_id` int,
  `manager_id` int
);

CREATE TABLE `room_types` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `rents` int COMMENT 'Giá thuê'
);

CREATE TABLE `rooms` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `room_type_id` int,
  `house_id` int
);

ALTER TABLE `houses` ADD FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`);

ALTER TABLE `rooms` ADD FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`);

ALTER TABLE `rooms` ADD FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
