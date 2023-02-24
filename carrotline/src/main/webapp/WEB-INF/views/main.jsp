<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head><meta name="viewport" content="width=1400">
		
		<title>티웨이항공 | twayair</title>

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

		<meta content="26eb0dc9-a674-49bb-9f43-b1787662e251" name="_csrf">
		<meta content="X-CSRF-TOKEN" name="_csrf_header">

		<meta http-equiv="content-language" content="ko-KR">

		<!-- SNS Sharing -->
		

		<!-- CSS 영역 -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/main.css">


			<style type="text/css">
				div.debug {
					display:none;
				}
			</style>
		



			<script async="" src="//cdn.tbase.co.kr/tbase/l4cts.v5.2t.js"></script><script src="https://connect.facebook.net/signals/config/371419434194566?v=2.9.90&amp;r=stable" async=""></script><script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script><script async="" src="//cdn.tbase.co.kr/tbase/common/1069_common.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script src="https://connect.facebook.net/ko_KR/sdk.js?hash=91a491a3ae51e31302b7dcb8bbfe7530" async="" crossorigin="anonymous"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-TC4XB6D"></script><script id="facebook-jssdk" src="https://connect.facebook.net/ko_KR/sdk.js"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-DMDBYR48JD&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/jquery-1.12.4.min.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/jquery-tmpl/jquery.tmpl.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/jquery-ui.js"></script>

			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/waitMe.js"></script>

			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/js.cookie.min.js"></script>
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/hangul.min.js"></script> <!--한글 자음/모음 분리/조합 자바스크립트 라이브러리-->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/cmmUtils.js?ver=PyAmFFz0RwxBV5K02umIIDqjAfC37kDuwcssQX7c75wP8y+jhBaqss6nTdzo6Oa7"></script>


			<!-- Global Js -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/global.js?ver=PyAmFFz0RwxBV5K02umIIDqjAfC37kDuwcssQX7c75wP8y+jhBaqss6nTdzo6Oa7"></script>
			

			<!-- fingerprint Js -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/fingerprint.js"></script>
			
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/java_hashcode.js"></script>
			

			<!--// twaygtm > GTM Js -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/app/gtm.js"></script>
			

			<!-- begin, from Publishing -->
			<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/ui.common.js?ver=PyAmFFz0RwxBV5K02umIIDqjAfC37kDuwcssQX7c75wP8y+jhBaqss6nTdzo6Oa7"></script>
			
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
		<meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/835074054/?random=1671871803459&amp;cv=11&amp;fst=1671871803459&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2wgbu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2Fmain&amp;tiba=%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5%20%7C%20twayair&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/815758399/?random=1671871803643&amp;cv=11&amp;fst=1671871803643&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2Fmain&amp;tiba=%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5%20%7C%20twayair&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11008077408/?random=1671871803799&amp;cv=11&amp;fst=1671871803799&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2Fmain&amp;tiba=%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5%20%7C%20twayair&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11000412613/?random=1671871803903&amp;cv=11&amp;fst=1671871803903&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=2oabu0&amp;u_w=1920&amp;u_h=1080&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fwww.twayair.com%2Fapp%2Fmain&amp;tiba=%ED%8B%B0%EC%9B%A8%EC%9D%B4%ED%95%AD%EA%B3%B5%20%7C%20twayair&amp;auid=325653749.1670050813&amp;uaa=x86&amp;uab=64&amp;uafvl=Not%253FA_Brand%3B8.0.0.0%7CChromium%3B108.0.5359.125%7CGoogle%2520Chrome%3B108.0.5359.125&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script><style type="text/css" data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:'lucida grande', tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
		.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:'lucida grande', tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
		.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://connect.facebook.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://connect.facebook.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://connect.facebook.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://connect.facebook.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
		.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
		.fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}
</style>
</head>
<body>

		<!--// twaygtm > dataForm > gtmDataForm -->
		

<!-- GTM 공통영역 데이터 -->
<input id="gtmCommonData" name="gtmCommonData" type="hidden" value="undefined;none;undefined;HP;KR_ko-KR">

<!-- Google Tag Manager (noscript) -->
<noscript><iframe height="0" src="https://www.googletagmanager.com/ns.html?id=GTM-TC4XB6D" style="display:none;visibility:hidden" width="0"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->


		<!--// twaygtm > dataForm > gtmDataForm -->

		<!-- 본문 바로가기 -->
		<div class="skip_nav" title="스킵메뉴">
			<a href="#visual">본문 바로가기</a>
		</div>
		<!--// 본문 바로가기 -->

		<div id="wrap">
			<!--// begin headerFragment -->
			
		<!-- Top 알람 띠배너 -->
		
			<div class="top_alram" style="display: block;">
				<div class="top_alram_cnt">
					<img alt="알림" class="pr20" src="https://contents-image.twayair.com/homepage/images/common/ico_attn2.png">본 사이트는 보다 나은 서비스 제공을 위해 쿠키를 사용합니다. 자세한 내용은 당사의 <a href="/app/board/regulation?viewIndex=6">쿠키 정책</a>을 참조하시기 바랍니다.
					<div class="btn_wrap">
						<button class="sbtn_cont btn_close_cookie_policy" type="button">확인</button>
					</div>
				</div>
				
				<c:import url="common/header.jsp" />
				

				<script type="text/javascript">
					$(document).ready(function() {
						var cookieValue = getCookie("SETTINGS_COOKIE_POLICY");
				        if(cookieValue == null || cookieValue == '' || cookieValue == 'N'){
				        	$(".top_alram").css('display', 'block');
				        }

				        $('.btn_close_cookie_policy').on('click', function() {
							var cookiePolicyName = 'SETTINGS_COOKIE_POLICY';
					  		Cookies.set(cookiePolicyName, 'Y', {secure: true, expires: 365, path: "/", domain: 'www.twayair.com'});
						});
					});
				</script>
			</div>
		
		<!-- Visual -->
		<div class="main_visual" id="visual" alt="시드니 노선 홍보(PC)" style="background-image:url(https://contents-image.twayair.com/contents/2022/1021/eca19c02-7d47-47be-9c66-c400f8e04157.jpg);">
			<div class="blind">시드니 노선 홍보(PC)</div>
			<div class="blind">IMG</div>
			<!-- special video visual -->
			
			<!-- special video visual -->
			<!-- Main Text Slide -->
			<div class="main_slogan slick-initialized slick-slider" style="opacity: 1;"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 34800px; transform: translate3d(-10800px, 0px, 0px);"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/vRXNw_gFXTDNjWh1d8uKCA==/being/n?" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1019" alt="티웨이항공 전 노선 농협카드 결제 1만원 즉시 할인 " src="https://contents-image.twayair.com/contents/2022/1221/31033f52-22a7-475f-a928-9d02d4397ae6.png">
				</a></div></div><div class="slick-slide" data-slick-index="0" aria-hidden="true" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="231755" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/7KkdcD0eudkYg1tAOn7Gdg==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1245" alt="크리스마스 BIG 세일" src="https://contents-image.twayair.com/contents/2022/1221/aee29b4c-ae40-4a27-bd98-df4ca14c8336.png">
				</a></div></div><div class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1200px;" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="Y" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/uGUhB-Umvdfu6WkTEnnNWg==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="835" alt="제주도 여행 최저가 도전" src="https://contents-image.twayair.com/contents/2022/1221/b1ec2505-af7b-406e-9a55-c8bf6719e4b8.png">
				</a></div></div><div class="slick-slide" data-slick-index="2" aria-hidden="true" style="width: 1200px;" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/VBCLoBKdW2T2GN_Mrq8htQ==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1230" alt="대만 재취항 기념 특가 대구/제주-타이베이 왕복 10% 할인" src="https://contents-image.twayair.com/contents/2022/1221/48176318-85ca-4e58-bc05-2b991c8e3cf2.png">
				</a></div></div><div class="slick-slide" data-slick-index="3" aria-hidden="true" style="width: 1200px;" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/9kQuj0vaA-HXIXgNt-ImJA==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="923" alt="제주공항 쏘카존 1일 9,900원!" src="https://contents-image.twayair.com/contents/2022/1221/8eec75c8-8689-443d-a434-fce13d12642c.png">
				</a></div></div><div class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="404089" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="Y" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/hPCuf5JOzwgFFKgAfGdOLQ==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="472" alt="금토일 국내선 파격 할인, 국내선 주말 특가" src="https://contents-image.twayair.com/contents/2022/1021/9fbf9031-e5ac-445a-9613-f664ac12efec.png">
				</a></div></div><div class="slick-slide" data-slick-index="5" aria-hidden="true" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="405769" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/cGASPol6wV8nr9G56xxPng==/being/n?" style="cursor: pointer;" tabindex="0">
					
					<img gtm-promoid="1206" alt="2023년 수능 수험생 최대 25% 할인 국내선, 국제선 원하는 곳 어디든!" src="https://contents-image.twayair.com/contents/2022/1221/64353f88-8ddf-40e4-a023-48595767a8cd.png">
				</a></div></div><div class="slick-slide" data-slick-index="6" aria-hidden="true" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="263174" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/P6M1HX8cyhzkCjzFlosIew==/being/n" style="cursor: pointer;" tabindex="0">
					
					<img gtm-promoid="1227" alt="12월 이달의 할인 혜택" src="https://contents-image.twayair.com/contents/2022/1221/05c49b17-7fc9-426e-b89c-d8cbb4fec93f.png">
				</a></div></div><div class="slick-slide" data-slick-index="7" aria-hidden="true" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="265095" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/m0zBzXCDf0GydrvipNIwQQ==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1139" alt="호주 시드니 신규 취항! 유류세 반값, 기내식/수하물 무료" src="https://contents-image.twayair.com/contents/2022/1221/9b58b764-411c-425f-95e8-f24d4da7fe72.png">
				</a></div></div><div class="slick-slide slick-current slick-active" data-slick-index="8" aria-hidden="false" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="http://www.twayair.com/app/promotion/event/retrieve/XwcvQeiB4dGI7VyhXKRxkg==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
				</a></div></div><div class="slick-slide" data-slick-index="9" aria-hidden="true" style="width: 1200px;" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/2pjmiKvbtZB6V-uk41h4vw==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1166" alt="싱가포르/호찌민 탑승객 한정 수하물 최대 30kg 무료 +항공권 3만원 추가 할인까지!" src="https://contents-image.twayair.com/contents/2022/1221/3a67d207-e979-4715-83e9-0cccac3b063a.png">
				</a></div></div><div class="slick-slide" data-slick-index="10" aria-hidden="true" style="width: 1200px;" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/J9YxFgGS7KoRSf7V5hmp1A==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="971" alt="매일 선착순 혜택 카카오페이 3만원 추가 할인" src="https://contents-image.twayair.com/contents/2022/1221/1ca1ce2b-40fb-4db1-8960-dc5dcf367aa0.png">
				</a></div></div><div class="slick-slide" data-slick-index="11" aria-hidden="true" style="width: 1200px;" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/booking/searchItinerary?tripType=RT&amp;depAirportCode=CJU&amp;arrAirportCode=NRT" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1131" alt="제주/도쿄(나리타) 직항 1회 한정 운항" src="https://contents-image.twayair.com/contents/2022/1221/aac3c558-3f1e-4b9e-a9f7-61567da92b6a.png">
				</a></div></div><div class="slick-slide" data-slick-index="12" aria-hidden="true" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="227760" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/jaa5hBNVpvnc-KYIxmgcoA==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="989" alt="티웨이 X 왓챠 티웨이 타면 왓챠 이용권 증정! 왓챠 프리미엄 10일 이용권 받자!" src="https://contents-image.twayair.com/contents/2022/1221/88826458-8d17-46cf-ae32-4891f49f9e99.png">
				</a></div></div><div class="slick-slide" data-slick-index="13" aria-hidden="true" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="228020" tabindex="-1"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/vRXNw_gFXTDNjWh1d8uKCA==/being/n?" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1019" alt="티웨이항공 전 노선 농협카드 결제 1만원 즉시 할인 " src="https://contents-image.twayair.com/contents/2022/1221/31033f52-22a7-475f-a928-9d02d4397ae6.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="14" aria-hidden="true" tabindex="-1" style="width: 1200px;" data-gtm-vis-first-on-screen-30341174_117="231529"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/7KkdcD0eudkYg1tAOn7Gdg==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1245" alt="크리스마스 BIG 세일" src="https://contents-image.twayair.com/contents/2022/1221/aee29b4c-ae40-4a27-bd98-df4ca14c8336.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="15" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="Y" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/uGUhB-Umvdfu6WkTEnnNWg==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="835" alt="제주도 여행 최저가 도전" src="https://contents-image.twayair.com/contents/2022/1221/b1ec2505-af7b-406e-9a55-c8bf6719e4b8.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="16" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/VBCLoBKdW2T2GN_Mrq8htQ==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1230" alt="대만 재취항 기념 특가 대구/제주-타이베이 왕복 10% 할인" src="https://contents-image.twayair.com/contents/2022/1221/48176318-85ca-4e58-bc05-2b991c8e3cf2.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="17" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/9kQuj0vaA-HXIXgNt-ImJA==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="923" alt="제주공항 쏘카존 1일 9,900원!" src="https://contents-image.twayair.com/contents/2022/1221/8eec75c8-8689-443d-a434-fce13d12642c.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="18" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="Y" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/hPCuf5JOzwgFFKgAfGdOLQ==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="472" alt="금토일 국내선 파격 할인, 국내선 주말 특가" src="https://contents-image.twayair.com/contents/2022/1021/9fbf9031-e5ac-445a-9613-f664ac12efec.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="19" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/cGASPol6wV8nr9G56xxPng==/being/n?" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1206" alt="2023년 수능 수험생 최대 25% 할인 국내선, 국제선 원하는 곳 어디든!" src="https://contents-image.twayair.com/contents/2022/1221/64353f88-8ddf-40e4-a023-48595767a8cd.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="20" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/P6M1HX8cyhzkCjzFlosIew==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1227" alt="12월 이달의 할인 혜택" src="https://contents-image.twayair.com/contents/2022/1221/05c49b17-7fc9-426e-b89c-d8cbb4fec93f.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="21" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/m0zBzXCDf0GydrvipNIwQQ==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1139" alt="호주 시드니 신규 취항! 유류세 반값, 기내식/수하물 무료" src="https://contents-image.twayair.com/contents/2022/1221/9b58b764-411c-425f-95e8-f24d4da7fe72.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="22" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="http://www.twayair.com/app/promotion/event/retrieve/XwcvQeiB4dGI7VyhXKRxkg==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1236" alt="케이빌리지 1만원 마일리지 증정" src="https://contents-image.twayair.com/contents/2022/1221/d4e0fb12-da91-4f42-9f61-50a43ca8b2a8.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="23" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/2pjmiKvbtZB6V-uk41h4vw==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1166" alt="싱가포르/호찌민 탑승객 한정 수하물 최대 30kg 무료 +항공권 3만원 추가 할인까지!" src="https://contents-image.twayair.com/contents/2022/1221/3a67d207-e979-4715-83e9-0cccac3b063a.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="24" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/J9YxFgGS7KoRSf7V5hmp1A==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="971" alt="매일 선착순 혜택 카카오페이 3만원 추가 할인" src="https://contents-image.twayair.com/contents/2022/1221/1ca1ce2b-40fb-4db1-8960-dc5dcf367aa0.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="25" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/booking/searchItinerary?tripType=RT&amp;depAirportCode=CJU&amp;arrAirportCode=NRT" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1131" alt="제주/도쿄(나리타) 직항 1회 한정 운항" src="https://contents-image.twayair.com/contents/2022/1221/aac3c558-3f1e-4b9e-a9f7-61567da92b6a.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="26" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/jaa5hBNVpvnc-KYIxmgcoA==/being/n" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="989" alt="티웨이 X 왓챠 티웨이 타면 왓챠 이용권 증정! 왓챠 프리미엄 10일 이용권 받자!" src="https://contents-image.twayair.com/contents/2022/1221/88826458-8d17-46cf-ae32-4891f49f9e99.png">
				</a></div></div><div class="slick-slide slick-cloned" data-slick-index="27" aria-hidden="true" tabindex="-1" style="width: 1200px;"><div><a class="main_slogan_txt" href="#none" onmouseover="style='cursor:pointer'" data-newwindispyn="N" data-linkurl="https://www.twayair.com/app/promotion/event/retrieve/vRXNw_gFXTDNjWh1d8uKCA==/being/n?" style="width: 100%; display: inline-block;" tabindex="0">
					
					<img gtm-promoid="1019" alt="티웨이항공 전 노선 농협카드 결제 1만원 즉시 할인 " src="https://contents-image.twayair.com/contents/2022/1221/31033f52-22a7-475f-a928-9d02d4397ae6.png">
				</a></div></div></div></div></div>
			
			<!--// Main Text Slide -->

			<!-- Main side banner 이벤트-->
			<script type="text/javascript">
				$(document).ready(function() {
					// 티웨이플러스 배너 클릭 이벤트, 2022-10-27, dhkim
					$("#linkTwayplus").on("click", function(){
						var plusUrl = 'https://plus.twayair.com';
						var pathRegion = 'main';
						var pathLang = 'ko';
						var sessionId = '06bf5f92-85dd-433e-bcbc-2bc50f170a9a'
						window.open(plusUrl + "/app/"+pathRegion+"/"+pathLang+"/gate?webSessionId="+sessionId);
					});
				});
			</script>
			<!-- // Main side banner 이벤트 -->

			<!-- /* Main side banner - 191106 PJH */ -->
			<div class="nav_main">
			<ul class="lst_nav">
				<li>
					<a href="https://crewclass.twayair.com/" target="_blank">
						<span class="ci_img"><img src="https://contents-image.twayair.com/homepage/images/main/ico_crew.png" alt=""></span>
						<p class="desc">항공훈련센터</p>
					</a>
				</li>
				<li>
					<a href="/app/serviceInfo/contents/1070">
  						<span class="ci_img"><img src="https://contents-image.twayair.com/homepage/images/main/ico_main_pet.png" alt=""></span>
  						<p class="desc">반려동물 동반 여행</p>
					</a>
				</li>
				<li>
					<a href="/app/promotion/coupon">
						<span class="ci_img"><img src="https://contents-image.twayair.com/homepage/images/main/ico_main_cpn.png" alt=""></span>
  						<p class="desc">쿠폰 다운로드</p>
					</a>
				</li>
