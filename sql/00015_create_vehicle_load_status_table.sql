--liquibase formatted sql
--changeset liquibase:addColumn -multiple-tables:1 splitStatements:true endDelimiter:; context:dev

CREATE TABLE IF NOT EXISTS `load_status` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `load_status` VARCHAR(30) NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `unladen_body_type` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `unladen_body_type` VARCHAR(27) NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `reason_for_not_loading` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `reason_for_not_loading` VARCHAR(20) NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `vehicle_load_status` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `test_type_id` BIGINT UNSIGNED NOT NULL,
    `load_status_id`BIGINT UNSIGNED NULL,
    `unladen_body_type_id` BIGINT UNSIGNED NULL,
    `other_unladen_body_type` VARCHAR(200) NULL,
    `reason_for_not_loading_id`BIGINT UNSIGNED NULL,
    `other_reason_for_not_loading` VARCHAR(200) NULL,
    `partially_laden_reason` VARCHAR(200) NULL,
    PRIMARY KEY (`id`)
    FOREIGN KEY (`load_status_id`)
        REFERENCES load_status (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,

    FOREIGN KEY (`unladen_body_type_id`)
        REFERENCES unladen_body_type (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,

    FOREIGN KEY (`reason_for_not_loading_id`)
        REFERENCES reason_for_not_loading (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION

) ENGINE = InnoDB;
