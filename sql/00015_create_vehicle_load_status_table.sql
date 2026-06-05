--liquibase formatted sql
--changeset liquibase:addColumn -multiple-tables:1 splitStatements:true endDelimiter:; context:dev

CREATE TABLE IF NOT EXISTS `vehicle_load_status`
(
    `id`                           BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `test_type_id`                 BIGINT UNSIGNED NOT NULL,
    `load_status`                  VARCHAR(30) NULL,
    `unladen_body_type`            VARCHAR(27) NULL,
    `other_unladen_body_type`      VARCHAR(200) NULL,
    `reason_for_not_loading`       VARCHAR(20) NULL,
    `other_reason_for_not_loading` VARCHAR(200) NULL,
    `partially_laden_reason`       VARCHAR(200) NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB;
