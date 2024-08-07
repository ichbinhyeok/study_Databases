INSERT INTO `MEM_INFO` (`MEM_PK`, `NAME`, `TEL`, `EMAIL`, `GENDER`)
VALUES ('MEM_01', '홍길동', '010-1234-5678', 'hong@example.com', '남'),
       ('MEM_02', '김영희', '010-9876-5432', 'kim@example.com', '여'),
       ('MEM_03', '이철수', '010-2468-1357', 'lee@example.com', '남'),
       ('MEM_04', '박민준', '010-8642-9137', 'park@example.com', '남'),
       ('MEM_05', '임지영', '010-5793-6241', 'lim@example.com', '여');

INSERT INTO `HOBBY` (`HOBBY_PK`, `HOBBY`)
VALUES ('HOBBY_01', '등산'),
       ('HOBBY_02', '요리'),
       ('HOBBY_03', '음악감상'),
       ('HOBBY_04', '수영'),
       ('HOBBY_05', '영화감상'),
       ('HOBBY_06', '자전거'),
       ('HOBBY_07', '요가'),
       ('HOBBY_08', '그림 그리기'),
       ('HOBBY_09', '독서'),
       ('HOBBY_10', '공원 산책');


INSERT INTO `AGE` (`AGE_PK`, `MEM_PK`, `AGE`)
VALUES ('AGE_01', 'MEM_01', 30),
       ('AGE_02', 'MEM_02', 25),
       ('AGE_03', 'MEM_03', 35),
       ('AGE_04', 'MEM_04', 28),
       ('AGE_05', 'MEM_05', 32);


INSERT INTO `ADDRESS` (`ADDRESS_PK`, `ADDRESS`)
VALUES ('ADDR_01', '서울특별시 강남구'),
       ('ADDR_02', '경기도 수원시'),
       ('ADDR_03', '인천광역시 부평구'),
       ('ADDR_04', '대전광역시 서구'),
       ('ADDR_05', '경상북도 포항시 북구');

INSERT INTO `ADDR_NAME` (`ADDR_NAME_PK`, `MEM_PK`, `ADDRESS_PK`)
VALUES ('ADDR_NAME_01', 'MEM_01', 'ADDR_01'),
       ('ADDR_NAME_02', 'MEM_01', 'ADDR_02'),
       ('ADDR_NAME_03', 'MEM_02', 'ADDR_02'),
       ('ADDR_NAME_04', 'MEM_03', 'ADDR_03'),
       ('ADDR_NAME_05', 'MEM_04', 'ADDR_04'),
       ('ADDR_NAME_06', 'MEM_05', 'ADDR_05'),
       ('ADDR_NAME_07', 'MEM_05', 'ADDR_04');


INSERT INTO `HOBBY_NAME` (`HOBBY_NAME_PK`, `MEM_PK`, `HOBBY_PK`)
VALUES ('HOBBY_NAME_01', 'MEM_01', 'HOBBY_01'),
       ('HOBBY_NAME_02', 'MEM_01', 'HOBBY_02'),
       ('HOBBY_NAME_03', 'MEM_02', 'HOBBY_03'),
       ('HOBBY_NAME_04', 'MEM_02', 'HOBBY_04'),
       ('HOBBY_NAME_05', 'MEM_03', 'HOBBY_05'),
       ('HOBBY_NAME_06', 'MEM_03', 'HOBBY_06'),
       ('HOBBY_NAME_07', 'MEM_04', 'HOBBY_07'),
       ('HOBBY_NAME_08', 'MEM_04', 'HOBBY_08'),
       ('HOBBY_NAME_09', 'MEM_05', 'HOBBY_09'),
       ('HOBBY_NAME_10', 'MEM_05', 'HOBBY_10');
