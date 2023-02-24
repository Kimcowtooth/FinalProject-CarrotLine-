package com.kh.carrot.common.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Airport {
	
	private String airportCode;//	AIRPORT_CODE	VARCHAR2(30 BYTE)
	private String continent;//	CONTINENT	VARCHAR2(20 BYTE)
	private String city;//	CITY	VARCHAR2(50 BYTE)
	private String timeDifference;//	TIME_DIFFERENCE	NUMBER
	
}