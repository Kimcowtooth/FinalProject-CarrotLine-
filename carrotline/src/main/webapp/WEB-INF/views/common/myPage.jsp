<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/style.css?ver=xLa2XMQS+lXZNnNZJT/w1o+tqU09m0cQds7pNdg4sJIh4Nk79MAhD2BFWRsfr5r2">
<link rel="stylesheet" type="text/css" href="https://contents-image.twayair.com/homepage/css/waitMe.css">
</head>
<body>
<%@include file="../common/header.jsp" %>
	<div id="container">
    <div class="content" id="content">
        <!-- 컨텐츠 영역 -->
        <!-- 타이틀 -->
        <div class="pg_tit_wrap">
            <h2 class="pg_tit">나의 예약</h2>
        </div>
        <!--// 타이틀 -->

        <!-- 나의 예약 목록 -->
        <div class="tab_wrap">
          
            <div class="tab_cont" id="tab1" tabindex="0" style="display: block;">
                <!-- 예약 리스트 -->
                <div class="reservation_list">
                    <div class="grid">
                    	<button type="button" class="myBtn" onclick="myInfo();">나의 정보 조회</button>
                        <p class="tb_info">여행사/소셜커머스/예약센터/공항에서 예약한 내역조회는 <a href="javascript:otherPnrRetrieve();" class="link">예약 정보로 찾기</a>에서 조회해 주시기 바랍니다.</p>
                        <table class="tb_col">
                            <caption>예약조회 - 예약번호, 탑승일, 노선, 출발 시간, 도착 시간, 총 탑승객,
                                상태로 구성되었습니다. 선택한 목록의 상세내역을 보실려면 스페이바를 이용해 주세요.</caption>
                            <colgroup>
                                <col style="width: 130px">
                                <col style="width: 150px">
                                <col style="width: auto">
                                <col style="width: 130px">
                                <col style="width: 130px">
                                <col style="width: 130px">
                                <col style="width: 130px">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>예약 번호</th>
                                    <th>탑승일</th>
                                    <th>노선</th>
                                    <th>출발 시간</th>
                                    <th>도착 시간</th>
                                    <th>총 탑승객</th>
                                    <th>상태</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:choose>
	                            <c:when test="${fn:length(bkList) > 0}" >
	                                <c:forEach var="b" items="${bkList}">
		                                <tr style="cursor: pointer;" tabindex="0">
		                                    <td>${b.bookingNo}</td>
		                                    <td>${b.departureDate}</td>
		                                    
		                                    <td>
		                                        <div class="reservation_route">
		                                            <div class="route start">
		                                                <span class="eng">${b.departureCode}</span>
		                                                <span>${b.depCity}</span>
		                                            </div>
		                                            <div class="route end">
		                                                <span class="eng">${b.arrivalCode}</span>
		                                                <span>${b.arrCity}</span>
		                                            </div>
		                                        </div>
		                                    </td>
		                                    
		                                    <td>${b.depTime}</td>
		                                    
		                                    <td>
		                                        ${b.arrTime}
		                                    </td>
		                                    
		                                    <td>총 ${b.totalCnt}명</td>
		                                    <c:choose> 
		                                    	<c:when test="${b.state eq 'Y'}"><td>정상</td></c:when>
		                                    	<c:otherwise><td>취소</td></c:otherwise>
											</c:choose>                                    
		                                </tr>     
				                 	</c:forEach>
				                 </c:when>
                                 <c:otherwise>
                                 <!-- 검색 결과가 없을 때 -->
                                 <tr>
                                     <td class="no_data" colspan="7">조회 결과가 없습니다.</td>
                              	 </tr>
                                 <!--// 검색 결과가 없을 때 -->
                                 </c:otherwise>
                          	</c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--// 예약 리스트 -->
            </div>
        </div>
        <!--// 나의 예약 목록 -->
        <!--// 컨텐츠 영역 -->
    </div>
</div>

<script>

	$(function(){
		$(".tb_col>tbody tr").click(function(){
			location.href="bkDetail.bo?bookingNo="+$(this).children().eq(0).text();
		})
	})
	
	

</script>
</body>
</html>