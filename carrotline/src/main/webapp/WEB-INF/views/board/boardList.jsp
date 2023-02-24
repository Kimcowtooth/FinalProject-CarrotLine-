<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=1400">
<title>공지사항 | 고객센터 | 티웨이항공</title>
		

		<!-- 홈페이지 메타태그 삽입 START -->
		<!-- MENU별 META태그 -->
		
		<meta name="description" content="안전하고 합리적인 대한민국 LCC 티웨이항공, 한국/일본/동남아 항공권 할인">
		
		<meta name="keywords" content="티웨이항공, 티웨이, Tway, Tway항공, t웨이항공, twayair, 제주도항공, 항공권예매, 항공권특가, 항공권예약, 저가항공, 제주항공권, 일본항공권, 동남아항공권, 특가항공권">
	
		
		<meta property="og:type" content="website">
		
		<meta property="og:url" content="http://www.twayair.com/">
		
		<meta property="og:description" content="안전하고 합리적인 대한민국 LCC 티웨이항공, 한국/일본/동남아 항공권 할인">
		<meta content="https://contents-image.twayair.com/mobile/images/common/twayair.png" property="og:image">

		<!-- 공통 컨텐츠 관리 내 공통 META태그 -->
		<meta name="google-site-verification" content="cNbjQR2z6KTEGNIkBqf2wXFvMYI76ChScNOXTMUR4WA">
<meta name="naver-site-verification" content="433941c0feb2e2ff95bffdb915e887afbdacf6b8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="canonical" href="https://www.twayair.com/app/main">

		<!-- 홈페이지 메타태그 삽입 END -->

		<meta charset="UTF-8">
		
		<meta content="ie=edge" http-equiv="X-UA-Compatible">

		<meta content="3546f9b6-b35c-4748-ac74-b76bcb69f72d" name="_csrf">
		<meta content="X-CSRF-TOKEN" name="_csrf_header">

		<meta http-equiv="content-language" content="ko-KR">

		<!-- SNS Sharing -->

<!-- 		<!-- CSS 영역 --> -->
<%-- 		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/board/boardList.css"> --%>
			
 			<link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/style.css?ver=uImewpQPGP1DhGqV4kkJIoJiOlhA8ai5zMIiSz+Bv2tnUUVPDtg74euk/iV/NHlW">
 			<link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/waitMe.css">

			<style type="text/css">
				div.debug {
					display:none;
				}
			</style>
		



			<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="//cdn.tbase.co.kr/tbase/l4cts.v5.2t.js"></script><script src="https://connect.facebook.net/signals/config/371419434194566?v=2.9.90&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="//cdn.tbase.co.kr/tbase/common/1069_common.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-TC4XB6D"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-DMDBYR48JD&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/jquery-1.12.4.min.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/jquery-tmpl/jquery.tmpl.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/jquery-ui.js"></script>

			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/waitMe.js"></script>

			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/js.cookie.min.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/hangul.min.js"></script> <!--한글 자음/모음 분리/조합 자바스크립트 라이브러리-->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/cmmUtils.js?ver=uImewpQPGP1DhGqV4kkJIoJiOlhA8ai5zMIiSz+Bv2tnUUVPDtg74euk/iV/NHlW"></script>


			<!-- Global Js -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/global.js?ver=uImewpQPGP1DhGqV4kkJIoJiOlhA8ai5zMIiSz+Bv2tnUUVPDtg74euk/iV/NHlW"></script>
			

			<!-- fingerprint Js -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/fingerprint.js"></script>
			
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/java_hashcode.js"></script>
			

			<!--// twaygtm > GTM Js -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/gtm.js"></script>
			

			<!-- begin, from Publishing -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/ui.common.js?ver=uImewpQPGP1DhGqV4kkJIoJiOlhA8ai5zMIiSz+Bv2tnUUVPDtg74euk/iV/NHlW"></script>
			
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/swiper.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/jquery.mCustomScrollbar.js"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/slick.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/rangeslider.min.js"></script>
			<!-- end, from Publishing -->

			<!--// datetimepicker -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/jquery.datetimepicker.full.min.js"></script>
			<link rel="stylesheet" href="https://contents-image.twayair.com/homepage/css/lib/jquery.datetimepicker.min.css">

			<!-- Validation Js -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/validation.js"></script>
			
			<!-- // Validation Js -->

		

		<script type="text/javascript">
			$(document).ready(function() {
			});
		</script>

		<!-- 홈페이지 추적 스크립트 삽입 -->
		<!-- google analytics - 공통스크립트 -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-18196299-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
setTimeout(function(){gtag('js', new Date());
gtag('config', 'UA-18196299-2');},500);
</script>
		<!-- 홈페이지 추적 스크립트 삽입 END -->

		<!-- <link rel="alternate" hreflang="lang_code"> -->
	<meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/835074054/?random=1671960745623&amp;cv=11&amp;fst=1671960745623&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2wgbu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/815758399/?random=1671960745844&amp;cv=11&amp;fst=1671960745844&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11008077408/?random=1671960745917&amp;cv=11&amp;fst=1671960745917&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11000412613/?random=1671960745955&amp;cv=11&amp;fst=1671960745955&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11008077408/?random=1671960746437&amp;cv=11&amp;fst=1671960746437&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dform_start&amp;rfmt=3&amp;fmt=4"></script><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11008077408/?random=1671960746447&amp;cv=11&amp;fst=1671960746447&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dform_submit&amp;rfmt=3&amp;fmt=4"></script><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11000412613/?random=1671960746456&amp;cv=11&amp;fst=1671960746456&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dform_start&amp;rfmt=3&amp;fmt=4"></script><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11000412613/?random=1671960746464&amp;cv=11&amp;fst=1671960746464&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2FcustomerCenter%2Fnotice&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%7C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dform_submit&amp;rfmt=3&amp;fmt=4"></script></head>
	

	<body>

		<!--// twaygtm > dataForm > gtmDataForm -->
		

<!-- GTM 공통영역 데이터 -->
<input id="gtmCommonData" name="gtmCommonData" type="hidden" value="undefined;none;undefined;HP;KR_ko-KR">

<!-- Google Tag Manager (noscript) -->
<noscript><iframe height="0" src="https://www.googletagmanager.com/ns.html?id=GTM-TC4XB6D" style="display:none;visibility:hidden" width="0"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->


		<!--// twaygtm > dataForm > gtmDataForm -->

		<div class="cookie_alram" style="display: block;">
			<div class="top_alram_cnt">
				<img alt="알림" class="pr20" src="https://contents-image.twayair.com/homepage/images/common/ico_attn2.png">본 사이트는 보다 나은 서비스 제공을 위해 쿠키를 사용합니다. 자세한 내용은 당사의 <a href="/app/board/regulation?viewIndex=6">쿠키 정책</a>을 참조하시기 바랍니다.
				<span class="btn_wrap">
					<button class="sbtn_cont btn_close_cookie_policy" type="button">확인</button>
			</div>
		</div>
				
		<!--// 본문 바로가기 -->
		<c:import url="../common/header.jsp" />
		

		<!--<th:block th:replace="booking/searchItineraryGNB :: searchItineraryGNB"></th:block>-->
		<div id="gnbGuickBooking">




