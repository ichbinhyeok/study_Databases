-- 먼저 OPTION 테이블에서 CAR_PK01와 연결된 레코드를 삭제
DELETE FROM `OPTION` WHERE `CAR_PK` = 'CAR_PK01';

-- 그런 다음 YEAR 테이블에서 CAR_PK01와 연결된 레코드를 삭제
DELETE FROM `YEAR` WHERE `CAR_PK` = 'CAR_PK01';

-- 마지막으로 CAR 테이블에서 CAR_PK01 레코드를 삭제
DELETE FROM `CAR` WHERE `CAR_PK` = 'CAR_PK01';