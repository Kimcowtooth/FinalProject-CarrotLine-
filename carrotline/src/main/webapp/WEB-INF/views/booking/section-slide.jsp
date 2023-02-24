<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<style>
    .section-wrap .swiper {
      width: 100%;
      height: 100%;
    }
    .section-wrap .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }
    .section-wrap .swiper-slide img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .section-wrap .swiper-pagination-bullet {
      background-color: #EB8401;
    }
    .section-wrap .swiper-button-prev, .section-wrap .swiper-button-next {
      color: #EB8401;
    }
    .section-wrap .service_section_box {
      position: relative;
      text-align: center;
      width: 80%;
      height: 80%;
      vertical-align: middle;
    }
    .section-wrap .section_num {
      display: inline-block;
    }
    .section-wrap .service_section_box .service_name {
      position: relative;
      display: inline-block;
      width: 150px;
    }      
    .section-wrap .service_exp {
      display: inline-block;
      width: 250px;
      height: 55px;
      background: url("<%=request.getContextPath()%>/resources/images/bg_service_exp.png") no-repeat 50% 50%;
      box-sizing: border-box;
    }
    .section-wrap .service_name .tit {
      display: block;
      font-size: 40px;
      font-weight: 700;
      color: #1a1a1a;
      text-align: center;
      line-height: 36px;
    }
    .section-wrap .service_name .addition {
      display: block;
      margin-top: 5px;
      font-size: 16px;
      color: #1a1a1a;
      text-align: center;
      line-height: 20px;
    }
    .section-wrap .routeSlider {
      padding: 25px 0;
      box-sizing: border-box;
    }
    .section-wrap .section_num {
      display: inline-block;
      position: absolute;
      top: 13px;
      left: 60px;
      padding: 0 10px;
      height: 30px;
      font-size: 16px;
      color: #fff;
      text-align: center;
      line-height: 32px;
      background-color: #EB8401;
      border-radius: 3px;
      box-sizing: border-box;
    }
    .section-wrap .btn_refresh {
      height: 46px;
      position: absolute;
      top: 12px;
      right: 150px;
      background-color: #fff;
      z-index: 18;
    }
    .section-wrap .btn_small.refresh {
      padding: 0 7px 0 40px;
      background: url("<%=request.getContextPath()%>/resources/images/refresh_btn.png") no-repeat 10px 50%;
    }
    .section-wrap .btn_small.carrot {
      min-width: 100px;
      color: #EB8401 !important;
      border: 2px solid #EB8401;
      height: 46px;
      border-radius: 3px;
    }
</style>



  <div class="section-wrap">
    <!-- Swiper -->
    <div class="swiper mySwiper">
      <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">
        <!-- 구간선택 슬라이드 -->

        <!-- 슬라이드1 -->
        <div class="swiper-slide">

          <ul class="swiper-wrapper routeSlider">
            <li class="swiper-slide swiper-slide-prev">

              <div class="service_section_box">
                <!-- 구간 -->
                <span class="section_num">구간1</span>
                <!--// 구간 -->
                <!-- 출발 -->
                <div class="service_name first">
                    <strong class="tit airport departure">${ param.code1 }</strong>
                    <span class="addition">${ param.city1 }</span>
                </div>
                <!-- 출발 -->
                <!-- 비행기 화살표 -->
                <div class="service_exp"></div>
                <!--// 비행기 화살표 -->
                <!-- 도착 -->
                <div class="service_name last">
                    <strong class="tit airport arrival">${ param.code2 }</strong>
                    <span class="addition">${ param.city2 }</span>
                </div>
                <!-- 도착 -->
              </div>

              <!-- 여정 재검색 -->
              <div class="btn_refresh">
                <button class="btn_small refresh carrot" onclick="booking1();">재검색</button>
              </div>
              <!--// 여정 재검색 -->

            </li>
          </ul>

        </div>
        <!-- // 슬라이드1 -->

		<c:if test="${ param.kind eq 'RT' }">
        <!-- 슬라이드2 -->
        <div class="swiper-slide">

          <ul class="swiper-wrapper routeSlider">
            <li class="swiper-slide swiper-slide-prev">

              <div class="service_section_box">
                <!-- 구간 -->
                <span class="section_num">구간2</span>
                <!--// 구간 -->
                <!-- 출발 -->
                <div class="service_name first">
                    <strong class="tit airport departure">${ param.code2 }</strong>
                    <span class="addition">${ param.city2 }</span>
                </div>
                <!-- 출발 -->
                <!-- 비행기 화살표 -->
                <div class="service_exp"></div>
                <!--// 비행기 화살표 -->
                <!-- 도착 -->
                <div class="service_name last">
                    <strong class="tit airport arrival">${ param.code1 }</strong>
                    <span class="addition">${ param.city1 }</span>
                </div>
                <!-- 도착 -->
              </div>

              <!-- 여정 재검색 -->
              <div class="btn_refresh">
                <button class="btn_small refresh carrot">재검색</button>
              </div>
              <!--// 여정 재검색 -->

            </li>
          </ul>

        </div>
        <!-- // 슬라이드2 -->
		</c:if>
		
        <!--// 구간선택 슬라이드 -->
      </div>

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
  </div>
  
    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });

      
      function booking1(){
    	  location.href="bookingPage1_1.re";
      }
    </script>

