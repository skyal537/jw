<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>쪽지쓰기</title>
</head>

<body>
<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

	<%@include file="/WEB-INF/inc/top_menu.jsp" %>
<div class="container">

	<form name="tx_editor_form" action="postRegist.do" method="post" onsubmit="return false;">
		<input type="hidden" name="dup_key" value="${dup_key}">
		
	    <table class="table table-striped table-bordered ">
	    	<colgroup>
	    		<col width="20%">
	    		<col />
	    	</colgroup>
	        <tr>
	            <td colspan="2"><h2>쪽지쓰기</h2></td>
	        </tr>
	        <tr>
	            <td>보내는이</td>
	            <td> ${sessionScope.USER_INFO.userName}(${sessionScope.USER_INFO.userId}) </td>
	        </tr>
	        <tr>
	            <td>받는이 <c:forEach begin="1" end="20">&nbsp;</c:forEach>
		            <c:if test="${USER_INFO.authCode le '1'}">
		            	<button type="button" id="btn_find_member"  class="btn btn-sm btn-info">
		            		<i class="fa fa-search" aria-hidden="true"></i>&nbsp;회원검색
		            	</button>
		            </c:if>	
	            </td>
	            <td>
	            	<div class="panel panel-default">
					  <div id="memIdArrvDiv" class="panel-body">
					  	<c:if test="${not empty list }">
					  		<c:forEach items="${list}" var="vo">
					  			<span Class="input-sm" id="${vo.memId }">
									<label>${vo.memName } ( ${vo.memId } )</label>
									<input type="hidden" name="arriveMembers" value=" ${vo.memId }" >
									<span><a href="#">&nbsp;X&nbsp;&nbsp;</a></span>
								</span>
					  		</c:forEach>
					  	</c:if>
					  </div>
					</div>
	            </td>
	        </tr>
	        <tr>
	            <td>제 목</td>
	            <td><input type="text" name="postTitle" value="" Class="form-control input-sm"></td>
	        </tr>
	        <tr>
	        	<td>내 용</td>
	            <td><textarea rows="3" name="postContent" class="form-control ckeditor"></textarea></td>
	        </tr>
	        <tr>
				<td colspan="2">
					<div class="pull-left">
						<a href="postList.do" class="btn btn-sm btn-default">목 록</a>
					</div>
					<div class="pull-right">
						<button type="button" onclick="fn_save()" class="btn btn-sm btn-primary">보내기</button>
					</div>
				</td>
			</tr>
	    </table>
	</form>	
	
</div>

<script type="text/javascript">

	// 글 등록하기
	function fn_save() {
		if (confirm ("등록 하시겠습니까?")) {
			var f = document.forms["tx_editor_form"];
			f.submit();
		}
	}

	
	// 회원목록 팝업창 띄우기
	$(document).ready(function() {
		$('#btn_find_member').click(function() {
				var settings = 'toolbar=0, status=0, menubar=0, scrollbars=yes, height=800, width=500';
				var target = '<c:url value="/member/memberListPopup.do?callback=fn_callback_member_list" />';
				var win = window.open(target, 'popup_name', settings); 
				// win.onload = function() { win.callBackFunction = fn_callback_member_list; };
		});
	});
	
	
	// 팝업창에서 회원추가후 쪽지쓰기에 보낸이로 추가
	function fn_callback_member_list(data){
		$.each(data,function(i,row){
// 			alert(i + " " + row.memId + " " + row.memName + " " + row.memHp);

			str= '';
			str+= '<span Class="input-sm" id="'+ row.memId +'">';
			str+= '<label>' + row.memName + '(' + row.memId + ')' +'</label>';
			str+= '<input type="hidden" name="arriveMembers" value="' + row.memId +'" >';
			str+= '<span><a href="#">&nbsp;X&nbsp;&nbsp;</a></span>'; 
			str+= '</span>';
			
			$('#memIdArrvDiv').append(str);
		});
		
		
		// 선택한 회원 취소하기
		var $span_cancel = $("#memIdArrvDiv > span");
		$span_cancel.click(function(){
			//alert('?')
		    $(this).remove();
		});
	}

</script>

</body>
</html>