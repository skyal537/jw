<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>예약조회</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top_menu.jsp"%>
	<div class="container">
		<!-- 페이징 스크립트 -->
		<script type="text/javascript">

	var f_goPage = function(page){
		//e.preventDefault();	//이벤트 전파 방지(기존 서브밋 방지)
		document.getElementById("id_curPage").value = page;
		var f= document.forms["searchform"];
		console.log("fn_goPage Call", "")
		f.action = "resList.do";
		f.submit();
	}
	var f_submit_search = function(){
		var f= document.forms["searchform"];
		f.action = "resList.do";
		f.curPage.value = 1;
		console.log("fn_search Call", f.dataset.page)
		f.submit();
	}

	var f_submit_change = function(){
		var f= document.forms["searchform"];
		f.curPage.value = 1;
		f.rowSizePerPage.value = this.value;
		console.log("fn_change Call", "curPage",f.curPage.value,"rowSizePerPage",  f.dataset.page)
		f.submit();
	}
	
	window.onload=function(){
		document.forms["searchform"].addEventListener("submit", f_submit_search);
		document.getElementById("id_rowSizePerPage").addEventListener("change", f_submit_change);
	}
	
/* 	window.onload=function(){
		/* var alink = document.getElementsByClassName("id_alink");
		for(var i=0; i<alink.length; i++){
			alink[i].addEventListener("click", f_submit);
		} 
		document.forms["searchform"].addEventListener("submit", f_submit_search);
		document.getElementById("id_rowSizePerPage").addEventListener("change", f_submit_change);
		//document.querySelectorAll(".pagination li a[data-page]").forEach(obj =>{obj.addEventListener("click", f_goPage);})
	} 
*/
	
function checkAll(){
    if( $("#checkall").is(':checked') ){
      $("input[name=reserveIds]").prop("checked", true);
    }else{
      $("input[name=reserveIds]").prop("checked", false);
    }
}
	
$(document).ready(function() {
	//삭제버튼 클릭
	$("#btn_checked_delete").click(function(e) {

		e.preventDefault();
		//체크된 값만 조회
		var f = document.forms.reslist;
		f.action = "removeCheckedBoard.do";
		f.submit();
	}); //$("#btn_checked_delete").click
	
}); //$(document).ready
</script>
		<!-- 이벤트   -->
		<!-- 페이징 스크립트 -->

		<h1>예약조회 </h1>

		<!-- 검색  -->
		<div class="page-header">
			<div class="panel panel-default">
				<div class="panel-body">
					<form action="resList.do" method="post" class="form-horizontal"
						name="searchform" id="frm_member">
						<input type="hidden" id="id_curPage" name="curPage"
							value="${searchVO.curPage }"> <input type="hidden"
							name="rowSizePerPage" value="${searchVO.rowSizePerPage }">

						<div class="form-group">
							<label for="id_searchType" class="col-sm-2 control-label">&nbsp;검&nbsp;색</label>
							<div class="col-sm-2">
								<select id="id_searchType" name="searchType"
									class="form-control input-sm">
									<option value="">--- 선 택 ---</option>
									<option value="T"
										${searchVO.searchType eq 'T' ? 'selected="selected"':"" }>회원아이디</option>
									<option value="W"
										${searchVO.searchType eq 'W' ? 'selected="selected"':"" }>예약번호</option>
									<option value="C"
										${searchVO.searchType eq 'C' ? 'selected="selected"':"" }>상품번호</option>
								</select>
							</div>
							<div class="col-sm-5">
								<input type="text" name="searchWord"
									class="form-control input-sm" value="${searchVO.searchWord }"
									placeholder="검색어">
							</div>
							<div class="col-sm-2 ">
								<button type="submit" class="btn btn-sm btn-primary btn-block ">
									<i class="fa fa-search" aria-hidden="true"></i>&nbsp;검색하기
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 검색  -->
		
		<!-- 건수별 조회 -->
	<div class="row">
		<div class="col-sm-3 form-inline" style="margin-bottom: 5px;">
			전체 ${searchVO.totalRowCount} 건 
			<select id="id_rowSizePerPage" name="rowSizePerPage" class="form-control">
				<option value="10"
					${searchVO.rowSizePerPage eq 10 ? 'selected="selected"':"" }>10</option>
				<option value="20"
					${searchVO.rowSizePerPage eq 20 ? 'selected="selected"':"" }>20</option>
				<option value="30"
					${searchVO.rowSizePerPage eq 30 ? 'selected="selected"':"" }>30</option>
				<option value="40"
					${searchVO.rowSizePerPage eq 40 ? 'selected="selected"':"" }>40</option>
				<option value="50"
					${searchVO.rowSizePerPage eq 50 ? 'selected="selected"':"" }>50</option>
			</select>
		</div>
		
		<div class="col-sm-2 col-sm-offset-7 text-right" style="margin-bottom: 5px;">
			<button id="btn_checked_delete" class="btn btn-sm btn-danger">&nbsp; 예약취소</button>
		</div>
	</div>
