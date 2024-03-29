--liquibase formatted sql
--changeset liquibase:create -multiple-tables:1 splitStatements:true endDelimiter:; context:dev

CREATE TABLE IF NOT EXISTS `vt_evl_00_cvs_system_numbers`
(
    `system_number`   VARCHAR(8)
    ,PRIMARY KEY(`system_number`)
)
    ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `vt_evl_01_static_set`
(
    `vrm`                   VARCHAR(20)
    ,`vrm_test_record` 	    VARCHAR(20)
    ,`system_number` 	    VARCHAR(8)
    ,`vin`                  VARCHAR(21)
    ,`certificateNumber`    VARCHAR(12)
    ,`testStartDate`        DATETIME
    ,`testExpiryDate`       DATETIME
)
    ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `vt_evl_02_cvs_removed`
(
    `vrm`                   VARCHAR(20)
    ,`vrm_test_record`      VARCHAR(20)
    ,`system_number`        VARCHAR(8)
    ,`vin`                  VARCHAR(21)
    ,`certificateNumber`    VARCHAR(12)
    ,`testStartDate`        DATETIME
    ,`testExpiryDate`       DATETIME
)
    ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `vt_evl_03_failures_removed`
(
    `vrm`                   VARCHAR(20)
    ,`vrm_test_record`      VARCHAR(20)
    ,`system_number`        VARCHAR(8)
    ,`vin`                  VARCHAR(21)
    ,`certificateNumber`    VARCHAR(12)
    ,`testStartDate`        DATETIME
    ,`testExpiryDate`       DATETIME
)
    ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `vt_evl_additions`
(
    `vrm_trm`               VARCHAR(20)
    ,`certificateNumber`    VARCHAR(12)
    ,`testExpiryDate`       DATETIME
)
    ENGINE = InnoDB;