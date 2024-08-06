CREATE TABLE `CAR` (
                       `CAR_PK`	VARCHAR(20)	NOT NULL,
                       `CAR_NAME`	VARCHAR(20)	NULL,
                       `CP_BARND`	VARCHAR(20)	NULL
);

CREATE TABLE `YEAR` (
                        `YEAR_PK`	INT	NOT NULL,
                        `CAR_PK`	VARCHAR(20)	NOT NULL,
                        `YEAR`	INT	NULL
);

CREATE TABLE `OPTION` (
                          `OPTION_PK`	VARCHAR(20)	NOT NULL,
                          `CAR_PK`	VARCHAR(20)	NOT NULL,
                          `OPTION`	VARCHAR(20)	NULL
);

ALTER TABLE `CAR` ADD CONSTRAINT `PK_CAR` PRIMARY KEY (
                                                       `CAR_PK`
    );

ALTER TABLE `YEAR` ADD CONSTRAINT `PK_YEAR` PRIMARY KEY (
                                                         `YEAR_PK`,
                                                         `CAR_PK`
    );

ALTER TABLE `OPTION` ADD CONSTRAINT `PK_OPTION` PRIMARY KEY (
                                                             `OPTION_PK`,
                                                             `CAR_PK`
    );

ALTER TABLE `YEAR` ADD CONSTRAINT `FK_CAR_TO_YEAR_1` FOREIGN KEY (
                                                                  `CAR_PK`
    )
    REFERENCES `CAR` (
                      `CAR_PK`
        );

ALTER TABLE `OPTION` ADD CONSTRAINT `FK_CAR_TO_OPTION_1` FOREIGN KEY (
                                                                      `CAR_PK`
    )
    REFERENCES `CAR` (
                      `CAR_PK`
        );

