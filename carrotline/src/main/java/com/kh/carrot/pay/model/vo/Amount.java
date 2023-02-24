package com.kh.carrot.pay.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Amount {

	private Integer total; //총가격
	private Integer tax; //세금
	private Integer vat;
	private Integer discount; //할인금액
	
	
}
