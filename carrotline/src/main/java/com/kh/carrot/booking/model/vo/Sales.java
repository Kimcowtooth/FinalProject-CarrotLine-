package com.kh.carrot.booking.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Sales {
	private int bookingNo; //예약번호
	private String paymentMethod; //결제방법
	private String cardNo; //카드번호
	private String approvalNo; //승인번호
	private String paymentDate; //결제일
	private int useMileage; //사용마일리지
	private int cardPayment; //카드결제
	
}
