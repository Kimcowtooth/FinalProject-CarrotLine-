package com.kh.carrot.booking.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TravelInsurance {
	
	private String tiCode; // 여행보험 코드
	private int tiPrice; // 여행보험 가격
	private String ti; // 여행보험 명
	
}
