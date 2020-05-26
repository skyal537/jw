<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  	<title>회원정보수정</title>
  </head>
<body>

<script type="text/javascript">

	var f_goPage = function(page){
		//e.preventDefault();	//이벤트 전파 방지(기존 서브밋 방지)
		document.getElementById("id_curPage").value = page;
		var f= document.forms["frm_member"];
		console.log("fn_goPage Call", "")
		f.action = "memberMgList.do";
		f.submit();
	}
	var f_submit_search = function(){
		var f= document.forms["frm_member"];
		f.action = "memberMgList.do";
		f.curPage.value = 1;
		console.log("fn_search Call", f.dataset.page)
		f.submit();
	}

	var f_submit_change = function(){
		var f= document.forms["frm_member"];
		f.curPage.value = 1;
		f.rowSizePerPage.value = this.value;
		console.log("fn_change Call", "curPage",f.curPage.value,"rowSizePerPage",  f.dataset.page)
		f.submit();
	}
	window.onload=function(){
		/* var alink = document.getElementsByClassName("id_alink");
		for(var i=0; i<alink.length; i++){
			alink[i].addEventListener("click", f_submit);
		} */
		document.forms["frm_member"].addEventListener("submit", f_submit_search);
		document.getElementById("id_rowSizePerPage").addEventListener("change", f_submit_change);
		//document.querySelectorAll(".pagination li a[data-page]").forEach(obj =>{obj.addEventListener("click", f_goPage);})
	}
</script>

	<%@include file="/WEB-INF/inc/top_menu.jsp" %>

<div class="container">

	<h2>회원 리스트</h2>

 <!-- 검색폼 -->
<div class="page-header">
	<div class="panel panel-default">
	  <div class="panel-body">
	  	<form action="memberMgList.do" method="post" class="form-horizontal" name="frm_member" id="frm_member">
	  		<input id="id_curPage" name="curPage" value="${searchVO.curPage }" hidden="" >
	  		<input  name="rowSizePerPage" value="${searchVO.rowSizePerPage }" hidden="">

			  <div class="form-group">
			    <label for="id_searchType" class="col-sm-2 control-label">&nbsp;검&nbsp;색</label>
			    <div class="col-sm-2">
			    	<select id="id_searchType" name="searchType" class="form-control input-sm">
			    	<option value="">--- 선 택 ---</option>
	                    <option value="id"   ${searchVO.searchType eq 'id' ? 'selected="selected"':"" }>ID</option>
			    		<option value="name" ${searchVO.searchType eq 'name' ? 'selected="selected"':"" }>회원명</option>
			    	</select>
			    </div>
			    <div class="col-sm-5">
			      <input type="text" name="searchWord" class="form-control input-sm"
			      		value="${searchVO.searchWord }" placeholder="검색어" >
			    </div>
				<div class="col-sm-2 " >
			  		<button type="submit" class="btn btn-sm btn-primary btn-block ">
			  			<i class="fa fa-search" aria-hidden="true"></i>&nbsp;검색하기</button>
			  	</div>
			  </div>
		</form>
	  </div>
	</div>
</div>

	<div class="row">
		<div class="col-sm-3 form-inline" style="margin-bottom: 5px;">
			전체 ${searchVO.totalRowCount} 건
			<select id="id_rowSizePerPage" name="rowSizePerPage" class="form-control">
				<option value="10" ${searchVO.rowSizePerPage eq 10 ? 'selected="selected"':"" }>10</option>
				<option value="20" ${searchVO.rowSizePerPage eq 20 ? 'selected="selected"':"" }>20</option>
				<option value="30" ${searchVO.rowSizePerPage eq 30 ? 'selected="selected"':"" }>30</option>
				<option value="40" ${searchVO.rowSizePerPage eq 40 ? 'selected="selected"':"" }>40</option>
				<option value="50" ${searchVO.rowSizePerPage eq 50 ? 'selected="selected"':"" }>50</option>
			</select>
		</div>
		<div class="col-sm-2 col-sm-offset-7 text-right" style="margin-bottom: 5px;" >
			<a href="${pageContext.request.contextPath }/post/postForm.do" class="btn btn-sm btn-warning" >쪽지보내기</a>
		</div>
	</div>



