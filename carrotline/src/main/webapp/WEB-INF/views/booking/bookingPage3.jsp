<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,java.util.Arrays"%>
<%@page import="java.net.URLDecoder,
				com.google.gson.Gson,
				com.kh.carrot.booking.model.vo.CookieAll"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
//1. 쿠키 정보 가져오기
Cookie[] cookies = request.getCookies();
String cName="";
String cookieValue="";
CookieAll[] cookieAllList = null;

if(cookies != null){
    for(int i=0; i<cookies.length; i++){
    	if(cookies[i].getName().equals("cookieSet")){
    		
	        //2. 쿠키 값 가져오기
	        cookieValue = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
	        
	        Gson gson = new Gson();
			cookieAllList = gson.fromJson(cookieValue, CookieAll[].class);
			
    	}
    }
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="resources/css/booking/booking3.css">
    
	<!--소이언니가 준 script-->
	<script src='https://kit.fontawesome.com/77ad8525ff.js' crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="resources/css/booking/bookingHeader.css">
    
<style>

input:checked + label#seat-check{
    background-image: url("resources/images/check.png");
}

.header .header_inner .top_logo {
    width: 101px;
    height: 43px;
    background-image: url("resources/images/logo대충.png");	
    text-indent: -9999px;
    margin-top: 7px;
    display: block;
}

.btn_small.refresh {
    padding: 0 7px 0 40px;
    background: url("resources/images/refresh.png") no-repeat 10px 50%;
}
</style>

