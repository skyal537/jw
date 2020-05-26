<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
$(document)
.ready(
		function() {
			$('.isCalendarList')
					.on(
							'click',
							'#btn_cal_del',
							function(e) {
								//alert('모~~여~~봐~~요~~');
								e.preventDefault();

								res = confirm("해당 일정을 삭제하시겠습니까?"); //yes = true, no = false
								$this = $(this);
								if (res) {
									calId = $(this)
											.closest(
													'div.calParts')
											.data(
													'calendar-id');
									params = {
										'calendarId' : calId
									}
									console.log("params",
											params)
									$
											.ajax({
												type : "POST",
												url : "<c:url value='/calendar/calRemove.do'/>",
												dataType : "text",
												data : params,
												success : function(
														response) {
													$(
															'.calContainer')
															.empty();
													fn_cal_list();
												},
												error : function(
														req,
														st,
														err) {
													$(
													'.calContainer')
													.empty();
												fn_cal_list();
													console
															.log("noooooo");
												}
											}); //ajax
								}
							});


});
</script>		
		<div class="isCalendarList">
			<div class="panel panel-default eachStep">
				<c:forEach var="vo" items="${cal}" varStatus="st">
				<c:set var="nextStep" value="${cal[st.index+1].day }"/>
				<c:set var="prevStep" value="${cal[st.index-1].day }"/>
				<input type="hidden" value="${vo.calendarId}">
<!-- 					<div class="panel panel-default">-->						
					<div><h2>
					<c:if test="${prevStep ne vo.day}">
						${vo.day}일차
					</c:if>
					 </h2></div>
						<div class="col-sm-offset-1 calParts" data-calendar-id="${vo.calendarId}">
							<div><h4>${vo.calendarTitle}</h4></div>
							<div>${vo.calendarContent}</div>
							<c:if test="${not empty vo.spotPic}">
								<div class="col-sm-offset-1">
									<div><h4>${vo.spotName }</h4></div>
									<div><img alt="" src="${vo.spotPic }" width="200px"></div>
								</div>
							</c:if>
						<input type="button" id="btn_cal_del" value="삭제"   >
							
						</div>
					<c:if test="${nextStep > vo.day}">
						</div><div class="panel panel-default eachStep">
					</c:if>
					
				</c:forEach>
			</div>
			
			
			
		