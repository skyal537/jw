<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>예약등록확인</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top_menu.jsp"%>
	<div class="container">
		<h1>예약등록확인</h1>
		<form action="#" name="member" method="get">

			<div class="block_tit_area title">
				<h1 class="stit_con_title">상품 정보</h1>
			</div>

			<table class="table table-hover">

				<colgroup>
					<col style="width: 15%">
					<col />
					<col style="width: 15%">
					<col style="width: 25%">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label>상품명</label></th>
						<td colspan="5">
							${prod.productName}
						</td>
					</tr>
					<tr>
					
						<th scope="row"><label>여행기간</label></th>
						<td>
						${prod.packagePeriod}
						</td>
						<th scope="row"><label>이용교통</label></th>
						<td><span class="air_txt">
						${prod.airLineNm}
						</span></td>
					</tr>

					<tr>
						<th scope="row"><label>출발일</label></th>
						<td colspan="5">
						
							<span class="flight_num_txt">
								${prod.startDate}
						</span>
						</td>
					</tr>
					<tr>
						<th scope="row"><label>도착일</label></th>
						<td colspan="5">
						
							<span class="flight_num_txt">
								${prod.endDate}
						</span>
						</td>
					</tr>
				</tbody>
			</table>

			<h3>예약자 정보</h3>
			<table class="table">
			<colgroup>
					<col style="width: 15%">
					<col />
					<col style="width: 15%">
					<col style="width: 25%">
			</colgroup>
				<tr>
					<th>이름</th>
					<td>${member.memName}</td>
					<th>생년월일</th>
					<td>${member.memBir}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${member.memMail}</td>
					<th>성별</th>
					<td>${member.memSex}</td>
				</tr>
				<tr>
					<th>휴대폰번호</th>
					<td colspan="5">${member.memHp}</td>
				</tr>
			</table>
		

			<h3>여행자 정보</h3>

			<h4>인원 상세 정보</h4>

		

			<table class="table">
			<c:forEach items="${tour}" var="vo">
				<tr>
					<th>이름(한글)</th>
					<td>${vo.touristKrNm}</td>
					<th>휴대폰번호</th>
					<td>${vo.touristHp}</td>
				</tr>
				<tr>
					<th>성(영문)</th>
					<td>${vo.touristFstNm}</td>
					<th>이름(영문)</th>
					<td>${vo.touristLstNm}</td>
				</tr>
				</c:forEach>
			</table>

			<h4>요청사항</h4>
			
			<table class="table">
			<tr>
			<td>${res.reqClaim}</td>
			</tr>
			</table>
			
			<h1>계좌 정보</h1>
			<table border="2" class="table table-hover">
				<tr>
					<th>결제은행</th>
					<td>
						${res.accountBank}
					</td>
				</tr>
				<tr>
					<th>결제계좌</th>
					<td>${res.account}</td>
				</tr>

			</table>
		
		<div class="col-sm-2 col-sm-offset-10 text-right" style="margin-bottom: 5px;">
			<a href="${pageContext.request.contextPath }/res/resList.do" class="btn btn-sm btn-primary">&nbsp;목&nbsp;록</a>
			<a href="${pageContext.request.contextPath }/res/resModify.do?resId=${res.resId}&productId=${prod.productId}" class="btn btn-sm btn-primary">&nbsp;수&nbsp;정</a>
		</div>
		
	

		</form>
	</div>
</body>
</html>