</head>
<body>

    <div class="header booking">
        <div class="header_inner">
            <!-- Logo -->
            <a href="<%=request.getContextPath()%>">
                <h1 class="top_logo">캐럿 라인</h1>
            </a>
            <!--//  Logo -->

            <!-- Header Menu -->
            <div class="util_wrap">
                
                <!-- 유틸 메뉴 -->
                <div class="util_menu">
                    <!-- 로그인 on / off 클래스 변경 -->
                    <!-- date-id layer_main1 / layer_main2 변경 -->
                    <a class="btn_login on" href="javascript:logoutLayer();">로그인 상태 상세보기</a>
                    <a class="btn_search" href="#none">검색</a>
                    <a class="btn_allmenu" href="#none">전체메뉴</a>
                    <!--// 로그인 전 -->
                </div>
                <!-- 유틸 메뉴 -->
            </div>
            <!--// Header Menu -->
        </div>
    </div>
    
    
    <section class="seat-outer">
        
        <!-- Title & Step -->
        <div class="tit_booking_wrap">
            <h2 class="pg_tit">항공권예매</h2>
            <div class="step_booking"> 
                <ul class="bs4-order-tracking"> 
                    <li class="step active">
                         <div><i class="fas fa-check"></i></div> 1.여정검색 
                    </li>
                    <li class="step active"> 
                        <div><i class="fas fa-check"></i></div> 2.탑승자 정보 입력 
                    </li> 
                    <li class="step active"> 
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
			<!-- 구간선택 -->
				<div class="sel_service_section">
				<jsp:include page="/WEB-INF/views/booking/section-slide.jsp">
				<jsp:param value="RT" name="kind"/>
				<jsp:param value="ICN" name="code1"/>
				<jsp:param value="NRT" name="code2"/>
				<jsp:param value="서울/인천" name="city1"/>
				<jsp:param value="도쿄/나리타" name="city2"/>
				</jsp:include>
				</div>
			<!--// 구간선택 -->
        <br>
    
        <div class="tab_wrap">
            <ul class="tab mt20 added4" id="tab_ancillary" style="padding-inline-start: 0px;">
                <li id="tab_ancillary_seat" class="on">
                	<a href="javascript:void(0);" onclick="modalSeat();">좌석</a>
                </li>
                <li id="tab_ancillary_baggage">
                	<a href="javascript:void(0);" onclick="modalBaggage();">수하물</a>
                </li>
                <li id="tab_ancillary_meal">
                	<a href="javascript:void(0);" onclick="modalMeal();">기내식</a>
                </li>
                <li id="tab_ancillary_insurance">
                	<a href="javascript:void(0);" onclick="modalInsurance();">여행보험</a>
                </li>
            </ul>
            <div class="sel_passenger_wrap mt20">
                <!-- 탑승자 선택 슬라이드 -->
                <div class="sel_passenger_slide swiper-container swiper-container-horizontal">
                    <ul class="swiper-wrapper userSlide" style="transition-duration: 0ms; transform: translate3d(480px, 0px, 0px);">
                    
                    	<%for(int i=0;i<cookieAllList.length;i++) {%>
                    		<%if(i == 0){ %>
                    			<li class="swiper-slide swiper-slide-active" id="active" title="탑승객 선택됨" style="width: 240px;">
		                            <div class="sel_passenger_box">
		                                <i class="num">1</i>
		                                <div class="name ADULT_M">
		                                    <p class="first"><%=cookieAllList[i].getCaFirstName()%></p>
		                                    <p class="last"><%=cookieAllList[i].getCaLastName()%></p>
		                                </div>
		                                <div class="add_service">
		                                    <p class="add_service">
		                                        <span class="seatNo"></span>
		                                        <span class="weight-select"></span>
		                                        <span class="meal"></span>
		                                        <span class="insurance"></span>
		                                    </p>
		                                    <p class="add_price" style="display: none;">
		                                        <span class="currency">KRW</span>
		                                        <input type="hidden" class="seatPrice" value="0">
		                                        <input type="hidden" class="baggagePrice" value="0">
		                                        <input type="hidden" class="mealPrice" value="0">
		                                        <input type="hidden" class="insurancePrice" value="0">
		                                    </p>
		                                </div>
		                            </div>
		                        </li>
                    		<%}else{ %>
                    			<li class="swiper-slide swiper-slide-next" id="next<%=i%>" style="width: 240px;">
		                            <div class="sel_passenger_box">
		                                <i class="num"><%=i+1%></i>
		                                <div class="name ADULT_M">
		                                    <p class="first"><%=cookieAllList[i].getCaFirstName()%></p>
		                                    <p class="last"><%=cookieAllList[i].getCaLastName()%></p>
		                                </div>
		                                <div class="add_service">
		                                    <p class="add_service">
		                                        <span class="seatNo"></span>
		                                        <span class="weight-select"></span>
		                                        <span class="meal"></span>
		                                        <span class="insurance"></span>
		                                    </p>
		                                    <p class="add_price" style="display: none;">
		                                    	<input type="hidden" class="seatPrice" value="0">
		                                        <input type="hidden" class="baggagePrice" value="0">
		                                        <input type="hidden" class="mealPrice" value="0">
		                                        <input type="hidden" class="insurancePrice" value="0">
		                                    </p>
		                                </div>
		                            </div>
		                        </li>
                    		<%} %>
                    	<%} %>
                    </ul>
                	<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                </div>
                <!--// 탑승자 선택 슬라이드 -->
    
                    <!-- 슬라이드 버튼 -->
                    <a class="btn_slide_prev user_slide_prev" href="#none">이전</a>
                    <a class="btn_slide_next user_slide_next" href="#none">다음</a>
                    <!--// 슬라이드 버튼 -->
    
            </div>
            <!--// 탑승자 선택 -->
        </div>

	<!-- seat 시작 -->
	<div class="seatCheckIn">

        <div class="user-seat">

	        <article class="seat-info">
	            <ul class="seat-grade-price">
	                <li class="premium-info">
	                    <span>프리미엄 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">39,000</span>
	                    </span>
	                <li class="semipremium-info">
	                    <span>세미프리미엄 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">17,000</span>
	                    </span>
	                </li>
	                <li class="front-info">
	                    <span>프론트 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">14,000</span>
	                    </span>
	                </li>
	                <li class="standard-info">
	                    <span>스탠다드 존</span>
	                    <span>
	                        <small>KRW</small>
	                        <span id="">7,000</span>
	                    </span>
	                </li>
	                <li class="disabled-info">
	                    <span>선택불가 좌석</span>
	                </li>
	            </ul>
	            <hr style="border: 1px dashed lightgray;">
	            <ul class="airplain-info">
	                <li class="exit-info">비상구</li>
	                <li class="toilet-info">화장실</li>
	                <li class="galley-info">갤리</li>
	            </ul>
	        </article>
	    
		    <article class="seat-area">
		        <div class="seat-map">
		                <table class="seat-map economy">
		                    <caption>
		                        ECONOMY ZONE
		                        <br><br>
		                    </caption>
		                    <thead>
		                        <tr>
		                            <th>A</th>
		                            <th>B</th>
		                            <th>C</th>
		                            <th></th>
		                            <th>D</th>
		                            <th>E</th>
		                            <th>F</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="toilet">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_toilet.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="galley">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_galley.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="1A" value="1A" name="seat">
		                                <label for="1A" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="1B" value="1B" name="seat">
		                                <label for="1B" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="1C" value="1C" name="seat">
		                                <label for="1C" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <span>1</span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>  
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="2A" value="2A" name="seat">
		                                <label for="2A" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="2B" value="2B" name="seat">
		                                <label for="2B" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="2C" value="2C" name="seat">
		                                <label for="2C" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <span>2</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="2D" value="2D" name="seat">
		                                <label for="2D" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="2E" value="2E" name="seat">
		                                <label for="2E" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="2F" value="2F" name="seat">
		                                <label for="2F" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="3A" value="3A" name="seat">
		                                <label for="3A" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="3B" value="3B" name="seat">
		                                <label for="3B" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="3C" value="3C" name="seat">
		                                <label for="3C" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <span>3</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="3D" value="3D" name="seat">
		                                <label for="3D" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="3E" value="3E" name="seat">
		                                <label for="3E" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="3F" value="3F" name="seat">
		                                <label for="3F" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="4A" value="4A" name="seat">
		                                <label for="4A" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="4B" value="4B" name="seat">
		                                <label for="4B" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="4C" value="4C" name="seat">
		                                <label for="4C" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <span>4</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="4D" value="4D" name="seat">
		                                <label for="4D" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="4E" value="4E" name="seat">
		                                <label for="4E" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="4F" value="4F" name="seat">
		                                <label for="4F" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="5A" value="5A" name="seat">
		                                <label for="5A" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="5B" value="5B" name="seat">
		                                <label for="5B" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="5C" value="5C" name="seat">
		                                <label for="5C" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <span>5</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="5D" value="5D" name="seat">
		                                <label for="5D" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="5E" value="5E" name="seat">
		                                <label for="5E" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="5F" value="5F" name="seat">
		                                <label for="5F" class="semipremium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='SEMIPREMIUM_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="6A" value="6A" name="seat">
		                                <label for="6A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                                
		                            </td>
		                            <td>
		                                <input type="radio" id="6B" value="6B" name="seat">
		                                <label for="6B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'><input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="6C" value="6C" name="seat">
		                                <label for="6C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>6</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="6D" value="6D" name="seat">
		                                <label for="6D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="6E" value="6E" name="seat">
		                                <label for="6E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="6F" value="6F" name="seat">
		                                <label for="6F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                                </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="7A" value="7A" name="seat">
		                                <label for="7A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="7B" value="7B" name="seat">
		                                <label for="7B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="7C" value="7C" name="seat">
		                                <label for="7C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>7</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="7D" value="7D" name="seat">
		                                <label for="7D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="7E" value="7E" name="seat">
		                                <label for="7E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="7F" value="7F" name="seat">
		                                <label for="7F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="8A" value="8A" name="seat">
		                                <label for="8A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="8B" value="8B" name="seat">
		                                <label for="8B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="8C" value="8C" name="seat">
		                                <label for="8C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>8</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="8D" value="8D" name="seat">
		                                <label for="8D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="8E" value="8E" name="seat">
		                                <label for="8E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="8F" value="8F" name="seat">
		                                <label for="8F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="9A" value="9A" name="seat">
		                                <label for="9A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="9B" value="9B" name="seat">
		                                <label for="9B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="9C" value="9C" name="seat">
		                                <label for="9C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>9</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="9D" value="9D" name="seat">
		                                <label for="9D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="9E" value="9E" name="seat">
		                                <label for="9E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="9F" value="9F" name="seat">
		                                <label for="9F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="10A" value="10A" name="seat">
		                                <label for="10A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="10B" value="10B" name="seat">
		                                <label for="10B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="10C" value="10C" name="seat">
		                                <label for="10C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>10</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="10D" value="10D" name="seat">
		                                <label for="10D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="10E" value="10E" name="seat">
		                                <label for="10E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="10F" value="10F" name="seat">
		                                <label for="10F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="11A" value="11A" name="seat">
		                                <label for="11A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="11B" value="11B" name="seat">
		                                <label for="11B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="11C" value="11C" name="seat">
		                                <label for="11C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>11</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="11D" value="11D" name="seat">
		                                <label for="11D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="11E" value="11E" name="seat">
		                                <label for="11E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="11F" value="11F" name="seat">
		                                <label for="11F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left-start">
		                                <input type="radio" id="12A" value="12A" name="seat">
		                                <label for="12A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="12B" value="12B" name="seat">
		                                <label for="12B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="12C" value="12C" name="seat">
		                                <label for="12C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>12</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="12D" value="12D" name="seat">
		                                <label for="12D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="12E" value="12E" name="seat">
		                                <label for="12E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td class="wing-right-start">
		                                <input type="radio" id="12F" value="12F" name="seat">
		                                <label for="12F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="13A" value="13A" name="seat">
		                                <label for="13A" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="13B" value="13B" name="seat">
		                                <label for="13B" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="13C" value="13C" name="seat">
		                                <label for="13C" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <span>13</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="13D" value="13D" name="seat">
		                                <label for="13D" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="13E" value="13E" name="seat">
		                                <label for="13E" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="13F" value="13F" name="seat">
		                                <label for="13F" class="front" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='FRONT_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="14A" value="14A" name="seat">
		                                <label for="14A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="14B" value="14B" name="seat">
		                                <label for="14B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="14C" value="14C" name="seat">
		                                <label for="14C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>14</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="14D" value="14D" name="seat">
		                                <label for="14D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="14E" value="14E" name="seat">
		                                <label for="14E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="14F" value="14F" name="seat">
		                                <label for="14F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td class="wing-right">
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="15A" value="15A" name="seat">
		                                <label for="15A" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="15B" value="15B" name="seat">
		                                <label for="15B" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="15C" value="15C" name="seat">
		                                <label for="15C" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <span>15</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="15D" value="15D" name="seat">
		                                <label for="15D" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="15E" value="15E" name="seat">
		                                <label for="15E" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="15F" value="15F" name="seat">
		                                <label for="15F" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td class="wing-right">
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="16A" value="16A" name="seat">
		                                <label for="16A" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="16B" value="16B" name="seat">
		                                <label for="16B" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="16C" value="16C" name="seat">
		                                <label for="16C" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <span>16</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="16D" value="16D" name="seat">
		                                <label for="16D" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="16E" value="16E" name="seat">
		                                <label for="16E" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                            <td class="c-facilities -wing-right">
		                                <input type="radio" id="16F" value="16F" name="seat">
		                                <label for="16F" class="premium" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='PREMIUM_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="c-facilities -wing-left">
		                                <input type="radio" id="17A" value="17A" name="seat">
		                                <label for="17A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="17B" value="17B" name="seat">
		                                <label for="17B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="17C" value="17C" name="seat">
		                                <label for="17C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>17</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="17D" value="17D" name="seat">
		                                <label for="17D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="17E" value="17E" name="seat">
		                                <label for="17E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="17F" value="17F" name="seat">
		                                <label for="17F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left">
		                                <input type="radio" id="18A" value="18A" name="seat">
		                                <label for="18A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="18B" value="18B" name="seat">
		                                <label for="18B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="18C" value="18C" name="seat">
		                                <label for="18C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>18</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="18D" value="18D" name="seat">
		                                <label for="18D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="18E" value="18E" name="seat">
		                                <label for="18E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td class="wing-right">
		                                <input type="radio" id="18F" value="18F" name="seat">
		                                <label for="18F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td class="wing-left-end">
		                                <input type="radio" id="19A" value="19A" name="seat">
		                                <label for="19A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="19B" value="19B" name="seat">
		                                <label for="19B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="19C" value="19C" name="seat">
		                                <label for="19C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>19</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="19D" value="19D" name="seat">
		                                <label for="19D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="19E" value="19E" name="seat">
		                                <label for="19E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td class="wing-right-end">
		                                <input type="radio" id="19F" value="19F" name="seat">
		                                <label for="19F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="20A" value="20A" name="seat">
		                                <label for="20A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="20B" value="20B" name="seat">
		                                <label for="20B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="20C" value="20C" name="seat">
		                                <label for="20C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>20</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="20D" value="20D" name="seat">
		                                <label for="20D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="20E" value="20E" name="seat">
		                                <label for="20E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="20F" value="20F" name="seat">
		                                <label for="20F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="21A" value="21A" name="seat">
		                                <label for="21A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="21B" value="21B" name="seat">
		                                <label for="21B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="21C" value="21C" name="seat">
		                                <label for="21C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>21</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="21D" value="21D" name="seat">
		                                <label for="21D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="21E" value="21E" name="seat">
		                                <label for="21E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="21F" value="21F" name="seat">
		                                <label for="21F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="22A" value="22A" name="seat">
		                                <label for="22A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="22B" value="22B" name="seat">
		                                <label for="22B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="22C" value="22C" name="seat">
		                                <label for="22C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>22</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="22D" value="22D" name="seat">
		                                <label for="22D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="22E" value="22E" name="seat">
		                                <label for="22E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="22F" value="22F" name="seat">
		                                <label for="22F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="23A" value="23A" name="seat">
		                                <label for="23A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="23B" value="23B" name="seat">
		                                <label for="23B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="23C" value="23C" name="seat">
		                                <label for="23C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>23</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="23D" value="23D" name="seat">
		                                <label for="23D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="23E" value="23E" name="seat">
		                                <label for="23E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="23F" value="23F" name="seat">
		                                <label for="23F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="24A" value="24A" name="seat">
		                                <label for="24A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="24B" value="24B" name="seat">
		                                <label for="24B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="24C" value="24C" name="seat">
		                                <label for="24C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>24</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="24D" value="24D" name="seat">
		                                <label for="24D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="24E" value="24E" name="seat">
		                                <label for="24E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="24F" value="24F" name="seat">
		                                <label for="24F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="25A" value="25A" name="seat">
		                                <label for="25A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="25B" value="25B" name="seat">
		                                <label for="25B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="25C" value="25C" name="seat">
		                                <label for="25C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>25</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="25D" value="25D" name="seat">
		                                <label for="25D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="25E" value="25E" name="seat">
		                                <label for="25E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="25F" value="25F" name="seat">
		                                <label for="25F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="26A" value="26A" name="seat">
		                                <label for="26A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="26B" value="26B" name="seat">
		                                <label for="26B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="26C" value="26C" name="seat">
		                                <label for="26C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>26</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="26D" value="26D" name="seat">
		                                <label for="26D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="26E" value="26E" name="seat">
		                                <label for="26E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="26F" value="26F" name="seat">
		                                <label for="26F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="27A" value="27A" name="seat">
		                                <label for="27A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="27B" value="27B" name="seat">
		                                <label for="27B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="27C" value="27C" name="seat">
		                                <label for="27C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>27</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="27D" value="27D" name="seat">
		                                <label for="27D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="27E" value="27E" name="seat">
		                                <label for="27E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="27F" value="27F" name="seat">
		                                <label for="27F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="28A" value="28A" name="seat">
		                                <label for="28A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="28B" value="28B" name="seat">
		                                <label for="28B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="28C" value="28C" name="seat">
		                                <label for="28C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>28</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="28D" value="28D" name="seat">
		                                <label for="28D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="28E" value="28E" name="seat">
		                                <label for="28E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="28F" value="28F" name="seat">
		                                <label for="28F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="29A" value="29A" name="seat">
		                                <label for="29A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="29B" value="29B" name="seat">
		                                <label for="29B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="29C" value="29C" name="seat">
		                                <label for="29C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>29</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="29D" value="29D" name="seat">
		                                <label for="29D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="29E" value="29E" name="seat">
		                                <label for="29E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="29F" value="29F" name="seat">
		                                <label for="29F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="30A" value="30A" name="seat">
		                                <label for="30A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="30B" value="30B" name="seat">
		                                <label for="30B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="30C" value="30C" name="seat">
		                                <label for="30C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>30</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="30D" value="30D" name="seat">
		                                <label for="30D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="30E" value="30E" name="seat">
		                                <label for="30E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="30F" value="30F" name="seat">
		                                <label for="30F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="31A" value="31A" name="seat">
		                                <label for="31A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="31B" value="31B" name="seat">
		                                <label for="31B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="31C" value="31C" name="seat">
		                                <label for="31C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>31</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="31D" value="31D" name="seat">
		                                <label for="31D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="31E" value="31E" name="seat">
		                                <label for="31E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="31F" value="31F" name="seat">
		                                <label for="31F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="radio" id="32A" value="32A" name="seat">
		                                <label for="32A" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="32B" value="32B" name="seat">
		                                <label for="32B" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>    
		                                <input type="radio" id="32C" value="32C" name="seat">
		                                <label for="32C" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <span>32</span>
		                            </td>
		                            <td>
		                                <input type="radio" id="32D" value="32D" name="seat">
		                                <label for="32D" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="32E" value="32E" name="seat">
		                                <label for="32E" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                            <td>
		                                <input type="radio" id="32F" value="32F" name="seat">
		                                <label for="32F" class="standard" id="seat-check"></label>
		                                <input type='hidden' name='caSeatPrice' value='STANDARD_COST'>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span class="toilet">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_toilet.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="toilet">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_toilet.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span class="exit-left">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_L.png" style="margin-left: -70px;">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="exit-right">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_exit_R.png">
		                                </span>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="galley">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_galley.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span class="galley">
		                                    <img src="https://contents-image.twayair.com/homepage/images/ico/seat_galley.png">
		                                </span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                            <td>
		                                <span></span>
		                            </td>
		                        </tr>
		                        
		                    </tbody>
		                </table>
		            
		        </div>
		    </article>
    	</div>
	    <div class="notice_box mt70">
	        <strong style="color: red; font-size: 30px;">알아두세요</strong>
	        <!--사용중인 메뉴 : 부가서비스 좌석 선택, 비즈니스 좌석선택, 좌석 추가구매-->
	        <br><br>
	
	        <ul class="ul_dot">
	            <li>비즈니스 운임의 경우 국내선 탑승 당일 35분 전, 국제선 3시간 전까지 선택 가능 합니다.</li>
	            <li>이노코미 운임(이벤트/스마트/일반운임)은 출발일이 임박한 경우(25시간 이내) 좌석 구매가 불가합니다.</li>
	            <li> 비상구 좌석은 승무원을 도와 다른 승객의 탈출을 돕는 자리로 조건에 맞지 않는 경우 현장에서 직원의 확인 후 거절될 수 있으며 환불되지 않습니다.<br>
	            <div class="btn_wrap_svc">
	                <button type="button" date-type="layer" date-id="exit_seat_rule_layer" onclick="exitSeatRuleLayer();" title="레이어 팝업 열림" class="sbtn_cont"><span>비상구 좌석 배정 제한 규정보기</span></button>
	            </div>
	            </li>
	            <li>국제선 만 12세, 국내선 만 13세 미만의 소아는 반드시 성인 보호자 옆에 배정되어야 합니다.</li>
	            <li>항공기 기종에 따라 좌석의 앞뒤, 좌우 간격이 상이할 수 있습니다.</li>
	            <li>좌석 변경은 취소 후 재구매 해주시기 바랍니다.</li>
	            <li>A330-300 기종의 1G, 15D, 15F, 16B 좌석은 유아용 요람 옆 좌석이니 이용에 참고 바랍니다.</li>
	            <li>유아용 요람은 "유아용 요람 이용 가능한 좌석"을 구매한 후에 예약센터를 통해 추가 요금 없이 신청이 가능합니다.<br>(국제선만 유아용 요람 서비스 신청이 가능하며, 국내선은 유아용 요람 서비스를 제공하지 않습니다.)</li>
	            <li style="color:red;">동물 알레르기가 있거나 반려동물 동반 승객과의 좌석 거리두기를 원하시는 경우, 반드시 탑승 수속 시 해당사항을 직원에게 알려주시기 바랍니다. (단, 당일 운행 상황에 따라 좌석 변경이 어려울 수 있습니다.)</li>
	        </ul>
	    </div>
	    
        <button class="btn_top" onclick="goTop();"></button>
	    
	</div>
	<!-- seat 끝 -->
	
	
	<script>
	
		// 예매된 좌석 비활성화하기
		$(function(){
			
			let seatList = "${seatList}";
			seatList = seatList.replace("[","");
			seatList = seatList.replace("]","");
			
			for(let i=0 ; i < ${seatList.size()}; i++){
				seatList = seatList.replace(" ","");
				let seat = seatList.split(",");
			
				$("#"+seat[i]).attr("disabled",true);
				$("#"+seat[i]).next().css("background-image",'url(https://contents-image.twayair.com/homepage/images/ico/seat_disabled.png)');
				
			}
			
		});
	
	</script>
	
	<!-- baggage시작 -->
	<div class="baggageCheckIn">
        <div class="weight-area">
            <span>위탁수하물 무게 선택</span> <br><br>
            <c:forEach var="b" items="${baggageList}" varStatus="status">
            	<input type="radio" name="weight-select" id="weight${(status.index) + 1}" value="${b.cbCode}">
            	<label for="weight${(status.index) + 1}">
            		${b.cb}<br>
            		<c:choose>
            			<c:when test="${b.cbPrice eq 0}">
            				(추가요금 X)
            			</c:when>
            			<c:otherwise>
            				(KRW ${b.cbPrice})
            			</c:otherwise>
            		</c:choose>
            	</label>
            </c:forEach>
        </div>

        <br><br>


        <ul style="list-style-type: none; font-size: 25px;" class="ul_dot mt20 baggageAvailability baggageAvailability_500">
            <li class="red">
                기내반입 및 위탁가능 무료수하물 허용량을 확인해보세요.  
                <div class="tbl_top_area">
                    <button class="sbtn_cont fl" date-id="carryon_luggage_layer" date-type="layer" onclick="carryOnLuggageLayer();">무료수하물 안내</button>
                    <br><br>
                </div>
            </li>
            <li>
                탑승객별 위탁수하물 요금을 확인하고, 초과 시 부과되는 요금을 확인해보세요.
                <div class="tbl_top_area">
                    <button class="sbtn_cont fl" onclick="baggagePriceLayer();">수하물 추가구매 안내</button>
                    <br><br>
                </div>
            </li>
            <li>
            	<p>부가서비스 번들을 구매한 승객은 예매완료 후 [마이페이지&gt;나의예약]에서 위탁수하물 추가로 구매하실 수 있습니다.<br></p>
            	<p>(단, 출발일이 임박한 여정, 공동운항편, 대양주노선 제외)</p>
            	<p><br><br><br><br><br><br></p></li>
        </ul>
        
        <button class="btn_top" onclick="goTop();"></button>
        
    </div> 
    <!-- baggage 끝 -->

	<!-- meal 시작 -->
	<div class="mealCheckIn">
        <div class="tab_cont mt0" tabindex="0" style="display: block;">
            <h4 class="hidden">사전 기내식 선택</h4>
                    <div style="" class="food_list mealAvailability mealAvailability_500">
                        <div class="ico_guide ico_food_guide">
                            <span class="ico_food hot">핫밀</span>
                            <span class="ico_food cold">콜드밀</span>
                            <span class="ico_food adult">성인메뉴</span>
                            <span class="ico_food kid">키즈밀</span>
                            <span class="ico_food vege">채식</span>
                            <span class="ico_food reli">종교식</span>
                        </div>
                        <!-- 기내식 선택 -->
        
                        <div class="sel_food_wrap mealGroupInfo_1">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_1" value="LHML1">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>저녁식사를 선택해주세요</h2>
                                    <p class="time">출발 2~3시간 후 식사 제공</p>
                                </div>
                            <div class="food_list">
                                <ul>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img on">
                                                <img alt="기본 기내식" src="https://contents-image.twayair.com/contents/2022/1011/991cefde-7f2c-4893-a8dd-da97444b2efa.jpg">
                                                <span class="ico_bul ">베스트상품</span>
                                                <span class="ico_food ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('FREE');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value free" type="radio" id="meal-500_1_1" name="meal_500_1" value="FREE">
                                                    <label for="meal-500_1_1"> 
                                                    	<span class="icon">기내식 추가 체크박스</span>
                                                    	<p>기본 기내식</p> 
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
        
                        <div class="sel_food_wrap mealGroupInfo_2  mt30">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_2" value="LHML2">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>아침식사를 선택해주세요</h2>
                                    <p class="time">도착 2~3시간 전 식사 제공</p>
                                </div>
                            <div class="food_list">
                                <ul>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img">
                                                <img alt="미트볼 푸실리 파스타" src="https://contents-image.twayair.com/contents/2022/0325/5d82d061-4fda-4afb-a5dc-4ecbc02debc8.jpg">
                                                <span class="ico_bul new ">베스트상품</span>
                                                <span class="ico_food hot ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('ZZ23');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value" type="radio" data-meal_bundlechildssrcode="LHML2" data-meal_groupindex="2" data-meal_groupssrcode="MEAL2" data-meal_menudiv="간편식" data-meal_time="아침식사" id="meal-500_2_1" name="meal_500_2" value="FM1">
                                                    <label for="meal-500_2_1">
                                                    	<span class="icon">기내식 추가 체크박스</span>
                                                    	<p>미트볼 푸실리 파스타</p>
                                                    	<input type="hidden" id="mealPrice" value="10000" >
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img on">
                                                <img alt="불고기 덮밥" src="https://contents-image.twayair.com/contents/2022/0325/91ce499b-e8c6-4979-b219-f59b2fd70a85.jpg">
                                                <span class="ico_bul new ">베스트상품</span>
                                                <span class="ico_food hot ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('ZZ24');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value" type="radio" id="meal-500_2_2" name="meal_500_2" value="FM2">
                                                    <label for="meal-500_2_2">
                                                     	<span class="icon">기내식 추가 체크박스</span>
                                                     	<p>불고기 덮밥</p>
                                                     	<input type="hidden" id="mealPrice" value="10000" >
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                
                
                    <div style="display: none;" class="food_list mealAvailability mealAvailability_501">
                        <div class="ico_guide ico_food_guide">
                                <span class="ico_food hot">핫밀</span>
                                <span class="ico_food cold">콜드밀</span>
                                <span class="ico_food adult">성인메뉴</span>
                                <span class="ico_food kid">키즈밀</span>
                                <span class="ico_food vege">채식</span>
                                <span class="ico_food reli">종교식</span>
                        </div>
                        <!-- 기내식 선택 -->
        
                        <div class="sel_food_wrap mealGroupInfo_1">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_1" value="LHML1">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>점심식사를 선택해주세요</h2>
                                    <h2 style="padding: 0;" class="freeMeal_501">(무상제공)</h2>
                                    <p class="time">출발 2~3시간 후 식사 제공</p>
                                </div>
                            <div class="food_list">
                                <ul>
                                    <li>
                                        <div class="sel_food_info">
                                            <div class="img">
                                                <img alt="기본 기내식" src="https://contents-image.twayair.com/contents/2022/1011/991cefde-7f2c-4893-a8dd-da97444b2efa.jpg">
                                                <span class="ico_bul ">베스트상품</span>
                                                <span class="ico_food ">콜드밀</span>
                                                <span class="ico_food_2 ">일반식</span>
                                                <a class="ico_zoom" date-id="retrieve_meal_layer" date-type="layer" onclick="retrieveMealLayer('FREE');">확대보기</a>
                                            </div>
                                            <dl>
                                                <dt>
                                                    <input class="meal_value free" type="radio" id="meal-501_1_1" name="meal_501_1" value="FM0">
                                                    <label for="meal-501_1_1">
                                                     <span class="icon">기내식 추가 체크박스</span>
                                                     <p>기본 기내식</p>
                                                    </label>
                                                </dt>
                                            </dl>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
        
                        <div class="sel_food_wrap mealGroupInfo_2  mt30">
                            <input name="bundleChildSsrCode" type="hidden" id="bundleChildSsrCode_2" value="LHML3">
                            <!-- 단거리 -->
                                <div class="food_title">
                                    <h2>저녁식사를 선택해주세요</h2>
                                    <p class="time">도착 2~3시간 전 식사 제공</p>
                                </div>
                        </div>
                    </div>
                
            <div class="food_deadline mealAvailability mealAvailability_BZ_NA non_service_wrap" style="display: none;">
                <p>기내식 사전 주문 기간이 마감되어 <br> 기본 기내식으로 제공됩니다.</p>
            </div>
            
            <div class="mealAvailability mealAvailability_NA non_service_wrap" style="display: none;">
                <div class="con_box">
                    <p class="note"></p><p class="note">선택하신 구간은 기내식 사전 구매가 불가합니다.</p><p></p>
                </div>
            </div>
            
            <div class="mealAvailability mealAvailability_NI non_service_wrap" style="display: none;">
                <div class="con_box">
                    <p class="note">선택하신 번들은 기내식이 포함되어 있지 않습니다.<br>예약 완료 후 예약 상세에서 추가로 구매하실 수 있습니다.</p>
                </div>
            </div>
        
            <!-- 번들 선택 안내 -->
            <div class="tbl_top_area mt30">
                <button class="sbtn_cont fr" date-id="layer_food" date-type="layer" onclick="ruleLayer('ANCILLARY_MEAL_RULE');">기내식 규정</button>
            </div>
            <!--// 번들 선택 안내 -->
            <div class="mealAvailability mealAvailability_FR non_service_wrap" style="display: none;">
                <div class="con_box">
                    <p class="note">기내식은 {0}회 무상으로 제공됩니다.</p>
                </div>
            </div>
            
        </div>
    </div>
	<!-- meal 끝 -->

	<!-- insurance 시작 -->
		<div class="insuranceCheckIn">
		<div class="tab_cont" id="insuranceCheckIn" tabindex="0" style="display: block;">
        	<h4 class="hidden">여행자 보험 선택</h4>
        

	        <ul class="ul_dot mb20">    <li>보험은 일자별로 신청 가능하며 1일 적용 기준은 00시 ~ 24시 입니다.<br></li><li>여행기간 변경 시 기간에 따라 보험료가 변경될 수 있습니다.</li>
	            <li>편도 항공권 또는 귀국일 미확정인 경우 보험기간을 직접 선택하여 주세요.(국내선 최대1개월 / 국제선 최대3개월)</li>
	            <li><span style="color: rgb(192, 80, 77);">보험기간은 피보험자가 주거지를 출발하여 여행을 마치고 주거지에 도착할 때까지의 기간(이하 “여행기간”)으로 설정하시기 바랍니다.</span></li>
	            <li>피보험자가 입력한 기간의 전부 또는 일부가 여행기간이 아닌 경우 해당기간 동안 발생한 사고에 대해서는 보상을 받지 못할 수 있습니다.</li>
	            <li>실제 여행기간이 피보험자가 설정한 기간 이외의 기간을 포함할 경우 사전에 회사에 알리고 기간을 변경하셔야 해당 기간에 대한 보상이 가능합니다.</li>
	            <li>여행예정인 국가 중 보험인수 제한국가가 포함되어 있을 경우 보험가입이 불가합니다.&nbsp;&nbsp;<a class="btn_txt red" href="https://www.acedirect.co.kr/jsp/restrictCountry.jsp" target="_blank" role="button" aria-hidden="false">보험인수제한국가</a></li>
	        </ul>
	        <!-- <ul class="ul_dot mb20">
	            <li>손해보험협회 심의필 : 제 00000호 2020.07.02</li>
	            <li>편도 항공권 또는 귀국일 미확정인 경우 보험기간을 직접 선택하여 주세요.(최대 3개월까지 가입 가능)</li>
	            <li class="red">보험기간은 피보험자가 주거지를 출발하여 여행을 마치고 주거지에 도착할 때까지의 기간(이하 “여행기간”)으로 설정하시기 바랍니다.</li>
	            <li>피보험자가 입력한 기간의 전부 또는 일부가 여행기간이 아닌 경우 해당기간 동안 발생한 사고에 대해서는 보상을 받지 못할 수 있습니다.</li>
	            <li>실제 여행기간이 피보험자가 설정한 기간 이외의 기간을 포함할 경우 사전에 회사에 알리고 기간을 변경하셔야 해당 기간에 대한 보상이 가능합니다.</li>
	        </ul> -->
	        <form id="insureForm" method="post" name="insureForm">
                <input id="pnrNumber" name="pnrNumber" type="hidden" value="LN7873">
                <input id="currency" name="currency" type="hidden" value="KRW">
                <input id="segmentId" name="segmentId" type="hidden" value="500">
                <input id="nationCode" name="nationCode" type="hidden" value="AU">
                <input id="email" name="email" type="hidden" value="psun0215@naver.com">
                <input id="domIntDiv" name="domIntDiv" type="hidden" value="I">
                <input id="accessToken" name="accessToken" type="hidden">

                <div class="grid mb20">
                <table class="tb_row">
                    <caption>여행 정보 및 휴대전화 정보 - 여행 기간, 여행국가, 휴대전화 입력 표 입니다.</caption>
                    <colgroup>
                        <col style="width:20%">
                        <col style="width:20%">
                        <col style="width:20%">
                        <col style="width:30%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>여행기간</th>
                            <td colspan="3">
                                <div class="input_wrap">
                                    <span class="input_date">
                                        <input class="w200" id="policyStartDate" name="policyStartDate" onchange="changePolicyDate();" onkeyup="onlyNumHyphen(this);" placeholder="YYYY-MM-DD" readonly="readonly" title="여행 출발날짜" type="text" value="2022-12-31">
                                    		<!-- 여행출발날짜 value 달러{출발날짜} -->
                                    </span>
                                    <span class="ml10 mr10">~</span>
                                    <span class="input_date">
                                    	<input type='date' class="w200" id="policyEndDate" name="policyEndDate">
