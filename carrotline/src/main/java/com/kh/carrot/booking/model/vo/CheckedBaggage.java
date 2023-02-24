package com.kh.carrot.booking.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class CheckedBaggage {
	
	private String cbCode; // 위탁수하물 코드
	private int cbPrice; // 위탁수하물 가격
	private String cb; // 위학수하물 무게
	
}
