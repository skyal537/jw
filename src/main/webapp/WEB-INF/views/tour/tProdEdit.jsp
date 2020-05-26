<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<title></title>

<style type="text/css">
	.eachStep {
		padding: 30px;
	}
</style>


</head>
<body>
<%@include file="/WEB-INF/inc/top_menu.jsp"%>

	<div class="container">
		<form action="tProdModify.do" method="post">
			<input type="submit" value="완료" class="pull-right">
			<table class="grid table table-bordered table-striped hover ">
				<tr>
					<th>게시여부</th>
					<td>YES
						<input type="radio" name="viewYn" value="Y" <c:if test="${prod.viewYn eq 'Y'}">checked</c:if>> 
						NO
						<input type="radio" name="viewYn" value="N" <c:if test="${prod.viewYn eq 'N'}">checked</c:if>>
					</td>
				</tr>
				<tr>
					<th>패키지아이디</th>
					<td><input value="${pack.packageId}" name="packageId"></td>
				</tr>
				<tr>
					<th>패키지이름</th>
					<td><input value="${pack.packageName}"></td>
				</tr>
				<tr>
					<th>지역</th>
					<td><input value="${pack.packageRegion}"></td>
				</tr>
				<tr>
					<th>상품아이디</th>
					<td><input value="${prod.productId}" name="productId"></td>
				</tr>
				<tr>
					<th>상품이름</th>
					<td><input value="${prod.productName}" name="productName"></td>
				</tr>
				<tr>
					<th>출발일자</th>
					<td><input value="${prod.startDate}" name="startDate"></td>
				</tr>
				<tr>
					<th>도착일자</th>
					<td><input value="${prod.endDate}" name="endDate"></td>
				</tr>
				<tr>
					<th>총인원</th>
					<td><input value="${prod.totalPeople}" name="totalPeople"></td>
				</tr>
				<tr>
					<th>신청인원</th>
					<td><input value="${prod.applyPeople}" name="applyPeople"></td>
				</tr>
				<tr>
					<th>성인요금</th>
					<td><input value="${prod.adultPrice}" name="adultPrice"></td>
				</tr>
				<tr>
					<th>아동요금</th>
					<td><input value="${prod.childPrice}" name="childPrice"></td>
				</tr>
				<tr>
					<th>유아요금</th>
					<td><input value="${prod.babyPrice}" name="babyPrice"></td>
				</tr>
				<tr>
					<th>여행기간</th>
					<td><input value="${prod.packagePeriod}" name="packagePeriod"></td>
				</tr>
				<tr>
					<th>출발항공편</th>
					<td><input value="${prod.airStart}" name="airStart"></td>
				</tr>
				<tr>
					<th>도착항공편</th>
					<td><input value="${prod.airEnd}" name="airEnd"></td>
				</tr>
				<tr>
					<th>항공사</th>
					<td><input value="${prod.airLineNm}" name="airLineNm"></td>
				</tr>
				<tr>
					<th>계좌은행</th>
					<td><input value="${prod.accountBank}" name="accountBank"></td>
				</tr>
				<tr>
					<th>계좌번호</th>
					<td><input value="${prod.account}" name="account"></td>
				</tr>
				<tr>
					<th>전달사항</th>
					<td><textarea rows="10" cols="100" name="notice">${prod.notice}</textarea></td>
				</tr>
			</table>
		</form>

		<form name="frm_cal" action="${pageContext.request.contextPath}/calendar/calRegist.do">
			<input type="hidden" value="${prod.productId }" name="productId">
			<input type="hidden" value="1" name="calendarId">
			
			<table class="grid table table-bordered table-striped hover ">
				<tr>
					<th>일차</th>
					<td><input value="" name="day"></td>
				</tr>
				<tr>
					<th>단계</th>
					<td><input value="" name="step"></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input value="" name="calendarTitle"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="100" name="calendarContent"></textarea></td>
				</tr>
				<tr>
					<th>관광지코드</th>
					<td><input value="" name="spotId"></td>
				</tr>
			</table>
			
			<input type="button" id="btn_cal_reg" value="등록" formaction="${pageContext.request.contextPath}/cal/calRegist">
			<input type="button" id="btn_cal_mod" value="수정" formaction="${pageContext.request.contextPath}/cal/calModify">
			
		</form>



		<script type="text/javascript">
			function fn_cal_list() {
				params = {'productId' : '${prod.productId}'}
				console.log(params);
				$.ajax({
					type : "POST",
					url : "<c:url value='/calendar/calList.do'/>",
					//url: "${pageContext.request.contextPath}/calendar/calList.do",
					dataType : "text",
					data : params,
					success : function(response) {
						//alert(response)
						$area = $('.calContainer');
						$area.html(response);
					},
					error : function(req, st, err) {
						console.log("req", req);
						console.log("req", err);
					}
				}); //ajax
			}
			

			$(document).ready(function() {
				//일정 등록
				$("#btn_cal_reg").click(function(e) {
									e.preventDefault();
									f = document.forms.frm_cal;
									params = $(f).serialize();
									console.log(params);
									
									$.ajax({ type : "POST",
											url : "http://localhost:2020/web/calendar/calRegist.do",
											dataType : "text",
											data : params,
											success : function(response) {
												$('.calContainer').empty();
												fn_cal_list();
											},
											error : function(req, st, err) {
												$('.calContainer').empty();
													fn_cal_list();
													if (req.status == 401) {
														alert("로그인 페이지로 이동합니다.");
														location.href = '<c:url value="/login/login.do"/>';
													} else {
														//alert("에러발생.");
														console.log(req);
														console.log(err);
														console.log(req.status);
													}
											}
										}); //ajax
							});

				//일정 수정
				$("#btn_cal_mod").click(function(e) {
					/* 
					alert('야호~');
					$('input[name=calendarId]').val( ${vo.calendarId} );
					$('input[name=step]').val(${vo.step});
					$('input[name=calendarTitle]').val(${vo.calendarTitle});
					$('input[name=calendarContent]').val(${vo.calendarContent});
					$('input[name=spotId]').val(${vo.spotId}); 
					 */

					e.preventDefault();
					f = document.forms.frm_cal;
					params = $(f).serialize();
					console.log(params);
					$.ajax({ 
						type : "POST",
						url : "http://localhost:2020/web/calendar/calModify.do",
						dataType : "text",
						data : params,
						success : function(response) {
							$('.calContainer').empty();
								fn_cal_list();
							},
						error : function(req, st, err) {
							$('.calContainer').empty();
								fn_cal_list();
								if (req.status == 401) {
									alert("로그인 페이지로 이동합니다.");
									location.href = '<c:url value="/login/login.do"/>';
								} else {
									//alert("에러발생.");
									console.log(req);
									console.log(err);
									console.log(req.status);
								}
							}
						}); //ajax
				});
			});
			fn_cal_list();
		</script>
<br>
<br>
<br>
	<div class="calContainer" id="calCon">

		<!-- 
		<div class="isCalendarList">
			<div class="panel panel-default eachStep">
			<c:forEach var="vo" items="${cal}" varStatus="st">
			<c:set var="nextStep" value="${cal[st.index+1].day }"/>
			<c:set var="prevStep" value="${cal[st.index-1].day }"/>
					<div class="panel panel-default">					
				<div><h2>
				<c:if test="${prevStep ne vo.day}">
					${vo.day}일차
				</c:if>
				 </h2></div>
					<div class="col-sm-offset-1">
						<div><h4>${vo.calendarTitle}</h4></div>
						<div>${vo.calendarContent}</div>
						<c:if test="${not empty vo.spotPic}">
							<div class="col-sm-offset-1">
								<div><h4>${vo.spotName }</h4></div>
								<div><img alt="" src="${vo.spotPic }" width="200px"></div>
							</div>
						</c:if>
					</div>
				<c:if test="${nextStep > vo.day}">
					</div><div class="panel panel-default eachStep">
				</c:if>
				
			</c:forEach>
		</div>
		 -->

	</div>
	<!--cal컨테이너  -->

</div>

</body>
</html>