<!--                                    <a class="btn_date date_focus" id="end" onclick="showEndCalendar();">날짜선택</a> -->
                                    </span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>여행대륙</th>
                            <td> <%=cookieAllList[0].getCaConti() %></td>
                            <th>휴대전화</th>
                            <td>
                                <input class="w260" id="phoneNo" name="phoneNo" onkeyup="onlyNum(this);" placeholder="ex)01012345678" title="휴대전화 번호 입력" type="text" value="">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>


	        <div class="grid mb10">
	            <table class="tb_col st">
	                <caption>보험 종류 및 가입자 정보 - 가입자명, 성별, 생년월일, 고급형, 표준형, 실속형, 선택 표 입니다.</caption>
	                <colgroup>
	                    <col style="width:auto">
	                    <col style="width:5%">
	                    <col style="width:10%">
	                    <col style="width:7%">
	                    <col style="width:9%">
	                    <col style="width:7%">
	                    <col style="width:9%">
	                    <col style="width:7%">
	                    <col style="width:9%">
	                    <col style="width:11%">
	                </colgroup>
	                <thead>
	                    <tr>
	                        <th class="left pl30" rowspan="2">가입자명</th>
	                        <th rowspan="2">성별</th>
	                        <th rowspan="2">생년월일</th>
	                        <th colspan="2" id="planTitle_1">실속형</th>
	                        <th colspan="2" id="planTitle_2">표준형</th>
	                        <th colspan="2" id="planTitle_3">고급형</th>
	                        <th rowspan="2">선택</th>
	                    </tr>
	                    <tr>
	                        <th>가입금액</th>
	                        <th>보험료(KRW)</th>
	                        <th>가입금액</th>
	                        <th>보험료(KRW)</th>
	                        <th>가입금액</th>
	                        <th>보험료(KRW)</th>
	                    </tr>
	                </thead>
	                <tbody>
						
			<%for(int i=0;i<cookieAllList.length;i++) {%>
						<input name="name" type="hidden" id="name_<%=i %>" value="">
						<input name="gender" type="hidden" id="gender_<%=i %>" value="">
						여행자 보험 가입 체크 여부
						<input name="agreeInscIndGuide" type="hidden" value="false" data-guestid=<%=i %> id= "agreeInscIndGuide<%=i %>" >
						<tr>
						    <td class="left">
						        <div>
						            <input name="chkInscPax" type="checkbox" data-guestid="<%=i %>" id="insurance_value">
						            <label class="mr15" id="insuranceLabel" for="check_<%=i %>">
						                <span class="icon"></span>
						                <span class="name ADULT_M"></span>
						                <span id="insuranceName_<%=i %>" data-guestid="<%=i %>">
						                	<span class="firstName_<%=i %>"><%=cookieAllList[i].getCaFirstName()%></span>
						                	<span class="lastName_<%=i %>"><%=cookieAllList[i].getCaLastName()%></span>
						                </span>
						            </label>
						        </div>
						    </td>
						    <td>남성</td>
						    <td>
						        <input class="date-input w190" max="2999-12-31" maxlength="10" min="1900-01-01" name="birth" onblur="(this.type='text')" onfocus="(this.type='date')" placeholder="ex)2021-12-31" style="width:160px" title="생년월일 입력" type="text" id="birth_<%=i %>" onchange="getPlanList(<%=i %>);" onkeyup="changeDateFormat(<%=i %>);" value="" disabled="disabled">
						   </td>
						    <td id="planAmt_301782322_<%=i %>" name="amt_<%=i %>">-</td>
						    <td id="insureAmt_301782322_<%=i %>" name="amt_<%=i %>">-</td>
						    <td id="planAmt_301782323_<%=i %>" name="amt_<%=i %>">-</td>
						    <td id="insureAmt_301782323_<%=i %>" name="amt_<%=i %>">-</td>
						    <td id="planAmt_301782324_<%=i %>" name="amt_<%=i %>">-</td>
						    <td id="insureAmt_301782324_<%=i %>" name="amt_<%=i %>">-</td>
						    <td>
						        <span class="select<%=i %>">
						            <select disabled="disabled" name="planType" title="유형선택" data-guestid=<%=i %> id="planSelect_<%=i %>">
							            <option value="">선택</option>
							            <option value="lowEndInsurance">실속형</option>
							            <option value="MiddleEndInsurance">보급형</option>
							            <option value="HighEndInsurance">고급형</option>
						            </select>
						        </span>
						    </td>
						</tr>
						<%} %>
	                    
	                </tbody>
	            </table>
	        </div>
	        
	<!-- insurance(보험) 자바 스크립트단 start -->	 
	<script>

		//여행 시작일과 종료일의 차이를 담는 변수
		var dateDiff = function(bookingStartDate, bookingEndDate){
		    var arr1 = bookingStartDate.split('-');
		    var dat1 = new Date(arr1[0], arr1[1] - 1, arr1[2]);
		
		    var arr2 = bookingEndDate.split('-');
		    var dat2 = new Date(arr2[0], arr2[1] - 1, arr2[2]);
		
		    var diff = dat2-dat1;
		    var currDay = 24 * 60 * 60 * 1000;
		
		    return diff/currDay;
		};


	//여행자 보험 체크 인원 체크 테이블
