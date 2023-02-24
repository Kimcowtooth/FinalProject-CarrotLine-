package com.kh.carrot.imPay.model.vo;

import com.kh.carrot.member.model.vo.Member;

import lombok.Data;

@Data
public class ImPay {

	private String name; //사용자 이름
	private int amount; //가격
	private int mil; //마일리지
	private int ramount; // r? 가격	
	private String bpnum; //booking phoneNumber(부킹 폰번호)
	private int milplus;
	private Member member; //MemberVo 
	private String bnum; //booking number(부킹번호)
	
}