<!-- 건수별 조회 -->


		<!-- 리스트 출력-->
		<form name="reslist">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th><input type="checkbox" id="checkall" name="checkall"
							onclick="checkAll();"></th>
						<th>예약번호</th>
						<th>결제완료</th>
						<th>회원아이디</th>
						<th>총인원</th>
						<th>총금액</th>
						<th>예약날짜</th>
						<th>상세보기</th>
						<th>수정</th>


					</tr>
				</thead>
				<tbody>

					<c:forEach items="${resList}" var="vo">
						<tr>
							<td><input type="checkbox" name="reserveIds"
								value="${vo.resId}"></td>
							<td>${vo.resId}</td>
							<td>${vo.payYn}</td>
							<td>${vo.memId}</td>
							<td>${vo.resPeople}</td>
							<td>${vo.resPrice}</td>
							<td>${vo.resDate}</td>
							<td>
							<a href="${pageContext.request.contextPath }/res/resViewDetail.do?resId=${vo.resId}&productId=${vo.productId}">상세보기</a></td>
							<td>
							<a href="${pageContext.request.contextPath }/res/resModify.do?resId=${vo.resId}&productId=${vo.productId}">수정하기</a></td>

						</tr>
					</c:forEach>



				</tbody>
			</table>
		</form>
		<!-- 리스트 출력-->




		<!--페이징 처리   -->
		<nav>
			<ul class="pager">

				<!-- 이전 페이지 -->
				<li><a
					href="resList.do?curPage=${(searchVO.firstPage ne 1) ? searchVO.firstPage-1 : 1}"
					data-page="${searchVO.firstPage-1}" aria-label="Previous"> <span
						aria-hidden="true">&larr;</span></a></li>

				<!-- 이전 페이지 하나씩-->
				<li><a
					href="resList.do?curPage=${searchVO.curPage>1 ? searchVO.curPage-1 : 1}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span></a>
				</li>

				<!-- 페이지 넘버링 -->
				<c:forEach var="i" begin="${searchVO.firstPage}"
					end="${searchVO.lastPage}">
					<c:if test="${searchVO.curPage==i}">
						<li class="active"><a href="#" class="alink">${i}</a>
					</c:if>
					<c:if test="${searchVO.curPage ne i}">
						<li><a href="#" class="alink" data-page="${i}"
							onclick="f_goPage(${i})">${i}</a>
					</c:if>
				</c:forEach>

				<!-- 다음 페이지 하나씩 -->
				<li><a
					href="resList.do?curPage=${searchVO.curPage<searchVO.totalPageCount?(searchVO.curPage+1):searchVO.totalPageCount}"
					data-page="${searchVO.curPage+1}" aria-label="Next"> <span
						aria-hidden="true">&raquo;</span></a></li>

				<!-- 이전 페이지 -->
				<li><a
					href="resList.do?curPage=${searchVO.lastPage<searchVO.totalPageCount?(searchVO.lastPage+1):searchVO.totalPageCount}"
					data-page="${searchVO.lastPage+1}" aria-label="Next"> <span
						aria-hidden="true">&rarr;</span></a></li>
			</ul>
		</nav>
		<!--페이징 처리   -->







	</div>
</body>
</html>