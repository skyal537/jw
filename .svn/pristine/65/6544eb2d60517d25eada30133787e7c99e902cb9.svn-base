<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<title>회원가입</title>
</head>
<body  onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<%@include file="/WEB-INF/inc/top_menu.jsp" %>
<div class="container">

   <h2>회원가입</h2>

    <form action="memberRegist.do" method="post">
    	<input type="hidden" name="dup_key" value="${dup_key}">
        <table class="table table-striped table-bordered">
            <colgroup>
                <col style="width:20%;">
                <col style="width:30%;">
                <col style="width:20%;">
                <col style="width:30%;">
            </colgroup>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="memId" value="" required="required" placeholder="아이디 입력" Class="form-control input-sm"></td>
                <td>이름</td>
                <td><input type="text" name="memName" value="" placeholder="이름 입력" Class="form-control input-sm">
                	 <form:errors path="mem.memName" />
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="memPass" value="" required="required" placeholder="비밀번호" Class="form-control input-sm"></td>
                <td>비밀번호확인</td>
                <td><input type="password" name="memPassCheck" value="" required="required" placeholder="비밀번호 확인" Class="form-control input-sm"></td>
            </tr>
            <tr>
                <td>핸드폰번호</td>
                <td><input type="text" name="memHp" value="" placeholder="ex)01012345678" Class="form-control input-sm">
                	 <form:errors path="mem.memHp" />
                </td>
            	<td>E-MAIL</td>
                <td><input type="text" name="memMail" value="" placeholder="E-MAil 입력" Class="form-control input-sm">
                	<form:errors path="mem.memMail" />
                </td>
            </tr>
            <tr>
                <td>생년월일</td>
                <td><input type="text" name="memBir" value="" placeholder="ex)20200101" Class="form-control input-sm">
                	<form:errors path="mem.memBir" />
                </td>
                <td>성별</td>
                <td>
                    <input type="radio" name="memSex" id="" value="M">&nbsp;&nbsp;남자&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="memSex" id="" value="F">&nbsp;&nbsp;여자
                </td>
            </tr>
            <tr>
				<td>우편번호</td>
				<td colspan="3">
					<input type="text" style="width: 20%; display: inline;" id="sample6_postcode" class="form-control input-sm" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-sm btn-default">
				</td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="3">
					<input type="text" style="width: 30%; display: inline;" id="sample6_address"  name="memAddr" class="form-control input-sm" placeholder="주소">
					<input type="text" style="width: 30%; display: inline;" id="sample6_detailAddress" name="memAddr2" class="form-control input-sm" placeholder="상세주소">
					<input type="text" style="width: 20%; display: inline;" id="sample6_extraAddress" class="form-control input-sm" placeholder="참고항목">
				</td>
			</tr>
            <tr>
                <td>관심유럽여행지</td>
                <td>
                	<select name="areaCode" id="" Class="form-control input-sm">
						<option value="">--- 선택하세요 ---</option>
						<c:forEach items="${eu}" var="vo">
							<option value="${vo.areaCode}">${vo.area}</option>
						</c:forEach>
					</select>	
                </td>
                <td>관심여행테마</td>
                <td>
                	<select name="themeCode" id="" Class="form-control input-sm">
						<option value="">--- 선택하세요 ---</option>
						<c:forEach items="${tm}" var="vo">
							<option value="${vo.themeCode}">${vo.themeNm}</option>
						</c:forEach>
					</select>
                </td>
            </tr>
        	<tr>
        		<td colspan="5">
					<div class="pull-right">
						<a href="${pageContext.request.contextPath }" class="btn btn-sm btn-default">&nbsp;취&nbsp;소&nbsp;</a>
						<button type="submit" class="btn btn-sm btn-success pull-rigth">&nbsp;가&nbsp;입&nbsp;</button>
					</div>
				</td>
			</tr>
		</table>
    </form>	
</div>

<script type="text/javascript">

// 회원가입 후 뒤로가기 막기
function noBack(){
	window.history.forward();
	}


//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;

                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</body>
</html>