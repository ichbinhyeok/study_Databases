-- CAR 테이블에 데이터 삽입
INSERT INTO `CAR` (`CAR_PK`, `CAR_NAME`, `CP_BARND`)
VALUES ('CAR001', 'Model S', 'Tesla'),
       ('CAR002', 'Mustang', 'Ford'),
       ('CAR003', 'Civic', 'Honda');

-- YEAR 테이블에 데이터 삽입
INSERT INTO `YEAR` (`YEAR_PK`, `CAR_PK`, `YEAR`)
VALUES (1, 'CAR001', 2022),
       (2, 'CAR002', 2021),
       (3, 'CAR003', 2020);

-- OPTION 테이블에 데이터 삽입
INSERT INTO `OPTION` (`OPTION_PK`, `CAR_PK`, `OPTION`)
VALUES ('OPT001', 'CAR001', 'Sunroof'),
       ('OPT002', 'CAR001', 'Autopilot'),
       ('OPT003', 'CAR002', 'Leather Seats'),
       ('OPT004', 'CAR003', 'Navigation System');