// 	$("input[type='checkbox'] + label .icon").on('click', function(e){
// 		console.log("click");

	$("input[name='chkInscPax']").on('click',function(e){

	     var policyStartDate = $("input[name='policyStartDate']").val();
	     var policyEndDate = $("input[name='policyEndDate']").val();
      
	     if($(this).prop('checked')) {
	         if($("input[name='policyEndDate']").val() == '') {
	             alert('여행 종료 일자를 선택해주세요.');
	             $(this).prop('checked', false);
	             return false;
	         }
	
	         var dateDiffValue = dateDiff(policyStartDate, policyEndDate);
	
	         if(dateDiffValue < 1) { //기간은 최소 2일. 최대3개월까지 설정가능(국내선의 경우 최대1개월 까지 가능)
	             alert('여행기간은 최소 2일 이상입니다. ( 최대3개월까지 설정가능)');
	             $(this).prop('checked', false);
	             return false;
	         }
	     }
      
 
	if($("input[name='chkInscPax']:checked").length == 0) {
            $("#termsArea").css('display', 'none');

            $("input[name*='agreeInscInfo']").prop('checked', false);
            $("input[name*='agreeInscGuide']").prop('checked', false);
            $("input[name*='agreeInscRuleAndPrivacy']").prop('checked', false);
         
			} else {
		            $("#termsArea").css('display', 'block');
		    }

        $("#joinInscCnt").text($("input[name='chkInscPax']:checked").length);
        
    });
	
    
	$("input[name='chkInscPax']").on('click',function(e){
		var guestId = $(this).data('guestid');		
    	
        if($(this).is(":checked")){
			 $('#birth_' + guestId).prop('disabled', false);
			 $("#planSelect_" + guestId).prop('disabled', false);
			 
			 $('#planAmt_301782322_'+ guestId).html("1억");
			 $('#insureAmt_301782322_'+ guestId).html("33,710");
			 $('#planAmt_301782323_'+ guestId).html("2억");
			 $('#insureAmt_301782323_'+ guestId).html("51,710");
			 $('#planAmt_301782324_'+ guestId).html("3억");
			 $('#insureAmt_301782324_'+ guestId).html("70,240");
	 
		}else{
			 $('#birth_' + guestId).prop('disabled', true);
			 $("#planSelect_" + guestId).prop('disabled', true);
			 $("#planSelect_" + guestId).val($("#selectInsurance").val());
			 $('#planAmt_301782322_'+ guestId).html("-");
			 $('#insureAmt_301782322_'+ guestId).html("-");
			 $('#planAmt_301782323_'+ guestId).html("-");
			 $('#insureAmt_301782323_'+ guestId).html("-");
			 $('#planAmt_301782324_'+ guestId).html("-");
			 $('#insureAmt_301782324_'+ guestId).html("-");
			 
			 
		}

	 });

	//보험 가입자 보험종류 값 넘기는 함수
     $(function(){
    	var guestId = $(this).data('guestid');
    	
    	var koreanWon = "KRW";
     	var totalPrice = 0;
     	var insurancePrice = 0;

    	$("select[name='planType']").change(function(e){
    			
    		var guestId = $(this).data('guestid');		
        	let diminish = ",";
			let firstName = "";
			let lastName = "";
        	var selectPlan = $('#planSelect_'+ guestId).val();
//         	var selectName = $('#insuranceName_'+ guestId).html();
      
          	totalPrice = 0;
        	
        for(var i = 0 ; i<$("input[name='chkInscPax']").length;i++){
    	
        	if(i == 0){
	    	  if($('#planSelect_'+ i).val() == "lowEndInsurance"){				
	 				insurancePrice = 33710;
	 				
	 			}else if($('#planSelect_'+ i).val() == "MiddleEndInsurance"){				
	 				insurancePrice = 51710;
	 			}else if($('#planSelect_'+ i).val() == "HighEndInsurance"){
	 				insurancePrice = 70240;	
	 			}else{
	 				insurancePrice = 0;
	 			}
  	    	    $("#active > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val(insurancePrice);
		    	insurancePrice = parseInt($("#active > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val());
	 			totalPrice += insurancePrice;

    		}else{
			  if($('#planSelect_'+ i).val() == "lowEndInsurance"){				
	 				insurancePrice = 33710;
	 			}else if($('#planSelect_'+ i).val() == "MiddleEndInsurance"){				
	 				insurancePrice = 51710;
	 			}else if($('#planSelect_'+ i).val() == "HighEndInsurance"){
	 				insurancePrice = 70240;	
	 			}else{
	 				insurancePrice = 0;
	 			}
				$("#next" + i + " > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val(insurancePrice);
				insurancePrice = parseInt($("#next" + i + " > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val());
	 			totalPrice += insurancePrice;	
    		}	
          	$("#totalInsureAmount").html(totalPrice+koreanWon);
        }
 			cookiesSet();
    		sumPrice();
         }); 	
     });
		
	
     $("input[name='chkInscPax']").on('click',function(e){    	 
     
 		
 		var guestId = $(this).data('guestid');		
     	let diminish = ",";
		let firstName = "";
		let lastName = "";
     	var selectPlan = $('#planSelect_'+ guestId).val();
//      var selectName = $('#insuranceName_'+ guestId).html();	
     	var totalPrice = 0;
      	var koreanWon = "KRW";   	

    	//취소하면 가격 줄어들기
	    for(var i = 0 ; i<$("input[name='chkInscPax']").length;i++){ 	
	 
	    	if($("input[name='chkInscPax']:checked")){
	    		if(i == 0){
			    	if($('#planSelect_'+ i).val() == "lowEndInsurance"){				
		 				insurancePrice = 33710;
		 			}else if($('#planSelect_'+ i).val() == "MiddleEndInsurance"){				
		 				insurancePrice = 51710;
		 			}else if($('#planSelect_'+ i).val() == "HighEndInsurance"){
		 				insurancePrice = 70240;	
		 			}else{
		 				insurancePrice = 0;
		 			}
			    	$("#active > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val(insurancePrice);
			    	insurancePrice = parseInt($("#active > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val());
		 			totalPrice += insurancePrice;	
		    		}else{
					  if($('#planSelect_'+ i).val() == "lowEndInsurance"){				
			 				insurancePrice = 33710;
			 				
			 			}else if($('#planSelect_'+ i).val() == "MiddleEndInsurance"){				
			 				insurancePrice = 51710;
			 			}else if($('#planSelect_'+ i).val() == "HighEndInsurance"){
			 				insurancePrice = 70240;	
			 			}else{
			 				insurancePrice = 0;
			 			}
						$("#next" + i + " > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val(insurancePrice);
						insurancePrice = parseInt($("#next" + i + " > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val());
			 			totalPrice += insurancePrice;
		    		}
			 			
 	    		}	
	    	}
    		
 			cookiesSet();
			$("#totalInsureAmount").html(totalPrice+koreanWon);
			sumPrice();
     });
     
    </script>
	<!-- insurance(보험) 자바 스크립트단 end-->	
	        <div class="gray_input_box sum mb20">
	            <div class="sum_lft"><strong class="red" id="joinInscCnt">0</strong>명 가입</div>
	            <div class="sum_rig">납입보험료<strong class="red" id="totalInsureAmount"></strong></div>
	        </div>

        
            <ul class="ul_dot mb40">
	            <li>가입 연령에 따라 담보 및 가입금액의 변경 또는 제한이 있을 수 있습니다.</li>
	            <li>상단 가입금액은 “상해사망 및 후유장해” 기준의 금액입니다.</li>
	            <li><a target="_blank" href="https://ec.aceinsurance.co.kr/jsp/b2ctway/contractplan/ContractPlanSHanaCoverageList.jsp?policyStartDate=&amp;policyStartHour=00&amp;policyEndDate=&amp;policyEndHour=24&amp;groupId=701139TAIR&amp;productCode=OTA461" class="btn_txt red">가입연령에 따른 플랜구성 및 세부 보장내역을 확인</a> 하세요.</li>
        	</ul>
            <!-- <ul class="ul_dot mb40">
                <li>가입 연령에 따라 담보 및 가입금액의 변경 또는 제한이 있을 수 있습니다.</li>
                <li>아래 가입금액은 “상해사망 및 후유장해” 기준의 금액입니다.</li>
                <li><a target="_blank" href="https://ec.aceinsurance.co.kr/jsp/b2ctway/contractplan/ContractPlanSHanaCoverageList.jsp?policyStartDate=&policyStartHour=00&policyEndDate=&policyEndHour=24&groupId=701139TAIR&productCode=OTA461" class="btn_txt red">가입연령에 따른 플랜구성 및 세부 보장내역을 확인</a> 하세요.</li>
            </ul> -->
        
	        <div id="termsArea" name="termsArea" style="display: none;">
	            <div class="bx_type1 terms">
	                <div class="txt_agree">
	                    <ul class="ul_dash">
	                        <li>본인은 본 보험계약의 피보험자로 되는 것에 동의하며, 만일 본인이 타 여행객을 대신하여 보험 가입절차를 이행하는 경우 본인은 여행계약 체결에 대하여 타 여행객으로부터 적법하게 대리권을 수여받았음을 확인합니다.</li>
	                        <li>만약 대리권이 존재하지 않는 경우, 그 범위 내에서 단체보험계약이 일부 무효로 되거나 보험사고시 보험금 지급이 거절될 수 있다는 점을 충분히 이해하였습니다.</li>
	                    </ul>
	                    <!-- <ul class="ul_dash">
	                        <li>본인은 본 보험계약의 피보험자로 되는 것에 동의하며, 만일 본인이 타 여행객을 대신하여 보험 가입절차를 이행하는 경우 본인은 여행계약 체결에 대하여 타 여행객으로부터 적법하게 대리권을 수여받았음을 확인합니다.</li>
	                        <li>만약 대리권이 존재하지 않는 경우, 그 범위 내에서 단체보험계약이 일부 무효로 되거나 보험사고시 보험금 지급이 거절될 수 있다는 점을 충분히 이해하였습니다.</li>
	                    </ul> -->
	                </div>
	                <div>
	                    <input id="agreeInscInfo" name="agreeInscInfo" type="checkbox">
	                    <label class="mr15" for="agreeInscInfo"><span class="icon"></span>동의함</label>
	                </div>
	            </div>
	            <div class="bx_type1 terms">
	                <div class="txt_agree">
	                    가입전  보험계약 중요 안내 사항을 확인하였습니다. <button class="sbtn_cont" date-id="lyr_insurance_guide" date-type="layer" onclick="showInsuranceGuide();" type="button">보험계약 중요 안내 사항</button>
	                </div>
	                <div>
	                    <input id="agreeInscGuide" name="agreeInscGuide" type="checkbox">
	                    <label class="mr15" for="agreeInscGuide"><span class="icon"></span>동의함</label>
	                </div>
	            </div>
	            <div class="bx_type1 terms mb40">
	                <!-- 여행보험 가입규약 동의 체크 여부 -->
	                <input id="agreeInscRule" name="agreeInscRule" type="hidden" value="false">
	                <!-- 개인정보 제3자 제공 동의 체크 여부 -->
	                <input id="agreeInscPrivacy" name="agreeInscPrivacy" type="hidden" value="false">
	                <div class="txt_agree">
	                    여행보험 가입규약 및 개인정보 제3자 제공 동의를 확인하였습니다. <button class="sbtn_cont" date-id="lyr_insurance_agree" date-type="layer" onclick="showInsurancePrivacy();" type="button">가입 규약 및 제3자 제공 동의</button>
	                </div>
	                <div>
	                    <input id="agreeInscRuleAndPrivacy" name="agreeInscRuleAndPrivacy" type="checkbox">
	                    <label class="mr15" for="agreeInscRuleAndPrivacy"><span class="icon"></span>동의함</label>
	                </div>
	            </div>
	
	            <!-- 알아두세요 -->
	            <div class="notice_box">
	                <strong>알아두세요</strong>
	                <ul class="ul_dot">
	                    <li>정확한 피보험자 정보인 경우에만 보험계약 조회 및 보험금 청구가 가능합니다. (단, 영문성명은 무관합니다.)</li>
	                    <li>본 계약은 보험계약자를 티웨이항공으로, 피보험자 및 보험수익자를 티웨이항공 여객 탑승객 또는  온라인 회원으로 하는 단체(취급) 여행보험 계약으로 <span class="red">티웨이항공 여객 탑승객 또는 온라인 회원만 피보험자로 가입 가능합니다.</span><br>티웨이항공 탑승객 또는 온라인 회원이 아닌 경우 가입이 불가합니다.</li>
	                    <li>기존 보험계약을 해지하고 새로운 보험계약을 체결하는 경우 보험인수가 거절되거나 보험료가 인상될 수 있으며, 보장내용 (면책기간 재적용 등)이 달라질 수 있습니다.</li>
	                    <li>계약체결 전 약관 및 상품설명서를 반드시 참고하여 주시기 바랍니다.</li>
	                    <li>이 보험계약은 예금자보호법에 따라 예금보험공사가 보호하되, 보호 한도는 본 보험회사에 있는 귀하의 모든 예금보호 대상 금융상품의 해약환급금(또는 만기 시 보험금이나 사고보험금)에 기타지급금을 합하여 1인당 “최고 5천만원”이며, 5천만원을 초과하는 나머지 금액은 보호하지 않습니다.<br> 다만, 보험계약자 및 보험료 납부자가 법인인 보험계약은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.  다만,보험계약자 및 보험료 납부자가 법인인 보험계약은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.</li>
	                    <li>지급한도, 면책사항 등에 따라 보험금 지급이 제한될 수 있습니다.</li>
	                    <li>해외여행 중 배상책임, 해외여행 중 휴대품손해, 해외여행 실손의료비 특별약관의 경우 보험금을 지급할 다수계약이 체결되어 있는 경우에는 약관에 따라 실손 비례 보상합니다.</li>
	                    <li>상해담보의 경우 암벽등반, 스카이다이빙 등 직업, 직무, 동호회 활동 중 발생한 사고는 보상하지 않습니다.</li>
	                </ul>
	            </div>
	            <!-- <div class="notice_box">
	                <strong>알아두세요</strong>
	                <ul class="ul_dot">
	                    <li>정확한 피보험자 정보인 경우에만 보험계약 조회 및 보험금 청구가 가능합니다. (단, 영문성명은 무관합니다.)</li>
	                    <li>본 계약은 보험계약자를 티웨이항공으로, 피보험자 및 보험수익자를 티웨이항공 여객 탑승객 또는  온라인 회원으로 하는 단체(취급) 여행보험 계약으로 <span class="red">티웨이항공 여객 탑승객 또는 온라인 회원만 피보험자로 가입 가능합니다.</span><br>티웨이항공 탑승객 또는 온라인 회원이 아닌 경우 가입이 불가합니다.</li>
	                    <li>기존 보험계약을 해지하고 새로운 보험계약을 체결하는 경우 보험인수가 거절되거나 보험료가 인상될 수 있으며, 보장내용 (면책기간 재적용 등)이 달라질 수 있습니다.</li>
	                    <li>계약체결 전 약관 및 상품설명서를 반드시 참고하여 주시기 바랍니다.</li>
	                    <li>이 보험계약은 예금자보호법에 따라 예금보험공사가 보호하되, 보호한도는 본 보험회사에 있는 귀하의 모든 예금 보호대상 금융상품의 해지 환급금(또는 만기시 보험금이나 사고보험금에 기타지급금을 합하여 1인당 최고 5천만원이며, 5천만원을 초과하는 나머지 금액은 보호하지 않습니다. <br>다만,보험계약자 및 보험료 납부자가 법인인 보험계약은 예금자보호법에 따라 예금보험공사가 보호하지 않습니다.</li>
	                    <li>지급한도, 면책사항 등에 따라 보험금 지급이 제한될 수 있습니다.</li>
	                </ul>
	            </div> -->
	            <!--// 알아두세요 -->
	        </div>
		</div>
    </div>	
	<!-- insurance 끝 -->
	</section>
		
	<div class="summary_wrap">
	    <div class="summary_top">
	        <div class="summary_top_cont">
	            <!-- 가격 -->
	            <div class="price_wrap" id="summaryTopPrice">
	                <span class="total">항공운임 등 총액</span>
	                
	                <span class="unit summary_currency">KRW</span>
	                <span class="price" id="summary_title_amount">
	                	<input class="totalCost" value="${totalPrice}" style="border-style: none; font-size: 30px; font-weight: bold; color: #d22c26;">
	                </span>
	                
	            </div>
	            <!-- 가격 -->
	            <!-- 버튼 -->
	            <div class="float--right font0" id="buttonSet">
	                <!-- booking_rule page -->
	                
	                <!-- // booking_rule page -->
	                <!-- booking_ssr page -->
	                
                    <button class="btn_large gray buttonControl" id="nextStep" type="button">다음 부가서비스</button>
                    <button class="btn_large gray buttonControl" id="undoStep" type="button">이전 부가서비스</button>
                    <button class="btn_large red buttonControl next" id="checkIn">다음 단계</button>
	            </div>
	        </div>
	    </div>
	                    
	</div>
		
		
		
	<script>
		
		// 맨위로 이동
		function goTop(){
		    $('html').scrollTop(0);
		    // scrollTop 메서드에 0 을 넣어서 실행하면 끝 !!
		    // 간혹 이 소스가 동작하지 않는다면
		    // $('html, body') 로 해보세요~
		}
		
		
		let slideCount = 0; // 사용자 슬라이드 전환용
		
		// 사용자 슬라이드 이전 버튼 클릭시
		$(".user_slide_prev").on("click", function() {
			if(slideCount >	 0){ // 0보다 클때만 빼주기
				slideCount--;
			}
			userSlidePrevPage();
		});
		
		// 사용자 슬라이드 다음 버튼 클릭시 
		$(".user_slide_next").on("click", function() {
			if(slideCount <	7){ // 사용자 수 보다 작을때만 더해주기
				slideCount++;
			}
			userSlideNextPage();
		});
		
		let userChange = 480; // 사용자 박스영역 클릭시 슬라이드 전환용
		
		$(function () {
			// 사용자 박스 클릭시 (사용자 수만큼 for문 돌리기)
			for(let i = 0; i < 8; i++){
				if(i == 0){
					// 첫번째 사용자 박스 클릭시
					$("#active > .sel_passenger_box").on("click", function () {
						cookiesSet();
						slideCount = 0;
						$("#active").attr('class','swiper-slide swiper-slide-active');
						// 사용자 수만큼 for문 돌리기
						for(let j = 1; j < 8; j++){
							$("#next" + j).attr('class','swiper-slide swiper-slide-next' + j);
						}

						seatActiveVal = $("#active > .sel_passenger_box > .add_service > .add_service > .seatNo").text().replace("   삭제","");
						$("input[name='seat'][value='" + seatActiveVal + "']").prop('checked', true);
						
						weightActiveVal  = $("#active > .sel_passenger_box > .add_service > .add_service > .weight-select").text().replace("kg   삭제","")
						weightActiveVal = weightActiveVal.slice(3,weightActiveVal.length);
						
						if(weightActiveVal == "15"){
							weightActiveVal = "CB1";
						}else if(weightActiveVal == "20"){
							weightActiveVal = "CB2";
						}else if(weightActiveVal == "25"){
							weightActiveVal = "CB3";
						}else if(weightActiveVal == "30"){
							weightActiveVal = "CB4";
						}else if(weightActiveVal == "35"){
							weightActiveVal = "CB5";
						}
						$("input[name='weight-select'][value='" + weightActiveVal + "']").prop('checked', true);
						
						
						mealActiveVal = $("#active > .sel_passenger_box > .add_service > .add_service > .meal").text().replace("   삭제","");
						$("input[class='meal_value'][value='" + mealActiveVal + "']").prop('checked', true);
						
						seatActiveVal = "";
						weightActiveVal = "";
						mealActiveVal = "";
						
						$(".userSlide").attr("style","transition-duration: 0ms; transform: translate3d(480px, 0px, 0px);");
					});
				}else{
					$("#next" + i + " > .sel_passenger_box").on("click", function () {
						cookiesSet();
						slideCount = i;
						userSlide();
					});
				}
			}
		});

		// 사용자 슬라이드 이전 버튼 클릭시 화면전환 메소드
		function userSlidePrevPage() {
			cookiesSet();
			userSlide();
		}
		
		// 사용자 슬라이드 다음 버튼 클릭시 화면전환 메소드
		function userSlideNextPage() {
			cookiesSet();
			userSlide();
		}
		
		// 사용자별 좌석 체크에 사용할 용도
		let seatActiveVal = "";
		let seatNextVal = "";
		// 사용자별 위탁수하물 체크에 사용할 용도
		let weightActiveVal = "";
		let weightNextVal = "";
		// 사용자별 기내식 체크에 사용할 용도
		let mealActiveVal = "";
		let mealNextVal = "";
		
		// 사용자 박스 슬라이드
		function userSlide() {
			$("input[name='seat']").prop('checked', false);
			$("input[name='weight-select']").prop('checked', false);
			$("input[class='meal_value']").prop('checked', false);
			
			
			$("#active").attr('class','swiper-slide');
			// 사용자 수만큼 for문 돌리기
			for(let i = 1; i < 8; i++){
				if(slideCount == 0){
					$("#active").attr('class','swiper-slide swiper-slide-active');
					for(let j = 1; j < 7; j++){
						$("#next" + j).attr('class','swiper-slide swiper-slide-next' + j);
					}
					
					weightActiveVal  = $("#active > .sel_passenger_box > .add_service > .add_service > .weight-select").text().replace("kg   삭제","")
					weightActiveVal = weightActiveVal.slice(3,weightActiveVal.length);

					if(weightActiveVal == "15"){
						weightActiveVal = "CB1";
					}else if(weightActiveVal == "20"){
						weightActiveVal = "CB2";
					}else if(weightActiveVal == "25"){
						weightActiveVal = "CB3";
					}else if(weightActiveVal == "30"){
						weightActiveVal = "CB4";
					}else if(weightActiveVal == "35"){
						weightActiveVal = "CB5";
					}
					$("input[name='weight-select'][value='" + weightActiveVal + "']").prop('checked', true);
					
					mealActiveVal = $("#active > .sel_passenger_box > .add_service > .add_service > .meal").text().replace("   삭제","");
					$("input[class='meal_value'][value='" + mealActiveVal + "']").prop('checked', true);
					
					seatActiveVal = "";
					weightActiveVal = "";
					mealActiveVal = "";
					
				}else if(slideCount == i){
					$("#next" + i).attr('class','swiper-slide swiper-slide-active');
					
					seatNextVal = $("#next" + i + " > .sel_passenger_box > .add_service > .add_service > .seatNo").text().replace("   삭제","");
					$("input[name='seat'][value='" + seatNextVal + "']").prop('checked', true);
					
					weightNextVal = $("#next" + i + " > .sel_passenger_box > .add_service > .add_service > .weight-select").text().replace("kg   삭제","")
					weightNextVal = weightNextVal.slice(3,weightNextVal.length);

					if(weightNextVal == "15"){
						weightNextVal = "CB1";
					}else if(weightNextVal == "20"){
						weightNextVal = "CB2";
					}else if(weightNextVal == "25"){
						weightNextVal = "CB3";
					}else if(weightNextVal == "30"){
						weightNextVal = "CB4";
					}else if(weightNextVal == "35"){
						weightNextVal = "CB5";
					}
					$("input[name='weight-select'][value='" + weightNextVal + "']").prop('checked', true);

					mealNextVal = $("#next" + i + " > .sel_passenger_box > .add_service > .add_service > .meal").text().replace("   삭제","");
					$("input[class='meal_value'][value='" + mealNextVal + "']").prop('checked', true);
					
					seatNextVal = "";
					weightNextVal = "";
					mealNextVal = "";
					
				}else{
					$("#next" + i).attr('class','swiper-slide swiper-slide-next' + i);
				}
			}
			$(".userSlide").attr("style","transition-duration: 0ms; transform: translate3d("+ (userChange-(slideCount*200)) +"px, 0px, 0px);");
		}
		
		let tapCount = 0; // 부가서비스 카테고리 탭 이용하기위해 선언
		let seatUndo = 0; // 중복 좌석 알림창 띄우는 용도
		let seatArr = []; // 좌석 번호를 전부 담아둘 용도
		let seatCheck =""; // 좌석 번호 텍스트 담는 용도
		let seatChk = ""; // 좌석 번호만 가져오는 용도
		
		// 좌석 중복 처리할 메소드
		function seatDuplication() {
			seatUndo = 0;
			seatArr = [];
			
			for(let i = 0; i < 8; i++){
				if(i == 0){
					seatArr[i] = $("#active > .sel_passenger_box > .add_service > .add_service > .seatNo").text().replace("   삭제","");
				}else{
					seatCheck = $("#next"+ i + " > .sel_passenger_box > .add_service > .add_service > .seatNo").text();
					seatChk = seatCheck.replace("   삭제","");
					seatArr[i] = seatChk;
				}
				
				for(let j = 0; j < 8; j++){
					if(i != j && seatArr[i] == seatArr[j] && seatArr[i] != "" && seatArr[j] != ""){
						seatUndo++; 
					}
				}
			}
		}
		
		
		// 다음 부가서비스 단계 버튼 클릭시 tapCount++
		$("#nextStep").on("click", function() {
			seatDuplication();
			if(seatUndo > 0){
				alert("중복된 좌석을 선택하셨습니다. 다시 선택해주세요.");
			}else{
				tapCount++;
				serviceTapChange();
			}
		});
		
		// 이전 부가서비스 단계 버튼 클릭시 tapCount--
		$("#undoStep").on("click", function() {
			tapCount--;
			serviceTapChange();
		});
		
		// tapCount가 0일때 좌석페이지, 1일때 위탁수하물페이지, 2일때 기내식페이지, 그외 여행보험페이지
		function serviceTapChange() {
			if(tapCount == 0){ // 사전좌석 페이지 보여주기
				$(function() {
					modalSeat();
				});
			}else if(tapCount == 1){ // 위탁수하물 페이지 보여주기
				$(function() {
					modalBaggage();
				});
			}else if(tapCount == 2){ // 기내식 페이지 보여주기
				$(function() {
					modalMeal();
				});
			}else{ // 여행보험 페이지 보여주기
				$(function() {
					modalInsurance();
				});
			}
		}
		
		//처음 시작시 (좌석 선택화면 보여주기)
		 $(function(){
			tapCount = 0;

			// 좌석 ui만 보여주기
		 	$(".seatCheckIn").css("display","block");
		 	$(".baggageCheckIn").css("display","none");
		 	$(".mealCheckIn").css("display","none");
		 	$(".insuranceCheckIn").css("display","none");
		 	
		 	// 카테고리 탭 좌석
		 	$('#tab_ancillary_seat').attr('class','on');
		 	$('#tab_ancillary_baggage').removeClass('on');
		 	$('#tab_ancillary_meal').removeClass('on');
		 	$('#tab_ancillary_insurance').removeClass('on');
		 	
		 	// 사용자 슬라이더 활성화
			$(".sel_passenger_wrap").show();
		 	// 다음 부가서비스 단계 버튼 활성화
		 	$("#nextStep").show();
		 	// 이전 부가서비스 단계 버튼 숨기기
		 	$("#undoStep").hide();
		 });
		 
		 //좌석 클릭시 (좌석 선택화면 보여주기)
		 function modalSeat(){
			tapCount = 0;
			
			// 카테고리 탭 좌석
		 	$('#tab_ancillary_seat').attr('class','on');
		 	$('#tab_ancillary_baggage').removeClass('on');
		 	$('#tab_ancillary_meal').removeClass('on');
		 	$('#tab_ancillary_insurance').removeClass('on');
		 	
		 	// 선택한 좌석번호만 슬라이더에 뿌려주기
		 	$(".seatNo").css("display","block");
		 	$(".weight-select").css("display","none");
		 	$(".meal").css("display","none");
		 	$(".insurance").css("display","none");
		 	
		 	// 좌석 ui만 보여주기
		 	$(".seatCheckIn").css("display","block");
		 	$(".baggageCheckIn").css("display","none");
		 	$(".mealCheckIn").css("display","none");
		 	$(".insuranceCheckIn").css("display","none");
		 	
		 	// 사용자 슬라이더 활성화
			$(".sel_passenger_wrap").show();
		 	// 다음 부가서비스 단계 버튼 활성화
		 	$("#nextStep").show();
		 	// 이전 부가서비스 단계 버튼 숨기기
		 	$("#undoStep").hide();
		 }
		 
		 //수하물 클릭시	(위탁수하물 무게 선택화면 보여주기)
		 function modalBaggage(){
			seatDuplication();
			if(seatUndo > 0){
				alert("중복된 좌석을 선택하셨습니다. 다시 선택해주세요.");
			}else{
				tapCount = 1;
				
				// 카테고리 탭 수하물
			 	$('#tab_ancillary_baggage').attr('class','on');
			 	$('#tab_ancillary_seat').removeClass('on');
			 	$('#tab_ancillary_meal').removeClass('on');
			 	$('#tab_ancillary_insurance').removeClass('on');
			 	
			 	// 선택한 수하물 무게만 슬라이더에 뿌려주기
			 	$(".seatNo").css("display","none");
			 	$(".weight-select").css("display","block");
			 	$(".meal").css("display","none");
			 	$(".insurance").css("display","none");
			 	
			 	// 수하물 ui만 보여주기
			 	$(".seatCheckIn").css("display","none");
			 	$(".baggageCheckIn").css("display","block");
			 	$(".mealCheckIn").css("display","none");
			 	$(".insuranceCheckIn").css("display","none");

				// 사용자 슬라이더 활성화
				$(".sel_passenger_wrap").show();
			 	// 다음 부가서비스 단계 버튼 활성화
			 	$("#nextStep").show();
			 	// 이전 부가서비스 단계 버튼 활성화
			 	$("#undoStep").show();
			}
			
		 }
		 	
		//기내식 클릭시 (기내식 선택화면 보여주기)
		function modalMeal(){
			seatDuplication();
			if(seatUndo > 0){
				alert("중복된 좌석을 선택하셨습니다. 다시 선택해주세요.");
			}else{
				tapCount = 2;
				
				// 카테고리 탭 기내식
				$('#tab_ancillary_meal').attr('class','on');
				$('#tab_ancillary_seat').removeClass('on');
				$('#tab_ancillary_baggage').removeClass('on');
				$('#tab_ancillary_insurance').removeClass('on');
				
				// 선택한 기내식만 슬라이더에 뿌려주기
				$(".seatNo").css("display","none");
				$(".weight-select").css("display","none");
				$(".meal").css("display","block");
				$(".insurance").css("display","none");
				
				// 기내식 ui만 보여주기
				$(".seatCheckIn").css("display","none");
				$(".baggageCheckIn").css("display","none");
				$(".mealCheckIn").css("display","block");
				$(".insuranceCheckIn").css("display","none");
				
				// 사용자 슬라이더 활성화
				$(".sel_passenger_wrap").show();
				// 다음 부가서비스 단계 버튼 활성화
				$("#nextStep").show();
				// 이전 부가서비스 단계 버튼 활성화
				$("#undoStep").show();
			}
			
		}
			
		//여행보험 클릭시	 (여행보험 선택화면 보여주기)
		function modalInsurance(){
			seatDuplication();
			if(seatUndo > 0){
				alert("중복된 좌석을 선택하셨습니다. 다시 선택해주세요.");
			}else{
				tapCount = 3;
				
				// 카테고리 탭 여행보험
				$('#tab_ancillary_insurance').attr('class','on');
				$('#tab_ancillary_seat').removeClass('on');
				$('#tab_ancillary_baggage').removeClass('on');
				$('#tab_ancillary_meal').removeClass('on');
				
				// 선택한 여행보험만 슬라이더에 뿌려주기
				$(".seatNo").css("display","none");
				$(".weight-select").css("display","none");
				$(".meal").css("display","none");
				$(".insurance").css("display","block");
				
				// 여행보험 ui만 보여주기
				$(".seatCheckIn").css("display","none");
				$(".baggageCheckIn").css("display","none");
				$(".mealCheckIn").css("display","none");
				$(".insuranceCheckIn").css("display","block");
				
				
				// 사용자 슬라이더 숨기기
				$(".sel_passenger_wrap").hide();
				// 다음 부가서비스 단계 버튼 숨기기
				$("#nextStep").hide();
				// 이전 부가서비스 단계 버튼 활성화
				$("#undoStep").show();
			}
			
		}
		
		let seatStr = ""; // 슬라이더에 뿌려줄 좌석 값
		let weightStr = ""; // 슬라이더에 뿌려줄 위탁수하물 값
		let mealStr = ""; // 슬라이더에 뿌려줄 기내식 값
		
		// 체크 해놓은 값들은 담겨있으니 선택받은 값들을 
		// '다음 단계' 버튼 클릭시 한번에 넘기는 방식으로 진행하기 (다음 페이지로 이동)
		// '다음 부가서비스' 버튼 클릭시 화면전환만 해주기
		
		let seatPrice = 0; // 좌석가격 담아놓을 용도
		let baggagePrice = 0; // 위탁수하물 가격 담아놓을 용도
		let mealPrice = 0;
		let personInsurancePrice = 0;
		let ServiceTotalPrice = 0; // 가격 총합
		let totalCost= 0; // 이전 페이지에서 넘어온 총 가격
		
		// 좌석 클릭시 화면(슬라이더)에 값 뿌려주기
		$("input[name=seat]").on("click",function(){
			seatStr = $("input[name=seat]:checked").val() + '&nbsp;&nbsp; <a class="btn_del1" href="#none" onclick="cancelSeat();">삭제</a><br>';
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_service > .seatNo").html(seatStr);
			
			//  좌석가격 뿌려주기
			$.ajax({
				url : "booking3_seatPrice.re",
				data : {
					caScheduleNo : 1,
					caSeatPrice : $("input[name=seat]:checked").next().next().attr('value')
				},
				success:function(selectSeatPrice){
					console.log("좌석 가격 불러오기 성공");
					seatPrice = selectSeatPrice;
					
					$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .seatPrice").val(seatPrice);
					sumPrice();
				},
				error : function() {
					console.log("좌석 가격 불러오기 실패");
				}
			});
		});
		
		// 위탁수하물 무게 클릭시 화면(슬라이더)에 값 뿌려주기
		$("input[name=weight-select]").on("click",function(){
			weightStr = $("input[name=weight-select]:checked + label").text().trim();
			weightStr = weightStr.slice(0,7).trim();
			weightStr = weightStr + '&nbsp;&nbsp; <a class="btn_del2" href="#none" onclick="cancelWeight();">삭제</a><br>';
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_service > .weight-select").html(weightStr);
			
			// 위탁수하물 가격 뿌려주기
			$.ajax({
				url : "booking3_baggagePrice.re",
				data : {
					caCbPrice : $("input[name=weight-select]:checked").val()
				},
				success:function(selectBaggagePrice){
					console.log("수하물 가격 불러오기 성공");
					baggagePrice = selectBaggagePrice;
					
					$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .baggagePrice").val(baggagePrice);
					sumPrice();
				},
				error : function() {
					console.log("수하물 가격 불러오기 실패");
				}
			});
		});
		
		// 기내식 클릭시 화면(슬라이더)에 값 뿌려주기
		$("input[class=meal_value]").on("click",function(){
			mealStr = $("input[class=meal_value]:checked + label > p").text() + '&nbsp;&nbsp; <a class="btn_del3" href="#none" onclick="cancelMeal();">삭제</a><br>';
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_service > .meal").html(mealStr);
			// 기내식 가격 뿌려주기
			mealPrice = $(".meal_value + label > #mealPrice").val();

			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .mealPrice").val(mealPrice);
			
			sumPrice();
		});
		
		// 취소버튼 클릭시 라디오버튼 체크 해제, 화면에 값 뿌려준거 삭제하기, 가격 삭제하기
		function cancelSeat() {
			$("input[name=seat]:checked").prop("checked", false);
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_service > .seatNo").text("");
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .seatPrice").val(0);
			sumPrice();
		}
		
		function cancelWeight() {
			$("input[name=weight-select]:checked").prop("checked", false);
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_service > .weight-select").text("");
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .baggagePrice").val(0);
			sumPrice();
		}
		
		function cancelMeal() {
			$("input[class=meal_value]:checked").prop("checked", false);
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_service > .meal").text("");
			$(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .mealPrice").val(0);
			sumPrice();
		}
		
		// 다음 단계 버튼 클릭시 사용자로부터 입력받은 값 넘겨주기
		$("#checkIn").on("click",function(){
			seatDuplication();
			if(seatUndo > 0){
				alert("중복된 좌석을 선택하셨습니다. 다시 선택해주세요.");
			}else{
				cookiesSet();
				location.href = 'bookingPage4.re';
			}
		});
		
		let $seatCode = ""; // 좌석 번호 값
		let $weight = ""; // 위탁수하물 값
		let $meal = ""; // 기내식 값
		let $insurance = ""; // 여행보험 값
		let $firstName = ""; // 성
		let $lastName = ""; // 이름
		let diminish = ","; // 여행보험, 가격 구분지어주기 위한 용도
		let insurance1 = ""; // 여행보험 값 담을 용도
		let insurance2 = ""; // 여행보험 가격 값 담을 용도
		let firstName = ""; // 성 담을 용도
		let lastName = ""; // 이름 값 담을 용도
		
		function cookiesSet() {
			insurance1 = "";
			insurance2 = "";
			firstName = "";
			lastName = "";
			
			console.log("firstName1 : " + $(".swiper-slide-active > .sel_passenger_box > .name > .first").text());
			console.log("lastName1 : " + $(".swiper-slide-active > .sel_passenger_box > .name > .last").text());
			
			if($("input[name='chkInscPax']:checked").length != 0){
				for(let i=0; i<$("input[name='chkInscPax']:checked").length;i++){
					insurance1 = $("#planSelect_" + i).val();
					firstName = $(".firstName_" + i).text();
					lastName = $(".lastName_" + i).text();
	   				if(i == 0){
	   					insurance2 =  $("#active > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val();
	   				}else{
	   					insurance2 =  $("#next" + i + " > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val();
	   				}
	    		}
			}else{
				firstName = $(".swiper-slide-active > .sel_passenger_box > .name > .first").text();
				lastName = $(".swiper-slide-active > .sel_passenger_box > .name > .last").text();
			}
			
			console.log("firstName2 : " + firstName);
			console.log("lastName2 : " + lastName);
			
			$firstName = firstName;
			$lastName = lastName;
			$seatCode = $("input[name=seat]:checked").val();
			$seatPrice = $(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .seatPrice").val();
			$weight = $("input[name=weight-select]:checked").val();
			$weightPrice = $(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .baggagePrice").val();
			$meal = $("input[class=meal_value]:checked").val();
			$caFmPrice = $(".swiper-slide-active > .sel_passenger_box > .add_service > .add_price > .mealPrice").val();
			$caTi = insurance1;
			$caTiPrice = insurance2;
			
			$.ajax({
				url : "booking3.re",
				data : {
					caFirstName : $firstName,
					caLastName : $lastName,
					caSeatCode : $seatCode,
					caSeatPrice : $seatPrice,
					caCb : $weight,
					caCbPrice : $weightPrice,
					caFm : $meal,
					caFmPrice : $caFmPrice,
					caTi : $caTi,
					caTiPrice : $caTiPrice
					},
				success:function(){
					console.log("쿠키 담기 성공");
				},
				error : function() {
					console.log("쿠키 담기 실패");
				}
			});
		}
		
		
		// 총 가격 뿌려주기
		function sumPrice() {
				ServiceTotalPrice = 0;
				totalCost = $(".totalCost").val();
				
			for(let i = 0; i < <%=cookieAllList.length%>; i++){
				if(i == 0){
					seatPrice = parseInt($("#active > .sel_passenger_box > .add_service > .add_price > .seatPrice").val());
					baggagePrice = parseInt($("#active > .sel_passenger_box > .add_service > .add_price > .baggagePrice").val());
					mealPrice = parseInt($("#active > .sel_passenger_box > .add_service > .add_price > .mealPrice").val());
					personInsurancePrice = parseInt($("#active > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val());
					
					ServiceTotalPrice += parseInt(seatPrice + baggagePrice + mealPrice + personInsurancePrice);
				}else{
					seatPrice = parseInt($("#next" + i  + " > .sel_passenger_box > .add_service > .add_price > .seatPrice").val());
					baggagePrice = parseInt($("#next" + i  + " > .sel_passenger_box > .add_service > .add_price > .baggagePrice").val());
					mealPrice = parseInt($("#next" + i  + "> .sel_passenger_box > .add_service > .add_price > .mealPrice").val());
					personInsurancePrice = parseInt($("#next" + i  + " > .sel_passenger_box > .add_service > .add_price > .insurancePrice").val());

					ServiceTotalPrice += parseInt(seatPrice + baggagePrice + mealPrice + personInsurancePrice);
				}
			}
			
			ServiceTotalPrice += ServiceTotalPrice + parseInt(totalCost);
			$("#summary_title_amount > .totalCost").val(ServiceTotalPrice);
		}
		
	</script>
	
	

</body>
</html>