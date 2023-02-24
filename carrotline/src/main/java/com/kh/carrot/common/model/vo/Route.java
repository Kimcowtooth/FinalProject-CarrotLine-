package com.kh.carrot.common.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor 
@AllArgsConstructor 
@Data
public class Route {
	
	private int routeNo;//	ROUTE_NO	NUMBER
	private String flightName;//	FLIGHT_NAME	VARCHAR2(10 BYTE)
	private String departureTime;//	DEPARTURE_TIME	VARCHAR2(20 BYTE)
	private String arrivalTime;//	ARRIVAL_TIME	VARCHAR2(20 BYTE)
	private int flightTime;//	FLIGHT_TIME	NUMBER
	private int routeCost;//	ROUTE_COST	NUMBER
	private int mileage;//	MILEAGE	NUMBER
	private int premiumCost;//	PREMIUM_COST	NUMBER
	private int semipremiumCost;//	SEMIPREMIUM_COST	NUMBER
	private int frontCost;//	FRONT_COST	NUMBER
	private int standardCost;//	STANDARD_COST	NUMBER
	private String sun;//	SUN	VARCHAR2(1 BYTE)
	private String mon;//	MON	VARCHAR2(1 BYTE)
	private String tue;//	TUE	VARCHAR2(1 BYTE)
	private String wed;//	WED	VARCHAR2(1 BYTE)
	private String thu;//	THU	VARCHAR2(1 BYTE)
	private String fri;//	FRI	VARCHAR2(1 BYTE)
	private String sat;//	SAT	VARCHAR2(1 BYTE)
	private String departureAirport;//	DEPARTURE_AIRPORT	VARCHAR2(30 BYTE)
	private String arrivalAirport;//	ARRIVAL_AIRPORT	VARCHAR2(30 BYTE)
	
	//추가
	private int roScheduleNo;
	private String roDepartureDate;
	private String roArrivalDate;
	private int roScheduleCost;
	private int roPlaneSizeCost;
	private String roCity;
	private String roCity2;
	private int roRemainingSeats;
	private String roPlaneName;
	
}
