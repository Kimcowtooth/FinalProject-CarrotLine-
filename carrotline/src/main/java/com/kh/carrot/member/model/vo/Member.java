package com.kh.carrot.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Member {
	private int userNo;				//	`USER_NO`	NUMBER	NOT NULL	COMMENT '회원번호',
	private String userId;			//	`USER_ID`	VARCHAR2(30)	NOT NULL	COMMENT '회원아이디',
	private String userPwd;			//	`USER_PWD`	VARCHAR2(50)	NOT NULL	COMMENT '회원비밀번호',
	private String korName;			//	`KOREAN_NAME`	VARCHAR2(20)	NOT NULL	COMMENT '국문명',
	private String engName;			//	`ENGLISH_NAME`	VARCHAR2(20)	NOT NULL	COMMENT '영문명',
	private String gender;			//	`GENDER`	VARCAHR2(1)	NOT NULL	COMMENT '성별',
	private String nationality;		//	`NATIONALITY`	VARCHAR2(20)	NOT NULL	COMMENT '국적',
	private String phone;			//	`PHONE`	VARCHAR2(13)	NULL	COMMENT '전화번호',
	private String email;			//	`EMAIL`	VARCHAR2(100)	NOT NULL	COMMENT '이메일',
	private Date birthday;			//	`BIRTHDAY`	DATE	NOT NULL	COMMENT '생년월일',
	private String passportNo;		//	`PASSPORT_NO`	VARCHAR(20)	NOT NULL	COMMENT '여권번호',
	private String mileage;			//	`MILEAGE`	VARCHAR2(100)	NOT NULL	DEFAULT 0	COMMENT '마일리지',
	private Date enrollDate;		//	`ENROLL_DATE`	DATE	NOT NULL	DEFAULT SYSDATE	COMMENT '회원가입일',
	private Date modifyDate;		//	`MODIFY_DATE`	DATE	NULL	DEFAULT SYSDATE	COMMENT '정보수정일',
	private String status;			//	`STATUS`	VARCHAR2(1)	NOT NULL	DEFAULT 'Y'	COMMENT '상태'
}
