<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title></title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top_menu.jsp" %>
	
	
<form action="tPackModify.do" method="post">
	<div class="container">
		<input type="submit" value="완료" class="pull-right"> 
		<table  class="grid table table-bordered table-striped hover ">
			<tr>
				<th>게시여부</th>
				<td>YES
					<input type="radio" name="viewYn" value="Y" <c:if test="${pack.viewYn eq 'Y'}">checked</c:if>> 
					NO
					<input type="radio" name="viewYn" value="N" <c:if test="${pack.viewYn eq 'N'}">checked</c:if>>
				</td>
			</tr>
			<tr>
				<th>패키지아이디</th>
				<td><input value="${pack.packageId}"  name="packageId" ></td>
			</tr>
			<tr>
				<th>패키지이름</th>
				<td><input value="${pack.packageName}" name="packageName"></td>
			</tr>
			<tr>
				<th>지역</th>
				<td><input value="${pack.packageRegion}" name="packageRegion"></td>
			</tr>
			<tr>
				<th>패키지사진</th>
				<td><input value="${pack.packagePic}" name="packagePic"></td>
			</tr>
			<tr>
				<th>총인원</th>
				<td><input value="${pack.totalPeople}" name="totalPeople"></td>
			</tr>
			<tr>
				<th>성인요금</th>
				<td><input value="${pack.adultPrice}" name="adultPrice"></td>
			</tr>
			<tr>
				<th>아동요금</th>
				<td><input value="${pack.childPrice}" name="childPrice"></td>
			</tr>
			<tr>
				<th>유아요금</th>
				<td><input value="${pack.babyPrice}" name="babyPrice"></td>
			</tr>
			<tr>
				<th>여행기간</th>
				<td><input value="${pack.packagePeriod}" name="packagePeriod"></td>
			</tr>
			<tr>
				<th>출발항공편</th>
				<td><input value="${pack.airStart}" name="airStart"></td>
			</tr>
			<tr>
				<th>도착항공편</th>
				<td><input value="${pack.airEnd}" name="airEnd"></td>
			</tr>
			<tr>
				<th>계좌은행</th>
				<td><input value="${pack.accountBank}" name="accountBank"></td>
			</tr>
			<tr>
				<th>계좌번호</th>
				<td><input value="${pack.account}" name="account"></td>
			</tr>
			<tr>
				<th>전달사항</th>
				<td><textarea rows="10" cols="100" name="notice">${pack.notice}</textarea></td>
			</tr>
		</table>
	</div>
</form>
</body>
</html>