<!-- Quick Booking -->
<div class="h_booking_wrap" style="display: block;">
    <div class="h_booking">

        <div class="sel_opt" style="">

            <div class="service_section">
                <div class="booking_option">
                    <ul class="sel_section booking_option">
                        <li class="on">
                            <a href="#booking01" onclick="$('#display_tripType_RT').prop('checked',true);$('#display_tripType_RT').trigger('change');" title="선택됨">
                                <input aria-hidden="true
                                " id="display_tripType_RT" name="tripTypeButton" tabindex="-1" type="radio" value="RT">
                                <label for="display_tripType_RT">왕복</label>
                            </a>
                        </li>
                        <li>
                            <a href="#booking02" onclick="$('#display_tripType_OW').prop('checked',true);$('#display_tripType_OW').trigger('change');">
                                <input aria-hidden="true
                                " id="display_tripType_OW" name="tripTypeButton" tabindex="-1" type="radio" value="OW">
                                <label for="display_tripType_OW">편도</label>
                            </a>
                        </li>
                        <li>
                            <a href="#" onclick="beginLoadingAnimation(); location.href='/app/booking/searchItinerary?tripType=MC';">
                                <input aria-hidden="true
                                " id="display_tripType_MC" name="tripTypeButton" tabindex="-1" type="radio" value="MC">
                                <label for="display_tripType_MC">다구간</label>
                            </a>
                        </li>
                    </ul>
                    <div class="sel_group res_grouping">
                        <input class="bookingTypeGroup" id="chkBox2" name="bookingTypeGroup" type="checkbox" value="">
                        <label for="chkBox2"><span class="icon">단체 항공권 선택 체크박스</span>단체(10명 이상)</label>
                    </div>
                </div>
            </div>


            <div class="util">
                <div class="sale_code_wrap code">
                    <a class="btn_tooltip gray" href="#none">
                        <span class="blind">툴팁</span>
                        <div class="tooltip_layer" style="display: none;">
                            <div class="tooltip_tit no_bd">
                                <h5>할인코드란?</h5>
                            </div>
                            <div class="tooltip_cont">티웨이항공 탑승 고객을 대상으로 특정 기간 동안<br>추가 할인을 제공해 드리는 제도입니다.<br>예약 시 사전에 안내된 코드를 입력하시면,<br>할인 가격이 적용된 항공편을 선택하실 수 있습니다.</div>
                        </div>
                    </a>
                    <label for="sale_code">
                        할인코드
                    </label>
                    <span class="sale_code">
                        <input class="input_sale_code" id="sale_code" maxlength="20" name="promoCode" onkeyup="onlyHanEngNumToUpper(this);" type="text" placeholder="할인코드 입력" title="할인코드 입력" value="">
                    </span>
                    <a class="sbtn_txt btn_salecode" href="#none">할인코드 규정</a>
                    <div class="tooltip_layer txt layer_salecode" style="display: none;">
                        <div class="tooltip_tit no_bd">
                            <h5>할인코드 규정 안내</h5>
                        </div>
                        <div class="tooltip_cont discountCodeRule_area">
                            <!-- 오사카 1명당 왕복 2만원 할인 프로모션 코드입니다.
                            <ul class="ul_dot">
                                <li>발권 기간 : 2018. 10. 11 ~ 2018. 10. 31</li>
                                <li>출발 기간 : 2018. 10. 11 ~ 2018. 12. 20(출발일 기준)</li>
                                <li>할인 금액 : 20,000원 (공시운임 기준 할인 적용)</li>
                            </ul>
                            <p class="info">예약 변경/분리/부분 취소 불가능하며, 전체 취소 후 재 구매는<br>가능합니다.</p> -->
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--// 옵션 -->


        
        <div class="sel_booking" id="booking01">
            <h3 class="blind">왕복</h3>
            <div class="booking_wrap">


                
                <div class="input_wrap start">
                    <input class="booking start focus_start1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','gnb');" onkeypress="gnbSelectAirport(this, 0,'search','gnb');" readonly="" title="출발지 입력" type="text" value="" placeholder="출발지">
                    <a class="btn_pin focus_start2" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','gnb');" title="출발지 레이어 열림">출발지 선택</a>

                    <!-- 선택지 레이어 -->
                    <div class="selected_area">
                    	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','gnb');">
	                        <span class="eng">ICN</span>
	                        <span class="area">서울/인천</span>
                        </a>
                    </div>
                    <!--// 선택지 레이어 -->
                </div>

                
                <div class="input_wrap end">
                    <input class="booking end focus_end1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','gnb');" onkeypress="gnbSelectAirport(this, 0,'search','gnb');" readonly="" title="도착지 입력" type="text" value="" placeholder="도착지">
                    <a class="btn_pin focus_end2" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','gnb');" title="도착지 레이어 열림">도착지 선택</a>

                    <!-- 선택 레이어 -->
                    <div class="selected_area">
                    	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','gnb');">
	                        <span class="eng">ICN</span>
	                        <span class="area">서울/인천</span>
                        </a>
                    </div>
                    <!--// 선택 레이어 -->
                </div>

                
                <div class="input_wrap days date">
                    <input class="booking date focus_date1" id="lostFlightDate1_1" placeholder="YYYY-MM-DD" readonly="readonly" title="출발일 입력" type="text" value="" onclick="gnbCallBackArrivalAirportConfirm(null, 'gnb', 'KRW', 'N');">
                    <span>~</span>
                    <input class="booking date focus_date2" id="lostFlightDate1_2" placeholder="YYYY-MM-DD" readonly="readonly" title="도착일 입력" type="text" value="" onclick="gnbCallBackArrivalAirportConfirm(null, 'gnb', 'KRW', 'N');">
                    <a class="btn_date focus_date3" href="#none" title="출/도착 날짜 선택 레이어 선택" onclick="gnbCallBackArrivalAirportConfirm(null, 'gnb', 'KRW', 'N');">기간 선택</a>
                </div>

                <div class="input_wrap">
                    <input class="passenger" placeholder="탑승객" readonly="readonly" tabindex="-1" title="탑승객" type="text" value="">

                    <!-- 탑승객 레이어 -->
                    <a class="selected_passenger on passengerCountStatus" href="#none" onclick="selectPassengerCount();" onkeypress="selectPassengerCount();" style="cursor:pointer;" title="탑승객 선택"><span>성인 1</span><span>소아 0</span><span>유아 0</span></a>
                    <!--// 탑승객 레이어 -->

                </div>
                <div class="btn_wrap">
                    <button class="btn_resv" onclick="chooseItinerary();">조회</button>
                </div>
            </div>
        </div>
        


        
        <div class="sel_booking" id="booking02" style="display: none;">
            <h3 class="blind">편도</h3>
            <div class="booking_wrap">


                
                <div class="input_wrap start">
                    <input class="booking start focus_start1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','gnb');" onkeypress="gnbSelectAirport(this, 0,'search','gnb');" readonly="" title="출발지 입력" type="text" value="" placeholder="출발지">
                    <a class="btn_pin focus_start2" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','gnb');" title="출발지 레이어 열림">출발지 선택</a>

                    <!-- 선택지 레이어 -->
                    <div class="selected_area">
                    	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','gnb');">
	                        <span class="eng">ICN</span>
	                        <span class="area">서울/인천</span>
                        </a>
                    </div>
                    <!--// 선택지 레이어 -->
                </div>

                
                <div class="input_wrap end">
                    <input class="booking end focus_end1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','gnb');" readonly="" title="도착지 입력" type="text" value="" placeholder="도착지">
                    <a class="btn_pin focus_end2" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','gnb');" title="도착지 레이어 열림">도착지 선택</a>

                    <!-- 선택 레이어 -->
                    <div class="selected_area">
                    	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','gnb');">
	                        <span class="eng">ICN</span>
	                        <span class="area">서울/인천</span>
                        </a>
                    </div>
                    <!--// 선택 레이어 -->
                </div>

                
                <div class="input_wrap date">
                    <input class="booking date focus_date1" id="lostFlightDate2_1" placeholder="YYYY-MM-DD" readonly="readonly" title="출발일 입력" type="text" value="" onclick="gnbCallBackArrivalAirportConfirm(null, 'gnb', 'KRW', 'N');" onkeypress="gnbCallBackArrivalAirportConfirm(null, 'gnb', 'KRW', 'N');">
                </div>

                <div class="input_wrap">
                    <input class="passenger" placeholder="탑승객" readonly="readonly" tabindex="-1" title="탑승객" type="text" value="">

                    <!-- 탑승객 레이어 -->
                    <a class="selected_passenger on passengerCountStatus" href="#none" onclick="selectPassengerCount();" onkeypress="selectPassengerCount();" style="cursor:pointer;" title="탑승객 선택"><span>성인 1</span><span>소아 0</span><span>유아 0</span></a>
                    <!--// 탑승객 레이어 -->

                </div>
                <div class="btn_wrap">
                    <button class="btn_resv" onclick="chooseItinerary();">조회</button>
                </div>
            </div>
        </div>
        


    </div>
</div>
<!-- Quick Booking -->


<!-- 탑승객선택레이어 -->
<div class="layer_start1 type" id="top_passenger_type" style="display:none;" tabindex="0">
    <div class="layer_cont">
        <div class="input_booking_wrap type">
            <!-- 인원수 입력 -->
            <div class="booking_input">
                <div class="dl_type_list pax">
                    <!-- 성인 -->
                    <dl>
                        <dt>
                            <label>성인</label>
                        </dt>
                        <dd class="sel_passenger">
                            <a class="btn_minus" href="#none" onclick="changePaxCount('ADULT', -1);">빼기</a>
                            <input class="booking passenger ADULT" data-div="ADULT" onkeyup="onlyNumReplace(this, 1);" title="인원수" type="text" value="1">
                            <a class="btn_plus" href="#none" onclick="changePaxCount('ADULT', 1);">더하기</a>
                        </dd>
                    </dl>
                    <!--// 성인 -->
                    <!-- 소아 -->
                    <dl>
                        <dt>
                            <label>
                            	소아
                                <a class="btn_tooltip gray" href="#none">
                                    <span class="blind">툴팁</span>
                                    <div class="tooltip_layer" style="display: none;">
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
                            <a class="btn_minus" href="#none" onclick="changePaxCount('CHILD', -1);">빼기</a>
                            <input class="booking passenger CHILD" data-div="CHILD" id="kid" onkeyup="onlyNumReplace(this, 0);" title="인원수" type="text" value="0">
                            <a class="btn_plus" href="#none" onclick="changePaxCount('CHILD', 1);">더하기</a>
                        </dd>
                    </dl>
                    <!--// 소아 -->
                    <!-- 유아 -->
                    <dl>
                        <dt>
                            <label>
                            	유아
                                <a class="btn_tooltip gray" href="#none">
                                    <span class="blind">툴팁</span>
                                    <div class="tooltip_layer" style="display: none;">
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
                            <a class="btn_minus" href="#none" onclick="changePaxCount('INFANT', -1);">빼기</a>
                            <input class="booking passenger INFANT" data-div="INFANT" id="baby" onkeyup="onlyNumReplace(this, 0);" title="인원수" type="text" value="0">
                            <a class="btn_plus" href="#none" onclick="changePaxCount('INFANT', 1);">더하기</a>
                        </dd>
                    </dl>
                    <!--// 유아 -->
                </div>

                <button class="sbtn_cont age_cal" date-id="age_calculater_layer" date-type="layer" onclick="howOldAreYou();" title="레이어 팝업 열림" type="button">나이 계산기</button>
            </div>
            <!--// 인원수 입력 -->

			<!-- 20190318 : 닫기 추가 -->
			<a class="btn_passenger_close" href="#none" onclick="selectPassengerCountClose();">닫기</a>
			<!--// 20190318 : 닫기 추가 -->
        </div>
    </div>
