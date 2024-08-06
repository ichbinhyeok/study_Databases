CREATE TABLE `COMPANY`
(
    `COMPANY_PK` VARCHAR(20) NOT NULL,
    `COMPANY`    VARCHAR(20) NULL
);

CREATE TABLE `CAR_NAME`
(
    `CAR_NAME_PK` VARCHAR(20) NOT NULL,
    `CAR_NAME`    VARCHAR(20) NULL
);

CREATE TABLE `YEAR`
(
    `YEAR_PK` VARCHAR(20) NOT NULL,
    `YEAR`    INT NULL
);

CREATE TABLE `CAR_NAME_COMPANY_YEAR`
(
    `CARNAME_COMPANY_YEAR_PK` VARCHAR(20) NOT NULL,
    `CAR_NAME_PK`             VARCHAR(20) NOT NULL,
    `COMPANY_PK`              VARCHAR(20) NOT NULL,
    `YEAR_PK2`                VARCHAR(20) NOT NULL
);

CREATE TABLE `OPTIONS`
(
    `OPTIONS_PK` VARCHAR(20) NOT NULL,
    `OPTION`     VARCHAR(20) NULL
);

CREATE TABLE `CAR_PLUS_OPT`
(
    `CAR_PLUS_OPT_PK` VARCHAR(20) NOT NULL,
    `OPTIONS_PK`      VARCHAR(20) NOT NULL,
    `CAR_NAME_PK`     VARCHAR(20) NOT NULL
);

ALTER TABLE `COMPANY`
    ADD CONSTRAINT `PK_COMPANY` PRIMARY KEY (
                                             `COMPANY_PK`
        );

ALTER TABLE `CAR_NAME`
    ADD CONSTRAINT `PK_CAR_NAME` PRIMARY KEY (
                                              `CAR_NAME_PK`
        );

ALTER TABLE `YEAR`
    ADD CONSTRAINT `PK_YEAR` PRIMARY KEY (
                                          `YEAR_PK`
        );

ALTER TABLE `CAR_NAME_COMPANY_YEAR`
    ADD CONSTRAINT `PK_CAR_NAME_COMPANY_YEAR` PRIMARY KEY (
                                                           `CARNAME_COMPANY_YEAR_PK`,
                                                           `CAR_NAME_PK`,
                                                           `COMPANY_PK`,
                                                           `YEAR_PK2`
        );

ALTER TABLE `OPTIONS`
    ADD CONSTRAINT `PK_OPTIONS` PRIMARY KEY (
                                             `OPTIONS_PK`
        );

ALTER TABLE `CAR_PLUS_OPT`
    ADD CONSTRAINT `PK_CAR_PLUS_OPT` PRIMARY KEY (
                                                  `CAR_PLUS_OPT_PK`,
                                                  `OPTIONS_PK`,
                                                  `CAR_NAME_PK`
        );

ALTER TABLE `CAR_NAME_COMPANY_YEAR`
    ADD CONSTRAINT `FK_CAR_NAME_TO_CAR_NAME_COMPANY_YEAR_1` FOREIGN KEY (
                                                                         `CAR_NAME_PK`
        )
        REFERENCES `CAR_NAME` (
                               `CAR_NAME_PK`
            );

ALTER TABLE `CAR_NAME_COMPANY_YEAR`
    ADD CONSTRAINT `FK_COMPANY_TO_CAR_NAME_COMPANY_YEAR_1` FOREIGN KEY (
                                                                        `COMPANY_PK`
        )
        REFERENCES `COMPANY` (
                              `COMPANY_PK`
            );

ALTER TABLE `CAR_NAME_COMPANY_YEAR`
    ADD CONSTRAINT `FK_YEAR_TO_CAR_NAME_COMPANY_YEAR_1` FOREIGN KEY (
                                                                     `YEAR_PK2`
        )
        REFERENCES `YEAR` (
                           `YEAR_PK`
            );

ALTER TABLE `CAR_PLUS_OPT`
    ADD CONSTRAINT `FK_OPTIONS_TO_CAR_PLUS_OPT_1` FOREIGN KEY (
                                                               `OPTIONS_PK`
        )
        REFERENCES `OPTIONS` (
                              `OPTIONS_PK`
            );

ALTER TABLE `CAR_PLUS_OPT`
    ADD CONSTRAINT `FK_CAR_NAME_TO_CAR_PLUS_OPT_1` FOREIGN KEY (
                                                                `CAR_NAME_PK`
        )
        REFERENCES `CAR_NAME` (
                               `CAR_NAME_PK`
            );
