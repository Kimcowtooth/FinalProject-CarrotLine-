package com.kh.carrot.imPay.model.vo;

import lombok.Data;

@Data
public class ImPayResult {

	private Boolean success; //성공여부
	private String imp_uid; //아임포트 사용자 아이디
	private String merchant_uid; //주문자 번호
	private String pay_method; //결제방법
	private int paid_amount; //결제가격
	private String status; 
	private String name; //이름
	private String pg_provider;
	private String pg_tid;
	private int paid_at;
	private String receipt_url;
	private String apply_num;
	
	private int mil; //마일리지
	private String bpnum; //부킹 폰번호
	private int milplus; //
	
	private String bnum; //부킹 번호
	
}