<li class="more"><a href="javascript:window.scrollTo( 0, 675 );">제휴 더보기 &gt;</a></li>
			</ul>
		</div>



			<!-- /* Main side banner - 191101 PJH */ -->

			
			

    <script type="text/javascript">
        // tripType 선택 처리
        $(document).ready(function(){
            $('a.setTripType').bind('click', function(e){
                var tripType = $(this).data('t');

                $('#display_tripType_'+tripType).prop('checked',true);
                $('#tripType_'+tripType).prop('checked',true);

                // 노선선택 등 레이어 강제 제거
                $('.commonComponentLayer').remove();

                checkTripType();
            });
        });

        var closeBookingLayer = function(){
            if($('#airAvailabilityRQ input[name="tripType"]:checked').val()=='MC'){
                $('#display_tripType_RT').prop('checked',true);
                $('.setTripType').eq(0).click();
            }
            if($('#top_passenger_type').css("display") != 'none') {
            	$('#top_passenger_type').hide();
            }
        }

        //브라우저 IE 구분
        var agent = navigator.userAgent.toLowerCase();
        if((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1)){
            $('input.date').removeAttr('onfocus');
        }
    </script>

    <!-- Main Booking -->
    <div class="main_booking">
        <!-- 박스 추가 main_booking_inside -->
        <div class="main_booking_inside">
            
            <div class="tab_booking_cont">
                <!-- 왕복 편도 -->
                <div class="sel_booking">
                	<span class="hidden">change begins with Tway</span>
                	<div class="sel_opt">
		                <div class="service_section">

		                    <div class="sel_section">
		                        <ul class="btn_tab">
		                            <li class="on">
		                                <a class="setTripType" data-t="RT" href="#main_reser01">
		                                    <input aria-hidden="true" id="display_tripType_RT" name="tripTypeButton" tabindex="-1" type="radio" value="RT">
		                                    <label for="display_tripType_RT">왕복</label>
		                                </a>
		                            </li>
		                            <li>
		                                <a class="setTripType" data-t="OW" href="#main_reser02">
		                                    <input aria-hidden="true" id="display_tripType_OW" name="tripTypeButton" tabindex="-1" type="radio" value="OW">
		                                    <label for="display_tripType_OW">편도</label>
		                                </a>
		                            </li>
		                            <li>
		                                <a href="#" onclick="beginLoadingAnimation(); location.href='/app/booking/searchItinerary?tripType=MC';">
			                                <input aria-hidden="true" id="display_tripType_MC" name="tripTypeButton" tabindex="-1" type="radio" value="MC">
			                                <label for="display_tripType_MC">다구간</label>
			                            </a>
		                            </li>
		                        </ul>
		                    </div>

		                    <div class="sel_group">
		                        <input class="bookingTypeGroup" id="group" name="bookingTypeGroup" type="checkbox" value="">
		                        <label for="group"><span class="icon">단체 항공권 선택 체크박스</span>단체(10명 이상)</label>
		                    </div>
		                    <div class="sale_code_wrap code">
		                        <span class="sale_code">
		                            <input class="input_sale_code" id="sale_code" maxlength="20" name="promoCode" onkeyup="onlyHanEngNumToUpper(this);" type="text" placeholder="할인코드 입력" title="할인코드 입력" value="">
		                        </span>
		                        <a class="btn_tooltip gray" href="#none">
		                            <span class="blind">툴팁</span>
		                                <div class="tooltip_layer" style="display:none;">
		                                    <div class="tooltip_tit no_bd">
		                                        <h5>할인코드란?</h5>
		                                    </div>
		                                    <div class="tooltip_cont">티웨이항공 탑승 고객을 대상으로 특정 기간 동안<br>추가 할인을 제공해 드리는 제도입니다.<br>예약 시 사전에 안내된 코드를 입력하시면,<br>할인 가격이 적용된 항공편을 선택하실 수 있습니다.</div>
		                                </div>
		                        </a>
		                    </div>

		                </div>
		            </div>
		            <h3 class="blind">왕복</h3>
                    <section class="booking_wrap" id="main_reser01">

                        
                        <div class="input_wrap start">
                            <input class="booking start focus_start1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','main');" onkeypress="gnbSelectAirport(this, 0,'search','main');" readonly="" title="출발지 입력" type="text" value="" placeholder="출발지">
                            <a class="btn_pin start focus_start2" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','main');" title="출발지 선택 레이어 열림">출발지 선택</a>

                            <!-- 선택지 레이어 -->
                            <div class="selected_area start">
                            	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','main');">
	                                <span class="eng">ICN</span>
	                                <span class="area">서울/인천</span>
                                </a>
                            </div>
                            <!--// 선택지 레이어 -->
                        </div>

                        
                        <div class="input_wrap end">
                            <input class="booking end focus_end1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','main');" onkeypress="gnbSelectAirport(this, 0,'search','main');" readonly="" title="도착지 입력" type="text" value="" placeholder="도착지">
                            <a class="btn_pin end focus_end2" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','main');" title="도착지 선택 레이어 열림">도착지 선택</a>

                            <!-- 선택 레이어 -->
                            <div class="selected_area end">
                            	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','main');">
	                                <span class="eng">ICN</span>
	                                <span class="area">서울/인천</span>
                                </a>
                            </div>
                            <!--// 선택 레이어 -->
                        </div>

                        
                        <div class="input_wrap days">
                            <input class="booking date focus_date1" id="lostFlightDate1_1" placeholder="YYYY-MM-DD" readonly="readonly" title="출발일 입력" type="text" value="" onclick="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');" onkeypress="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');">
                            <span class="tilde">~</span>
                            <input class="booking date focus_date2" id="lostFlightDate1_2" placeholder="YYYY-MM-DD" readonly="readonly" title="도착일 입력" type="text" value="" onclick="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');" onkeypress="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');">
                            <a class="btn_date focus_date3" href="#none" title="출/도착 날짜 선택 레이어 선택" onclick="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');">출/도착 날짜 선택</a>
                        </div>

						<div class="input_wrap passengers">
		                    <input class="passenger" placeholder="탑승객" readonly="readonly" tabindex="-1" title="탑승객" type="text" value="">

		                    <!-- 탑승객 레이어 -->
		                    <a class="selected_passenger on passengerCountStatus" href="#none" onclick="selectPassengerCount();" onkeypress="selectPassengerCount();" style="cursor:pointer;" title="탑승객 선택"><span>성인 1</span><span>소아 0</span><span>유아 0</span></a>
		                    <!--// 탑승객 레이어 -->

		                </div>

		                <button class="btn_large gray2 ml20" id="btn_search_rt" onclick="chooseItinerary();">조회</button>

                    </section>

                    
                    <h3 class="blind">편도</h3>
                    <section class="booking_wrap" id="main_reser02" style="display: none;">

                        
                        <div class="input_wrap start">
                            <input class="booking start focus_start1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','main');" onkeypress="gnbSelectAirport(this, 0,'search','main');" readonly="" title="출발지 입력" type="text" value="" placeholder="출발지">
                            <a class="btn_pin start focus_start2" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','main');" title="출발지 선택 레이어 열림">출발지선택</a>
                            <!-- 선택지 레이어 -->
                            <div class="selected_area start">
                            	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','main');">
	                                <span class="eng">ICN</span>
	                                <span class="area">서울/인천</span>
                                </a>
                            </div>
                            <!--// 선택지 레이어 -->
                        </div>

                        
                        <div class="input_wrap end">
                            <input class="booking end focus_end1" onblur="checkAirportPinStatus(this, 0);" onclick="gnbSelectAirport(this, 0,'search','main');" onkeypress="gnbSelectAirport(this, 0,'search','main');" readonly="" title="도착지 입력" type="text" value="" placeholder="도착지">
                            <a class="btn_pin end focus_end1" href="#none" onclick="gnbSelectAirport($(this).parent().find('input'), 0, 'region','main');" onkeypress="gnbSelectAirport($(this).parent().find('input'), 0, 'region','main');" title="도착지 선택 레이어 열림">도착지선택</a>

                            <!-- 선택 레이어 -->
                            <div class="selected_area end">
                            	<a href="#" onclick="gnbSelectAirport($(this).parent().parent().find('input'), 0,'search','main');">
	                                <span class="eng">ICN</span>
	                                <span class="area">서울/인천</span>
                                </a>
                            </div>
                            <!--// 선택 레이어 -->
                        </div>

                        
                        <div class="input_wrap days">
                            <input class="booking date focus_date1" id="lostFlightDate2_1" placeholder="YYYY-MM-DD" readonly="readonly" title="출발일 입력" type="text" value="" onclick="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');" onkeypress="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');">
                            <a class="btn_date focus_date3" href="#none" title="출/도착 날짜 선택 레이어 열림" onclick="gnbCallBackArrivalAirportConfirm(null, 'main', 'KRW', 'N');">출/도착 날짜 선택</a>
                        </div>

						<div class="input_wrap passengers">
		                    <input class="passenger" placeholder="탑승객" readonly="readonly" tabindex="-1" title="탑승객" type="text" value="">

		                    <!-- 탑승객 레이어 -->
		                    <a class="selected_passenger on passengerCountStatus" href="#none" onclick="selectPassengerCount();" onkeypress="selectPassengerCount();" style="cursor:pointer;" title="탑승객 선택"><span>성인 1</span><span>소아 0</span><span>유아 0</span></a>
		                    <!--// 탑승객 레이어 -->

		                </div>

		                <button class="btn_large gray2 ml20" id="btn_search_ow" onclick="chooseItinerary();">조회</button>
                    </section>

                    <!-- 탑승객선택레이어 -->
					<article class="layer_start1 type" id="top_passenger_type" style="display:none;" tabindex="0">
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
					</article>
                </div>
                <!--// 왕복 편도 -->
            </div>
            <a class="btn_layer_close" href="#none" onclick="closeBookingLayer()" style="display: none;">닫기</a>

        </div>

    </div>
    <!--// Main Booking -->









    <script type="text/javascript">

        /**
         * bookingTicket 초기화
         */
        $(document).ready(function(){
            var _t = 'b83f0285-eb6f-48e3-984f-4186cf90f71f';
            $('input.bookingTicket').val(_t);
        });

        /**
         * 인원수 증감 기호 cursor:pointer 적용
         */
        $(document).ready(function(){
            $('span.btn_minus,span.btn_plus').css('cursor','pointer');
        });

        //입력값이 있을때 표시
        $('.input_wrap input.booking').on('keydown keyup change', function(){
            var Length = $(this).val().length;
            if(Length > 0){
                $(this).parents('.input_wrap').addClass('on');
            }else{
                $(this).parents('.input_wrap').removeClass('on');
            }
        });

        //포커스 추가
        //$(".input_wrap .btn_minus, .input_wrap .btn_plus").attr("tabindex", 0);

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
         * 레이어 바깥부분 클릭한 경우 모든 레이어 숨김
         */
        $(document).ready(function(){
            $.fn.bookingCommonLayerClick();
        });

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

            $('.setTripType').on('click', function() {
            	$('.btn_tab li').removeClass('on');

        		$('.dim02').fadeIn(200);
        		$('.btn_layer_close').fadeIn(200);
        		//$('body, html').css({'overflow-y':'hidden'});
        		$( 'html, body' ).animate({scrollTop:0}, 400 );
        		//$('.main_booking').css({'position':'fixed','z-index': '150'});
        		//$('.main_booking').css({'z-index': '150'});
        		//$('.main_booking').animate({'top': '140'});
        		//$('.main_booking').animate({'top': '0','margin-top': '90px'});
        		$('.main_booking').attr('tabindex','0');
        		$(this).parents('.main_booking').addClass('focus');

        		$(this).parent('li').addClass('on');
        		checkTripType();
        	});

        	$('.input_wrap.start, .input_wrap.end').on('click focus', function() {
        		$('.dim02').fadeIn(200);
        		$('.btn_layer_close').fadeIn(200);
        		//$('body, html').css({'overflow-y':'hidden'});
        		$( 'html, body' ).animate({scrollTop:0}, 400 );
        		//$('.main_booking').css({'position':'fixed','z-index': '150'});
        		//$('.main_booking').css({'z-index': '150'});
        		//$('.main_booking').animate({'top': '140'});
        		//$('.main_booking').animate({'top': '0','margin-top': '90px'});
        		$('.main_booking').attr('tabindex','0');
        		$(this).parents('.main_booking').addClass('focus');

        		var tripType = $('input[name="tripType"]:checked').val();
        		if(tripType != 'MC') {
        			gnbSelectAirport($(this).find('input'), 0, 'search', 'main');
        		} else {
        			gnbSelectAirport($(this).find('input'), currentItineraryNumber, 'search', 'main');
        		}
        	});

        	$('.input_wrap.days, .input_wrap.passengers').on('click', function() {
        		$('.dim02').fadeIn(200);
        		$('.btn_layer_close').fadeIn(200);
        		//$('body, html').css({'overflow-y':'hidden'});
        		$( 'html, body' ).animate({scrollTop:0}, 400 );
        		//$('.main_booking').css({'position':'fixed','z-index': '150'});
        		//$('.main_booking').css({'z-index': '150'});
        		//$('.main_booking').animate({'top': '140'});
        		//$('.main_booking').animate({'top': '0','margin-top': '90px'});
        		$('.main_booking').attr('tabindex','0');
        		$(this).parents('.main_booking').addClass('focus');
        	});



        	$('.btn_layer_close').on('click', function() {
        		//$('body, html').css({'overflow-y':'auto'});
        		//$('.btn_tab li:first').addClass('on');
        		//$('.btn_tab li:last').removeClass('on');
        		/*
        		$('#main_reser01').show();
        		$('#main_reser02,#main_reser03').hide();
        		*/
        		$('.dim02').fadeOut(200);
        		$('.btn_layer_close').fadeOut(200);
        		//$('.main_booking').css({'position':'absolute','z-index': '50'});
        		//$('.main_booking').css({'z-index': '19'});
        		//$('.main_booking').animate({'top':'560'});
        		$('.main_booking').removeAttr('tabindex');
        		$(this).parents('.main_booking').removeClass('focus');
        		//$('.section.lowest_price .goods_tab .sort.list').focus();
        		$('.srv_list_wrap .slick-slide:first-child a').focus();
        	});
        });

        /**
         * trip type 선택 event handling
         */
        $(document).ready(function(){

            var frm = $('#airAvailabilityRQ');

            // $('div.sel_section.booking_option input[name="tripTypeButton"]').on('change', function(){
            //     var tripType = $('div.sel_section.booking_option input[name="tripTypeButton"]:checked').val();
            //
            //     alert(tripType);
            //
            //     $.each(frm.find('input[name="tripType"]'),function(index,el){
            //         if($(el).val()==tripType){
            //             $(el).prop('checked',true);
            //             checkTripType();
            //         }
            //     });
            //
            // });

            // 다구간 검색 진입 처리
            var paramTripType = '';
            $.each(frm.find('input[name="tripType"]'),function(index,el){
                if($(el).val()==paramTripType){
                    $(el).prop('checked',true);
                    checkTripType();
                    return false;
                }
            });

        });


        /**
         * 출발노선선택 레이어 준비
         */
        $(document).ready(function(){
            // gnbRouteDeparture($('input[name="tripType"]:checked').val());
        });

        /**
         * TripType 선택시 출발노선 레이어 준비
         */
        // $('input[name="tripType"]').change(function(){
        //     removeLayer('route_departure');
        //     gnbRouteDeparture($(this).val());
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
                    // $('.controlRouteCountButtonSection').show(); // 다구간 구간 증/감 버튼 영역 노출

                    $('input[name="paxCountDetails[0].paxCount"]').val($('.pax input.ADULT').val());
                    $('input[name="paxCountDetails[1].paxCount"]').val($('.pax input.CHILD').val());
                    $('input[name="paxCountDetails[2].paxCount"]').val($('.pax input.INFANT').val());
                }
                // 단체
                else if($(el).val()=='HG' && paxCount>=10){
                    $(el).prop('checked', true);
                    // $('.controlRouteCountButtonSection').hide(); // 다구간 구간 증/감 버튼 영역 비노출
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
            if(((pax_count_before_change[0]+pax_count_before_change[1])<=pax_count_individual) && (pax_count[0] + pax_count[1] > pax_count_individual)){
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

            // 성인 탑승자수 변경 이벤트 처리
            if($(el).attr('class') == 'ADULT'){
            };

            // 소아 탑승자수 변경 이벤트 처리
            if($(el).attr('class') == 'CHILD'){

            };

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

            $('#main_reser01 div.start').removeClass('focus');
            $('#main_reser01 div.start div.selected_area').removeClass('on');

            $('#main_reser01 div.end').removeClass('focus');
            $('#main_reser01 div.end div.selected_area').removeClass('on');

            $('#main_reser01 div.date').removeClass('focus');
            $('#main_reser01 div.date input').val('');


            $('#main_reser02 div.start').removeClass('focus');
            $('#main_reser02 div.start div.selected_area').removeClass('on');

            $('#main_reser02 div.end').removeClass('focus');
            $('#main_reser02 div.end div.selected_area').removeClass('on');

            $('#main_reser02 div.date').removeClass('focus');
            $('#main_reser02 div.date input').val('');

            $('input[name="paxCountDetails[0].paxCount"]').val($('.pax input.ADULT').val());
            $('input[name="paxCountDetails[1].paxCount"]').val($('.pax input.CHILD').val());
            $('input[name="paxCountDetails[2].paxCount"]').val($('.pax input.INFANT').val());

            $("section.booking_wrap .input_wrap.days input").val('');

            setBookingType();

        };

        /**
         * tripType 선택에 따른 form control
         */
        $(document).ready(function(){

            // set event handler
            $('input[name="tripType"]').change(function(){
                checkTripType();
            });

            checkTripType();
        });

        var checkTripType = function(){
            var tripType = $('input[name="tripType"]:checked').val();
            $('ul.sel_section li').removeClass('on');
            $('ul.sel_section li a').removeAttr('title');

            // 왕복
            if(tripType == 'RT'){
                $('#main_reser01').show();
                $('#main_reser02').hide();

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
                $('#main_reser01').hide();
                $('#main_reser02').show();
                $('ul.sel_section li').eq(1).addClass('on');
                $('ul.sel_section li.on a').attr('title','선택됨');


                // 날짜 표출 영역, 출발일만 노출
                // console.log($('#main_reser01 .multiple .wave').length);
                // console.log($('#main_reser01 .multiple .wave').html());

            }
        };


        /**
         * 여정선택완료, 다음으로 이동
         */
        var chooseItinerary = function(){

			//check csrf Token - 200212 PJH
			try{
				checkCsrfToken('26eb0dc9-a674-49bb-9f43-b1787662e251','_csrf');
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
            var alert_msg_connect_flight_surface_reverse = '{0}\uBC88\uC9F8 \uAD6C\uAC04\uC758 \uCD9C\uBC1C\uACF5\uD56D\uACFC {1}\uBC88\uC9F8 \uAD6C\uAC04 \uB3C4\uCC29\uACF5\uD56D\uC740 \uAC19\uC740 \uC9C0\uC5ED(\uB300\uB959)\uC774\uC5B4\uC57C \uD569\uB2C8\uB2E4.'; // '{0}번째 구간의 출발공항과 {1}번째 구간 도착공항은 같은 지역(대륙)이어야 합니다.';

            var alert_msg_max_length_stay = '\uCCAB\uBC88\uC9F8 \uAD6C\uAC04\uC758 \uCD9C\uBC1C\uC77C\uC5D0\uC11C \uB9C8\uC9C0\uB9C9 \uAD6C\uAC04\uC758 \uB3C4\uCC29\uC77C\uAE4C\uC9C0\uC758 \uAE30\uAC04\uC740 365\uC77C\uC744 \uCD08\uACFC\uD560 \uC218 \uC5C6\uC2B5\uB2C8\uB2E4.'; // '첫번째 구간의 출발일에서 마지막 구간의 도착일까지의 기간은 365일을 초과할 수 없습니다.';
            var alert_msg_connect_schedule = '\uAD6C\uAC04{0}\uC758 \uCD9C\uBC1C\uC77C\uC740 \uAD6C\uAC04{1}\uC758 \uCD9C\uBC1C\uC77C\uBCF4\uB2E4 \uBE60\uB978\uB0A0\uC9DC\uB97C \uC120\uD0DD\uD560 \uC218 \uC5C6\uC2B5\uB2C8\uB2E4.'; // '구간{0}의 출발일은 구간{1}의 출발일보다 빠른날짜를 선택할 수 없습니다.';
            var alert_msg_connect_combination = '\uB2E4\uAD6C\uAC04 \uC5EC\uC815\uC740 \uAD6D\uC81C\uC120, \uAD6D\uB0B4\uC120 \uB178\uC120\uC744 \uD568\uAED8 \uC608\uC57D\uD560 \uC218 \uC5C6\uC2B5\uB2C8\uB2E4.';// '다구간 여정은 국제선, 국내선 노선을 함께 예약할 수 없습니다.'
            var alert_msg_check_adult_cnt = '\uC131\uC778 \uD0D1\uC2B9\uAC1D \uC218\uB97C \uC120\uD0DD\uD574\uC8FC\uC138\uC694';// '성인 탑승객 수를 선택해주세요'

            var frm = $('#airAvailabilityRQ');

            frm.find('input.rqParam').remove();

            // 탑승객
            frm.append('<input type="hidden" name="pax" class="rqParam" value="'+ $('input[name="paxCountDetails[0].paxCount"]').val() +'"/>');
            frm.append('<input type="hidden" name="pax" class="rqParam" value="'+ $('input[name="paxCountDetails[1].paxCount"]').val() +'"/>');
            frm.append('<input type="hidden" name="pax" class="rqParam" value="'+ $('input[name="paxCountDetails[2].paxCount"]').val() +'"/>');

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

            $('input[name="searchDate"]').val(new Date().toISOString().slice(4, 10).replace(/-/g, ""));
            //왕복
            if($('#tripType_RT:checked').length==1) {

                // 노선 선택 여부
                if($('input[name="availabilitySearches[0].depAirport"]').val()=='' || $('input[name="availabilitySearches[1].depAirport"]').val()==''
                    || $('input[name="availabilitySearches[0].arrAirport"]').val()=='' || $('input[name="availabilitySearches[1].arrAirport"]').val()==''){
                    alert(alert_msg_choose_itinerary);
                    $('#main_reser01 input.booking.start').focus();
                    return false;
                }

                // 출/도착일 선택 여부
                if($('input[name="availabilitySearches[0].flightDate"]').val()=='' || $('input[name="availabilitySearches[1].flightDate"]').val()==''){
                    alert(alert_msg_choose_schedule_roundtrip);
                    $('#main_reser01 input.booking.end').focus();
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
                if($('input[name="availabilitySearches[0].depAirport"]').val()=='' || $('input[name="availabilitySearches[0].arrAirport"]').val()==''){
                    alert(alert_msg_choose_itinerary);
                    $('#main_reser02 input.booking.start').focus();
                    return false;
                }

                // 출발일 선택 여부
                if($('input[name="availabilitySearches[0].flightDate"]').val()==''){
                    alert(alert_msg_choose_schedule);
                    $('#main_reser02 input.booking.date.focus_date1').focus();
                    return false;
                }

                // 출발공항정보
                frm.append('<input type="hidden" name="deptAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[0].depAirport"]').val() +'"/>');

                // 도착공항정보
                frm.append('<input type="hidden" name="arriAirportCode" class="rqParam" value="'+ $('input[name="availabilitySearches[0].arrAirport"]').val() +'"/>');

                // 출발일 정보
                frm.append('<input type="hidden" name="schedule" class="rqParam" value="'+ $('input[name="availabilitySearches[0].flightDate"]').val() +'"/>');

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
         * 다구간여정 출/도착지, 출발일 선택
         */
        var selectMultiTripAirport = function(obj, itineraryNumber, searchType, layerType){

            currentItineraryNumber = itineraryNumber;
            var i = itineraryNumber-1;

            if('date'==searchType && $('input[name="availabilitySearches['+i+'].depAirport"]').val()!=''
                && $('input[name="availabilitySearches['+i+'].arrAirport"]').val()!=''){
                callBackArrivalAirportConfirm(itineraryNumber);
            }
            else{
                gnbSelectAirport(obj, itineraryNumber, layerType, 'main');
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

        $('.txt_tooltip').on('click', function() {
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
        var alert_msg_select_departure = '\uCD9C\uBC1C\uC9C0\uB97C \uC120\uD0DD\uD558\uC138\uC694.';//'출발지를 선택하세요.';
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

                $('#main_reser01 div.days').addClass('focus');
                $('#main_reser01 div.days input').eq(0).val(schedule_str[0]);
                $('#main_reser01 div.days input').eq(1).val(schedule_str[1]);


                $('#main_reser02 div.days').addClass('focus');
                $('#main_reser02 div.days input').eq(0).val(schedule_str[0]);

                // RQ
                $('input[name="availabilitySearches[0].flightDate"]').val(schedule_str[0]);
                $('input[name="availabilitySearches[1].flightDate"]').val(schedule_str[1]);
            }
            // 편도
            else if($('#tripType_OW:checked').length==1) {

                $('#main_reser01 div.days').addClass('focus');
                $('#main_reser01 div.days input').eq(0).val(schedule_str[0]);

                $('#main_reser02 div.days').addClass('focus');
                $('#main_reser02 div.days input').eq(0).val(schedule_str[0]);

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

            scheduleCalendar(tripType, bookingType, currency, deptAirportCode, arriAirportCode);

            // gnb job flag
            isGnbRequest = true;

        };

        //--------------- end global.js


        /**
         * 저장된 RQ가 있는경우 정보 표출
         */
        $(document).ready(function(){
            reformAirAvailabilityRQInfo();
        });

        var reformAirAvailabilityRQInfo = function(){

            // $('#display_tripType_'+$('#airAvailabilityRQ input[name="tripType"]:checked').val()).parents('a.setTripType').click().click();

            $.each($('div.sel_section input[name="tripTypeButton"]'),function(){

                if($('#airAvailabilityRQ input[name="tripType"]:checked').val()=='MC'){
                    $('#airAvailabilityRQ input[name="tripType"]').eq(0).prop('checked',true);
                    checkTripType();
                }

                if($(this).val()==$('#airAvailabilityRQ input[name="tripType"]:checked').val()){
                	$('.btn_tab li').removeClass('on');
                    $(this).prop('checked', true);
                    $('#display_tripType_'+$(this).val()).parents('a.setTripType').parent().addClass('on');
                }
            });

            // checkTripType();


            // 노선정보
            if($('input[name="availabilitySearches[0].depAirport"]').val()!='' && $('input[name="availabilitySearches[0].arrAirport"]').val()!=''){

                $('#main_reser01 div.start').addClass('focus');
                $('#main_reser01 div.start div.selected_area').addClass('on');
                $('#main_reser01 div.start div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].depAirportName"]').val());
                $('#main_reser01 div.start div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].depAirport"]').val());

                $('#main_reser01 div.end').addClass('focus');
                $('#main_reser01 div.end div.selected_area').addClass('on');
                $('#main_reser01 div.end div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].arrAirportName"]').val());
                $('#main_reser01 div.end div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].arrAirport"]').val());


                $('#main_reser02 div.start').addClass('focus');
                $('#main_reser02 div.start div.selected_area').addClass('on');
                $('#main_reser02 div.start div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].depAirportName"]').val());
                $('#main_reser02 div.start div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].depAirport"]').val());

                $('#main_reser02 div.end').addClass('focus');
                $('#main_reser02 div.end div.selected_area').addClass('on');
                $('#main_reser02 div.end div.selected_area').find('span.area').text($('input[name="availabilitySearches[0].arrAirportName"]').val());
                $('#main_reser02 div.end div.selected_area').find('span.eng').text($('input[name="availabilitySearches[0].arrAirport"]').val());

            }

            // 탑승일 정보
            if($('input[name="availabilitySearches[0].flightDate"]').val()!=''){

                $('#main_reser01 div.input_wrap.date').addClass('focus');
                $('#main_reser01 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                $('#main_reser01 input.booking.date').eq(1).val($('input[name="availabilitySearches[1].flightDate"]').val());

                if($('input[name="availabilitySearches[1].flightDate"]').val()!=''){
                    $('#main_reser01 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                }


                $('#main_reser02 div.input_wrap.date').addClass('focus');
                $('#main_reser02 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                $('#main_reser02 input.booking.date').eq(1).val($('input[name="availabilitySearches[1].flightDate"]').val());

                if($('input[name="availabilitySearches[1].flightDate"]').val()!=''){
                    $('#main_reser02 input.booking.date').eq(0).val($('input[name="availabilitySearches[0].flightDate"]').val());
                }

            }

        };



        $(function(){

            $('#route_departure_search, #route_departure').on('focusout', function() {
                $('.focus_start2').focus();
                $(this).remove();
            });

            $('#route_arrival_search, #route_arrival').on('focusout', function() {
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
    </script>


			
		</div>
		<!--// Visual -->
	
				
				
				
				
			
			
			
			<!--// end headerFragment -->

			<!--// begin content -->
			

		
		<div class="debug">

			<form id="airAvailabilityRQ" method="post" name="airAvailabilityRQ" action="/app/booking/chooseItinerary">
				<input name="searchDate" type="hidden">
				<input name="promoCode" type="hidden">
				search ticket : <input class="bookingTicket" name="bookingTicket" type="text" value="">

				<!--tripType - 여정타입 선택 왕복/편도/다구간-->
				<div>
					
						<input style="position:relative;width:auto;height:auto;opacity:1;" type="radio" id="tripType_RT" value="RT" name="tripType" checked="checked">
						<label for="tripType_RT">
							
								왕복
								
								
							
						</label> &nbsp;
					
					
						<input style="position:relative;width:auto;height:auto;opacity:1;" type="radio" id="tripType_OW" value="OW" name="tripType">
						<label for="tripType_OW">
							
								
								편도
								
							
						</label> &nbsp;
					
					
						<input style="position:relative;width:auto;height:auto;opacity:1;" type="radio" id="tripType_MC" value="MC" name="tripType">
						<label for="tripType_MC">
							
								
								
								다구간
							
						</label> &nbsp;
					
				</div>

				<!--bookingType - 개인/단체 선택-->
				<div>
					<!--지역이 한국인 경우에만 단체 노출-->
					<span id="bookingType_individual">
                            <input style="position:relative;width:auto;height:auto;opacity:1;" type="radio" id="bookingType_HI" value="HI" name="bookingType" checked="checked">
                            <label for="bookingType_HI">
                                
                                    개인
                                    
                                
                            </label> &nbsp;
                        </span>
					<span id="bookingType_group">
                            <input style="position:relative;width:auto;height:auto;opacity:1;" type="radio" id="bookingType_HG" value="HG" name="bookingType">
                            <label for="bookingType_HG">
                                
                                    
                                    단체
                                
                            </label> &nbsp;
                        </span>
				</div>



				<!--사용자 선택 정보, publishing 적용시 hidden 처리 할 정보 영역-->
				<div style="border: solid 5px grey;">

					<div> 프로모션코드 : <input id="promoCodeDetails.promoCode" maxlength="20" name="promoCodeDetails.promoCode" type="text"></div>
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
						성인 : <input class="reset_target" id="paxCountDetails0.paxCount" name="paxCountDetails[0].paxCount" onkeyup="onlyNumReplace(this, 1);" type="text" value="0">
						소아 : <input class="reset_target" id="paxCountDetails1.paxCount" name="paxCountDetails[1].paxCount" onkeyup="onlyNumReplace(this, 0);" type="text" value="0">
						유아 : <input class="reset_target" id="paxCountDetails2.paxCount" name="paxCountDetails[2].paxCount" onkeyup="onlyNumReplace(this, 0);" type="text" value="0">
						
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

			<input type="hidden" name="_csrf" value="26eb0dc9-a674-49bb-9f43-b1787662e251"></form>

			
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
		

		<!-- Contnent -->
		<div id="container">
			<div class="content main" id="content">

				<!-- 부가서비스 혜택 - 191101 PJH-->
				<div class="section service">

					<!-- 메인 타이틀 -->
					<div class="main_tit_wrap">
						<h2 class="main_tit">부가서비스</h2>
					</div>
					<!--// 메인 타이틀 -->

					<!-- 서비스 리스트 -->
					<div class="srv_list_wrap">
						<div class="srv_list slick-initialized slick-slider"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 30000px; transform: translate3d(0px, 0px, 0px);"><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false"><div><div class="srv_menu" style="width: 100%; display: inline-block;">
								<a href="/app/serviceInfo/ancBund" name="allianceBannerList" tabindex="0">
									<div class="bg_srv"></div>
									<div class="srv_cont">
										<div class="img">
											<img alt="" src="https://contents-image.twayair.com/homepage/images/main/img_srv01.png">
										</div>
										<p class="srv_name">부가서비스<br>번들</p>
									</div>
								</a>
							</div></div></div><div class="slick-slide slick-active" data-slick-index="1" aria-hidden="false"><div><div class="srv_menu" style="width: 100%; display: inline-block;">
								<a href="/app/serviceInfo/luggageAmtCal" tabindex="0">
									<div class="bg_srv"></div>
									<div class="srv_cont">
										<div class="img">
											<img alt="" src="https://contents-image.twayair.com/homepage/images/main/img_srv02.png">
										</div>
										<p class="srv_name">수하물 추가<br>구매</p>
									</div>
								</a>
							</div></div></div><div class="slick-slide slick-active" data-slick-index="2" aria-hidden="false"><div><div class="srv_menu" style="width: 100%; display: inline-block;">
								<a href="/app/serviceInfo/wantedSeat" tabindex="0">
									<div class="bg_srv"></div>
									<div class="srv_cont">
										<div class="img">
											<img alt="" src="https://contents-image.twayair.com/homepage/images/main/img_srv03.png">
										</div>
										<p class="srv_name">사전 좌석<br>선택</p>
									</div>
								</a>
							</div></div></div><div class="slick-slide slick-active" data-slick-index="3" aria-hidden="false"><div><div class="srv_menu" style="width: 100%; display: inline-block;">
								<a href="/app/serviceInfo/mealInfo" tabindex="0">
									<div class="bg_srv"></div>
									<div class="srv_cont">
										<div class="img">
											<img alt="" src="https://contents-image.twayair.com/homepage/images/main/img_srv04.png">
										</div>
										<p class="srv_name">사전 기내식 <br>주문</p>
									</div>
								</a>
							</div></div></div><div class="slick-slide slick-active" data-slick-index="4" aria-hidden="false"><div><div class="srv_menu" style="width: 100%; display: inline-block;">
								<a href="/app/serviceInfo/contents/1145" tabindex="0">
									<div class="bg_srv"></div>
									<div class="srv_cont">
										<div class="img">
											<img alt="" src="https://contents-image.twayair.com/homepage/images/main/img_srv05.png">
										</div>
										<p class="srv_name">면세품 &amp;<br>t’shop</p>
									</div>
								</a>
							</div></div></div><div class="slick-slide slick-active" data-slick-index="5" aria-hidden="false"><div><div class="srv_menu" style="width: 100%; display: inline-block;">
								<a href="/app/affiliate/insurance" tabindex="0">
									<div class="bg_srv"></div>
									<div class="srv_cont">
										<div class="img">
											<img alt="" src="https://contents-image.twayair.com/homepage/images/main/img_srv07.png">
										</div>
										<p class="srv_name">원클릭<br>여행보험</p>
									</div>
								</a>
							</div></div></div></div></div></div>
						<a class="btn_prev slick-arrow slick-hidden" href="#none" aria-disabled="true" tabindex="-1">이전</a>
						<a class="btn_next slick-arrow slick-hidden" href="#none" aria-disabled="true" tabindex="-1">다음</a>
					</div>
					</div>
					<!--// 서비스 리스트 -->
					<!-- 제휴 리스트 -->
					<div class="section b2b">
					
				</div>
				<!--// 부가서비스 혜택 -->
				<!-- 이벤트 -->
				<div class="section event">
					<!-- 이벤트 메인 타이틀 -->
					<div class="main_tit_wrap">
						<h2 class="main_tit">이벤트</h2>
						<a class="btn_more" href="/app/promotion/event/being" id="event_slide_before" title="이벤트 더보기">더보기</a>
					</div>
					<!--// 메인 타이틀 -->

					<div class="event_list">
						<div class="evnt_list_area">
							<div class="event_list_slide slick-focus slick-initialized slick-slider slick-dotted" id="event_slide" tabindex="0"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 80000px; transform: translate3d(-6820px, 0px, 0px); transition: transform 500ms ease 0s;"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('dXsebZcOowtYYUFR3jD66g==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1261" alt="결제시한연장서비스  항공권 24시간 보장 가능" src="https://contents-image.twayair.com/contents/2022/0805/376562fd-3f4c-47b7-bba8-a1a1b4a1bfb1.jpg">
										</div>
									
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="0" aria-hidden="true" role="tabpanel" id="slick-slide60" aria-describedby="slick-slide-control60" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('hPCuf5JOzwgFFKgAfGdOLQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1231" alt="3일간의 국내선 특별 할인, 주말 특가" src="https://contents-image.twayair.com/contents/2022/0831/a9601bb5-202c-46db-a1cc-0f2020a42e73.jpg">
										</div>

									</a>
								</div></div></div><div class="slick-slide" data-slick-index="1" aria-hidden="true" role="tabpanel" id="slick-slide61" aria-describedby="slick-slide-control61" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('7KkdcD0eudkYg1tAOn7Gdg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1545" alt="할인, 놓치지 마세요 단 일주일!, 크리스마스 BIG 세일, 국제선 이코노미/비즈니스 특가" src="https://contents-image.twayair.com/contents/2022/1215/17b06b7d-a607-43b6-b335-44bffaa59519.png">
										</div>
							
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="2" aria-hidden="true" role="tabpanel" id="slick-slide62" aria-describedby="slick-slide-control62" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('XwcvQeiB4dGI7VyhXKRxkg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1544" src="https://contents-image.twayair.com/contents/2022/1207/2a7c54d1-a46d-44e4-bb45-f56579c58375.png">
										</div>
							
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="3" aria-hidden="true" role="tabpanel" id="slick-slide63" aria-describedby="slick-slide-control63" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('VBCLoBKdW2T2GN/Mrq8htQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1540" alt="대만 재취항 기념 특가 대구/제주-타이베이 왕복 10% 할인" src="https://contents-image.twayair.com/contents/2022/1204/25a77c01-f6ab-41b7-ac78-35ed3227b844.png">
										</div>
		
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="4" aria-hidden="true" role="tabpanel" id="slick-slide64" aria-describedby="slick-slide-control64" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('cGASPol6wV8nr9G56xxPng==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1516" alt="2023년 수능 수험생 최대 25% 할인 국내선, 국제선 원하는 곳 어디든!" src="https://contents-image.twayair.com/contents/2022/1118/1bbb5114-c532-4fd4-b39e-faa865860037.jpg">
										</div>
		
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="5" aria-hidden="true" role="tabpanel" id="slick-slide65" aria-describedby="slick-slide-control65" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('m0zBzXCDf0GydrvipNIwQQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1506" alt="호주 시드니 신규 취항! 유류세 반값, 기내식/수하물 무료" src="https://contents-image.twayair.com/contents/2022/1103/11f98a58-9969-4d1b-9530-c7c462108971.png">
										</div>
				
								</div></div></div><div class="slick-slide" data-slick-index="6" aria-hidden="true" role="tabpanel" id="slick-slide66" aria-describedby="slick-slide-control66" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('2pjmiKvbtZB6V+uk41h4vw==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1520" src="https://contents-image.twayair.com/contents/2022/1209/83296d95-3e80-47a5-9c26-3676870b8252.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide" data-slick-index="7" aria-hidden="true" role="tabpanel" id="slick-slide67" aria-describedby="slick-slide-control67" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('J9YxFgGS7KoRSf7V5hmp1A==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1482" alt="매일 선착순 혜택 카카오페이 3만원 추가 할인" src="https://contents-image.twayair.com/contents/2022/0929/b2d9aa46-dca4-41d3-8ac5-09c6117e8425.png">
										</div>
		
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="8" aria-hidden="true" role="tabpanel" id="slick-slide68" aria-describedby="slick-slide-control68" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('jaa5hBNVpvnc+KYIxmgcoA==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1454" alt="티웨이 X 왓챠 티웨이 타면 왓챠 이용권 증정!" src="https://contents-image.twayair.com/contents/2022/0805/8880137e-24c3-494d-8d38-f2d45e767bf3.jpg">
										</div>
	
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="9" aria-hidden="true" role="tabpanel" id="slick-slide69" aria-describedby="slick-slide-control69"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('9kQuj0vaA+HXIXgNt+ImJA==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1245" alt="제주공항 쏘카존 1일 이용료 9,900원" src="https://contents-image.twayair.com/contents/2022/1212/59796c53-4ba3-4413-86f1-666ead3aaf48.png">
										</div>
	
									</a>
								</div></div></div><div class="slick-slide slick-current slick-active" data-slick-index="10" aria-hidden="false" role="tabpanel" id="slick-slide610" aria-describedby="slick-slide-control610" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('fNiiSznD9H72aRKSASCyIQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1496" src="https://contents-image.twayair.com/contents/2022/1007/c13f2443-f5e0-465c-a3bc-d5b9ca97cc7b.jpg">
										</div>

									</a>
								</div></div></div><div class="slick-slide" data-slick-index="11" aria-hidden="true" role="tabpanel" id="slick-slide611" aria-describedby="slick-slide-control611" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('65K7KFZkXPEdp4MvZi9BEg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1531" src="https://contents-image.twayair.com/contents/2022/1111/91addc9d-624e-4f8c-8c57-2b11ffb07b8b.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide" data-slick-index="12" aria-hidden="true" role="tabpanel" id="slick-slide612" aria-describedby="slick-slide-control612" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('RLtoNfuVzZ6YPmDntOOKZg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="657" alt="가입만 하면 최대 2만원! 신규 회원 쿠폰" src="https://contents-image.twayair.com/contents/2022/0805/f228dce2-2ecf-460b-b963-887635ded7e6.jpg">
										</div>

									</a>
								</div></div></div><div class="slick-slide" data-slick-index="13" aria-hidden="true" role="tabpanel" id="slick-slide613" aria-describedby="slick-slide-control613" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('vRXNw/gFXTDNjWh1d8uKCA==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1515" alt="할인, 티웨이항공 전 노선, 농협카드 결제, 1만원 즉시 할인" src="https://contents-image.twayair.com/contents/2022/1130/91812710-1094-4a15-9961-ec60baed4877.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide" data-slick-index="14" aria-hidden="true" role="tabpanel" id="slick-slide614" aria-describedby="slick-slide-control614" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('P6M1HX8cyhzkCjzFlosIew==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1541" alt="할인, 이달의 할인 혜택, 티웨이와 함께 알뜰한 여행" src="https://contents-image.twayair.com/contents/2022/1130/f66c871b-8aab-4b79-a55e-5e50298f250c.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide" data-slick-index="15" aria-hidden="true" role="tabpanel" id="slick-slide615" aria-describedby="slick-slide-control615" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('dXsebZcOowtYYUFR3jD66g==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1261" alt="결제시한연장서비스  항공권 24시간 보장 가능" src="https://contents-image.twayair.com/contents/2022/0805/376562fd-3f4c-47b7-bba8-a1a1b4a1bfb1.jpg">
										</div>
									
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="16" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('hPCuf5JOzwgFFKgAfGdOLQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1231" alt="3일간의 국내선 특별 할인, 주말 특가" src="https://contents-image.twayair.com/contents/2022/0831/a9601bb5-202c-46db-a1cc-0f2020a42e73.jpg">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="17" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('7KkdcD0eudkYg1tAOn7Gdg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1545" alt="할인, 놓치지 마세요 단 일주일!, 크리스마스 BIG 세일, 국제선 이코노미/비즈니스 특가" src="https://contents-image.twayair.com/contents/2022/1215/17b06b7d-a607-43b6-b335-44bffaa59519.png">
										</div>
									
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="18" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('XwcvQeiB4dGI7VyhXKRxkg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1544" src="https://contents-image.twayair.com/contents/2022/1207/2a7c54d1-a46d-44e4-bb45-f56579c58375.png">
										</div>
										
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="19" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('VBCLoBKdW2T2GN/Mrq8htQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1540" alt="대만 재취항 기념 특가 대구/제주-타이베이 왕복 10% 할인" src="https://contents-image.twayair.com/contents/2022/1204/25a77c01-f6ab-41b7-ac78-35ed3227b844.png">
										</div>
										
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="20" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('cGASPol6wV8nr9G56xxPng==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1516" alt="2023년 수능 수험생 최대 25% 할인 국내선, 국제선 원하는 곳 어디든!" src="https://contents-image.twayair.com/contents/2022/1118/1bbb5114-c532-4fd4-b39e-faa865860037.jpg">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="21" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('m0zBzXCDf0GydrvipNIwQQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1506" alt="호주 시드니 신규 취항! 유류세 반값, 기내식/수하물 무료" src="https://contents-image.twayair.com/contents/2022/1103/11f98a58-9969-4d1b-9530-c7c462108971.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="22" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('2pjmiKvbtZB6V+uk41h4vw==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1520" src="https://contents-image.twayair.com/contents/2022/1209/83296d95-3e80-47a5-9c26-3676870b8252.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="23" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('J9YxFgGS7KoRSf7V5hmp1A==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1482" alt="매일 선착순 혜택 카카오페이 3만원 추가 할인" src="https://contents-image.twayair.com/contents/2022/0929/b2d9aa46-dca4-41d3-8ac5-09c6117e8425.png">
										</div>
										
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="24" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('jaa5hBNVpvnc+KYIxmgcoA==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1454" alt="티웨이 X 왓챠 티웨이 타면 왓챠 이용권 증정!" src="https://contents-image.twayair.com/contents/2022/0805/8880137e-24c3-494d-8d38-f2d45e767bf3.jpg">
										</div>
									
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="25" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('9kQuj0vaA+HXIXgNt+ImJA==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1245" alt="제주공항 쏘카존 1일 이용료 9,900원" src="https://contents-image.twayair.com/contents/2022/1212/59796c53-4ba3-4413-86f1-666ead3aaf48.png">
										</div>
										
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="26" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('fNiiSznD9H72aRKSASCyIQ==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1496" src="https://contents-image.twayair.com/contents/2022/1007/c13f2443-f5e0-465c-a3bc-d5b9ca97cc7b.jpg">
										</div>
										
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="27" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('65K7KFZkXPEdp4MvZi9BEg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1531" src="https://contents-image.twayair.com/contents/2022/1111/91addc9d-624e-4f8c-8c57-2b11ffb07b8b.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="28" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('RLtoNfuVzZ6YPmDntOOKZg==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="657" alt="가입만 하면 최대 2만원! 신규 회원 쿠폰" src="https://contents-image.twayair.com/contents/2022/0805/f228dce2-2ecf-460b-b963-887635ded7e6.jpg">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="29" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('vRXNw/gFXTDNjWh1d8uKCA==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1515" alt="할인, 티웨이항공 전 노선, 농협카드 결제, 1만원 즉시 할인" src="https://contents-image.twayair.com/contents/2022/1130/91812710-1094-4a15-9961-ec60baed4877.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="30" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('P6M1HX8cyhzkCjzFlosIew==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1541" alt="할인, 이달의 할인 혜택, 티웨이와 함께 알뜰한 여행" src="https://contents-image.twayair.com/contents/2022/1130/f66c871b-8aab-4b79-a55e-5e50298f250c.png">
										</div>

									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="31" aria-hidden="true" tabindex="-1"><div><div class="event_cont" style="width: 100%; display: inline-block;">
									<a href="javascript:showEventContent('dXsebZcOowtYYUFR3jD66g==', 'being');" tabindex="0">
										<div class="img">
											<img gtm-promoid="1261" alt="결제시한연장서비스  항공권 24시간 보장 가능" src="https://contents-image.twayair.com/contents/2022/0805/376562fd-3f4c-47b7-bba8-a1a1b4a1bfb1.jpg">
										</div>

									</a>
								</div></div></div></div></div><ul class="slick-dots" style="display: table;" role="tablist"><li class="" role="presentation"><button type="button" role="tab" id="slick-slide-control60" aria-controls="slick-slide60" aria-label="1 of 16" tabindex="0">1</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control61" aria-controls="slick-slide61" aria-label="2 of 16" tabindex="0">2</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control62" aria-controls="slick-slide62" aria-label="3 of 16" tabindex="0">3</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control63" aria-controls="slick-slide63" aria-label="4 of 16" tabindex="0">4</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control64" aria-controls="slick-slide64" aria-label="5 of 16" tabindex="0">5</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control65" aria-controls="slick-slide65" aria-label="6 of 16" tabindex="0">6</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control66" aria-controls="slick-slide66" aria-label="7 of 16" tabindex="0">7</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control67" aria-controls="slick-slide67" aria-label="8 of 16" tabindex="0">8</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control68" aria-controls="slick-slide68" aria-label="9 of 16" tabindex="0">9</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control69" aria-controls="slick-slide69" aria-label="10 of 16" tabindex="0" aria-selected="true">10</button></li><li role="presentation" class="slick-active"><button type="button" role="tab" id="slick-slide-control610" aria-controls="slick-slide610" aria-label="11 of 16" tabindex="0">11</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control611" aria-controls="slick-slide611" aria-label="12 of 16" tabindex="0">12</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control612" aria-controls="slick-slide612" aria-label="13 of 16" tabindex="0">13</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control613" aria-controls="slick-slide613" aria-label="14 of 16" tabindex="0">14</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control614" aria-controls="slick-slide614" aria-label="15 of 16" tabindex="0">15</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control615" aria-controls="slick-slide615" aria-label="16 of 16" tabindex="0">16</button></li><li role="presentation"><div class="btn_role_wrap"><button class="role pause on" type="button" role="tab" id="slick-slide-control616" aria-controls="slick-slide6undefined" aria-label="17 of 16" tabindex="0">Pause</button><button class="role play" type="button">Play</button></div></li></ul></div>
						</div>
						<a class="btn_prev slick-arrow" href="#none" style="display: block;">이벤트 이전보기</a>
						<a class="btn_next slick-arrow" href="#none" style="display: block;">이벤트 다음보기</a>
					</div>
				</div>
				<!--// 이벤트 -->
				<!-- 최저가 여행 -->
				<div class="section lowest_price">
					<!-- 최저가 여행 메인 타이틀 -->
					<div class="main_tit_wrap">
						<h2 class="main_tit">최저가 여행</h2>
						<ul class="goods_tab">
							<li class="">
								<a class="sort list" href="#goods01" id="lowest_list_slide_before" title="리스트형 열기">리스트형</a>
							</li>
							<li class="on">
								<a class="sort album" href="#goods02" id="lowest_card_slide_before" title="앨범형 선택됨">앨범형</a>
							</li>
						</ul>
					</div>
					<!--// 최저가 여행 메인 타이틀 -->

					<!-- 상품 슬라이드 리스트형 -->
					<div class="goods_tab_cont goods_list_slide_wrap" id="goods01" style="display: none;">
						<!-- N Paging -->
						<h3 class="blind">리스트형</h3>
						<!-- <div class="goods_list_slide_dot"></div> -->
						<div class="goods_list_slide slick-focus slick-initialized slick-slider slick-dotted" id="lowest_list_slide" tabindex="0"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 0px; transform: translate3d(0px, 0px, 0px); transition: transform 500ms ease 0s;"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1" style="width: 0px;"><div><div class="goods_list_cont" style="width: 100%; display: inline-block;">
								<ul>
									<!-- loop -->
									
									
									
									
									
									
									
									
									
									
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=CJU&amp;flightDate=2023-01-02', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.02</span>
												<span class="route">
													<i class="start">대구</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">3,200</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=KWJ&amp;arrAirportCode=CJU&amp;flightDate=2023-01-18', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.18</span>
												<span class="route">
													<i class="start">광주</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">14,900</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<!--// loop -->
								</ul>
							</div></div></div><div class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" role="tabpanel" id="slick-slide40" style="width: 0px;" aria-describedby="slick-slide-control40" tabindex="-1"><div><div class="goods_list_cont" style="width: 100%; display: inline-block;">
								<ul>
									<!-- loop -->
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SIN&amp;flightDate=2023-01-16', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.16</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">싱가포르</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">120,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SYD&amp;flightDate=2022-12-26', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">12.26</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">시드니</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">1,000,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=NRT&amp;flightDate=2022-12-31', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">12.31</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">나리타</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">80,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=DAD&amp;flightDate=2023-01-01', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.01</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">다낭</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">110,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=BKK&amp;flightDate=2023-01-17', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.17</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">방콕/수완나폼</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">240,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=GUM&amp;flightDate=2023-01-23', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.23</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">괌</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">210,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=DAD&amp;flightDate=2023-01-18', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.18</span>
												<span class="route">
													<i class="start">대구</i>
													<i class="arrow"></i>
													<i class="end">다낭</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">150,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=FUK&amp;flightDate=2023-01-01', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.01</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">후쿠오카</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">50,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=CJU&amp;flightDate=2022-12-31', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">12.31</span>
												<span class="route">
													<i class="start">김포</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">9,500</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=PUS&amp;flightDate=2023-01-10', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.10</span>
												<span class="route">
													<i class="start">김포</i>
													<i class="arrow"></i>
													<i class="end">부산</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">17,900</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									
									
									<!--// loop -->
								</ul>
							</div></div></div><div class="slick-slide" data-slick-index="1" aria-hidden="true" role="tabpanel" id="slick-slide41" style="width: 0px;" aria-describedby="slick-slide-control41"><div><div class="goods_list_cont" style="width: 100%; display: inline-block;">
								<ul>
									<!-- loop -->
									
									
									
									
									
									
									
									
									
									
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=CJU&amp;flightDate=2023-01-02', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.02</span>
												<span class="route">
													<i class="start">대구</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">3,200</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=KWJ&amp;arrAirportCode=CJU&amp;flightDate=2023-01-18', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.18</span>
												<span class="route">
													<i class="start">광주</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">14,900</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<!--// loop -->
								</ul>
							</div></div></div><div class="slick-slide slick-cloned" data-slick-index="2" aria-hidden="true" tabindex="-1" style="width: 0px;"><div><div class="goods_list_cont" style="width: 100%; display: inline-block;">
								<ul>
									<!-- loop -->
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SIN&amp;flightDate=2023-01-16', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.16</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">싱가포르</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">120,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SYD&amp;flightDate=2022-12-26', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">12.26</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">시드니</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">1,000,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=NRT&amp;flightDate=2022-12-31', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">12.31</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">나리타</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">80,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=DAD&amp;flightDate=2023-01-01', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.01</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">다낭</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">110,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=BKK&amp;flightDate=2023-01-17', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.17</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">방콕/수완나폼</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">240,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=GUM&amp;flightDate=2023-01-23', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.23</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">괌</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">210,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=DAD&amp;flightDate=2023-01-18', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.18</span>
												<span class="route">
													<i class="start">대구</i>
													<i class="arrow"></i>
													<i class="end">다낭</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">150,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=FUK&amp;flightDate=2023-01-01', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.01</span>
												<span class="route">
													<i class="start">인천</i>
													<i class="arrow"></i>
													<i class="end">후쿠오카</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">50,000</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=CJU&amp;flightDate=2022-12-31', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">12.31</span>
												<span class="route">
													<i class="start">김포</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">9,500</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=PUS&amp;flightDate=2023-01-10', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.10</span>
												<span class="route">
													<i class="start">김포</i>
													<i class="arrow"></i>
													<i class="end">부산</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">17,900</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									
									
									<!--// loop -->
								</ul>
							</div></div></div><div class="slick-slide slick-cloned" data-slick-index="3" aria-hidden="true" tabindex="-1" style="width: 0px;"><div><div class="goods_list_cont" style="width: 100%; display: inline-block;">
								<ul>
									<!-- loop -->
									
									
									
									
									
									
									
									
									
									
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=CJU&amp;flightDate=2023-01-02', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.02</span>
												<span class="route">
													<i class="start">대구</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">3,200</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<li>
										<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=KWJ&amp;arrAirportCode=CJU&amp;flightDate=2023-01-18', 'get');" tabindex="0">
											<div class="goods_list_box">
												<span class="date">01.18</span>
												<span class="route">
													<i class="start">광주</i>
													<i class="arrow"></i>
													<i class="end">제주</i>
												</span>
												<span class="price_info">
													<i class="unit">KRW</i>
													
														<i class="price">14,900</i>
													
													
												</span>
												
													<span class="section_info">편도운임</span>
												
												
											</div>
										</a>
									</li>
									<!--// loop -->
								</ul>
							</div></div></div></div></div><ul class="slick-dots" style="display: table;" role="tablist"><li class="slick-active" role="presentation"><button type="button" role="tab" id="slick-slide-control40" aria-controls="slick-slide40" aria-label="1 of 2" tabindex="0">1</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control41" aria-controls="slick-slide41" aria-label="2 of 2" tabindex="0" aria-selected="true">2</button></li><li role="presentation"><div class="btn_role_wrap"><button class="role pause on" type="button" role="tab" id="slick-slide-control42" aria-controls="slick-slide4undefined" aria-label="3 of 2" tabindex="0">Pause</button><button class="role play" type="button">Play</button></div></li></ul></div>
						<a class="btn_prev slick-arrow" href="#none" style="display: block;">최저가 여행 이전보기</a>
						<a class="btn_next slick-arrow" href="#none" style="display: block;">최저가 여행 다음보기</a>
						<!-- // N Paging -->
					</div>
					<!--// 상품 슬라이드 리스트형 -->

					<!-- 상품 슬라이드 카드형 -->
					<div class="goods_tab_cont goods_slide" id="goods02" style="display: block;">
						<h3 class="blind">앨범형</h3>
						<!-- <div class="goods_slide_cont_dot"></div> -->
						<div class="goods_slide_cont slick-focus slick-initialized slick-slider slick-dotted" id="lowest_card_slide" tabindex="0"><div class="slick-list draggable"><div class="slick-track" style="opacity: 1; width: 60000px; transform: translate3d(-3366px, 0px, 0px); transition: transform 500ms ease 0s;"><div class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=KWJ&amp;arrAirportCode=CJU&amp;flightDate=2023-01-18', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2020/1112/0908a425-b0c7-4292-965a-44e2a081502e.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">광주</span>
												<span class="ico_location">에서</span>
												<span class="end">제주</span>
												<input type="hidden" gtm-promoid="KWJ-CJU" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">14,900~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="0" aria-hidden="true" role="tabpanel" id="slick-slide50" aria-describedby="slick-slide-control50" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SIN&amp;flightDate=2023-01-16', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2022/0523/118237ee-f460-4f9b-9dd0-1e9988079080.png">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">싱가포르</span>
												<input type="hidden" gtm-promoid="ICN-SIN" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">120,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="1" aria-hidden="true" role="tabpanel" id="slick-slide51" aria-describedby="slick-slide-control51" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SYD&amp;flightDate=2022-12-26', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2022/1019/af68ac1c-016a-41ce-a6af-21256d1b31c3.png">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">시드니</span>
												<input type="hidden" gtm-promoid="ICN-SYD" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">1,000,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="2" aria-hidden="true" role="tabpanel" id="slick-slide52" aria-describedby="slick-slide-control52" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=NRT&amp;flightDate=2022-12-31', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/7603458d-4ab4-4a7e-ab7d-510baecd8998.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">나리타</span>
												<input type="hidden" gtm-promoid="ICN-NRT" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">80,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="3" aria-hidden="true" role="tabpanel" id="slick-slide53" aria-describedby="slick-slide-control53" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=DAD&amp;flightDate=2023-01-01', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/7b9e4206-db0d-4213-875f-58161e71fd62.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">다낭</span>
												<input type="hidden" gtm-promoid="ICN-DAD" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">110,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="4" aria-hidden="true" role="tabpanel" id="slick-slide54" aria-describedby="slick-slide-control54" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=BKK&amp;flightDate=2023-01-17', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/0ad33585-8f1a-410f-a5f6-fd3a08cc6f29.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">방콕/수완나폼</span>
												<input type="hidden" gtm-promoid="ICN-BKK" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">240,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="5" aria-hidden="true" role="tabpanel" id="slick-slide55" aria-describedby="slick-slide-control55" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=GUM&amp;flightDate=2023-01-23', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/2f36ff33-21c7-46ed-821a-a1abf6f11505.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">괌</span>
												<input type="hidden" gtm-promoid="ICN-GUM" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">210,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="6" aria-hidden="true" role="tabpanel" id="slick-slide56" aria-describedby="slick-slide-control56" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=DAD&amp;flightDate=2023-01-18', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/7b9e4206-db0d-4213-875f-58161e71fd62.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">대구</span>
												<span class="ico_location">에서</span>
												<span class="end">다낭</span>
												<input type="hidden" gtm-promoid="TAE-DAD" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">150,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="7" aria-hidden="true" role="tabpanel" id="slick-slide57" aria-describedby="slick-slide-control57" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=FUK&amp;flightDate=2023-01-01', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/e5d99ad3-1171-43b5-a175-fd80f3ea9234.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">후쿠오카</span>
												<input type="hidden" gtm-promoid="ICN-FUK" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">50,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="8" aria-hidden="true" role="tabpanel" id="slick-slide58" aria-describedby="slick-slide-control58" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=CJU&amp;flightDate=2022-12-31', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2020/1112/0908a425-b0c7-4292-965a-44e2a081502e.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">김포</span>
												<span class="ico_location">에서</span>
												<span class="end">제주</span>
												<input type="hidden" gtm-promoid="GMP-CJU" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">9,500~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="9" aria-hidden="true" role="tabpanel" id="slick-slide59" aria-describedby="slick-slide-control59"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=PUS&amp;flightDate=2023-01-10', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/1571374d-6fcd-4130-810d-e707bd6683fa.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">김포</span>
												<span class="ico_location">에서</span>
												<span class="end">부산</span>
												<input type="hidden" gtm-promoid="GMP-PUS" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">17,900~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-current slick-active" data-slick-index="10" aria-hidden="false" role="tabpanel" id="slick-slide510" aria-describedby="slick-slide-control510" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=CJU&amp;flightDate=2023-01-02', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2020/1112/0908a425-b0c7-4292-965a-44e2a081502e.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">대구</span>
												<span class="ico_location">에서</span>
												<span class="end">제주</span>
												<input type="hidden" gtm-promoid="TAE-CJU" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">3,200~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide" data-slick-index="11" aria-hidden="true" role="tabpanel" id="slick-slide511" aria-describedby="slick-slide-control511" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=KWJ&amp;arrAirportCode=CJU&amp;flightDate=2023-01-18', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2020/1112/0908a425-b0c7-4292-965a-44e2a081502e.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">광주</span>
												<span class="ico_location">에서</span>
												<span class="end">제주</span>
												<input type="hidden" gtm-promoid="KWJ-CJU" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">14,900~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="12" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SIN&amp;flightDate=2023-01-16', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2022/0523/118237ee-f460-4f9b-9dd0-1e9988079080.png">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">싱가포르</span>
												<input type="hidden" gtm-promoid="ICN-SIN" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">120,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="13" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=SYD&amp;flightDate=2022-12-26', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2022/1019/af68ac1c-016a-41ce-a6af-21256d1b31c3.png">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">시드니</span>
												<input type="hidden" gtm-promoid="ICN-SYD" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">1,000,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="14" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=NRT&amp;flightDate=2022-12-31', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/7603458d-4ab4-4a7e-ab7d-510baecd8998.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">나리타</span>
												<input type="hidden" gtm-promoid="ICN-NRT" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">80,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="15" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=DAD&amp;flightDate=2023-01-01', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/7b9e4206-db0d-4213-875f-58161e71fd62.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">다낭</span>
												<input type="hidden" gtm-promoid="ICN-DAD" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">110,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="16" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=BKK&amp;flightDate=2023-01-17', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/0ad33585-8f1a-410f-a5f6-fd3a08cc6f29.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">방콕/수완나폼</span>
												<input type="hidden" gtm-promoid="ICN-BKK" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">240,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="17" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=GUM&amp;flightDate=2023-01-23', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/2f36ff33-21c7-46ed-821a-a1abf6f11505.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">괌</span>
												<input type="hidden" gtm-promoid="ICN-GUM" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">210,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="18" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=DAD&amp;flightDate=2023-01-18', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/7b9e4206-db0d-4213-875f-58161e71fd62.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">대구</span>
												<span class="ico_location">에서</span>
												<span class="end">다낭</span>
												<input type="hidden" gtm-promoid="TAE-DAD" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">150,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="19" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=ICN&amp;arrAirportCode=FUK&amp;flightDate=2023-01-01', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/e5d99ad3-1171-43b5-a175-fd80f3ea9234.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">인천</span>
												<span class="ico_location">에서</span>
												<span class="end">후쿠오카</span>
												<input type="hidden" gtm-promoid="ICN-FUK" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">50,000~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="20" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=CJU&amp;flightDate=2022-12-31', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2020/1112/0908a425-b0c7-4292-965a-44e2a081502e.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">김포</span>
												<span class="ico_location">에서</span>
												<span class="end">제주</span>
												<input type="hidden" gtm-promoid="GMP-CJU" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">9,500~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="21" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=GMP&amp;arrAirportCode=PUS&amp;flightDate=2023-01-10', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2019/0328/1571374d-6fcd-4130-810d-e707bd6683fa.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">김포</span>
												<span class="ico_location">에서</span>
												<span class="end">부산</span>
												<input type="hidden" gtm-promoid="GMP-PUS" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">17,900~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="22" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=TAE&amp;arrAirportCode=CJU&amp;flightDate=2023-01-02', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2020/1112/0908a425-b0c7-4292-965a-44e2a081502e.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">대구</span>
												<span class="ico_location">에서</span>
												<span class="end">제주</span>
												<input type="hidden" gtm-promoid="TAE-CJU" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">3,200~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div><div class="slick-slide slick-cloned" data-slick-index="23" aria-hidden="true" tabindex="-1"><div><div class="tour_goods" style="width: 100%; display: inline-block;">
									<a href="javascript:commFormSubmit('/app/booking/searchItinerary', 'tripType=OW&amp;depAirportCode=KWJ&amp;arrAirportCode=CJU&amp;flightDate=2023-01-18', 'get');" tabindex="0">
										<div class="goods_img">
											<img alt="" src="https://contents-image.twayair.com/contents/2020/1112/0908a425-b0c7-4292-965a-44e2a081502e.jpg">
										</div>
										<div class="goods_desc">
											
												<i class="bul">편도운임</i>
											
											
											<div class="goods_location">
												<span class="start">광주</span>
												<span class="ico_location">에서</span>
												<span class="end">제주</span>
												<input type="hidden" gtm-promoid="KWJ-CJU" tabindex="0">
											</div>
											<div class="good_price">
												<span class="unit">KRW</span>
												
													<span class="price">14,900~</span>
												
												
											</div>
										</div>
									</a>
								</div></div></div></div></div><ul class="slick-dots" style="display: table;" role="tablist"><li class="" role="presentation"><button type="button" role="tab" id="slick-slide-control50" aria-controls="slick-slide50" aria-label="1 of 12" tabindex="0">1</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control51" aria-controls="slick-slide51" aria-label="2 of 12" tabindex="0">2</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control52" aria-controls="slick-slide52" aria-label="3 of 12" tabindex="0">3</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control53" aria-controls="slick-slide53" aria-label="4 of 12" tabindex="0">4</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control54" aria-controls="slick-slide54" aria-label="5 of 12" tabindex="0">5</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control55" aria-controls="slick-slide55" aria-label="6 of 12" tabindex="0">6</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control56" aria-controls="slick-slide56" aria-label="7 of 12" tabindex="0">7</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control57" aria-controls="slick-slide57" aria-label="8 of 12" tabindex="0">8</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control58" aria-controls="slick-slide58" aria-label="9 of 12" tabindex="0">9</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control59" aria-controls="slick-slide59" aria-label="10 of 12" tabindex="0" aria-selected="true">10</button></li><li role="presentation" class="slick-active"><button type="button" role="tab" id="slick-slide-control510" aria-controls="slick-slide510" aria-label="11 of 12" tabindex="0">11</button></li><li role="presentation" class=""><button type="button" role="tab" id="slick-slide-control511" aria-controls="slick-slide511" aria-label="12 of 12" tabindex="0">12</button></li><li role="presentation"><div class="btn_role_wrap"><button class="role pause on" type="button" role="tab" id="slick-slide-control512" aria-controls="slick-slide5undefined" aria-label="13 of 12" tabindex="0">Pause</button><button class="role play" type="button">Play</button></div></li></ul></div>
						<a class="btn_prev slick-arrow" href="#none" style="display: block;">최저가 여행 이전보기</a>
						<a class="btn_next slick-arrow" href="#none" style="display: block;">최저가 여행 다음보기</a>
					</div>
					<!--// 상품 슬라이드 카드형 -->
				</div>
				<!--// 최저가 여행 -->
				<!-- 공지사항 -->
				<div class="section notice">
					<!-- 코로나 종합안내 배너 -->
					<div class="main_bnr_covid">
						<a href="/app/serviceInfo/contents/1450">
							<img alt="코로나19 종합 안내 코로나19 관련 최신 업데이트 정보를 확인" src="https://contents-image.twayair.com/homepage/images/main/bnr_covid19.png">
						</a>
					</div>
					<!-- //코로나 종합안내 배너 -->
					<div class="main_notice_wrap">
						<div class="notice_area">
						<!-- 공지사항 메인 타이틀 -->
						<div class="main_tit_wrap">
							<h2 class="main_tit">공지사항</h2>
							<a class="btn_more" href="list.bo" title="공지사항 더보기">더보기</a>
						</div>
						<!--// 공지사항 메인 타이틀 -->

						<!-- 공지사항 리스트 -->
						<div class="notice_list">
							<ul>
								<!-- loop -->
								<li class="notice_pin">
									<a href="javascript:retrieveNotice('11777');">
										<div class="notice_cont">
											<p class="subject">항공기 결항 안내 (12월 23일)</p>
											<p class="date">2022-12-22</p>
										</div>
									</a>
								</li>
								<li class="notice_pin">
									<a href="javascript:retrieveNotice('11772');">
										<div class="notice_cont">
											<p class="subject">2023년 1월 국내선 유류할증료</p>
											<p class="date">2022-12-09</p>
										</div>
									</a>
								</li>
								<li class="notice_pin">
									<a href="javascript:retrieveNotice('11721');">
										<div class="notice_cont">
											<p class="subject"> 미국행 탑승객 연락처 입력 권고사항 안내</p>
											<p class="date">2022-09-06</p>
										</div>
									</a>
								</li>
								<!-- // loop -->
							</ul>
						</div>
						<!--// 공지사항 리스트 -->
						</div>
						<div class="main_sns_area">
							<div class="main_tit_wrap">
								<h2 class="main_tit">SNS</h2>
							</div>
							<div class="sns_cont">
								
								
								
								<ul>
									<li><a target="_blank" href="http://www.facebook.com/twayair"><img alt="facebook" src="https://contents-image.twayair.com/homepage/images/ico/sns_fb.png"></a></li>
									<li><a href="http://www.instagram.com/twayair" target="_blank"><img alt="instagram" src="https://contents-image.twayair.com/homepage/images/ico/sns_insta.png"></a></li>
									<li><a href="http://www.youtube.com/channel/UCEOdVOvRh7iT-ngjX5TVIIg" target="_blank"><img alt="youtube" src="https://contents-image.twayair.com/homepage/images/ico/sns_ytb.png"></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--// 공지사항 -->
			</div>
		</div>


		<!-- 노선조회 -->
		<script type="text/javascript">

			/**
			 * 다구간 여정 관리
			 */
			var currentItineraryNumber = 1; // 현재 선택 진행중인 여정 구간


			/**
			 * 출/도착지 정보의 노출정보 TEXT 정리
			 */
			var airportDisplayText = function(el) {
				var text = el['city'];
				if(el['city']!=el['airport']){
					text += '/'+el['airport'];
				}
				// text += ' '+el['airport_code'];
				return text;
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
			//-- 끝 -출/도착공항 선택, 여정선택 레이어 control
			//--

		</script>
	
    <!-- dummy post form -->
    <form id="postForm" method="post" name="postForm" action="/app/main">
    <input type="hidden" name="_csrf" value="26eb0dc9-a674-49bb-9f43-b1787662e251"></form>

    <!-- dummy get form -->
    <form id="getForm" method="get" name="getForm">
    </form>
    
    <!-- dummy search form -->
    <form id="keywordGnbForm" action="/app/totalSearch/main">
    <input type="hidden" name="_csrf" value="26eb0dc9-a674-49bb-9f43-b1787662e251"></form>


	<!-- 사용자 스크립트 영역이 들어감 -->
	
		<!-- =============== SNS 간편로그인 =============== -->
		<!-- 페이스북 간편 로그인 js -->
		<script type="text/javascript">
			var keyFacebook = '555578764954159';
			if(keyFacebook != null) {
				window.fbAsyncInit = function() {
					FB.init({
						appId : '555578764954159'
						, autoLogAppEvents : true
						, xfbml            : true
						, version : 'v3.2' // 버전 3.2 사용
					});
				};

				(
					function(d, s, id) {
						var js, fjs = d.getElementsByTagName(s)[0];
						if (d.getElementById(id)) {return;}
						js = d.createElement(s); js.id = id;
						js.src = 'https://connect.facebook.net/ko_KR/sdk.js';
						fjs.parentNode.insertBefore(js, fjs);
					} (document, 'script', 'facebook-jssdk')
				);

				function checkLoginState() {
					FB.login(function(response) {
						if(response.status == 'connected') {
							// 페이스북을 통해서 로그인이 되어있는 상태.
							var userID = response.authResponse.userID;
							snsSocialInfo("FB", userID);
						}
					});
				};
			}
		</script>
		<!-- // 페이스북 간편 로그인 js -->

		<!-- =============== // SNS 간편로그인 =============== -->

		<script type="text/javascript" src="https://contents-image.twayair.com/homepage/js/lib/ui.main.js"></script>

		<script type="text/javascript">
			// 광고 링크 화면 이동
			var adRetrieve = function(e) {
				if(!$(e).data('encrypt_info')) {
					if($(e).data('new_window_yn') == 'Y') {
						window.open($(e).data('link_url'));
					}else{
						location.href = $(e).data('link_url');
					}
				} else {
					$.ajax({
						url:"/ajax/promotion/advertise/updateClickCnt", // ajax url
					    type:'post',
					    data:{
					    	encryptInfo : $(e).data('encrypt_info')
				    	},
				    	beforeSend: function (xhr) {
			               // post submit 할 시에는 반드시 csrf token 을 header에 담아 전달해야합니다.
			               xhr.setRequestHeader($("meta[name='_csrf_header']").attr("content"), $("meta[name='_csrf']").attr("content"));
				        },
					    success: function(data) {
					    	if(data) {
					    		if($(e).data('new_window_yn') == 'Y') {
									window.open($(e).data('link_url'));
								}else{
									location.href = $(e).data('link_url');
								}
					    	}
					    }
					});
				}
			}
			// 이벤트 상세 화면 이동
			var showEventContent = function(addInfo, isBeing) {
				addInfo = addInfo.replace(/\+/gi, "-");
				addInfo = addInfo.replace(/\//gi, "_");
				$('#getForm').attr('action','/app/promotion/event/retrieve/'+ addInfo + '/' + isBeing + '/n').submit();
			};

			// 공지사항 상세 화면 이동
			var retrieveNotice = function(noticeSeq) {
				$('#getForm').attr('action', '/app/customerCenter/notice/retrieve/'+noticeSeq).submit();
			};

			// 휴면계정 해제 취소
			var callbackDormantReleaseCancle = function() {
				$('input[name="returnUrl"]').val('');
				$('#getForm').attr('action', '/app/login/memberLogin').submit();
			};
			// 휴면계정 해제 진행
			var callbackDormantRelease = function(emailSendChk, smsSendChk) {
				var str = "";
				str += "<input type='hidden' name='emailSendChk' value='" + emailSendChk + "' />";
				str += "<input type='hidden' name='smsSendChk' value='" + smsSendChk + "' />";
				$('#postForm').append(str);
				$('#postForm').attr('action', '/app/login/dormantDirectReleaseComplete').submit();
			};
		</script>

		<!-- 예약조회 SCRIPT -->
		<script type="text/javascript">
			var _today = '20221224';

			var reservationSearch = function() {
				var _guestCustomer		= null;
				var pnrNumberObj			= $('input[name="pnrNumber"]');
				var deptAirportObj			= $('input[name="resDepAirport"]');
				var arrAirportObj				= $('input[name="resArrAirport"]');
				//var boardingDayChkVal	= boardingDayChk();	 // 생년월일 유효성 체크

				if(pnrNumberObj.val() == '' || pnrNumberObj.val().length <= 0) {
					alert('\uC608\uC57D\uBC88\uD638\uB97C \uC785\uB825\uD574 \uC8FC\uC138\uC694.');	// 예약번호를 입력해 주세요.
					pnrNumberObj.focus()
					return ;
				}

				/* else if(deptAirportObj.val() == '' || deptAirportObj.val().length <= 0) {
					alert('\uCD9C\uBC1C\uC9C0\uB97C \uC120\uD0DD\uD558\uC138\uC694.');
					deptAirportObj.focus();
					return;
				} else if(arrAirportObj.val() == '' || arrAirportObj.val().length <= 0) {
					alert('\uB3C4\uCC29\uC9C0\uB97C \uC120\uD0DD\uD558\uC138\uC694.');
					arrAirportObj.focus();
					return;
				} else if(boardingDayChkVal != "BD00") {
					setAlertMsg(boardingDayChkVal);
				} */

				else {
					// 비회원 예약조회 경우
					if(_guestCustomer != null && _guestCustomer.length > 0) {
						// loading
						beginLoadingAnimation();

						$.ajax({
							url : '/ajax/reservation/pnrValidate'
							, dataType : 'json'
							, async : false
							, type : 'get'
							, data : {isGuest:true, isCheckin :false, pnrNumber:pnrNumberObj.val(), depAirport:deptAirportObj.val(), arrAirport:arrAirportObj.val(), boardingDay:$("input[name='resBoardingDay']").val()}
							//, data : $('#reservationSearchForm').serialize()
							, success : function(data) {
								if(!data.success){
									endLoadingAnimation();
									alert(data.messageCode);
								} else {
									var encPnrNumber = data.data.encPnrNumber;
									var encGuestId = data.data.encGuestId;
									location.href = '/app/reservation/reservationDetail' + getReservationKeyQueryString(encPnrNumber, encGuestId);
								}
							}
							, error: function(xhr, status, error){
								endLoadingAnimation();
								alert('\uB370\uC774\uD130 \uC804\uC1A1 \uC624\uB958\uC785\uB2C8\uB2E4. \uD655\uC778\uC744 \uB204\uB974\uC2DC\uBA74 \uD398\uC774\uC9C0\uAC00 \uC0C8\uB85C\uACE0\uCE68\uB429\uB2C8\uB2E4.');
							}
						});

					}
					// 회원/미로그인 예약조회 경우
					else {
						var nameChkVal = nameChk();

						if(nameChkVal != 'NM00'){
							setAlertMsg(nameChkVal);
						} else {
							// loading
							beginLoadingAnimation();

							$.ajax({
								url : '/ajax/reservation/pnrValidate'
								, dataType : 'json'
								, async : false
								, type : 'get'
								, data : {isGuest:false, isCheckin :false, pnrNumber:pnrNumberObj.val(), depAirport:deptAirportObj.val(), arrAirport:arrAirportObj.val(),
									boardingDay:$("input[name='resBoardingDay']").val(), lastName:$("input[name='lastName']").val(), firstName:$("input[name='firstName']").val()}
								//, data : $('#reservationSearchForm').serialize()
								, success : function(data) {
									if(!data.success){
										endLoadingAnimation();
										alert(data.messageCode);
									} else {
										var encPnrNumber = data.data.encPnrNumber;
										var encGuestId = data.data.encGuestId;
										location.href = '/app/reservation/reservationDetail' + getReservationKeyQueryString(encPnrNumber, encGuestId);
									}
								}
								, error: function(xhr, status, error){
									endLoadingAnimation();
									alert('\uB370\uC774\uD130 \uC804\uC1A1 \uC624\uB958\uC785\uB2C8\uB2E4. \uD655\uC778\uC744 \uB204\uB974\uC2DC\uBA74 \uD398\uC774\uC9C0\uAC00 \uC0C8\uB85C\uACE0\uCE68\uB429\uB2C8\uB2E4.');
								}
							});
						}
					}
				}
			};

			// 탑승일 유효성체크
			var boardingDayChk = function() {
				var boardingDayChkResult	= "BD00";
				var boardingDayObj				= $('input[name="resBoardingDay"]');
				var boardingDay					= boardingDayObj.val().replace(/-/gi,'');

				var minDay = new Date();
				minDay.setDate(minDay.getDate()-365);
				var minDayYear = minDay.getFullYear();
				var minDayMonth = (minDay.getMonth() + 1);
				var minDayDate = minDay.getDate();

				var maxDay = new Date();
				maxDay.setDate(maxDay.getDate()+365);
				var maxDayYear = maxDay.getFullYear();
				var maxDayMonth = (maxDay.getMonth() + 1);
				var maxDayDate = maxDay.getDate();

				var min_Day = minDayYear + "" + (minDayMonth < 10 ? "0"+minDayMonth : minDayMonth) + "" + (minDayDate < 10 ? "0"+minDayDate : minDayDate);
				var max_Day = maxDayYear + "" + (maxDayMonth < 10 ? "0"+maxDayMonth : maxDayMonth) + "" + (maxDayDate < 10 ? "0"+maxDayDate : maxDayDate);

				if(boardingDay == '' || boardingDay.length < 0) {
					boardingDayChkResult = "BD01";
				} else if(parseInt(boardingDay) < parseInt(min_Day)) {
					boardingDayChkResult = "BD02";
				} else if(parseInt(max_Day) < parseInt(boardingDay)){
					boardingDayChkResult = "BD02";
				} else {
					boardingDayChkResult = "BD00";
				}

				return boardingDayChkResult;
			};

			//탑승자 이름 체크
			var nameChk = function() {
				var nameChkResult	= "NM00";
				var lastNameObj		= $("input[name='lastName']");
				var firstNameObj	= $("input[name='firstName']");

				if(lastNameObj.val() == '' || lastNameObj.val().length < 0) {
					nameChkResult = "NM01";
				} else if(firstNameObj.val() == '' || firstNameObj.val().length < 0) {
					nameChkResult = "NM01";
				}

				return nameChkResult;
			}

			var setAlertMsg = function(msgCode) {
				console.log(msgCode);

				var alert_msg_boardingDay_empty	= '\uD0D1\uC2B9\uC77C\uC744 \uC785\uB825\uD574 \uC8FC\uC138\uC694.';	//생년월일은 필수정보입니다.
				var alert_msg_boardingDay_type		= '\uC9C0\uC815\uD560 \uC218 \uC5C6\uB294 \uB0A0\uC9DC\uC785\uB2C8\uB2E4.';	//지정할 수 없는 날짜입니다.

				var alert_msg_paxName_empty		= '\uD0D1\uC2B9\uC790\uC758 \uC131/\uC774\uB984\uC744 \uC785\uB825\uD574 \uC8FC\uC138\uC694.';	// 탑승자의 성/이름을 입력해 주세요.

				switch(msgCode) {
					case "BD01"	: alert(alert_msg_boardingDay_empty); break;
					case "BD02"	: alert(alert_msg_boardingDay_type); break;

					case "NM01"	: alert(alert_msg_paxName_empty); break;
				}
			}

			// 싱글 달력 로드하기
			var showCalendar = function(){
/*
				var monStr = '\uC6D4';
				var tueStr = '\uD654';
				var wedStr = '\uC218';
				var thuStr = '\uBAA9';
				var friStr = '\uAE08';
				var satStr = '\uD1A0';
				var sunStr = '\uC77C';
				var arrDay = new Array(monStr, tueStr, wedStr, thuStr, friStr, satStr, sunStr);

				var displayDate = new Date();
				showSingleCalendar(displayDate, 'resBoardingDay', -5, 2, 0, 365, arrDay);
*/

				var displayDate = new Date();
				singleCalendarLayer(displayDate.getFullYear(), displayDate.getMonth() , "resBoardingDay", -5, 2, 0, 365);

			}
		</script>
		<!--// 예약조회 SCRIPT -->

	

	<div class="dim" style="display:none;"></div>
	<div id="layer_area"></div>
	<div id="layer_inLayerArea"></div>
	<div id="address_area"></div>
	
	
	<!-- 전체메뉴 시작 -->
	<div class="layer_allmenu_wrap">
		<div class="layer_allmenu">
			<h2>전체메뉴</h2>

			<div class="allmenu">
				<ul class="dep1">
					<li id="allmenu_1244" class="on">
						<a tabindex="0" href="#menu_0">항공권 예매</a>
					</li>
					<li id="allmenu_1014">
						<a tabindex="0" href="#menu_1">나의 예약</a>
					</li>
					<li id="allmenu_1009">
						<a tabindex="0" href="#menu_2">서비스 안내</a>
					</li>
					<li id="allmenu_1400">
						<a tabindex="0" href="#menu_3">온라인면세점</a>
					</li>
					<li id="allmenu_1223">
						<a tabindex="0" href="#menu_4">이벤트</a>
					</li>
					<li id="allmenu_1445">
						<a tabindex="0" href="#menu_5">제휴</a>
					</li>
				</ul>            
			</div>

			<div class="depth_scroll">
				<!-- 항공권 예매 -->
				<div class="section_menu dep1_1244" id="menu_0">
					<div class="menu_list dep2">
						<h3 class="dep1">
							<a href="javascript:gnbCall('/app/booking/searchItinerary', 'N');">항공권 예매</a>
						</h3>
						<ul>
						<li id="gnb_1245" class="gnb2depth dep2_1245 last_depth" data-pmenuseq="1244" data-menuurl="/app/booking/searchItinerary" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>항공권 예매</strong></a></li><li id="gnb_1428" class="gnb2depth dep2_1428 last_depth" data-pmenuseq="1244" data-menuurl="/app/promotion/event/being" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>이벤트/프로모션</strong></a></li><li id="gnb_1139" class="gnb2depth dep2_1139 last_depth" data-pmenuseq="1244" data-menuurl="/app/serviceInfo/feeInfo" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>운임 및 수수료 안내</strong></a></li></ul>
					</div>
				</div>
				<div class="section_menu dep1_1014" id="menu_1">
					<div class="menu_list dep2">
						<h3 class="dep1">
							<a href="javascript:gnbCall('/app/reservation/reservationList', 'N');">나의 예약</a>
						</h3>
						<ul>
						<li id="gnb_1015" class="gnb2depth dep2_1015 last_depth" data-pmenuseq="1014" data-menuurl="/app/reservation/reservationList" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>예약 조회</strong></a></li><li id="gnb_1065" class="gnb2depth dep2_1065 last_depth" data-pmenuseq="1014" data-menuurl="/app/reservation/searchCheckinItinerary" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>온라인 체크인</strong></a></li><li id="gnb_1430" class="gnb2depth dep2_1430 last_depth" data-pmenuseq="1014" data-menuurl="/app/reservation/reservationList" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>부가서비스 추가 구매</strong></a></li></ul>
					</div>
				</div>
				<div class="section_menu dep1_1009" id="menu_2">
					<div class="menu_list dep2 customer">
						<h3 class="dep1">
							<a href="javascript:gnbCall('/app/serviceInfo/contents/1119', 'N');">서비스 안내</a>
						</h3>
						<ul>
						<li id="gnb_1010" class="gnb2depth dep2_1010" data-pmenuseq="1009" data-menuurl="/app/serviceInfo/contents/1119" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>여행 준비</strong></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1119', 'N');" id="gnb_1119" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>항공권 예매 안내</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1277', 'N');" id="gnb_1277" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>단체 항공권 예매 안내</span></a><a href="javascript:gnbCall('/app/serviceInfo/familyTravel', 'N');" id="gnb_1068" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>가족 동반 여행</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1069', 'N');" id="gnb_1069" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>도움이 필요한 고객</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1070', 'N');" id="gnb_1070" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>t’pet(반려동물 동반 여행)</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1069', 'N');" id="gnb_1429" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>혼자 여행하는 어린이</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1444', 'N');" id="gnb_1444" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>티웨이페이</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1322', 'N');" id="gnb_1322" data-pmenuseq="1010" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>항공기 정보</span></a></li><li id="gnb_1125" class="gnb2depth dep2_1125" data-pmenuseq="1009" data-menuurl="/app/serviceInfo/flightSchedule" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>항공편 및 공항 정보</strong></a><a href="javascript:gnbCall('/app/serviceInfo/flightSchedule', 'N');" id="gnb_1126" data-pmenuseq="1125" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>운항스케줄 조회</span></a><a href="javascript:gnbCall('/app/serviceInfo/flightStatus', 'N');" id="gnb_1127" data-pmenuseq="1125" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>출/도착 조회</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1129', 'N');" id="gnb_1129" data-pmenuseq="1125" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>셀프 체크인 안내</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1121', 'N');" id="gnb_1121" data-pmenuseq="1125" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>온라인 체크인 안내</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1130', 'N');" id="gnb_1130" data-pmenuseq="1125" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>탑승 수속 안내</span></a><a href="javascript:gnbCall('/app/serviceInfo/airportCounter', 'N');" id="gnb_1135" data-pmenuseq="1125" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>공항 카운터 정보</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1450', 'N');" id="gnb_1450" data-pmenuseq="1125" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>코로나 19 종합 안내</span></a></li><li id="gnb_1152" class="gnb2depth dep2_1152" data-pmenuseq="1009" data-menuurl="/app/serviceInfo/ancBund" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>부가서비스</strong></a><a href="javascript:gnbCall('/app/serviceInfo/ancBund', 'N');" id="gnb_1153" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>부가서비스 번들 구매</span></a><a href="javascript:gnbCall('/app/serviceInfo/wantedSeat', 'N');" id="gnb_1154" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>사전좌석 구매</span></a><a href="javascript:gnbCall('/app/serviceInfo/luggageAmtCal', 'N');" id="gnb_1159" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>수하물 추가 구매</span></a><a href="javascript:gnbCall('/app/serviceInfo/mealInfo', 'N');" id="gnb_1160" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>기내식 사전 주문</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1431', 'N');" id="gnb_1431" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>결제시한연장 서비스</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1163', 'N');" id="gnb_1163" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>옆좌석 구매</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1165', 'N');" id="gnb_1165" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>t'carrier(펫 운송용기)/포장용 비닐 구매</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1316', 'N');" id="gnb_1316" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>t’care 서비스</span></a><a href="javascript:gnbCall('/app/affiliate/insurance', 'N');" id="gnb_1353" data-pmenuseq="1152" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>원클릭 여행자보험</span></a></li><li id="gnb_1147" class="gnb2depth dep2_1147" data-pmenuseq="1009" data-menuurl="/app/serviceInfo/contents/1148" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>수하물 안내</strong></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1148', 'N');" id="gnb_1148" data-pmenuseq="1147" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>무료 수하물</span></a><a href="javascript:gnbCall('/app/serviceInfo/luggageAmtCal', 'N');" id="gnb_1459" data-pmenuseq="1147" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>초과 수하물</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1149', 'N');" id="gnb_1149" data-pmenuseq="1147" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>특수 수하물</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1150', 'N');" id="gnb_1150" data-pmenuseq="1147" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>운송 제한 물품</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1151', 'N');" id="gnb_1151" data-pmenuseq="1147" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>수하물 배상</span></a></li><li id="gnb_1140" class="gnb2depth dep2_1140" data-pmenuseq="1009" data-menuurl="/app/serviceInfo/contents/1141" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>기내 서비스</strong></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1141', 'N');" id="gnb_1141" data-pmenuseq="1140" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>기내 제공 서비스</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1142', 'N');" id="gnb_1142" data-pmenuseq="1140" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>t’shop</span></a><a href="javascript:gnbCall('/app/serviceInfo/contents/1145', 'N');" id="gnb_1145" data-pmenuseq="1140" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>기내 면세품 예약 및 구매 안내</span></a><a href="javascript:gnbCall('/app/board/inflightEvent', 'N');" id="gnb_1227" data-pmenuseq="1140" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>기내 이벤트</span></a></li></ul>
					</div>
				</div>
				<div class="section_menu dep1_1400" id="menu_3">
					<div class="menu_list dep2 customer">
						<h3 class="dep1">
							<a href="javascript:gnbCall('/app/dutyFree/main', 'N');">온라인면세점</a>
						</h3>
						<ul>
						<li id="gnb_1411" class="gnb2depth dep2_1411" data-pmenuseq="1400" data-menuurl="/app/dutyFree/productList/A" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>카테고리</strong></a><a href="javascript:gnbCall('/app/dutyFree/productList/A', 'N');" id="gnb_1421" data-pmenuseq="1411" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>주류</span></a><a href="javascript:gnbCall('/app/dutyFree/productList/Z', 'N');" id="gnb_1422" data-pmenuseq="1411" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>화장품 &amp; 향수</span></a><a href="javascript:gnbCall('/app/dutyFree/productList/Y', 'N');" id="gnb_1423" data-pmenuseq="1411" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>쥬얼리 &amp; 선물용품</span></a><a href="javascript:gnbCall('/app/dutyFree/productList/H', 'N');" id="gnb_1425" data-pmenuseq="1411" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>건강제품류</span></a></li><li id="gnb_1413" class="gnb2depth dep2_1413" data-pmenuseq="1400" data-menuurl="/app/dutyFree/orderList" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>나의 주문</strong></a><a href="javascript:gnbCall('/app/dutyFree/orderList', 'N');" id="gnb_1426" data-pmenuseq="1413" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>주문 조회</span></a></li><li id="gnb_1405" class="gnb2depth dep2_1405 last_depth" data-pmenuseq="1400" data-menuurl="/app/dutyFree/event/being" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>이벤트</strong></a></li><li id="gnb_1401" class="gnb2depth dep2_1401 last_depth" data-pmenuseq="1400" data-menuurl="/app/dutyFree/notice" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>공지사항</strong></a></li><li id="gnb_1408" class="gnb2depth dep2_1408" data-pmenuseq="1400" data-menuurl="/app/dutyFree/contents/1409" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>이용 안내</strong></a><a href="javascript:gnbCall('https://www.twayair.com/app/customerCenter/faq?priCategoryId=F0900', 'Y');" id="gnb_1432" data-pmenuseq="1408" class="gnb3depth" data-new-window-yn="Y" data-del-yn="N" title="새창열림"><span>FAQ</span></a></li></ul>
					</div>
				</div>
				<div class="section_menu dep1_1223" id="menu_4">
					<div class="menu_list dep2">
						<h3 class="dep1">
							<a href="javascript:gnbCall('/app/promotion/event/being', 'N');">이벤트</a>
						</h3>
						<ul>
						<li id="gnb_1224" class="gnb2depth dep2_1224 last_depth" data-pmenuseq="1223" data-menuurl="/app/promotion/event/being" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>이벤트/프로모션</strong></a></li><li id="gnb_1233" class="gnb2depth dep2_1233" data-pmenuseq="1223" data-menuurl="/app/promotion/coupon" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>쿠폰</strong></a><a href="javascript:gnbCall('/app/promotion/coupon/guide', 'N');" id="gnb_1250" data-pmenuseq="1233" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>쿠폰 안내</span></a><a href="javascript:gnbCall('/app/promotion/coupon', 'N');" id="gnb_1251" data-pmenuseq="1233" class="gnb3depth" data-new-window-yn="N" data-del-yn="N"><span>쿠폰북</span></a></li></ul>
					</div>
				</div>
				<div class="section_menu dep1_1445" id="menu_5">
					<div class="menu_list dep2 customer">
						<h3 class="dep1">
							<a href="javascript:gnbCall('/app/allianceCompany/HOTL', 'N');">제휴</a>
						</h3>
						<ul>
						<li id="gnb_1456" class="gnb2depth dep2_1456 last_depth" data-pmenuseq="1445" data-menuurl="/app/allianceCompany/HOTL" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>호텔</strong></a></li><li id="gnb_1457" class="gnb2depth dep2_1457 last_depth" data-pmenuseq="1445" data-menuurl="/app/allianceCompany/RENT" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>렌터카</strong></a></li><li id="gnb_1449" class="gnb2depth dep2_1449 last_depth" data-pmenuseq="1445" data-menuurl="/app/allianceCompany/FNNC" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>금융 및 여행자보험</strong></a></li><li id="gnb_1448" class="gnb2depth dep2_1448 last_depth" data-pmenuseq="1445" data-menuurl="/app/allianceCompany/SHPN" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>쇼핑 및 편의</strong></a></li><li id="gnb_1454" class="gnb2depth dep2_1454 last_depth" data-pmenuseq="1445" data-menuurl="/app/allianceCompany/ACTY" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>액티비티</strong></a></li><li id="gnb_1455" class="gnb2depth dep2_1455 last_depth" data-pmenuseq="1445" data-menuurl="/app/allianceCompany/WIFI" data-new-window-yn="N" data-del-yn="N"><a href="#none"><strong>OTT &amp; WIFI</strong></a></li></ul>
					</div>
				</div>
				<!--// 항공권 예매 -->
			</div>
		</div>

		<div class="allmenu_close">
			<a class="btn_allmenu_close" href="#none">닫기</a>
		</div>

	</div>
	<!-- 전체메뉴 끝 -->
	

				
			
			<!--// end footerFragment -->

			<!--// begin navigationFragment (GNB 메뉴 영역) -->
			
			<!--// end navigationFragment (GNB 메뉴 영역) -->
		</div>

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

			// 기내면세 플로팅
			var gnbFragment = 'main';
			if(gnbFragment == 'dutyFree') {
				var token = $("meta[name='_csrf']").attr("content");
				$('div.nav_sticky').load('/app/dutyFree/main/stickyLayer', {_csrf:token}, function() {
				});
			}
		});

		</script>
		
		<!-- 챗봇 서비스 -->
		
	
<div class="dim02" style="display: none;"></div><script type="text/javascript" id="gtm-jq-ajax-listen">(function(){function h(b){"undefined"!==typeof jQuery?(k=jQuery,n()):20>b&&setTimeout(h,500)}function n(){k(document).bind("ajaxComplete",function(b,a,f){var c=document.createElement("a");c.href=f.url;var g="/"===c.pathname[0]?c.pathname:"/"+c.pathname,d="?"===c.search[0]?c.search.slice(1):c.search;d=l(d,"\x26","\x3d",!0);var e=l(a.getAllResponseHeaders(),"\n",":");dataLayer.push({event:"ajaxComplete",attributes:{type:f.type||"",url:c.href||"",queryParameters:d,pathname:g||"",hostname:c.hostname||
"",protocol:c.protocol||"",fragment:c.hash||"",statusCode:a.status||"",statusText:a.statusText||"",headers:e,timestamp:b.timeStamp||"",contentType:f.contentType||"",response:a.responseJSON||a.responseXML||a.responseText||""}})})}function l(b,a,f,c){var g={};if(!b||!a||!f)return{};if(b=b.split(a))for(a=0;a<b.length;a++){var d=c?decodeURIComponent(b[a]):b[a],e=d.split(f);d=m(e[0]);e=m(e[1]);d&&e&&(g[d]=e)}return g}function m(b){if(b)return b.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,"")}var k;h()})();</script> 
<script type="text/javascript" id="">(function(b,a,c){b=a.getElementsByTagName(c)[0];a=a.createElement(c);a.async=!0;a.src="//cdn.tbase.co.kr/tbase/common/1069_common.js";b.parentNode.insertBefore(a,b)})(window,document,"script");</script> 

<script type="text/javascript" id="" src="https://www.googletagmanager.com/gtag/js?id=AW-815758399"></script> 
<script type="text/javascript" id="" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" id="">function mobRf(){var a=new EN;a.setData("userid","twayair");a.setSSL(!0);a.sendRf()};</script>
<script type="text/javascript" id="" src="https://cdn.megadata.co.kr/js/en_script/3.6/enliple_min3.6.js"></script>
<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","371419434194566");fbq("track","PageView");</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=371419434194566&amp;ev=PageView&amp;noscript=1"></noscript>


<script type="text/javascript" id="" src="https://www.googletagmanager.com/gtag/js?id=AW-11008077408"></script>
<script type="text/javascript" id="" src="https://www.googletagmanager.com/gtag/js?id=AW-11000412613"></script>
<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","AW-815758399");</script>
 
<script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="s_12514e83073b";if(!_nasa)var _nasa={};wcs.inflow();wcs_do(_nasa);</script>



<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","AW-11008077408");</script>
<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date);gtag("config","AW-11000412613");</script><div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div></div></div></div><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(52)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(53)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(54)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(55))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));</script><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(83)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(84)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(85)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(86))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));</script><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(114)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(115)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(116)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(117))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));</script><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(145)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(146)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(147)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(148))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));</script><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(176)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(177)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(178)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(179))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));</script><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(207)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(208)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(209)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(210))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));</script><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(238)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(239)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(240)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(241))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));</script><script type="text/javascript" id="">var mainTopRollingBanner=[],clickSelect=$(google_tag_manager["GTM-TC4XB6D"].macro(270)),evtCate="HP_\uba54\uc778\ud398\uc774\uc9c0",evtAct="\uc0c1\ub2e8\ub864\ub9c1\ubc30\ub108",_bnName=evtCate+"_"+evtAct,_bnCreative=clickSelect.find("img").attr("alt"),_bnId=clickSelect.find("img").attr("gtm-promoid");
void 0!=_bnId&&""!=_bnId&&(mainTopRollingBanner.push({id:_bnId,name:_bnName,creative:_bnCreative,position:"-"}),"gtm.elementVisibility"==google_tag_manager["GTM-TC4XB6D"].macro(271)?dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ub178\ucd9c",eventLabel:_bnCreative,event:"promotionImpression",ecommerce:{promoView:{promotions:mainTopRollingBanner}}}):("gtm.click"==google_tag_manager["GTM-TC4XB6D"].macro(272)||"gtm.linkClick"==google_tag_manager["GTM-TC4XB6D"].macro(273))&&dataLayer.push({eventCate:evtCate,eventAct:evtAct+"_\ud074\ub9ad",eventLabel:_bnCreative,
event:"promotionClick",ecommerce:{promoClick:{promotions:mainTopRollingBanner}}}));

</script>
	<c:import url="common/footer.jsp" />
</body>
</html>