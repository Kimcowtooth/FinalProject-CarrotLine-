 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS 영역 -->
<link rel="stylesheet" href="resources/css/booking/bookingFirstPage.css">  
<link rel="stylesheet" href="resources/css/booking/chooseAirport.css">  
<link rel="stylesheet" href="resources/css/booking/bookingHeader.css">  
<link rel="stylesheet" type="text/css" href="resources/css/booking/bookingHeader.css">


<!-- 캘린더 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/booking/calStyle.css">


 <!--소이언니가 준 script-->
 <script src='https://kit.fontawesome.com/77ad8525ff.js' crossorigin="anonymous"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



<!--
    jQuery를 사용한 모든 웹페이지는 다음 코드로 시작합니다.
    $(document).ready()는 문서가 준비되면 매개변수로 넣은 콜백 함수를 실행하라는 의미입니다. -->

<script type="text/javascript">
 $(document).ready(function() {
 });
</script>

<style>
	.header .header_inner .top_logo {
	    width: 101px;
	    height: 43px;
	    background-image: url("resources/images/logo대충.png");	
	    text-indent: -9999px;
	    margin-top: 7px;
	    display: block;
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


<div id="wrap">
    <!--// begin content -->

<!-- Contnent -->
<div id="container">
    <div class="content" id="content">
        <!-- 컨텐츠 영역 -->

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
                    <br><br><br><br><br><br>
                </ul> 
            </div>
            
        </div>
        <!-- Title & Step -->

        <!-- 여정검색  -->



<!-- Input Booking -->
<div class="input_booking_wrap">
<!-- 예약 탭 -->
<div class="booking_option">
    <ul class="sel_section">
        <li class="on">
            <a href="#booking02">   <!-- 편도 a태그 누르면 html내부링크 설정인 id가 booking02인 곳으로 이동 -->
                <input aria-hidden="true" id="display_tripType_OW" name="tripTypeButton" tabindex="-1" type="radio" value="OW">
                <label for="display_tripType_OW">편도</label>
            </a>
        </li>
        <li>
            <a href="#booking01">    <!-- 왕복 a태그 누르면 html내부링크 설정인 id가 booking01인 곳으로 이동-->
                <input aria-hidden="true" id="display_tripType_RT" name="tripTypeButton" tabindex="-1" type="radio" value="RT">
                <label for="display_tripType_RT">왕복</label>
            </a>
        </li>
    </ul>
    
</div>
<!--// 예약 탭 -->
<!-- 왕복 -->
<div class="tab_cont fixed schedule_box" id="booking01" tabindex="0" style="display: none;">
    <div class="booking_input">
        <ul class="booking_form">
            <li>
                <div class="sel_route">
                    <div class="input_wrap start">
                        <label>출발지</label>
                        <input id="rt_start" class="booking start focus_start1" title="출발지 입력" type="text" placeholder="도시/공항" value="">
                        <a class="btn_pin focus_start2" href="#none" title="출발지 선택 레이어 열림">출발지 선택</a>

                    </div>
                    <!-- 공항 선택 div 들어갈 자리 -->
                    <div id="route_departure_rt" class="commonComponentLayer" data-timestamp="1671066730313" tabindex="0" style="position: absolute; top: 90px; left: 48px; display: none;">

					<div id="start2" class="layer_start2 second_start2 main_selec_start">
							<div class="sel_area_list fix scroll mCustomScrollbar _mCS_3 mCS_no_scrollbar">
							<div id="mCSB_3" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
							<div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
								<ul>
										<li data-conticode="SKR" class="contiList contiList_SKR">
											<a class="sel_area" href="#none" >대한민국</a>
										</li>
									
										<li data-conticode="JAP" class="contiList contiList_JAP">
											<a class="sel_area" href="#none" >일본</a>
										</li>
									
										<li data-conticode="NEA" class="contiList contiList_NEA">
											<a class="sel_area" href="#none" >동북아시아</a>
										</li>
									
										<li data-conticode="SEA" class="contiList contiList_SEA">
											<a class="sel_area" href="#none" >동남아시아</a>
										</li>
								</ul>
				
							</div>
<!-- 							<div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;"> -->
<!-- 								<div class="mCSB_draggerContainer"> -->
<!-- 									<div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;"> -->
<!-- 										<div class="mCSB_dragger_bar" style="line-height: 30px;"></div> -->
<!-- 									</div> -->
<!-- 									<div class="mCSB_draggerRail"></div> -->
<!-- 								</div> -->
<!-- 							</div>  -->
						</div>
					</div>
							
							<!--// 지역선택 -->
				
							
							<!-- 취항지 -->
							<div class="sel_route_list type2 scroll mCustomScrollbar _mCS_4 mCS_no_scrollbar">
							<div id="mCSB_4" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
								<div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
				
									<div class="airportList_Dep scroll" style="display: block;">
										<ul>
											
										</ul>
									</div>
								</div>
							</div>
							</div>
							<!--/ 취향지 -->
					<div><button id="close_btn" class="close_airport_btn">닫기</button></div>	
					</div>
					</div>
				
	
                    <!-- //공항 선택 div 들어갈 자리 -->
                   
			
                    <a class="btn_change" href="#none">출발지/도착지 바꾸기</a>
                    
                    <div class="input_wrap end">
                        <label>도착지</label>
                        <input id="rt_finish" class="booking end focus_end1" title="도착지 선택" type="text" placeholder="도시/공항" value="">
                        <a class="btn_pin end focus_end2" href="#none">도착지 선택</a>
                       
                    </div>
                    <!-- 공항 선택 div 들어갈 자리 -->
                    <div id="route_arrival_rt" class="commonComponentLayer" data-timestamp="1672144106694" tabindex="0" style="position: absolute; top: 90px; left: 48px; display: none;">
						<div id="start2" class="layer_start2 main_selec_start if437">
								<!-- 지역선택 -->
								<div class="sel_area_list type2 scroll mCustomScrollbar _mCS_5 mCS_no_scrollbar">
								<div id="mCSB_5" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
								<div id="mCSB_5_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
									<ul>
					                        <li data-conticode="SKR" class="contiList contiList_SKR">
					                            <a class="sel_area" href="#none">대한민국</a>
					                        </li>
					
					                        <li data-conticode="JAP" class="contiList contiList_JAP">
												<a class="sel_area" href="#none">일본</a>
											</li>
										
											<li data-conticode="NEA" class="contiList contiList_NEA">
												<a class="sel_area" href="#none">동북아시아</a>
											</li>
										
											<li data-conticode="SEA" class="contiList contiList_SEA">
												<a class="sel_area" href="#none">동남아시아</a>
											</li>					
					
									</ul>
								</div>
								
								</div>
								</div>
								<!--// 지역선택 -->
					
					
								<!-- 취향지 -->
								<div class="sel_route_list type2 scroll mCustomScrollbar _mCS_6 mCS_no_scrollbar">
								<div id="mCSB_6" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
									<div id="mCSB_6_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
											<div class="airportList_Arr scroll" style="display: block;">
												<ul>
												</ul>
											</div>
									</div>
						        </div>
						        </div>
								<!--// 취향지 -->
						<div><button id="close_btn" class="close_airport_btn">닫기</button></div>			
					</div>
                    <!-- //공항 선택 div 들어갈 자리 -->
                </div>
            </li>
            <li>
                <div class="input_wrap date rt">
                    <label>탑승일</label>
                    <input class="booking date focus_date1" id="lostFlightDate1_1" placeholder="YYYY-MM-DD" readonly="readonly" title="출발일 선택" type="text" value="">
                    <span class="space">~</span>
                    <input class="booking date focus_date2" id="lostFlightDate1_2" placeholder="YYYY-MM-DD" readonly="readonly" title="도착일 선택" type="text" value="">
                    <a class="btn_date focus_date3" href="#none">날짜선택</a>
                </div>
            </li>
        </ul>
    </div>
<!--     <div id="calOpen" style="display:none;"> -->
<!--         <section class="ftco-section"> -->
<!-- 		<div class="calContainer" > -->
<!-- 			<div class="calRow justify-content-center"> -->
<!-- 				<div class="col-md-6 text-center mb-5"> -->
<!-- 					<h2 class="heading-section">예매 일정 선택</h2> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="calRow"> -->
<!-- 				<div class="col-md-12"> -->
<!-- 					<div class="calendar-section"> -->
<!-- 		        <div class="calRow no-gutters"> -->
<!-- 		          <div class="col-md-6"> -->
<!-- ​ -->
<!-- 					달력 2개 중 첫번째 달력 -->
<!-- 		            <div class="calendar calendar-first no-gutters" id="calendar_first">	cal1 -->
<!-- 		              <div class="calendar_header">	calHeader1 -->
<!-- 		                <button class="switch-month switch-left"> -->
<!-- 		                  <i class="fa fa-chevron-left"></i> -->
<!-- 		                </button> -->
<!-- 		                <h2></h2> -->
<!-- 		                <button class="switch-month switch-right"> -->
<!-- 		                  <i class="fa fa-chevron-right"></i> -->
<!-- 		                </button> -->
<!-- 		              </div> -->
<!-- 		              <div class="calendar_weekdays"></div>	weekline1 -->
<!-- 		              <div class="calendar_content"></div>	datesBody1 -->
<!-- 		            </div> -->
<!-- ​ -->
<!-- 		          </div> -->
<!-- 		          <div class="col-md-6"> -->
<!-- 					달력 2개 중 두번째 달력	 -->
<!-- 		            <div class="calendar calendar-second no-gutters" id="calendar_second">	cal2 -->
<!-- 		              <div class="calendar_header">	calHeader2 -->
<!-- 		                <button class="switch-month switch-left"> -->
<!-- 		                  <i class="fa fa-chevron-left"></i> -->
<!-- 		                </button> -->
<!-- 		                <h2></h2> -->
<!-- 		                <button class="switch-month switch-right"> -->
<!-- 		                  <i class="fa fa-chevron-right"></i> -->
<!-- 		                </button> -->
<!-- 		              </div> -->
<!-- 		              <div class="calendar_weekdays"></div>	weekline2 -->
<!-- 		              <div class="calendar_content"></div>	datesBody2 -->
<!-- 		            </div>             -->
<!-- ​ -->
<!-- 		          </div> -->
<!-- ​ -->
<!-- 		        </div> End Row -->
		            
<!-- 		      </div> End Calendar -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->
<!-- </div> -->
</div>
<!-- 왕복 -->
<!-- 편도 -->
<div class="tab_cont fixed schedule_box" id="booking02" tabindex="-1" style="display: block;">
    <div class="booking_input">
        <ul class="booking_form">
            <li>
                <div class="sel_route">
                    <div class="input_wrap start">
                        <label>출발지</label>
                        <input id="ow_start" class="booking start focus_start1" title="출발지 입력" type="text" value="" placeholder="도시/공항">
                        <a class="btn_pin focus_start2" href="#none" title="출발지 선택 레이어 열림">출발지 선택</a>
                    </div>
                    <!-- 공항 선택 div 들어갈 자리 -->
                    <div id="route_departure_ow" class="commonComponentLayer" data-timestamp="1671066730313" tabindex="0" style="position: absolute; top: 90px; left: 48px; display: none;">
					<div id="start2" class="layer_start2 second_start2 main_selec_start">
						<div class="layer_cont">
							<div class="sel_area_list fix scroll mCustomScrollbar _mCS_11 mCS_no_scrollbar">
							<div id="mCSB_11" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
							<div id="mCSB_11_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
								<ul>
									<li data-conticode="SKR" class="contiList contiList_SKR">
										<a class="sel_area" href="#none" >대한민국</a>
									</li>
								
									<li data-conticode="JAP" class="contiList contiList_JAP">
										<a class="sel_area" href="#none" >일본</a>
									</li>
								
									<li data-conticode="NEA" class="contiList contiList_NEA">
										<a class="sel_area" href="#none" >동북아시아</a>
									</li>
								
									<li data-conticode="SEA" class="contiList contiList_SEA">
										<a class="sel_area" href="#none" >동남아시아</a>
									</li>
								</ul>
				
							</div>
							<div id="mCSB_11_scrollbar_vertical" class="mCSB_scrollTools mCSB_11_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;">
							<div class="mCSB_draggerContainer"><div id="mCSB_11_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;">
							<div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							<!--// 지역선택 -->
				
							
							<!-- 취항지 -->
							<div class="sel_route_list type2 scroll mCustomScrollbar _mCS_12 mCS_no_scrollbar">
							<div id="mCSB_12" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
							<div id="mCSB_12_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
				
									<div class="airportList_Dep scroll" style="display: block;">
										<ul>
											
										</ul>
									</div>
								
								
							</div>
							<div id="mCSB_12_scrollbar_vertical" class="mCSB_scrollTools mCSB_12_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;">
							<div class="mCSB_draggerContainer"><div id="mCSB_12_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;">
							<div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
							<!--/ 취향지 -->
							<div><button id="close_btn" class="close_airport_btn">닫기</button></div>	
						</div>
						
					</div>
					</div>
					<!--// Input Hover 시 -->
	
                    <!-- //공항 선택 div 들어갈 자리 -->
                    
                    <a class="btn_change" href="#none">출발지/도착지 바꾸기</a>
                    
                    
                    <div class="input_wrap end">
                        <label>도착지</label>
                        <input id="ow_finish" class="booking end focus_end1" title="도착지 입력" type="text" value="" placeholder="도시/공항">
                        <a class="btn_pin end focus_end2" href="#none" >도착지 선택</a>
                    </div>
                    <!-- 공항 선택 div 들어갈 자리 -->
					<div id="route_arrival_ow" class="commonComponentLayer" data-timestamp="1672153053390" tabindex="0" style="position: absolute; top: 90px; left: 48px; display:none;">
					    <div id="start2" class="layer_start2 main_selec_start if437">
							<div class="layer_cont">
								<div class="sel_area_list type2 scroll mCustomScrollbar _mCS_7 mCS_no_scrollbar">
								<div id="mCSB_7" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
								<div id="mCSB_7_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
									<ul>
 										
									</ul>
								</div>
								<div id="mCSB_7_scrollbar_vertical" class="mCSB_scrollTools mCSB_7_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;">
								<div class="mCSB_draggerContainer">
								<div id="mCSB_7_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;">
								<div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div>
								</div></div>
								<!--// 지역선택 -->
					
								
								<!-- 취향지 -->
								<div class="sel_route_list type2 scroll mCustomScrollbar _mCS_8 mCS_no_scrollbar">
								<div id="mCSB_8" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;">
								<div id="mCSB_8_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
					
										<div class="airportList_Arr scroll" style="display: block;">
											<ul>
											</ul>
										</div>
					
								</div>
								<div id="mCSB_8_scrollbar_vertical" class="mCSB_scrollTools mCSB_8_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: none;">
								<div class="mCSB_draggerContainer">
								<div id="mCSB_8_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; height: 0px; top: 0px;">
								<div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
								<!--/ 취향지 -->
								<div><button id="close_btn" class="close_airport_btn">닫기</button></div>	
							</div>
						</div>
					</div>
            </li>
            <li>
                <div class="input_wrap date ow">
                    <label>탑승일</label>
                    <input class="booking date focus_date1" id="lostFlightDate2_1" placeholder="YYYY-MM-DD" readonly="readonly" title="출발일 입력" type="text" value="" >
                    <a class="btn_date focus_date3" href="#none" title="출발일 선택 레이어 열림">출발일 선택</a>
                </div>
            </li>
        </ul>
    </div>
     <div id="calOpen2" style="display:none;">
        <section class="ftco-section">
		<div class="calContainer" >
			<div class="calRow justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">예매 일정 선택</h2>
				</div>
			</div>
			<div class="calRow">
				<div class="col-md-12">
					<div class="calendar-section">
		        <div class="calRow no-gutters">
		          <div class="col-md-6">
​
					<!-- 달력 2개 중 첫번째 달력 -->
		            <div class="calendar calendar-first no-gutters" id="calendar_first1">	<!-- cal1 -->
		              <div class="calendar_header">	<!-- calHeader1 -->
		                <button class="switch-month switch-left">
		                  <i class="fa fa-chevron-left"></i>
		                </button>
		                <h2></h2>
		                <button class="switch-month switch-right">
		                  <i class="fa fa-chevron-right"></i>
		                </button>
		              </div>
		              <div class="calendar_weekdays"></div>	<!-- weekline1 -->
		              <div class="calendar_content"></div>	<!-- datesBody1 -->
		            </div>
​
		          </div>
		          <div class="col-md-6">
					<!-- 달력 2개 중 두번째 달력 -->	
		            <div class="calendar calendar-second no-gutters" id="calendar_second2">	<!-- cal2 -->
		              <div class="calendar_header">	<!-- calHeader2 -->
		                <button class="switch-month switch-left">
		                  <i class="fa fa-chevron-left"></i>
		                </button>
		                <h2></h2>
		                <button class="switch-month switch-right">
		                  <i class="fa fa-chevron-right"></i>
		                </button>
		              </div>
		              <div class="calendar_weekdays"></div>	<!-- weekline2 -->
		              <div class="calendar_content"></div>	<!-- datesBody2 -->
		            </div>            
​
		          </div>
​
		        </div> <!-- End Row -->
		            
		      </div> <!-- End Calendar -->
				</div>
			</div>
		</div>
	</section>
</div>
</div>
<!-- 편도 -->


<!--// Tab 컨텐츠 -->

<!-- 인원수 입력 -->
<div class="pax booking_input section_passenger">
    <ul class="booking_form">
        <li>
            <div class="input_wrap passenger focus">
                <!-- 성인 -->
                <dl>
                    <dt>
                        <label for="adult">성인</label>
                    </dt>
                    <dd class="sel_passenger">
                        <a class="adult btn_minus" href="#none"></a>
                        <input class="booking passenger ADULT" data-div="ADULT" id="adult" title="성인 인원수" type="text" value="1" readonly>
                        <a class="adult btn_plus" href="#none" ></a>
                    </dd>
                </dl>
                <!--// 성인 -->
                <!-- 소아 -->
                <dl>
                    <dt>
                        <label for="kid">
                                소아
                            <a class="btn_tooltip gray kid" href="#none">
                                <span class="blind">툴팁</span>
                                <div class="tooltip_layer kid" style="display: none;">
                                    <div class="tooltip_tit">
                                        <img alt="" src="https://contents-image.twayair.com/homepage/images/ico/ico_kid.png">
                                        <h5>소아기준</h5>
                                    </div>
                                    <div class="tooltip_cont">
                                        <dl>
                                            <dt>국내선</dt>
                                            <dd>만 2세~<span class="red">13세</span> 미만</dd>
                                        </dl>
                                        <dl>
                                            <dt>국제선</dt>
                                            <dd>만 2세~<span class="red">12세</span> 미만</dd>
                                        </dl>
                                        <ul class="info"><li>※ 소아/유아 기준</li>
<li>&nbsp; &nbsp; - 국내선 : 각 항공편의 탑승일 기준</li>
<li>&nbsp; &nbsp; - 국제선 : 최초 출발일 기준</li>
<li>※ 탑승 수속 시 생년월일 확인 가능한 서류 지참 필수</li></ul>
                                    </div>
                                </div>
                            </a>
                        </label>
                    </dt>
                    <dd class="sel_passenger">
                        <a class="kid btn_minus" href="#none">소아 인원감소</a>
                        <input class="booking passenger CHILD" data-div="CHILD" id="kid" title="소아 인원수" type="text" value="0" readonly>
                        <a class="kid btn_plus" href="#none">소아 인원증가</a>
                    </dd>
                </dl>
                <!--// 소아 -->
                <!-- 유아 -->
                <dl>
                    <dt>
                        <label for="baby">
                                유아
                            <a class="btn_tooltip gray baby" href="#none">
                                <span class="blind">툴팁</span>
                                <div class="tooltip_layer baby" style="display: none;">
                                    <div class="tooltip_tit">
                                        <img alt="" src="https://contents-image.twayair.com/homepage/images/ico/ico_baby.png">
                                        <h5>유아기준</h5>
                                    </div>
                                    <div class="tooltip_cont">
                                        <dl>
                                            <dt>국내선</dt>
                                            <dd>생후 <span class="red">7일</span>~ 만 2세 미만</dd>
                                        </dl>
                                        <dl>
                                            <dt>국제선</dt>
                                            <dd>생후 <span class="red">14일</span>~ 만 2세 미만</dd>
                                        </dl>
                                        <ul class="info"><li>※ 소아/유아 기준</li>
<li>&nbsp; &nbsp; - 국내선 : 각 항공편의 탑승일 기준</li>
<li>&nbsp; &nbsp; - 국제선 : 최초 출발일 기준</li>
<li>※ 탑승 수속 시 생년월일 확인 가능한 서류 지참 필수</li></ul>
                                    </div>
                                </div>
                            </a>
                        </label>
                    </dt>
                    <dd class="sel_passenger">
                        <a class="baby btn_minus" href="#none">유아 인원감소</a>
                        <input class="booking passenger INFANT" data-div="INFANT" id="baby" onkeyup="onlyNumReplace(this, 0);" title="유아 인원수" type="text" value="0" readonly>
                        <a class="baby btn_plus" href="#none">유아 인원증가</a>
                    </dd>
                </dl>
                <!--// 유아 -->
            </div>
        </li>
       
    </ul>
</div>
<!--// 인원수 입력 -->
</div>
<!--// Input Booking -->


<!--// 컨텐츠 영역 -->

</div>
        <!--script단-->
        <!--script단-->

        <!-- Button -->
        <div class="btn_wrap">
            <button class="btn_large red" onclick="bookingBtn();">예매하기</button>
        </div>
        <!--// Button -->
</div>
<!--// Contnent -->

    <!--// end content -->
</div>

<!-- boonkigPage1-1 script -->
<script charset="utf-8" src="resources/js/bookingPage1-1.js"></script>

<script>
function bookingBtn(){
	
	$caDepartureDate = $('#lostFlightDate2_1').val();
	
	console.log($caDepartureDate);
	
  	var params = {//전송할 데이터 객체 params
  		caKind : "OW",
		caDepartureAirport :$caDepartureAirport,
		caArrivalAirport : $caArrivalAirport,
		caDepCity : $caDepCity,
		caArrCity : $caArrCity,
		caDepartureDate : $caDepartureDate,
		caConti : $caConti,
		caAdult : $caAdult,
		caChild : $caChild,
		caBaby : $caBaby
	};
	
  	
    var form = document.createElement('form');        //form 생성
    
    form.setAttribute('method', 'post');              //POST 방식
    form.setAttribute('action', 'bookingOW.re');	      //데이터를 전송할 url
    document.charset = "UTF-8";                       //인코딩
//     document.form.acceptCharset = "UTF-8"
	
    for (var key in params) {	// key, value로 이루어진 객체 params
        var hiddenField = document.createElement('input');
        hiddenField.setAttribute('type', 'hidden');
        hiddenField.setAttribute('name', key);
        hiddenField.setAttribute('value', params[key]);
        form.appendChild(hiddenField);
    }
    document.body.appendChild(form);
    
    form.submit();	// 전송
    

}
</script>




<!-- calendar script -->
<!-- <script src="resources/js/calRt.js"></script> -->
<script src="resources/js/calOw.js"></script>
</body>
</html>