CREATE TABLE `MEM_INFO`
(
    `MEM_PK` VARCHAR(20) NOT NULL,
    `NAME`   VARCHAR(20) NULL,
    `TEL`    VARCHAR(20) NULL,
    `EMAIL`  VARCHAR(20) NULL,
    `GENDER` VARCHAR(2) NULL
);

CREATE TABLE `HOBBY`
(
    `HOBBY_PK` VARCHAR(20) NOT NULL,
    `HOBBY`    VARCHAR(20) NULL
);

CREATE TABLE `AGE`
(
    `AGE_PK` VARCHAR(20) NOT NULL,
    `MEM_PK` VARCHAR(20) NOT NULL,
    `AGE`    INT NULL
);

CREATE TABLE `ADDRESS`
(
    `ADDRESS_PK` VARCHAR(20) NOT NULL,
    `ADDRESS`    VARCHAR(20) NULL
);

CREATE TABLE `ADDR_NAME`
(
    `ADDR_NAME_PK` VARCHAR(20) NOT NULL,
    `MEM_PK`       VARCHAR(20) NOT NULL,
    `ADDRESS_PK`   VARCHAR(20) NOT NULL
);

CREATE TABLE `HOBBY_NAME`
(
    `HOBBY_NAME_PK` VARCHAR(20) NOT NULL,
    `MEM_PK`        VARCHAR(20) NOT NULL,
    `HOBBY_PK`      VARCHAR(20) NOT NULL
);

ALTER TABLE `MEM_INFO`
    ADD CONSTRAINT `PK_MEM_INFO` PRIMARY KEY (
                                              `MEM_PK`
        );

ALTER TABLE `HOBBY`
    ADD CONSTRAINT `PK_HOBBY` PRIMARY KEY (
                                           `HOBBY_PK`
        );

ALTER TABLE `AGE`
    ADD CONSTRAINT `PK_AGE` PRIMARY KEY (
                                         `AGE_PK`,
                                         `MEM_PK`
        );

ALTER TABLE `ADDRESS`
    ADD CONSTRAINT `PK_ADDRESS` PRIMARY KEY (
                                             `ADDRESS_PK`
        );

ALTER TABLE `ADDR_NAME`
    ADD CONSTRAINT `PK_ADDR_NAME` PRIMARY KEY (
                                               `ADDR_NAME_PK`,
                                               `MEM_PK`,
                                               `ADDRESS_PK`
        );

ALTER TABLE `HOBBY_NAME`
    ADD CONSTRAINT `PK_HOBBY_NAME` PRIMARY KEY (
                                                `HOBBY_NAME_PK`,
                                                `MEM_PK`,
                                                `HOBBY_PK`
        );

ALTER TABLE `AGE`
    ADD CONSTRAINT `FK_MEM_INFO_TO_AGE_1` FOREIGN KEY (
                                                       `MEM_PK`
        )
        REFERENCES `MEM_INFO` (
                               `MEM_PK`
            );

ALTER TABLE `ADDR_NAME`
    ADD CONSTRAINT `FK_MEM_INFO_TO_ADDR_NAME_1` FOREIGN KEY (
                                                             `MEM_PK`
        )
        REFERENCES `MEM_INFO` (
                               `MEM_PK`
            );

ALTER TABLE `ADDR_NAME`
    ADD CONSTRAINT `FK_ADDRESS_TO_ADDR_NAME_1` FOREIGN KEY (
                                                            `ADDRESS_PK`
        )
        REFERENCES `ADDRESS` (
                              `ADDRESS_PK`
            );

ALTER TABLE `HOBBY_NAME`
    ADD CONSTRAINT `FK_MEM_INFO_TO_HOBBY_NAME_1` FOREIGN KEY (
                                                              `MEM_PK`
        )
        REFERENCES `MEM_INFO` (
                               `MEM_PK`
            );

ALTER TABLE `HOBBY_NAME`
    ADD CONSTRAINT `FK_HOBBY_TO_HOBBY_NAME_1` FOREIGN KEY (
                                                           `HOBBY_PK`
        )
        REFERENCES `HOBBY` (
                            `HOBBY_PK`
            );
