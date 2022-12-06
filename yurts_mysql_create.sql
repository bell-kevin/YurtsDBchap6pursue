CREATE TABLE `reservations` (
	`reservation_id` INT NOT NULL AUTO_INCREMENT,
	`customer_id` INT NOT NULL,
	`check_in_date` DATETIME,
	`check_out_date` DATETIME,
	`reservation_date` DATETIME NOT NULL,
	`room_number` INT NOT NULL,
	PRIMARY KEY (`reservation_id`)
);

CREATE TABLE `customers` (
	`customer_id` INT NOT NULL AUTO_INCREMENT,
	`first_name` VARCHAR(255) NOT NULL,
	`last_name` VARCHAR(255),
	`email` VARCHAR(255) NOT NULL,
	`phone` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`customer_id`)
);

CREATE TABLE `room` (
	`room_number` INT NOT NULL AUTO_INCREMENT,
	`beds` INT NOT NULL,
	`max_occupants` INT NOT NULL,
	`smoking_room` BINARY NOT NULL,
	`pet_room` BINARY NOT NULL,
	`nightly_cost` FLOAT NOT NULL,
	PRIMARY KEY (`room_number`)
);

ALTER TABLE `reservations` ADD CONSTRAINT `reservations_fk0` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`customer_id`);

ALTER TABLE `reservations` ADD CONSTRAINT `reservations_fk1` FOREIGN KEY (`room_number`) REFERENCES `room`(`room_number`);