</div>








    

    <div class="debug">

        <form id="airAvailabilityRQ" method="post" name="airAvailabilityRQ" action="/app/booking/chooseItinerary">
			<input name="promoCode" type="hidden">
            search ticket : <input class="bookingTicket" name="bookingTicket" type="text" value="">

            <!--tripType - 여정타입 선택 왕복/편도/다구간-->
            <div>
                
                    <input type="radio" id="tripType_RT" value="RT" name="tripType" checked="checked">
                    <label for="tripType_RT">
                        
                            왕복
                            
                            
                        
                    </label> &nbsp;
                
                
                    <input type="radio" id="tripType_OW" value="OW" name="tripType">
                    <label for="tripType_OW">
                        
                            
                            편도
                            
                        
                    </label> &nbsp;
                
                
                    <input type="radio" id="tripType_MC" value="MC" name="tripType">
                    <label for="tripType_MC">
                        
                            
                            
                            다구간
                        
                    </label> &nbsp;
                
            </div>

            <!--bookingType - 개인/단체 선택-->
            <div>
                <!--지역이 한국인 경우에만 단체 노출-->
                <span id="bookingType_individual">
                            <input type="radio" id="bookingType_HI" value="HI" name="bookingType" checked="checked">
                            <label for="bookingType_HI">
                                
                                    개인
                                    
                                
                            </label> &nbsp;
                        </span>
                <span id="bookingType_group">
                            <input type="radio" id="bookingType_HG" value="HG" name="bookingType">
                            <label for="bookingType_HG">
                                
                                    
                                    단체
                                
                            </label> &nbsp;
                        </span>
            </div>



            <!--사용자 선택 정보, publishing 적용시 hidden 처리 할 정보 영역-->
            <div style="border: solid 5px grey;">

                <div> 프로모션코드 : <input id="promoCodeDetails.promoCode" maxlength="20" name="promoCodeDetails.promoCode" type="text" value=""></div>
                <div> 프로모션코드 유효성 통과 여부 : <input name="validPromoCode" type="text" value=""> </div>



                <div>

                    <span style="font-weight:bold;">Flight 1</span>

                    from <input class="reset_target" type="text" id="availabilitySearches0.depAirport" name="availabilitySearches[0].depAirport" value="">

                    to : <input class="reset_target" type="text" id="availabilitySearches0.arrAirport" name="availabilitySearches[0].arrAirport" value="">

                    departure : <input class="reset_target" type="text" id="availabilitySearches0.flightDate" name="availabilitySearches[0].flightDate" value="">
                </div>



                <div>

                    <span style="font-weight:bold;">Flight 2</span>

                    from <input class="reset_target" type="text" id="availabilitySearches1.depAirport" name="availabilitySearches[1].depAirport" value="">

                    to : <input class="reset_target" type="text" id="availabilitySearches1.arrAirport" name="availabilitySearches[1].arrAirport" value="">

                    departure : <input class="reset_target" type="text" id="availabilitySearches1.flightDate" name="availabilitySearches[1].flightDate" value="">
                </div>



                <div>

                    <span style="font-weight:bold;">Flight 3</span>

                    from <input class="reset_target" type="text" id="availabilitySearches2.depAirport" name="availabilitySearches[2].depAirport" value="">

                    to : <input class="reset_target" type="text" id="availabilitySearches2.arrAirport" name="availabilitySearches[2].arrAirport" value="">

                    departure : <input class="reset_target" type="text" id="availabilitySearches2.flightDate" name="availabilitySearches[2].flightDate" value="">
                </div>



                <div>

                    <span style="font-weight:bold;">Flight 4</span>

                    from <input class="reset_target" type="text" id="availabilitySearches3.depAirport" name="availabilitySearches[3].depAirport" value="">

                    to : <input class="reset_target" type="text" id="availabilitySearches3.arrAirport" name="availabilitySearches[3].arrAirport" value="">

                    departure : <input class="reset_target" type="text" id="availabilitySearches3.flightDate" name="availabilitySearches[3].flightDate" value="">
                </div>



                <div>

                    <span style="font-weight:bold;">Flight 5</span>

                    from <input class="reset_target" type="text" id="availabilitySearches4.depAirport" name="availabilitySearches[4].depAirport" value="">

                    to : <input class="reset_target" type="text" id="availabilitySearches4.arrAirport" name="availabilitySearches[4].arrAirport" value="">

                    departure : <input class="reset_target" type="text" id="availabilitySearches4.flightDate" name="availabilitySearches[4].flightDate" value="">
                </div>


                
                


                
                


                
                

                <div>
                    성인 : <input class="reset_target" id="paxCountDetails0.paxCount" name="paxCountDetails[0].paxCount" type="text" value="0">
                    소아 : <input class="reset_target" id="paxCountDetails1.paxCount" name="paxCountDetails[1].paxCount" type="text" value="0">
                    유아 : <input class="reset_target" id="paxCountDetails2.paxCount" name="paxCountDetails[2].paxCount" type="text" value="0">
                    
                </div>

                <div>
                    도시명 출발 : <input class="reset_target" type="text" name="availabilitySearches[0].depAirportName" value="">
                    도착 : <input class="reset_target" type="text" name="availabilitySearches[0].arrAirportName" value="">
                </div>

                <div>
                    도시명 출발 : <input class="reset_target" type="text" name="availabilitySearches[1].depAirportName" value="">
                    도착 : <input class="reset_target" type="text" name="availabilitySearches[1].arrAirportName" value="">
                </div>

                <div>
                    도시명 출발 : <input class="reset_target" type="text" name="availabilitySearches[2].depAirportName" value="">
                    도착 : <input class="reset_target" type="text" name="availabilitySearches[2].arrAirportName" value="">
                </div>

                <div>
                    도시명 출발 : <input class="reset_target" type="text" name="availabilitySearches[3].depAirportName" value="">
                    도착 : <input class="reset_target" type="text" name="availabilitySearches[3].arrAirportName" value="">
                </div>

                <div>
                    도시명 출발 : <input class="reset_target" type="text" name="availabilitySearches[4].depAirportName" value="">
                    도착 : <input class="reset_target" type="text" name="availabilitySearches[4].arrAirportName" value="">
                </div>
            </div>

        <input type="hidden" name="_csrf" value="3546f9b6-b35c-4748-ac74-b76bcb69f72d"></form>

        
        <script type="text/javascript">

            var _pax_list = [{'paxCount':1,'paxType':'ADULT'},{'paxCount':0,'paxType':'CHILD'},{'paxCount':0,'paxType':'INFANT'}];
            var _pax_type = {'ADULT':0, 'CHILD':1, 'INFANT':2  }

            $.each(_pax_list, function(pi,pp){
                if($.trim(pp.paxType)!=''){
                    $('#airAvailabilityRQ input[name="paxCountDetails['+ _pax_type[pp.paxType] +'].paxCount"]').val(pp.paxCount);
                }
            });
        </script>

    </div>








    <script type="text/javascript">

        /**
         * bookingTicket 초기화
         */
        $(document).ready(function(){
            var _t = 'f88f31dd-67b9-455d-9ca1-48f2b16e6079';
            $('input.bookingTicket').val(_t);

        });

        /**
         * 탑승객 카운트 선택 레이어 호출
         */
        var selectPassengerCount = function(){
            $('#top_passenger_type').show().focus();
        };
        var selectPassengerCountClose = function() {
        	$('a.selected_passenger').focus();
            $('#top_passenger_type').hide();
        };


        /**
         * 다구간 여정 관리, 다구간 기능은 없지만 캘린더에서 사용하는 변수들입니다.
         */
        var currentItineraryNumber = 1; // 현재 선택 진행중인 여정 구간
        var minMultiTripItineraryCount = 2; // 최소 여정 수
        var maxMultiTripItineraryCount = 4; // 최대 여정 수
        var multiTripItineraryCount = 2; // 초기 여정 수

        //입력값이 있을때 표시
        $('.input_wrap input.booking').on('keydown keyup change', function(){
            var Length = $(this).val().length;
            if(Length > 0){
                $(this).parents('.input_wrap').addClass('on');
            }else{
                $(this).parents('.input_wrap').removeClass('on');
            }
        });


        /**
         * 공항 검색 input box focus out 된 경우 아이콘 처리
         */
        var checkAirportPinStatus = function(inputObj, routeIndex){

            var tripType = $('input[name="tripType"]:checked').val();

            if($(inputObj).hasClass('start') && $('input[name="availabilitySearches['+routeIndex+'].depAirport"]').val()!=''){
                $(inputObj).parents('div.input_wrap').find('div.selected_area').addClass('on');
                $(inputObj).parents('div.input_wrap').addClass('focus');
            }
            else if($(inputObj).hasClass('end') && $('input[name="availabilitySearches['+routeIndex+'].arrAirport"]').val()!=''){
                $(inputObj).parents('div.input_wrap').find('div.selected_area').addClass('on');
                $(inputObj).parents('div.input_wrap').addClass('focus');
            }
            else{
                $(inputObj).parents('div.input_wrap').find('div.selected_area').removeClass('on');
                $(inputObj).parents('div.input_wrap').removeClass('focus');
            }

        };



        /**
         * 한국지역 선택시에만 단체 선택 노출
         */
        $(document).ready(function(){
            /*
            // 한국지역이 아닌경우 단체 미노출, if('KR' != 'KR'){
            if('KR' != 'KR'){
                $('div.res_grouping').hide();
            }
            */

            $('.tooltip_layer').hide();
            $('.btn_tooltip').on('mouseover focusin', function() {
                $(this).addClass('on');
                $(this).find('.tooltip_layer').show();
            });
            $('.btn_tooltip').on('mouseleave focusout', function() {
                $(this).removeClass('on');
                $(this).find('.tooltip_layer').hide();
                //$(this).next().focus();
            });
        });

        /**
         * trip type 선택 event handling
         */
        $(document).ready(function(){

            var frm = $('#airAvailabilityRQ');

            $('div.booking_option input[name="tripTypeButton"]').on('change', function(){
                var tripType = $('div.booking_option input[name="tripTypeButton"]:checked').val();

                $.each(frm.find('input[name="tripType"]'),function(index,el){
                    if($(el).val()==tripType){
                        $(el).prop('checked',true);
                        checkTripType();
                    }
                });
            });

        });


        /**
         * 출발노선선택 레이어 준비
         */
        $(document).ready(function(){
            // routeDeparture($('input[name="tripType"]:checked').val());
        });

        /**
         * TripType 선택시 출발노선 레이어 준비
         */
        // $('input[name="tripType"]').change(function(){
        //     removeLayer('route_departure');
        //     routeDeparture($(this).val());
        // });

        /**
         * 탑승객 수 선택 event handling
         */
        $(document).ready(function(){

            // RQ
            var pax_count = {};
            pax_count = {'ADULT' : 0, 'CHILD' : 0, 'INFANT' : 0 };

            var _pax_list = [{'paxCount':1,'paxType':'ADULT'},{'paxCount':0,'paxType':'CHILD'},{'paxCount':0,'paxType':'INFANT'}];

            $.each(_pax_list, function(pi,pp){
                if($.trim(pp.paxType)!=''){
                    pax_count[pp.paxType] = pp.paxCount;
                }
            });

            $.each($('.pax input'), function(){
                if(parseInt(pax_count[$(this).data('div')],10) > 0){
                    $(this).val(pax_count[$(this).data('div')]);
                }
            });

            // 성인 탑승자수 변경 이벤트 처리
            $('.pax input').change(function(){
                choosePaxCount($(this));
            });

        });

        var changePaxCount = function(div, count){

            // console.log('#### changePaxCount : ' + div +'/'+count);
            var paxCount = parseInt($('.pax input.'+div).val(),10);

            if(count>0){
                $('.pax input.'+div).val(paxCount+1);
            }
            else if(div =='ADULT' && count<0 && paxCount>1){
                $('.pax input.'+div).val(paxCount-1);
            }
            else if(div !='ADULT' && count<0 && paxCount>0){
                $('.pax input.'+div).val(paxCount-1);
            }

            choosePaxCount($('.pax input.'+div));

        };


        /**
         * 상단 단체 체크박스 이벤트 처리
         */
        $(document).ready(function(){
            $('input.bookingTypeGroup').change(function(){

                /**
                 * 개인 -> 단체 예약 전환
                 * 성인 소아 유아 : 10 0 0 으로 설정 및 form 초기화
                 */
                if($(this).prop('checked')){

                	var deepLinkInfo = null;
                	var alert_msg_group_corporate = '\uB2E8\uCCB4\uD56D\uACF5\uAD8C\uC740 \uAE30\uC5C5 \uC6B0\uB300 \uD560\uC778\uC774 \uC801\uC6A9\uB418\uC9C0 \uC54A\uC2B5\uB2C8\uB2E4.';	//단체항공권은 기업 우대 할인이 적용되지 않습니다.

                	if(deepLinkInfo != null && deepLinkInfo.deepLinkDiv == 'C'){
                		alert(alert_msg_group_corporate);
                	}

                	$('.pax input.ADULT').val(10);
                    $('.pax input.CHILD').val(0);
                    $('.pax input.INFANT').val(0);

                    initSearchForm();
                }
                /**
                 * 단체 -> 개인 예약 전환
                 * 성인 소아 유아 : 1 0 0 으로 설정, 구간, 일정 form은 초기화 하지 않습니다.
                 */
                else{
                    $('.pax input.ADULT').val(1);
                    $('.pax input.CHILD').val(0);
                    $('.pax input.INFANT').val(0);

                    setBookingType();
                }
            });
        });

        /**
         * 인원선택 변경에 따른 bookingType 전환
         */
        var setBookingType = function(){

            var paxCount = parseInt($('.pax input.ADULT').val(),10) + parseInt($('.pax input.CHILD').val(),10);

            // console.log('setBookingType : ' + paxCount);

            $.each($('input[name="bookingType"]'), function(index,el){

                // 개인
                if($(el).val()=='HI' && paxCount<10){

                    $('input.bookingTypeGroup').prop('checked', false);

                    $(el).prop('checked', true);

                    $('input[name="paxCountDetails[0].paxCount"]').val($('.pax input.ADULT').val());
                    $('input[name="paxCountDetails[1].paxCount"]').val($('.pax input.CHILD').val());
                    $('input[name="paxCountDetails[2].paxCount"]').val($('.pax input.INFANT').val());
                }
                // 단체
                else if($(el).val()=='HG' && paxCount>=10){
                    $(el).prop('checked', true);
                }
            });

            pax_count_before_change[0] = parseInt($('input[name="paxCountDetails[0].paxCount"]').val(),10);
            pax_count_before_change[1] = parseInt($('input[name="paxCountDetails[1].paxCount"]').val(),10);
            pax_count_before_change[2] = parseInt($('input[name="paxCountDetails[2].paxCount"]').val(),10);

            choosePaxCount();
        };

        var pax_count_individual = 9; // 개인 최대 인원 수
        var pax_count_group = 30; // 단체 최대 인원 수
        var pax_count_before_change = [1,0,0]; // 인원수 변경 이전 최종 여행객 수
        var alert_msg_max_pax = '\uC131\uC778\uACFC \uC18C\uC544 \uC778\uC6D0\uC744 \uD569\uD574 30\uBA85\uAE4C\uC9C0 \uC120\uD0DD \uAC00\uB2A5\uD569\uB2C8\uB2E4.';//'성인과 소아 인원을 합해 30명까지 선택 가능합니다.';
        var alert_msg_max_infant_pax = '\uC720\uC544 1\uBA85\uB2F9 \uC131\uC778 1\uBA85\uC774 \uBC18\uB4DC\uC2DC \uB3D9\uBC18\uB418\uC5B4\uC57C \uD569\uB2C8\uB2E4.';//'유아 1명당 성인 1명이 반드시 동반되어야 합니다.';
        var alert_msg_chage_group_booking = '\uB2E8\uCCB4 \uD56D\uACF5\uAD8C \uAC80\uC0C9\uC744 \uC704\uD574 \uC120\uD0DD\uD55C \uC815\uBCF4\uB97C \uCD08\uAE30\uD654 \uD558\uC2DC\uACA0\uC2B5\uB2C8\uAE4C?';//'단체 항공권 검색을 위해 선택한 정보를 초기화 하시겠습니까?';
        var alert_msg_chage_individual_booking = '\uD56D\uACF5\uAD8C \uC7AC \uAC80\uC0C9\uC744 \uC704\uD574 \uC120\uD0DD\uD55C \uC815\uBCF4\uB97C \uCD08\uAE30\uD654 \uD558\uC2DC\uACA0\uC2B5\uB2C8\uAE4C?';// '항공권 재 검색을 위해 선택한 정보를 초기화 하시겠습니까?';

        $(document).ready(function(){
            pax_count_before_change[0] = parseInt($('input[name="paxCountDetails[0].paxCount"]').val(),10);
            pax_count_before_change[1] = parseInt($('input[name="paxCountDetails[1].paxCount"]').val(),10);
            pax_count_before_change[2] = parseInt($('input[name="paxCountDetails[2].paxCount"]').val(),10);
        });

        var choosePaxCount = function(el){


            // 구분별 탑승자수
            var pax_count = [];
            pax_count.push(parseInt($('.pax input.ADULT').val(),10)); // 성인
            pax_count.push(parseInt($('.pax input.CHILD').val(),10)); // 소아
            pax_count.push(parseInt($('.pax input.INFANT').val(),10)); // 유아

            // console.log('여행객 수 변경 '+(pax_count_before_change[0]+pax_count_before_change[1])+'->'+(pax_count[0]+pax_count[1]))

            // console.log(pax_count[0]+'/'+pax_count[1]+'/'+pax_count[2]);

            // 개인 -> 단체 전환
            if((pax_count_before_change[0]+pax_count_before_change[1])<=pax_count_individual && pax_count[0] + pax_count[1] > pax_count_individual){
                // console.log('개인 -> 단체 전환');

                // 개인 -> 단체 전환
                if(confirm(alert_msg_chage_group_booking)){

                    // 단체 checkbox check !!
                    $('input[name="bookingTypeGroup"]').prop('checked', true);

                    // 최종 변경된 여행객 수 저장
                    pax_count_before_change[0] = pax_count[0];
                    pax_count_before_change[1] = pax_count[1];
                    pax_count_before_change[2] = pax_count[2];

                    initSearchForm();

                }
                else{

                    // 단체 checkbox check 해제 !!
                    $('input[name="bookingTypeGroup"]').prop('checked', false);

                    // 이전 선택 여행객수로 되돌려줍니다.
                    $('.pax input.ADULT').val(pax_count_before_change[0]);
                    $('.pax input.CHILD').val(pax_count_before_change[1]);
                    $('.pax input.INFANT').val(pax_count_before_change[2]);

                    $('input[name="paxCountDetails[0].paxCount"]').val(pax_count_before_change[0]);
                    $('input[name="paxCountDetails[1].paxCount"]').val(pax_count_before_change[1]);
                    $('input[name="paxCountDetails[2].paxCount"]').val(pax_count_before_change[2]);

                    return false;
                }


            }
            // 단체 -> 개인 전환
            else if((pax_count_before_change[0]+pax_count_before_change[1])>pax_count_individual && pax_count[0] + pax_count[1] <= pax_count_individual){
                // console.log('단체 -> 개인 전환');


                /**
                 * 단체 -> 개인 전환시 form 초기화 하지 않기로 정책 변경. 2019-01-11
                 */

                /*

                // 단체 -> 개인 전환
                if(confirm(alert_msg_chage_individual_booking)){

                    // 단체 checkbox check !!
                    $('input[name="bookingType"]').prop('checked', false);

                    // 최종 변경된 여행객 수 저장
                    pax_count_before_change[0] = pax_count[0];
                    pax_count_before_change[1] = pax_count[1];
                    pax_count_before_change[2] = pax_count[2];

                    initSearchForm();

                }
                else{

                    // 단체 checkbox check 해제 !!
                    $('input[name="bookingType"]').prop('checked', true);

                    // 이전 선택 여행객수로 되돌려줍니다.
                    $('.pax select.ADULT').val(pax_count_before_change[0]);
                    $('.pax select.CHILD').val(pax_count_before_change[1]);
                    $('.pax select.INFANT').val(pax_count_before_change[2]);

                    return false;
                }
                */
                setBookingType();

            }

            // 30인 이상 초과
            if(pax_count[0] + pax_count[1] > pax_count_group){

                alert(alert_msg_max_pax);

                // 이전 선택 여행객수로 되돌려줍니다.
                $('.pax input.ADULT').val(pax_count_before_change[0]);
                $('.pax input.CHILD').val(pax_count_before_change[1]);
                $('.pax input.INFANT').val(pax_count_before_change[2]);

                return false;
            }

            // 유아 탑승자수 변경 이벤트 처리
            // if($(el).hasClass('INFANT')){
                // 성인 숫자보다 많은 경우
                if(pax_count[0] < pax_count[2]){
                    alert(alert_msg_max_infant_pax);
                    pax_count[2] = pax_count[0];
                    $('.pax input.INFANT').val(pax_count[2]);
                    pax_count_before_change[2] = pax_count[2];
                }
            // };

            $('input[name="paxCountDetails[0].paxCount"]').val(pax_count[0]);
            $('input[name="paxCountDetails[1].paxCount"]').val(pax_count[1]);
            $('input[name="paxCountDetails[2].paxCount"]').val(pax_count[2]);


            // 선택한 탑승객 표출
            var label_adult = '\uC131\uC778';//'성인';
            var label_child = '\uC18C\uC544';//'소아';
            var label_infant = '\uC720\uC544';//'유아';


            var passenger_display_html = '<span>'+label_adult+' '+pax_count[0]+'</span>';
            passenger_display_html += '<span>'+label_child+' '+pax_count[1]+'</span>';
            passenger_display_html += '<span>'+label_infant+' '+pax_count[2]+'</span>';

            $('.passengerCountStatus').html(passenger_display_html);

        };

        $(document).ready(function(){
            choosePaxCount();
        })

        /**
         * 입력폼 초기화
         */
        var initSearchForm = function(){

            /**
             * airAvailabilityRQ form reset
             */
            $('#airAvailabilityRQ input.reset_target').val('');

            /**
             * display 영역 초기화
             */
            // tripType = RT
            // $('div.tab_section ul.chk_rdo_list input[name="tripTypeButton"]').eq(0).prop('checked', true);
            // $('div.tab_section ul.chk_rdo_list input[name="tripTypeButton"]').trigger('change');
            checkTripType();

            // 왕복/편도 공항, 출도착일 정보
            var alert_msg_city_airport = '\uB3C4\uC2DC/\uACF5\uD56D';
            $('#booking01 div.start').removeClass('focus');
            $('#booking01 div.start div.selected_area').removeClass('on');

            $('#booking01 div.end').removeClass('focus');
            $('#booking01 div.end div.selected_area').removeClass('on');

            $('#booking01 div.date').removeClass('focus');
            $('#booking01 div.date input').val('');


            $('#booking02 div.start').removeClass('focus');
            $('#booking02 div.start div.selected_area').removeClass('on');

            $('#booking02 div.end').removeClass('focus');
            $('#booking02 div.end div.selected_area').removeClass('on');

            $('#booking02 div.date').removeClass('focus');
            $('#booking02 div.date input').val('');

            $('input[name="paxCountDetails[0].paxCount"]').val($('.pax input.ADULT').val());
            $('input[name="paxCountDetails[1].paxCount"]').val($('.pax input.CHILD').val());
            $('input[name="paxCountDetails[2].paxCount"]').val($('.pax input.INFANT').val());

            setBookingType();

        };

        /**
         * tripType 선택에 따른 form control
         */

        var checkTripType = function(){
            var tripType = $('input[name="tripType"]:checked').val();
            $('ul.sel_section li').removeClass('on');
            $('ul.sel_section li a').removeAttr('title');

            // 왕복
            if(tripType == 'RT'){
                $('#booking01').show();
                $('#booking02').hide();

                $('ul.sel_section li').eq(0).addClass('on');
                $('ul.sel_section li.on a').attr('title','선택됨');

                // 편도 출발정보가 있는 경우 돌아오는편 정보에 설정
                if($('input[name="availabilitySearches[0].depAirport"]').val()!='' && $('input[name="availabilitySearches[0].arrAirport"]').val()!=''){
                    $('input[name="availabilitySearches[1].depAirport"]').val($('input[name="availabilitySearches[0].arrAirport"]').val());
                    $('input[name="availabilitySearches[1].arrAirport"]').val($('input[name="availabilitySearches[0].depAirport"]').val());
                }

            }
            // 편도
            else if(tripType == 'OW') {
                $('#booking01').hide();
                $('#booking02').show();
                $('#booking03').hide();
                $('ul.sel_section li').eq(1).addClass('on');
                $('ul.sel_section li.on a').attr('title','선택됨');

                // 날짜 표출 영역, 출발일만 노출
                // console.log($('#booking01 .multiple .wave').length);
                // console.log($('#booking01 .multiple .wave').html());

            }
        };

        $(document).ready(function(){

            // set event handler
            $('input[name="tripType"]').change(function(){
                checkTripType();
            });

            checkTripType();
        });





        /**
         * 여정선택완료, 다음으로 이동
         */
        var chooseItinerary = function(){

			//check csrf Token - 200212 PJH
			try{
				checkCsrfToken('3546f9b6-b35c-4748-ac74-b76bcb69f72d','_csrf');
			} catch (e) {
				console.log('checkCsrfToken Exception');
			}

            var alert_msg_choose_itinerary = '\uC5EC\uD589\uD558\uC2E4 \uB178\uC120\uC744 \uC120\uD0DD\uD574\uC8FC\uC138\uC694.'; //여행하실 노선을 선택해주세요.
            var alert_msg_choose_schedule = '\uCD9C\uBC1C\uC77C\uC744 \uC120\uD0DD\uD574\uC8FC\uC138\uC694.'; // 출발일을 선택해주세요.
            var alert_msg_choose_schedule_roundtrip = '\uCD9C/\uB3C4\uCC29\uC77C\uC744 \uBAA8\uB450 \uC120\uD0DD\uD574\uC8FC\uC138\uC694.'; // 출/도착일을 모두 선택해주세요.
            var alert_msg_check_promocode = '\uC785\uB825\uD558\uC2E0 \uD504\uB85C\uBAA8\uC158\uCF54\uB4DC\uC758 \uD560\uC778\uADDC\uC815\uC744 \uD655\uC778\uD574\uC8FC\uC138\uC694.'; // '입력하신 프로모션코드의 할인규정을 확인해주세요.';
            var alert_msg_promocode_login = '\uD574\uB2F9 \uD504\uB85C\uBAA8\uC158 \uCF54\uB4DC\uB294 \uD68C\uC6D0 \uB85C\uADF8\uC778 \uC774\uD6C4 \uC0AC\uC6A9\uC774 \uAC00\uB2A5\uD569\uB2C8\uB2E4.'; // '해당 프로모션 코드는 로그인 이후 사용이 가능합니다.';
            var alert_msg_promocode_already_use = '\uD574\uB2F9 \uD504\uB85C\uBAA8\uC158 \uCF54\uB4DC\uB294 \uC774\uBBF8 \uC0AC\uC6A9\uD55C \uC774\uB825\uC774 \uC874\uC7AC\uD569\uB2C8\uB2E4.'; // '해당 프로모션 코드는 이미 사용한 이력이 존재합니다.';
            var alert_msg_connect_flight_surface = '{0}\uBC88\uC9F8 \uAD6C\uAC04\uC758 \uB3C4\uCC29\uACF5\uD56D\uACFC {1}\uBC88\uC9F8 \uAD6C\uAC04 \uCD9C\uBC1C\uACF5\uD56D\uC740 \uAC19\uC740 \uC9C0\uC5ED(\uB300\uB959)\uC774\uC5B4\uC57C \uD569\uB2C8\uB2E4.'; // '{0}번째 구간의 도착공항과 {1}번째 구간 출발공항은 같은 지역(대륙)이어야 합니다.';
            var alert_msg_max_length_stay = '\uCCAB\uBC88\uC9F8 \uAD6C\uAC04\uC758 \uCD9C\uBC1C\uC77C\uC5D0\uC11C \uB9C8\uC9C0\uB9C9 \uAD6C\uAC04\uC758 \uB3C4\uCC29\uC77C\uAE4C\uC9C0\uC758 \uAE30\uAC04\uC740 365\uC77C\uC744 \uCD08\uACFC\uD560 \uC218 \uC5C6\uC2B5\uB2C8\uB2E4.'; // '첫번째 구간의 출발일에서 마지막 구간의 도착일까지의 기간은 365일을 초과할 수 없습니다.';
            var alert_msg_connect_schedule = '\uAD6C\uAC04{0}\uC758 \uCD9C\uBC1C\uC77C\uC740 \uAD6C\uAC04{1}\uC758 \uCD9C\uBC1C\uC77C\uBCF4\uB2E4 \uBE60\uB978\uB0A0\uC9DC\uB97C \uC120\uD0DD\uD560 \uC218 \uC5C6\uC2B5\uB2C8\uB2E4.'; // '구간{0}의 출발일은 구간{1}의 출발일보다 빠른날짜를 선택할 수 없습니다.';
            var alert_msg_check_adult_cnt = '\uC131\uC778 \uD0D1\uC2B9\uAC1D \uC218\uB97C \uC120\uD0DD\uD574\uC8FC\uC138\uC694';// '성인 탑승객 수를 선택해주세요'

            var frm = $('#airAvailabilityRQ');

            frm.find('input.rqParam').remove();

            // 탑승객
            frm.append('<input type="hidden" name="pax" class="rqParam" value="'+ $('#airAvailabilityRQ input[name="paxCountDetails[0].paxCount"]').val() +'"/>');
            frm.append('<input type="hidden" name="pax" class="rqParam" value="'+ $('#airAvailabilityRQ input[name="paxCountDetails[1].paxCount"]').val() +'"/>');
            frm.append('<input type="hidden" name="pax" class="rqParam" value="'+ $('#airAvailabilityRQ input[name="paxCountDetails[2].paxCount"]').val() +'"/>');

            // promoCode 입력된 경우 규정 확인 및 유효성 통과 여부 체크 - 개인만 적용, 유효성 체크하지 않는 것으로 변경합니다.
         	// 기업우대 예약인 경우 promoCode 세팅
            var promoCode = '';
            var isPromocodeByUser = false;

            if(typeof $('div.code input[name="promoCode"]').val() != 'undefined' && $('div.code input[name="promoCode"]').val().length>0){
            	promoCode = $('div.code input[name="promoCode"]').val();
            	isPromocodeByUser = true;
            }

            if($('input[name="bookingType"]:checked').parent().attr('id') == 'bookingType_individual'){

                if(promoCode.length>0){
                    var isValid = false;
                    $.ajax({
                        url : '/ajax/layerComponents/discountCodeRule', // ajax url
                        dataType : 'json', // ajax 통신의 데이터 형식
                        async : false,  // 동기(false):비동기(true)
                        type : 'get',
                        data : {
                            promoCode:promoCode,
                            isPromocodeByUser:isPromocodeByUser
                        },
                        success : function(data){
                            // console.log(data);
                            if(data.success){
                            	frm.find('input[name="promoCode"]').val(promoCode);
                                isValid = true;
                            } else {
                            	switch(data.messageCode){
	            					case "BKG_CHECK_PROMOCODE" :
	            						alert(alert_msg_check_promocode); break;
	            					case "BKG_PROMOCODE_LOGIN" :
	            						alert(alert_msg_promocode_login);
	        							frm.find('input[name="returnUrl"]').remove();
	        							frm.find('input[name="returnSubmitType"]').remove();
	        							frm.append('<input type="hidden" name="returnUrl" value="/app/booking/searchItinerary"/>');
	        							frm.append('<input type="hidden" name="returnSubmitType" value="GET"/>');

	        							// loading
	        							beginLoadingAnimation();

	        							frm.attr('action','/app/login/memberLogin').submit();
	            						break;
	            					case "BKG_PROMOCODE_ALREADY_USE" :
	            						alert(alert_msg_promocode_already_use); break;
	            					default : break;
	            				}
                            }
                        }
                    });

                    if(!isValid) {
                        return false;
                    }
                }
            }

            //왕복
            if($('#tripType_RT:checked').length==1) {


                // 노선 선택 여부
                if($('#airAvailabilityRQ input[name="availabilitySearches[0].depAirport"]').val()=='' || $('#airAvailabilityRQ input[name="availabilitySearches[1].depAirport"]').val()==''
                    || $('#airAvailabilityRQ input[name="availabilitySearches[0].arrAirport"]').val()=='' || $('#airAvailabilityRQ input[name="availabilitySearches[1].arrAirport"]').val()==''){
                    alert(alert_msg_choose_itinerary);
                    $('#booking01 input.booking.start').focus();
                    return false;
                }

                // 출/도착일 선택 여부
                if($('#airAvailabilityRQ input[name="availabilitySearches[0].flightDate"]').val()=='' || $('#airAvailabilityRQ input[name="availabilitySearches[1].flightDate"]').val()==''){
                    alert(alert_msg_choose_schedule_roundtrip);
                    $('#booking01 input.booking.date.focus_date1').focus();
                    return false;
                }

              	//출도착 공항이 같은 경우 편도로 변경하여 form submit
                if ($('input[name="availabilitySearches[0].depAirport"]').val() == $('input[name="availabilitySearches[0].arrAirport"]').val())
               	{
                	// 출발공항정보
                    frm.append('<input type="hidden" name="deptAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[0].depAirport"]').val() +'"/>');
                    // 도착공항정보
                    frm.append('<input type="hidden" name="arriAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[0].arrAirport"]').val() +'"/>');
                    // 출발일 정보
                    frm.append('<input type="hidden" name="schedule" class="rqParam" value="'+ $('input[name="availabilitySearches[0].flightDate"]').val() +'"/>');

                	$('#display_tripType_OW').prop('checked',true);
                    $('#tripType_OW').prop('checked',true);
               	}
                else
                {
	                // 출발공항정보
	                frm.append('<input type="hidden" name="deptAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[0].depAirport"]').val() +'"/>');
	                frm.append('<input type="hidden" name="deptAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[1].depAirport"]').val() +'"/>');

	                // 도착공항정보
	                frm.append('<input type="hidden" name="arriAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[0].arrAirport"]').val() +'"/>');
	                frm.append('<input type="hidden" name="arriAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[1].arrAirport"]').val() +'"/>');

	                // 출발일 정보
	                frm.append('<input type="hidden" name="schedule" class="rqParam" value="'+ $('input[name="availabilitySearches[0].flightDate"]').val() +'"/>');
	                frm.append('<input type="hidden" name="schedule" class="rqParam" value="'+ $('input[name="availabilitySearches[1].flightDate"]').val() +'"/>');
                }

            }
            // 편도
            else if($('#tripType_OW:checked').length==1) {

                // 노선 선택 여부
                if($('#airAvailabilityRQ input[name="availabilitySearches[0].depAirport"]').val()=='' || $('#airAvailabilityRQ input[name="availabilitySearches[0].arrAirport"]').val()==''){
                	$('#booking02 input.booking.start').focus();
                	alert(alert_msg_choose_itinerary);
                    return false;
                }

                // 출발일 선택 여부
                if($('#airAvailabilityRQ input[name="availabilitySearches[0].flightDate"]').val()==''){
                	$('#booking02 input.booking.date.focus_date1').focus();
                	alert(alert_msg_choose_schedule);
                    return false;
                }

                // 출발공항정보
                frm.append('<input type="hidden" name="deptAirportCode" class="rqParam" value="'+ $('#airAvailabilityRQ input[name="availabilitySearches[0].depAirport"]').val() +'"/>');

                // 도착공항정보
                frm.append('<input type="hidden" name="arriAirportCode" class="rqParam" value="'+ $('#airAvailabilityRQ input[name="availabilitySearches[0].arrAirport"]').val() +'"/>');

                // 출발일 정보
                frm.append('<input type="hidden" name="schedule" class="rqParam" value="'+ $('#airAvailabilityRQ input[name="availabilitySearches[0].flightDate"]').val() +'"/>');

            }

            // 성인 탑승객 수 검사
            var adultCnt = $('input[name="paxCountDetails[0].paxCount"]').val();
            if(adultCnt < 1){
            	alert(alert_msg_check_adult_cnt);
            	return false;
            }



            /**
             * 단체항공권 관련 체크
             * 1. 로그인 여부
             * 2. 1일 최대 예약 건수 - 2회
             */
            var groupBookingFlag = parseInt($('input[name="paxCountDetails[0].paxCount"]').val(),10) + parseInt($('input[name="paxCountDetails[1].paxCount"]').val(),10) > 9;

            if(groupBookingFlag){

                var alert_msg_ruquest_login_grp_booking = '\uB2E8\uCCB4\uD56D\uACF5\uAD8C \uC608\uB9E4\uB294 \uB85C\uADF8\uC778 \uD6C4 \uC11C\uBE44\uC2A4 \uC774\uC6A9\uC774 \uAC00\uB2A5\uD569\uB2C8\uB2E4. \uB85C\uADF8\uC778\uD558\uC2DC\uACA0\uC2B5\uB2C8\uAE4C?'; // 단체항공권 예매는 로그인 후 서비스 이용이 가능합니다. 로그인하시겠습니까?
                if('' !='customer'){
                    if(confirm(alert_msg_ruquest_login_grp_booking)){

                        $.ajax({
                            url : "/ajax/booking/setChooseItineraryParameters" // ajax url
                            , dataType : 'json' // ajax 통신의 데이터 형식
                            , async: true // 동기(false):비동기(true)
                            , type : 'post'
                            , data : frm.serialize()
                            , success : function(data){

                                // console.log(data);

                                /**
                                 * 여정 및 번들정보 세션에 저장 후 로그인 화면으로 이동
                                 */
                                frm.find('input[name="returnUrl"]').remove();
                                frm.find('input[name="returnSubmitType"]').remove();
                                frm.append('<input type="hidden" name="returnUrl" class="rqParam" value="/app/booking/groupBookingLoginLanding"/>');
                                frm.append('<input type="hidden" name="returnSubmitType" class="rqParam" value="POST"/>');

                                // loading
                                frm.attr('action','/app/login/memberLogin').submit();
                                beginLoadingAnimation();

                            }
                            , error : function(xhr, status, error){
                                var error_confirm=confirm('\uB370\uC774\uD130 \uC804\uC1A1 \uC624\uB958\uC785\uB2C8\uB2E4. \uD655\uC778\uC744 \uB204\uB974\uC2DC\uBA74 \uD398\uC774\uC9C0\uAC00 \uC0C8\uB85C\uACE0\uCE68\uB429\uB2C8\uB2E4.');
                                if(error_confirm==true){
                                    document.location.reload();
                                }
                            }
                        });

                    }
                }
                /**
                 * 로그인 상태라면 단체예약 1일 2건 제한 상태 확인
                 * /ajax/booking/getGroupBookingCount
                 */
                else{

                    $.ajax({
                        url: "/ajax/booking/getGroupBookingCount" // ajax url
                        , dataType: 'json' // ajax 통신의 데이터 형식
                        , async: true // 동기(false):비동기(true)
                        , type: 'post'
                        , data : frm.serialize()
                        , success: function (data) {


                            if (data.data.cnt >= 2) {
                                alert('\uB2E8\uCCB4\uD56D\uACF5\uAD8C \uC608\uB9E4\uB294 1\uC77C 2\uD68C\uAE4C\uC9C0\uB9CC \uAC00\uB2A5\uD569\uB2C8\uB2E4.'); // 단체항공권 예매는 1일 2회까지만 가능합니다.
                            }
                            else{
                                frm.submit();
                                beginLoadingAnimation();
                            }

                        }
                        , error: function (xhr, status, error) {
                            var error_confirm = confirm('\uB370\uC774\uD130 \uC804\uC1A1 \uC624\uB958\uC785\uB2C8\uB2E4. \uD655\uC778\uC744 \uB204\uB974\uC2DC\uBA74 \uD398\uC774\uC9C0\uAC00 \uC0C8\uB85C\uACE0\uCE68\uB429\uB2C8\uB2E4.');
                            if (error_confirm == true) {
                                document.location.reload();
                            }
                        }
                    });
                }


            }else{
                frm.submit();
                beginLoadingAnimation();
            }
        };



        /**
         * 출/도착지 정보의 노출정보 TEXT 정리
         */
        var airportDisplayText = function(el){

            var text = el['city'];
            if(el['city']!=el['airport']){
                text += '/'+el['airport'];
            }
            // text += ' '+el['airport_code'];
            return text;
        };


        /**
         * 저장된 RQ가 있는경우 정보 표출
         */
        var reformAirAvailabilityRQInfo = function(){

            $.each($('div.tab_section ul.chk_rdo_list input[name="tripTypeButton"]'),function(){
                if($(this).val()==$('#airAvailabilityRQ input[name="tripType"]:checked').val()){
                    $(this).prop('checked', true);
                }
            });


            // 노선정보
            if($('input[name="availabilitySearches[0].depAirport"]').val()!='' && $('input[name="availabilitySearches[0].arrAirport"]').val()!=''){

                $('#booking01 div.start').addClass('focus');
                $('#booking01 div.start div.selected_area').addClass('on');
                $('#booking01 div.start div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].depAirportName"]').val());
                $('#booking01 div.start div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].depAirport"]').val());

                $('#booking01 div.end').addClass('focus');
                $('#booking01 div.end div.selected_area').addClass('on');
                $('#booking01 div.end div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].arrAirportName"]').val());
                $('#booking01 div.end div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].arrAirport"]').val());


                $('#booking02 div.start').addClass('focus');
                $('#booking02 div.start div.selected_area').addClass('on');
                $('#booking02 div.start div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].depAirportName"]').val());
                $('#booking02 div.start div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].depAirport"]').val());

                $('#booking02 div.end').addClass('focus');
                $('#booking02 div.end div.selected_area').addClass('on');
                $('#booking02 div.end div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].arrAirportName"]').val());
                $('#booking02 div.end div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].arrAirport"]').val());

            }

            // 탑승일 정보
            if($('input[name="availabilitySearches[0].flightDate"]').val()!=''){

                $('#booking01 div.input_wrap.date').addClass('focus');
                $('#booking01 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                $('#booking01 input.booking.date').eq(1).val($('input[name="availabilitySearches[1].flightDate"]').val());

                if($('input[name="availabilitySearches[1].flightDate"]').val()!=''){
                    $('#booking01 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                }


                $('#booking02 div.input_wrap.date').addClass('focus');
                $('#booking02 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                $('#booking02 input.booking.date').eq(1).val($('input[name="availabilitySearches[1].flightDate"]').val());

                if($('input[name="availabilitySearches[1].flightDate"]').val()!=''){
                    $('#booking02 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                }
            }
        };

        $(document).ready(function(){
            reformAirAvailabilityRQInfo();
        });


        /**
         * 나이계산기
         */
        var alert_msg_select_route = '\uB178\uC120\uACFC \uCD9C\uBC1C\uC77C\uC744 \uBA3C\uC800 \uC120\uD0DD\uD574\uC8FC\uC138\uC694.'; // 노선과 출발일을 먼저 선택해주세요.
        var howOldAreYou = function(){

            var depAirport = $('input[name="availabilitySearches[0].depAirport"]').val();
            var arrAirport = $('input[name="availabilitySearches[0].arrAirport"]').val();
            var flightDate = $('input[name="availabilitySearches[0].flightDate"]').val();

            if(depAirport!='' && arrAirport!='' && flightDate!=''){

                flightDate = flightDate.replace(/\-/g,"");

                ageCalculater(flightDate, depAirport, arrAirport);
            }
            else{
                alert(alert_msg_select_route);
            }
        };

        /**
         * 프로모션코드 유효성 검사
         */

        $(document).ready(function(){
            $('div.code input[name="promoCode"]').change(function(){
                $("input[name='validPromoCode']").val('N');
                $('input[name="promoCodeDetails.promoCode"]').val('');
            });
        });

        $('.btn_salecode').on('click', function() {
        	$('.discountCodeRule_area').empty();
            var alert_msg_promocode_required = '\uD560\uC778\uCF54\uB4DC\uB97C \uC785\uB825\uD574 \uC8FC\uC138\uC694.';//'프로모션코드를 입력해 주세요.';

            var promoCode = $('div.code input[name="promoCode"]').val();

            if(promoCode==''){
                alert(alert_msg_promocode_required);
                $('div.code input[name="promoCode"]').focus();
                return false;
            }
            else{
                discountCodeInfo(promoCode);
                $(this).parents().find('.tooltip_layer.txt').fadeToggle(150);
            }
    	});

		$('.tooltip_layer.txt.checked').on('click', function() {
				$(this).parents().find('.tooltip_layer.txt').fadeToggle(150);
		});

        /**
         * 입력한 할인코드 안내
         * @param promoCode
         */
        var discountCodeInfo = function(promoCode){

            if(promoCode == ''){
                var alert_msg_promocode_required = '\uD560\uC778\uCF54\uB4DC\uB97C \uC785\uB825\uD574 \uC8FC\uC138\uC694.';//'프로모션코드를 입력해 주세요.';
                alert(alert_msg_promocode_required);
                return false;
            } else {
            	var alert_msg_check_promocode = '\uC785\uB825\uD558\uC2E0 \uD504\uB85C\uBAA8\uC158\uCF54\uB4DC\uC758 \uD560\uC778\uADDC\uC815\uC744 \uD655\uC778\uD574\uC8FC\uC138\uC694.'; // '입력하신 프로모션코드의 할인규정을 확인해주세요.';
                appendLayer('discount_code_rule');
                $.ajax({
                    url : '/ajax/layerComponents/discountCodeRule', // ajax url
                    dataType : 'json', // ajax 통신의 데이터 형식
                    async : true,  // 동기(false):비동기(true)
                    type : 'get',
                    data : {
                        promoCode:promoCode
                    },
                    success : function(data){
                    	// console.log(data);
                    	if(data.messageCode == "BKG_CHECK_PROMOCODE"){
                        	$('.discountCodeRule_area').html('');
                        } else {
                        	$('.discountCodeRule_area').html(data.data.promocode.promoExplain);
                        }
                    }
                });
            }
        };

        /**
         * 입력한 할인코드의 유효성 확인
         */
        var callbackDiscountCode = function(useYn){

            $("input[name='validPromoCode']").val(useYn);

            if(useYn != 'Y'){
                $('div.code input[name="promoCode"]').val('').focus();
            }
            else{
                var promoCode = $('div.code input[name="promoCode"]').val();
                $('input[name="promoCodeDetails.promoCode"]').val(promoCode);
            }
        };



        //--
        //-- 시작 -  출/도착공항 선택, 여정선택 레이어 control
        //--

        /**
         * 출발 공항 선택 레이어 호출
         * itineraryNumber ; 여정구간번호, 왕복/편도는 parameter 넘어오지 않음.
         * layerType ; search 검색, region 전체지역
         */
        var gnbSelectAirportObj;
        var gnbSelectAirportLayerType;
        var selectItineraryNumber;
        var currency = 'KRW';
        var alert_msg_select_departure = '\uCD9C\uBC1C\uC9C0\uB97C \uC120\uD0DD\uD558\uC138\uC694.'; //'출발지를 선택하세요.';
        var alert_msg_choose_departure_airport = '\uCD9C\uBC1C\uC9C0\uB97C \uC120\uD0DD\uD558\uC138\uC694.';//'출발지를 선택해주세요.';
        var alert_msg_choose_arrival_airport = '\uB3C4\uCC29\uC9C0\uB97C \uC120\uD0DD\uD574\uC8FC\uC138\uC694.';//'도착지 공항을 선택해주세요.';

        /**
         * 출/도착 공항정보 선택시 data 및 value 저장
         */
        var setAirportData = function (airportObj, el){
            $(airportObj).data('city',$(el).data('city'));
            $(airportObj).data('airport',$(el).data('airport'));
            $(airportObj).data('airport_code',$(el).data('airport_code'));
            $(airportObj).data('conti',$(el).data('conti'));
            airportObj.val($(el).data('airport_code'));
        };

        /**
         * 일정선택 레이어의 확인버튼 이벤트 처리 callback function
         * @param schedule      array형태로 반환, 편도/다구간조회인 경우 size=1, 왕복인경우 size=2, YYYYMMDD
         * @param schedule_str  YYYY-MM-DD
         */
        var gnbCallBackScheduleConfirm = function(schedule, schedule_str){


            //왕복
            if($('#tripType_RT:checked').length==1) {

                $('#booking01 div.date').addClass('focus');
                $('#booking01 div.date input').eq(0).val(schedule_str[0]);
                $('#booking01 div.date input').eq(1).val(schedule_str[1]);


                $('#booking02 div.date').addClass('focus');
                $('#booking02 div.date input').eq(0).val(schedule_str[0]);

                // RQ
                $('input[name="availabilitySearches[0].flightDate"]').val(schedule_str[0]);
                $('input[name="availabilitySearches[1].flightDate"]').val(schedule_str[1]);
            }
            // 편도
            else if($('#tripType_OW:checked').length==1) {

                $('#booking01 div.date').addClass('focus');
                $('#booking01 div.date input').eq(0).val(schedule_str[0]);

                $('#booking02 div.date').addClass('focus');
                $('#booking02 div.date input').eq(0).val(schedule_str[0]);

                // RQ
                $('input[name="availabilitySearches[0].flightDate"]').val(schedule_str[0]);

            }

            showLayer('wrap', 'schedule_calendar', true);
        };

        /**
         * 호출된 레이어에서 사용자 요청에 의해 프로세스 중단(창닫기)시 부모페이어를 재호출
         */
        var callBackOpener = function(hideLayerName){
            // $('#'+hideLayerName).remove();

            $('#wrap').slideDown( "slow", function() {
                $('#'+hideLayerName).remove();
            });

            // $('#wrap').css('overflow','');
            $('body').removeClass('no_scroll');
        };


        //--
        //-- 끝 -  출/도착공항 선택, 여정선택 레이어 control
        //--

        //--------------- from global.js

        /**
         * 여정선택 출/도착일 선택하는 캘린더 레이어 호출
         * @param tripType
         * @param deptAirportCode
         * @param arriAirportCode
         */
        var gnbScheduleCalendar = function(tripType, bookingType, currency, deptAirportCode, arriAirportCode){

            // gnb job flag
            isGnbRequest = true;
            scheduleCalendar(tripType, bookingType, currency, deptAirportCode, arriAirportCode);
            isGnbRequest = true;
        };

        /**
         * 레이어 바깥부분 클릭한 경우 모든 레이어 숨김
         */
        $(document).ready(function(){
            $.fn.bookingCommonLayerClick();
        });


        //--------------- end global.js
		// Tooltip
		$('.tooltip_layer').hide();
		$('.btn_tooltip').on('mouseover', function() {
			$(this).addClass('on');
			$(this).find('.tooltip_layer').show();
		});
		$('.btn_tooltip').on('mouseleave', function() {
			$(this).removeClass('on');
			$(this).find('.tooltip_layer').hide();
		});

		$(function(){
			h_booking();
			//layer_scroll();

            $('.focus_start1').on('keypress', function(){
                if (window.event.keyCode == 13) {
                    $('#route_departure_search').attr('tabindex','0').focus();
                }
            });

            $('#route_departure_search button.sbtn_cont').on('click', function(){
                $('#route_departure').attr('tabindex','0').focus();
            });

            $('.focus_start2').on('keypress', function(){
                if (window.event.keyCode == 13) {
                    $('#route_departure').attr('tabindex','0').focus();
                }
            });

            $('#route_arrival_search button.sbtn_cont').on('click', function(){
                $('#route_arrival').attr('tabindex','0').focus();
            });

            $('.focus_end1').on('keypress', function(){
                if (window.event.keyCode == 13) {
                    $('#route_arrival_search').attr('tabindex','0').focus();
                }
            });

            $('.focus_end2').on('keypress', function(){
                if (window.event.keyCode == 13) {
                    $('#route_arrival').attr('tabindex','0').focus();
                }
            });



            $('.focus_end2').on('click', function(){
                $('#route_arrival').attr('tabindex','0').focus();
            });

            $('.focus_date1, .focus_date2, .focus_date3').on('click', function(){
                $('#schedule_calendar').attr('tabindex','0').focus();
            });

            /*
            $('#route_departure_search .sbtn_cont.sel_city').on('focusout', function() {
                $('.focus_start2').focus();
                $('#route_departure_search').remove();
            });
            */

            $('.focus_start2').on('focusin', function() {
                $('#route_departure_search').remove();
            });

            $('#route_departure').on('focusout', function() {
                $('.focus_start2').focus();
                $(this).remove();
            });

            $('.focus_end2').on('focusin', function() {
                $('#route_arrival_search').remove();
            });

            $('#route_arrival').on('focusout', function() {
                $('.focus_end2').focus();
                $(this).remove();
            });

            $('#schedule_calendar').on('focusout', function() {
                $('.focus_date3').focus();
                $(this).remove();
            });

            /* $('#top_passenger_type').on('focusout', function(){
                $('#top_passenger_type').hide();
    		}); */
		});
    </script>
</div>

		<script type="text/javascript">
			$('#gnbGuickBooking').load(
					'/app/booking/searchItineraryGNB/'
					, function() {
						if(window.location.hostname.indexOf('local-')>-1){
							// $('div.debug').removeClass('debug');
						}
					});
		</script>		
		
	
		<script type="text/javascript">
			$(document).ready(function() {
				header_fixed();
			});
/* 			function header_fixed(){
				$(window).on("scroll",function(ev){
					if($(window).scrollTop() > 100) {
						$('#header').css({'position':'fixed','top':'0','width':'100%','background-color':'#fff'}).addClass("header_up").removeClass("header_down");
						$('.path_wrap').hide(); // 추가
					} else {
						$('#header').css({'position':'','top':'','width':'','background-color':''}).removeClass("header_up").addClass("header_down");
						$('.path_wrap').show(); // 추가
					}
				});
			} */
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
				isLoginChk();
			});
			var isLoginChk = function() {
				$.ajax({
					url : "/ajax/login/loginStatus" // ajax url
					, async: true // 동기(false):비동기(true)
					, type : 'get'
					, success : function(data){
						if(data != '' && data.length > 0) {
							$('.util_menu .btn_login').addClass('on');
							$('.util_menu .btn_login').attr('href', 'javascript:logoutLayer();');
							$('.util_menu .btn_login').text("로그인 상태 상세보기");
						}
					}
				});
			}
		</script>
	</header>
				
				
				
				
				
			
			
			
			<!--// end headerFragment -->

			<!--// begin content -->
			
<!-- container -->
	<div id="container" style="margin-top: 0px;">
		<div class="content" id="content">

			<div class="pg_tit_wrap">
			
				<h2 class="pg_tit">공지사항</h2>
			</div>
	
			<!-- search -->
			<div class="txt_center mb60">
				<article class="keyword_searching">
					 <form id="noticeSearchForm" name="noticeSearchForm" action="/app/customerCenter/notice">
						<fieldset>
							<legend>키워드 검색</legend>
							<span class="block font_wrap">
								<span class="select disabled w180 mr10">
									<select class="disabled" tabindex="0" title="1차 분류 선택" id="noticeDiv" name="noticeDiv">
										<option value="">전체</option>
										<option value="IMPORT">공지</option>
										<option value="NOML">일반</option>
										<option value="NOOP">비정상운항</option>
										<option value="FUEL">유류할증료</option>
										<option value="EVNT">이벤트 당첨자</option>
									</select>
								</span>
								<span class="select disabled w180 mr10">
									<select class="disabled" tabindex="0" title="2차 분류 선택" id="keywordType" name="keywordType">
										<option value="">제목+내용</option>
										<option value="T">제목</option>
										<option value="C">내용</option>
									</select>
								</span>
								<span class="inline">
									<input class="inp_txt w340 mr5" type="text" placeholder="검색어를 입력하세요." title="검색어를 입력하세요." id="noticeTitle" name="noticeTitle" value="">
									<input class="search inp_btn w85" type="button" title="검색" value="검색">
								</span>
							</span>
						</fieldset>
					<input type="hidden" name="_csrf" value="3546f9b6-b35c-4748-ac74-b76bcb69f72d"></form>
				</article>
			</div>
			<!--// search -->
	
			<!-- list -->
			<div class="mb40">
				<table class="tbl_bbs tbl_fixed tbl_hover">
					<caption>공지사항 - 제목, 날짜 항목 별 안내 표입니다.</caption>
					<colgroup>
						<col>
						<col style="width:150px;">
					</colgroup>
					<thead class="tbl_bbs__thead_custom">
						<tr>
							<th class="txt_center">제목</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<!-- 공지와 일반을 나누는 조건문이 있어야될 거 같다. 근데 이건 공지사항 등록시에 먼저 살펴봐야함. -->
						<c:forEach var="b" items="${list}">
						<tr>
							<td class="rank">
								<a class="No_link" href="javascript:void(0);" onclick="location.href='detail.bo?bno=${b.boardNo}" title="${b.boardTitle }">${b.boardTitle }</a>
							</td>
							<td>${b.createDate}</td>
						</tr>
						</c:forEach>
						<!--// 일반 -->
					</tbody>
				</table>

				<!-- 결과 없음 -->
				
				<!-- //결과 없음 -->

			</div>
			<!--// list -->
	
			<!-- Pagination Bar -->
			<div>
				
		<script type="text/javascript">
		    $(document).ready(function(){
		        $(".pagination a").on("click", function(){
		        	var formObj = $(this).attr("url");
		        	var page = $(this).attr("page");
		        	var size = $(this).attr("size");
		        	$("form[name="+formObj+"] > input[name='page'] , input[name='size']").remove();
		        	$("form[name="+formObj+"]").append($("<input>").attr("type","hidden").attr("name","page").val(page));
		        	$("form[name="+formObj+"]").append($("<input>").attr("type","hidden").attr("name","size").val(size));
		        	$("form[name="+formObj+"]").submit();
		        });
		    });
	    </script>
		<article class="pagination txt_center">
			<!-- 맨처음 페이지일때 -->
			<a class="bg prev first" href="#none" tabindex="0" title="맨 처음 페이지로 이동"></a>
			<a class="bg prev" href="#none" tabindex="0" title="이전 페이지로 이동"></a>
			<!--// 맨처음 페이지일때 -->
			
			

			
				<a class="num on" tabindex="0" title="1페이지 선택됨">1</a>
				
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="1" title="2페이지로 이동">2</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="2" title="3페이지로 이동">3</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="3" title="4페이지로 이동">4</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="4" title="5페이지로 이동">5</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="5" title="6페이지로 이동">6</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="6" title="7페이지로 이동">7</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="7" title="8페이지로 이동">8</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="8" title="9페이지로 이동">9</a>
			

			
				
				<a class="num" tabindex="0" size="10" url="noticeSearchForm" page="9" title="10페이지로 이동">10</a>
			

			<!-- 마지막 페이지일때-->
			
			
			<!--// 마지막 페이지일때-->
			<a class="bg next" href="#none" tabindex="0" title="다음 페이지로 이동" size="10" url="noticeSearchForm" page="1"></a>
			<a class="bg next last" href="#none" tabindex="0" title="마지막 페이지로 이동" size="10" url="noticeSearchForm" page="95"></a>
		</article>
	
			</div>
		</div>
	</div>
	<!-- //container -->

			


    <!-- dummy post form -->
    <form id="postForm" method="post" name="postForm" action="/app/main">
    <input type="hidden" name="_csrf" value="3546f9b6-b35c-4748-ac74-b76bcb69f72d"></form>

    <!-- dummy get form -->
    <form id="getForm" method="get" name="getForm">
    </form>
    
    <!-- dummy search form -->
    <form id="keywordGnbForm" action="/app/totalSearch/main">
    <input type="hidden" name="_csrf" value="3546f9b6-b35c-4748-ac74-b76bcb69f72d"></form>


	<!-- 사용자 스크립트 영역이 들어감 -->
	
<script type="text/javascript">
	var noticeDiv = null;
	var keywordType = null;

	if(noticeDiv != null) $("#noticeDiv").siblings("label").text($("#noticeDiv option:selected").text());
	if(keywordType != null) $("#keywordType").siblings("label").text($("#keywordType option:selected").text());

	$(function(){
		$(".search").click(function(){
			//html tag로 검색되는 것 막기 
			var noticeTitle = $("input[name='noticeTitle']").val();
			noticeTitle = blockHtmlTag(noticeTitle);
			$("input[name='noticeTitle']").val(noticeTitle);
			$('#noticeSearchForm').submit();
		});
	});

    /* 상세보기 이동 */
	var noticeRetrieve = function(noticeSeq){
		$('#getForm').attr('action','/app/customerCenter/notice/retrieve/' + noticeSeq).submit();
	};
</script>


	<div class="dim" style="display:none;"></div>
	<div id="layer_area"></div>
	<div id="layer_inLayerArea"></div>
	<div id="address_area"></div>


		<script>
		$(function(){

			//전체메뉴
			$('.btn_allmenu').on('click', function() {
				$('html, body').css('overflow', 'hidden');
				$('.btn_allmenu').css('background-image','none');
				$('.dim').fadeIn(150);
				$('.dim').css('z-index','200');
				$('.layer_allmenu_wrap').fadeIn(150);
				$('.layer_allmenu_wrap').attr('tabindex', '0').focus();
			});

			$('.btn_allmenu_close').on('click', function() {
				$('html, body').css('overflow', '');
				$('.btn_allmenu').css('background-image','');
				$('.dim').fadeOut(150);
				$('.dim').css('z-index','');
				$('.layer_allmenu_wrap').fadeOut(150);
				$('.layer_allmenu_wrap').removeAttr('tabindex');
				$('.btn_allmenu').focus();
			});

			//언어선택
			$('.sel_lang_wrap li a').on('click', function() {
				$(this).parents('.sel_lang_wrap').find('.layer_language').fadeIn(150);
				$('.layer_language').attr('tabindex', '0').focus();
			});
			$('.btn_language_close').on('click', function() {
				$(this).parents('.sel_lang_wrap').find('.layer_language').fadeOut(150);
				$('.layer_language').removeAttr('tabindex');
			});

			//검색
			$('.btn_search').on('click', function() {
				$(this).parents('.util_menu').find('.layer_search').fadeIn(150);
				$('.layer_search').attr('tabindex', '0').focus();
			});
			
			$('.btn_search_close').on('click', function() {
				$(this).parents('.util_menu').find('.layer_search').fadeOut(150);
				$('.layer_search').removeAttr('tabindex');
				$('.btn_search').focus();
			});

		</script>

</body>
</html>