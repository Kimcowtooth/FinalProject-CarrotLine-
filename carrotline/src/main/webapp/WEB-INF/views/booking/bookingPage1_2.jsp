<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여정 검색 | 항공권 예매 | 캐럿라인</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/booking/booking1.css">
    
    <!-- 소이언니가 보내준 style -->
    <script src='https://kit.fontawesome.com/77ad8525ff.js' crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/booking/bookingHeader.css">
    <!-- // 소이언니가 보내준 style -->
    
    <style type="text/css">
        div.debug {
            display:none;
        }
        
        .section_list .section_list_box .service_section_box .bul_air_info.tway {
		    background: url("<%=request.getContextPath()%>/resources/images/carrot_icon.png") no-repeat 0 0;
		}
    </style>
</head>
<body>
  <%@include file="../common/header.jsp" %>

  <div id="wrap">
    <!-- Content -->
    <div id="container">
        <div class="content" id="content">
            
            <!-- Title & Step -->
	        <div class="tit_booking_wrap">
	            <h2 class="pg_tit">항공권예매</h2>
	            <div class="step_booking"> 
	                <ul class="bs4-order-tracking"> 
	                    <li class="step active">
	                         <div><i class="fas fa-check"></i></div> 1.여정검색 
	                    </li>
	                    <li class="step "> 
	                        <div><i class="fas fa-check"></i></div> 2.탑승자 정보 입력 
	                    </li> 
	                    <li class="step "> 
	                        <div><i class="fas fa-check"></i></div> 3.부가서비스 
	                    </li>
	                    <li class="step "> 
	                        <div><i class="fas fa-check"></i></div> 4.선택내역 확인 및 규정동의 
	                    </li>
	                    <li class="step "> 
	                        <div><i class="fas fa-check"></i></div> 5.결제 
	                    </li> 
	                    <li class="step "> 
	                        <div><i class="fas fa-check"></i></div> 6.예약완료 
	                    </li>  			 
	                </ul> 
	            </div>
	        </div>
	        <!-- Title & Step -->
			
			
            <!-- 구간선택 -->
            <div class="sel_service_section">
            	<jsp:include page="/WEB-INF/views/booking/section-slide.jsp">
            		<jsp:param value="${ca.caKind}" name="kind"/>
            		<jsp:param value="${ca.caDepartureAirport}" name="code1"/>
            		<jsp:param value="${ca.caArrivalAirport}" name="code2"/>
            		<jsp:param value="${ca.caDepCity}" name="city1"/>
            		<jsp:param value="${ca.caArrCity}" name="city2"/>
            	</jsp:include>
            </div>
            <!--// 구간선택 -->

            <div id="layer_availability_list">
                <!-- 날짜 선택 -->
                <div class="sel_date_wrap">
                    <div class="sel_date_slide">
                        <ul>
                            <li class="date_prev_btn date_btn">이전</li>
                            <li class="date_list">
                                <a href="#none">
                                    <span class="date"></span>
                                    <span class="price"></span>
                                </a>
                            </li>
                            <li class="date_list">
                                <a href="#none">
                                    <span class="date"></span>
                                    <span class="price"></span>
                                </a>
                            </li>
                            <li class="date_list">
                                <a href="#none">
                                    <span class="date"></span>
                                    <span class="price"></span>
                                </a>
                            </li>
                            <li class="date_list selected_box">
                                <a href="#none">
                                    <span class="date"></span>
                                    <span class="price"></span>
                                </a>
                            </li>
                            <li class="date_list">
                                <a href="#none">
                                    <span class="date"></span>
                                    <span class="price"></span>
                                </a>
                            </li>
                            <li class="date_list">
                                <a href="#none">
                                    <span class="date"></span>
                                    <span class="price"></span>
                                </a>
                            </li>
                            <li class="date_list">
                                <a href="#none">
                                    <span class="date"></span>
                                    <span class="price"></span>
                                </a>
                            </li>
                            <li class="date_next_btn date_btn">다음</li>
                        </ul>
                    </div>
    
                </div>
                <!--// 날짜 선택 -->

	            <!-- 구간 리스트 -->
	            <div class="section_list_wrap">
	                <!-- 리스트 -->
	                <div class="section_list" id="price_list_route_1"></div>
	                <!--// 리스트 -->
	            </div>
	            <!--// 구간 리스트 -->
            </div>
            
            <!-- 알아두세요 -->
            <div class="mt100">
                <div class="notice_wrap">
                    <a href="#none" class="tit on">알아두세요</a>
                    <div class="notice_cont">
                        <ul class="ul_dot">
                            <li>"항공운임 등 총액"은 유류할증료와 세금을 포함한 총 운임으로 구매 시점과 환율에 따라 변동될 수 있습니다.</li>
                            <li>출발/도착 시간은 현지 시간 기준이며, 항공기 스케줄은 정부인가 조건으로 예고 없이 변경될 수 있습니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <br><br><br><br><br>
        </div>
    </div>
    <!--// Content -->
    
    <!-- Summary -->
	<div class="summary_wrap">
	    <div class="summary_top">
	        <div class="summary_top_cont">
	            <!-- 가격 -->
	            <div class="price_wrap" id="summaryTopPrice">
	                <span class="total">항공운임 등 총액</span>
	                <span class="unit summary_currency">KRW</span>
	                <span class="price" id="summary_title_amount">0</span>
	            </div>
	            <!-- 가격 -->
	            <!-- 버튼 -->
	            <div class="float--right font0" id="buttonSet">
	            	<!-- 
                    <button class="btn_large gray buttonControl" id="nextStep" type="button">다음 구간</button>
                    <button class="btn_large gray buttonControl" id="undoStep" type="button">이전 구간</button>
                    -->
                    <button class="btn_large red buttonControl next" id="checkIn" onclick="nextBtn();">다음 단계</button>
	            </div>
	        </div>
	    </div>
	</div>
    <!-- Summary -->
  </div>
  
  <script>
	//bookingPage1_1에서 가져온 데이터로 function 실행
	$(function(){
		dailyLowFor7Days("${ca.caDepartureDate}", "${ca.caDepartureAirport}", "${ca.caArrivalAirport}");
		selectItinerary("${ca.caDepartureDate}", "${ca.caDepartureAirport}", "${ca.caArrivalAirport}");
	})
	
	
	//선택일 기준 일주일 간의 최저가 조회
	function dailyLowFor7Days(date, departureAirport, arrivalAirport){
		$.ajax({
			url : "dailyList.bo",
			data : {
				roDepartureDate : date,
				departureAirport : departureAirport,
				arrivalAirport : arrivalAirport
			},
			success : function(result){
				//총액 0원으로 시작
				$(".price_wrap .price").text(0);
				
				
				var today = new Date();
				
				var resultStr = "";
				resultStr += "<ul>"
						+ "<li class='date_prev_btn date_btn'>이전</li>";
				for(var i=0; i<result.length; i++){
					var searchedDay = new Date(result[i].roDepartureDate);
					
					if(today > searchedDay){//과거-여정 조회 불가능
						resultStr += "<li class='date_list'>"
							+ "</li>";
					}else{//미래-여정 조회 가능
						resultStr += "<li class='date_list'>"
							+ "<a href='#none' title='여정 선택하기'>"
							+ "<input class='hidDate' type='hidden' value='" + result[i].roDepartureDate.substr(2,8) + "'>"
							+ "<span class='date'>" + result[i].roDepartureDate.substr(5,5) + "(" + result[i].sun + ")" + "</span>";
							
							if(result[i].routeCost != 0){//해당일의 최저가가 0이 아닐 경우(예약 가능한 여정 있음)
								resultStr += "<span class='price'>" + result[i].routeCost + "원</span>";
							}else{//해당일의 최저가가 0인 경우(예약 가능한 여정 없음)
								resultStr += "<span class='price'>" + "-" + "</span>";
							}
						resultStr += "</a>"
							+ "</li>";
					}
				}
				resultStr += "<li class='date_next_btn date_btn'>다음</li>"
						+"</ul>";
				
				$(".sel_date_slide").html(resultStr);
				
				
				//날짜 선택 효과 클래스 추가
				$(".sel_date_slide").children().children('li:eq(4)').addClass("selected_box");
			},error : function(){
				console.log("통신 실패");
			}
		});
	}
	
	
	//선택일의 운항일정 상세 조회
	function selectItinerary(date, departureAirport, arrivalAirport){
		$.ajax({
			url : "selectItinerary.bo",
			data : {
				roDepartureDate : date,
				departureAirport : departureAirport,
				arrivalAirport : arrivalAirport
			},
			success : function(result){
				var resultStr = "";
				resultStr += "<ul>";
				if(result.length == 0){//해당일에 조회된 여정이 없을 때
					resultStr += "<li class='section price_list modify route_all route_1' id='msg_filter_route_1_not'>"
                        	+ "<div class='non_service_wrap'>"
                        	+ "<div class='con_box'>"
                        	+ "<p class='note'>해당일에 조회된 여정이 없습니다.</p>"
                        	+ "</div>"
                        	+ "</div>"
                        	+ "</li>";
                        	
				}else{//해당일에 조회된 여정이 있을 때
					for(var i=0; i<result.length; i++){
						resultStr += "<li class='price_list route_all route_1 section_list_item'>"
                      	+ "<a class='section_list_box' href='#none' role='button'>"
							+ "<input type='hidden' id='roScheduleNo' value='" + result[i].roScheduleNo + "'>"
							+ "<input type='hidden' id='routeCost' value='" + result[i].routeCost + "'>"
							+ "<input type='hidden' id='babyRouteCost' value='" + 20000 + "'>"
							+ "<input type='hidden' id='roScheduleCost' value='" + result[i].roScheduleCost + "'>"
							+ "<input type='hidden' id='roPlaneSizeCost' value='" + result[i].roPlaneSizeCost + "'>"
                             + "<div class='section_info'>"
                             
                                 + "<div class='service_section_box'>"
                                 
	                                   + "<div class='plan_type'>"
		                                   + "<button title='편명 보기' class='bul_air_info tway'>" + result[i].flightName + "</button>"
		                                   + "<button class='bul_air_info' title='항공기 정보 보기'>" + result[i].roPlaneName + "</button>"
	                                   + "</div>"
                                 
	                                   + "<div class='service_name first'>"
		                                   + "<strong class='tit'>" + result[i].departureTime + "</strong>"
		                                   + "<span class='addition'>" + result[i].departureAirport + "</span>"
	                                   + "</div>"
                                 
	                                   + "<div class='service_exp'>"
		                                   + "<p class='top'>" + parseInt(result[i].flightTime/60) + "h " + result[i].flightTime%60 + "m" + "</p>"
		                                   + "<p class='bttm'>"
		                                   + "<span>" + "직항" + "</span>"
		                                   + "</p>"
	                                   + "</div>"
                                 
	                                   + "<div class='service_name last'>"
		                                   + "<strong class='tit'>" + result[i].arrivalTime + "</strong>"
		                                   + "<span class='addition'>" + result[i].arrivalAirport + "</span>"
	                                   + "</div>"
                                 
                                 + "</div>"
                             
                                 + "<div class='price_info fareInfo' style='width:500px'>"
	                                   + "<span class='unit'>" + "KRW" + "</span>"
	                                   + "<strong class='price'>" + (result[i].routeCost + result[i].roScheduleCost) + "</strong>"
	                                   + "<p class='empty_seats'>" + result[i].roRemainingSeats + "석</p>"
                                 + "</div>"
                             
                             + "</div>"
                         + "</a>"
                         + "</li>";
					}
				}
				resultStr += "</ul>";
				$("#price_list_route_1").html(resultStr);
				
				//조회된 운항일정이 있을 때 최저가 표시
				if(result.length != 0){
					var minArr = result.reduce( (prev, value) => {//최저가 return
						return (prev.routeCost+prev.roScheduleCost) < (value.routeCost+value.roScheduleCost) ? prev : value;
					})
					
					var priceArr = $("#price_list_route_1").find(".price");//조회된 운항일정의 가격들
					
					var str = "<p class='stock_info'>"
	                        + "<span class='selling_fast'>" + "최저가" + "</span>"
	                        + "</p>";
					priceArr.each(function(){//조회된 운항일정의 가격이 최저가와 일치한다면 최저가 표시 str 붙이기
						if($(this).html() == (minArr.routeCost + minArr.roScheduleCost)){
							$(this).parent().prepend(str);
						}
					})
				}
			},error : function(){
				console.log("통신 실패");
			}
		});
	}
	
	
	//다른 날짜 클릭 이벤트 - 선택일 기준 일주일 간의 최저가 조회, 선택일의 운항일정 상세 조회
	$(".sel_date_slide").on("click",".date_list",function(){
         //편도
         dailyLowFor7Days($(this).find(".hidDate").val(), "${ca.caDepartureAirport}", "${ca.caArrivalAirport}");
         selectItinerary($(this).find(".hidDate").val(), "${ca.caDepartureAirport}", "${ca.caArrivalAirport}");
     });
	
	
	//날짜 페이징 버튼 클릭 이벤트 - 하루씩 이동
	$(".sel_date_slide").on("click",".date_btn",function(){
		var date;
		var depAirport = "${ca.caDepartureAirport}";
		var arrAirport = "${ca.caArrivalAirport}";
		
		if($(this).hasClass("date_prev_btn")){//이전 버튼
			date = $(".selected_box").prev().find(".hidDate").val();
			
		}else{//다음 버튼
			date = $(".selected_box").next().find(".hidDate").val();
		}
		dailyLowFor7Days(date, depAirport, arrAirport);
        selectItinerary(date, depAirport, arrAirport);
	});
	
	
	//운항일정 클릭 이벤트 - 일정 선택 효과 클래스 추가, 총액 계산
	$(document).on("click",".section_list_item",function(){
		//일정 선택 효과 클래스 추가
		$(".section_list_item.on").removeClass("on");
		$(this).addClass("on");
		
		//총액 계산
		//-금액
		var routeCost = parseInt($(this).find("#routeCost").val());
		var roScheduleCost = parseInt($(this).find("#roScheduleCost").val());
		var roPlaneSizeCost = parseInt($(this).find("#roPlaneSizeCost").val());
		var babyRouteCost = parseInt($(this).find("#babyRouteCost").val());
		
		//-인원
		var caAdult = ${ca.caAdult};
		var caChild = ${ca.caChild};
		var caBaby = ${ca.caBaby};
		
		var curPrice = 0;
		curPrice += (caAdult+caChild) * (routeCost+roScheduleCost+roPlaneSizeCost);
		
		if(caBaby != 0){//유아가 0명이 아닐 때 - 유아는 1인당 2만원씩 추가
			curPrice += caBaby * babyRouteCost;
		}
		$(".price_wrap .price").text(curPrice);
	});
	
	
	//다음 단계 버튼 클릭 이벤트 - form 생성 후 submit
	function nextBtn(){
		if($(".section_list_item.on").length != 0){//일정을 선택했다면
			
		  	var params = {//전송할 데이터 객체 params
		  		roDepartureDate : $(".selected_box").find(".hidDate").val(),
		  		roScheduleNo  : $(".section_list_item.on").find("#roScheduleNo").val(),
		  		routeCost : $(".section_list_item.on").find("#routeCost").val(),
		  		roScheduleCost : $(".section_list_item.on").find("#roScheduleCost").val(),
		  		roPlaneSizeCost : $(".section_list_item.on").find("#roPlaneSizeCost").val(),
		  		routeNo : $(".section_list_item.on").find("#babyRouteCost").val()//유아 1인당 추가 금액
			};
			
		    var form = document.createElement('form');        //form 생성
		    
		    form.setAttribute('method', 'post');              //POST 방식
		    form.setAttribute('action', 'booking/bookingPage2');	      //데이터를 전송할 url
		    document.charset = "utf-8";                       //인코딩
		    
		    for ( var key in params) {	// key, value로 이루어진 객체 params
		        var hiddenField = document.createElement('input');
		        hiddenField.setAttribute('type', 'hidden');
		        hiddenField.setAttribute('name', key);
		        hiddenField.setAttribute('value', params[key]);
		        form.appendChild(hiddenField);
		    }
		    document.body.appendChild(form);
		    
		    form.submit();	// 전송
		    
		}else{//일정을 선택하지 않았다면
			alert("구간1의 여정을 선택하세요.");
		}
	}
  </script>
</body>
</html>