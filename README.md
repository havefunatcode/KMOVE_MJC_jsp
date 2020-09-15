# KMOVE_MJC_jsp
2020년 일본 IT교육 - JSP

# Database query
'''
CREATE TABLE `tb_user` (
  `SCHOOL_NUMBER` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '교번/학번',
  `NAME` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름',
  `EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이메일',
  `PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '비밀번호',
  `MOBILE1` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '핸드폰번호1',
  `MOBILE2` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '핸드폰번호2',
  `MOBILE3` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '핸드폰번호3',
  `PHONE1` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전화번호1',
  `PHONE2` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전화번호2',
  `PHONE3` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전화번호3',
  `POST` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '우편번호',
  `ADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주소',
  `ADDRESS_DETAIL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상세주소',
  `USER_TYPE` int(1) NOT NULL COMMENT '사용자 구분'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`SCHOOL_NUMBER`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);
COMMIT;
'''
