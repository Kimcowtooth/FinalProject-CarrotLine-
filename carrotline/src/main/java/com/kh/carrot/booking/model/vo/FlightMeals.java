package com.kh.carrot.booking.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class FlightMeals {
	
	private String fmCode; // 기내식 코드
	private int fmPrice; // 기내식 가격
	private String fm; // 기내식 명
	
}
