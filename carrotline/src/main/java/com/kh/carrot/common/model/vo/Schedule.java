package com.kh.carrot.common.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Schedule {
	
	private int scheduleNo;//	SCHEDULE_NO	NUMBER
	private Date departureDate;//	DEPARTURE_DATE	DATE
	private Date arrivalDate;//	ARRIVAL_DATE	DATE
	private int scheduleCost;//	SCHEDULE_COST	NUMBER
	private int planeNo;//	PLANE_NO	NUMBER
	private int routeNo;//	ROUTE_NO	NUMBER
	
}