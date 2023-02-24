package com.kh.carrot.booking.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class AdditionalServices {
	
	private int ticketNo; // 예매번호
	private String fmCode; // 기내식 코드
	private String cbCode; // 위탁수하물 코드
	private String tiCode; // 여행보험 코드
	
}
