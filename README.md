# KMOVE_MJC_jsp
2020년 일본 IT교육 - JSP

# Database query

CREATE TABLE `tb_user` (
  `SCHOOL_NUMBER` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '교번/학번', <br>
  `NAME` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이름', <br>
  `EMAIL` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '이메일', <br>
  `PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '비밀번호', <br>
  `MOBILE1` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '핸드폰번호1', <br>
  `MOBILE2` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '핸드폰번호2', <br>
  `MOBILE3` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '핸드폰번호3', <br>
  `PHONE1` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전화번호1', <br>
  `PHONE2` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전화번호2', <br>
  `PHONE3` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '전화번호3', <br>
  `POST` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '우편번호', <br>
  `ADDRESS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '주소', <br>
  `ADDRESS_DETAIL` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '상세주소', <br>
  `USER_TYPE` int(1) NOT NULL COMMENT '사용자 구분' <br>
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; <br>

ALTER TABLE `tb_user` <br>
  ADD PRIMARY KEY (`SCHOOL_NUMBER`), <br>
  ADD UNIQUE KEY `EMAIL` (`EMAIL`); <br>
COMMIT;

