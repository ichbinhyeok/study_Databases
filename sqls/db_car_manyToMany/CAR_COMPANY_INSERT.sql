-- OPTIONS 테이블에 데이터 삽입
INSERT INTO `OPTIONS` (`OPTIONS_PK`, `OPTION`)
VALUES ('OPT_01', '네비게이션'),
       ('OPT_02', '후방카메라'),
       ('OPT_03', '가죽시트'),
       ('OPT_04', '스마트키'),
       ('OPT_05', '크루즈컨트롤'),
       ('OPT_06', '블루투스'),
       ('OPT_07', '후방감지센서'),
       ('OPT_08', '헤드업디스플레이'),
       ('OPT_09', '전자식 메모리 시트'),
       ('OPT_10', '어댑티브 크루즈컨트롤');

-- COMPANY 테이블에 데이터 삽입
INSERT INTO `COMPANY` (`COMPANY_PK`, `COMPANY`)
VALUES ('CP_01', '현대'),
       ('CP_02', '기아'),
       ('CP_03', '쉐보레'),
       ('CP_04', 'BMW'),
       ('CP_05', '벤츠');

-- CAR_NAME 테이블에 데이터 삽입
INSERT INTO `CAR_NAME` (`CAR_NAME_PK`, `CAR_NAME`)
VALUES ('CN_01', '소나타'),
       ('CN_02', '쏘렌토'),
       ('CN_03', '카마로'),
       ('CN_04', '3시리즈'),
       ('CN_05', 'E클래스');

-- YEAR 테이블에 데이터 삽입
INSERT INTO `YEAR` (`YEAR_PK`, `YEAR`)
VALUES ('YEAR_01', 2020),
       ('YEAR_02', 2018),
       ('YEAR_03', 2019),
       ('YEAR_04', 2017),
       ('YEAR_05', 2021);

-- CAR_NAME_COMPANY_YEAR 테이블에 데이터 삽입
INSERT INTO `CAR_NAME_COMPANY_YEAR` (`CARNAME_COMPANY_YEAR_PK`, `CAR_NAME_PK`, `COMPANY_PK`, `YEAR_PK2`)
VALUES ('CI_YEAR_01', 'CN_01', 'CP_01', 'YEAR_01'),
       ('CI_YEAR_02', 'CN_02', 'CP_02', 'YEAR_02'),
       ('CI_YEAR_03', 'CN_03', 'CP_03', 'YEAR_03'),
       ('CI_YEAR_04', 'CN_04', 'CP_04', 'YEAR_04'),
       ('CI_YEAR_05', 'CN_05', 'CP_05', 'YEAR_05');

-- CAR_PLUS_OPT 테이블에 데이터 삽입
INSERT INTO `CAR_PLUS_OPT` (`CAR_PLUS_OPT_PK`, `CAR_NAME_PK`, `OPTIONS_PK`)
VALUES ('CPO_01', 'CN_01', 'OPT_01'),
       ('CPO_02', 'CN_01', 'OPT_02'),
       ('CPO_03', 'CN_02', 'OPT_03'),
       ('CPO_04', 'CN_02', 'OPT_04'),
       ('CPO_05', 'CN_03', 'OPT_05'),
       ('CPO_06', 'CN_03', 'OPT_06'),
       ('CPO_07', 'CN_04', 'OPT_07'),
       ('CPO_08', 'CN_04', 'OPT_08'),
       ('CPO_09', 'CN_05', 'OPT_09'),
       ('CPO_10', 'CN_05', 'OPT_10');
