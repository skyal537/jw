<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>쪽지보기</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top_menu.jsp" %>
<div class="container">

    <table class="table table-striped table-bordered ">
   		<colgroup>
    		<col width="20%">
    		<col />
    	</colgroup>
        <tr>
            <td colspan="2">
                <h2>쪽지보기</h2>
            </td>
        </tr>
        <tr>
            <td>보낸이</td>
            <td>${sessionScope.USER_INFO.userId }</td>
        </tr>
        <tr>
            <td>받는이</td>
            <td>${post.memIdArrv }</td>
        </tr> 
        <tr>
            <td>제 목</td>
            <td>${post.postTitle }</td>
        </tr>
        <tr>
        	<td>내 용</td>
            <td>${post.postContent}</td>
        </tr>
        <tr>
			<td colspan="2">
				<div class="pull-right">
					<a href="postList.do" class="btn btn-sm btn-primary">닫 기</a>
				</div>
			</td>
		</tr>
    </table>
</div>
</body>
</html>