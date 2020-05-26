<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <%-- <link href="${pageContext.request.contextPath}/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css"/>" rel="stylesheet">
   		 <link href="<c:url value="/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css"/>" rel="stylesheet">
 --%>    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

	<!--JQuery  -->
	<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	
	<!-- 부트스트랩 -->
	<link href="<%=request.getContextPath()%>/bootstrap-3.3.2/css/bootstrap.css" rel="stylesheet">
	<script src="<%=request.getContextPath()%>/bootstrap-3.3.2/js/bootstrap.js"></script>

	<link href="<%=request.getContextPath()%>/css/main.css" rel="stylesheet">

	<!--font-awesome  -->
	<link href="<%=request.getContextPath()%>/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">

