-- CAR 테이블에 데이터 삽입
INSERT INTO `CAR` (`CAR_PK`, `CAR_NAME`, `CP_BARND`)
VALUES ('CAR_PK01', '소나타', '현대'),
       ('CAR_PK02', '쏘렌토', '기아'),
       ('CAR_PK03', '카마로', '쉐보레'),
       ('CAR_PK04', '3시리즈', 'BMW'),
       ('CAR_PK05', 'E클래스', '벤츠');

-- OPTION 테이블에 데이터 삽입
INSERT INTO `OPTION` (`OPTION_PK`, `CAR_PK`, `OPTION`)
VALUES ('OPTION_PK01', 'CAR_PK01', '네비게이션'),
       ('OPTION_PK02', 'CAR_PK01', '후방카메라'),
       ('OPTION_PK03', 'CAR_PK02', '가죽시트'),
       ('OPTION_PK04', 'CAR_PK02', '스마트키'),
       ('OPTION_PK05', 'CAR_PK03', '크루즈컨트롤'),
       ('OPTION_PK06', 'CAR_PK03', '블루투스'),
       ('OPTION_PK07', 'CAR_PK04', '후방감지센서'),
       ('OPTION_PK08', 'CAR_PK04', '헤드업디스플레이'),
       ('OPTION_PK09', 'CAR_PK05', '어댑티브 크루즈컨트롤'),
       ('OPTION_PK10', 'CAR_PK05', '전자식 메모리 시트');

-- YEAR 테이블에 데이터 삽입
INSERT INTO `YEAR` (`YEAR_PK`, `CAR_PK`, `YEAR`)
VALUES ('YEAR_PK01', 'CAR_PK01', 2020),
       ('YEAR_PK02', 'CAR_PK02', 2018),
       ('YEAR_PK03', 'CAR_PK03', 2019),
       ('YEAR_PK04', 'CAR_PK04', 2017),
       ('YEAR_PK05', 'CAR_PK05', 2021);