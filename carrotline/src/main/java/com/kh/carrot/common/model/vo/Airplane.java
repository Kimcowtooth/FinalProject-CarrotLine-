package com.kh.carrot.common.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Airplane {
	
	private int planeNo;//	PLANE_NO	NUMBER
	private String planeName;//	PLANE_NAME	VARCHAR2(30 BYTE)
	private int premiumCap;//	PREMIUM_CAP	NUMBER
	private int semiCap;//	SEMI_CAP	NUMBER
	private int frontCap;//	FRONT_CAP	NUMBER
	private int standardCap;//	STANDARD_CAP	NUMBER
	private int planeSizeCost;//	PLANE_SIZE_COST	NUMBER
	
}