<table class="table table-striped table ">
	<colgroup>
		<col style="width: 5%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
        <col style="width: 13%;">
        <col style="width: 12%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
	</colgroup>

	<tr class="text-center">
		<td><input type="checkbox" name="memberCheckAll" id="memberCheckAll" onclick="checkAll();"/></td>
		<td>회원ID</td>
		<td>회원명</td>
		<td>핸드폰번호</td>
		<td>생년월일</td>
		<td>성별</td>
		<td>탈퇴여부</td>
		<td>회원정보수정</td>
		<td>예약관리</td>
	</tr>

	<c:choose>
		<c:when test="${empty list }">
			<tr><td colspan="7">조회결과가 없습니다.</td></tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="vo" items="${list }" varStatus="i">
				<c:url var="memberEditUrl" value="/member/memberEdit.do">
					<c:param name="memId" value="${vo.memId }"></c:param>
				</c:url>
				<c:url var="resListUrl" value="/res/resMg.do">
					<c:param name="userId" value="${vo.memId }"></c:param>
				</c:url>
				<tr class="text-center">
					<td><input type="checkbox" name="memberCheckRow" value="${vo.memId }"></td>
					<td><c:out value="${vo.memId }" /></td>
					<td><c:out value="${vo.memName }" /></td>
					<td><c:out value="${vo.memHp }" /></td>
					<td><c:out value="${vo.memBir }" /></td>
					<td><c:out value="${vo.memSex }" /></td>
					<td><c:out value="${vo.memDelYn }" /></td>
					<td><a href="<c:out value="${memberEditUrl }" />">회원정보수정</a></td>
					<td><a href="<c:out value="${resListUrl }" />">예약관리</a></td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<script type="text/javascript">

// 체크박스 전체선택, 전체해제
	function checkAll(){
	    if( $("#memberCheckAll").is(':checked') ){
	      $("input[name=memberCheckRow]").prop("checked", true);
	    }else{
	      $("input[name=checkRow]").prop("checked", false);
	    }
	}

</script>

<nav>
	<ul class="pager">

		<!-- 이전 페이지 -->
		<li>
			<a href="memberMgList.do?curPage=${(searchVO.firstPage ne 1) ? searchVO.firstPage-1 : 1}"
				data-page="${searchVO.firstPage-1}" aria-label="Previous">
			<span aria-hidden="true">&larr;</span></a>
	   </li>

		<!-- 이전 페이지 하나씩-->
		<li>
			<a href="memberMgList.do?curPage=${searchVO.curPage>1 ? searchVO.curPage-1 : 1}" aria-label="Previous">
			<span aria-hidden="true">&laquo;</span></a>
		</li>

		<!-- 페이지 넘버링 -->
		<c:forEach var="i" begin="${searchVO.firstPage}" end="${searchVO.lastPage}">
			<c:if test="${searchVO.curPage==i}"><li class="active"><a href="#" class="alink">${i}</a></c:if>
			<c:if test="${searchVO.curPage ne i}"><li><a href="#"  class="alink" data-page="${i}" onclick="f_goPage(${i})">${i}</a></c:if>
		</c:forEach>

		<!-- 다음 페이지 하나씩 -->
		<li>
			<a href="memberMgList.do?curPage=${searchVO.curPage<searchVO.totalPageCount?(searchVO.curPage+1):searchVO.totalPageCount}"
				data-page="${searchVO.curPage+1}" aria-label="Next">
			<span aria-hidden="true">&raquo;</span></a>
		</li>

		<!-- 이전 페이지 -->
		<li>
			<a href="memberMgList.do?curPage=${searchVO.lastPage<searchVO.totalPageCount?(searchVO.lastPage+1):searchVO.totalPageCount}"
				data-page="${searchVO.lastPage+1}" aria-label="Next">
			<span aria-hidden="true">&rarr;</span></a>
	  	</li>
	</ul>
</nav>

</div>
</body>
</html>





