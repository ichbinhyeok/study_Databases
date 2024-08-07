
-- Writers 테이블에 데이터 삽입
INSERT INTO Writers (Writer_ID, Writer_Name) VALUES
                                                 ('WI_01', '관리자'),
                                                 ('WI_02', '마케팅팀');

-- Notice 테이블에 데이터 삽입
INSERT INTO Notice (Notice_ID, Writer_ID, Notice_Title) VALUES
                                                            ('NOT01', 'WI_01', '서비스 점검 안내'),
                                                            ('NOT02', 'WI_02', '이벤트 안내');

-- Visitors 테이블에 데이터 삽입
INSERT INTO Visitors (Visitor_ID, Notice_ID, Writer_ID, Visitor_Name) VALUES
                                                                          ('VI_01', 'NOT01', 'WI_01', '홍길동'),
                                                                          ('VI_02', 'NOT01', 'WI_01', '김영희'),
                                                                          ('VI_03', 'NOT02', 'WI_02', '백지영'),
                                                                          ('VI_04', 'NOT02', 'WI_02', '최민호'),
                                                                          ('VI_05', 'NOT02', 'WI_02', '송지현');
