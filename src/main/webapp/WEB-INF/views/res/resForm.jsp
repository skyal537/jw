<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>예약등록</title>
</head>
<body>
<%@include file="/WEB-INF/inc/top_menu.jsp"%>

	<div class="container">
		<h1>예약등록 </h1>
		
		<form action="resRegist.do" name="member" method="post">
<!-- 		<form action="resViewDetail.do" name="member" method="post"> -->
			<input type="hidden" name="productId" value="${prod.productId}">
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
						<td colspan="5">${prod.productName}</td>
					</tr>
					<tr>
						<!-- <th scope="row"><label>예약 유형</label></th>
           			    <td><span>일반예약 </span>[<span>10명</span><span> 예약가능]</span></td> -->
						<th scope="row"><label>여행기간</label></th>
						<td>${prod.packagePeriod}</td>
						<th scope="row"><label>이용교통</label></th>
						<td><span class="air_txt">${prod.airLineNm}</span></td>
					</tr>
					<tr>
						<th scope="row"><label>출발일</label></th>
						<td colspan="5"><span class="flight_num_txt">${prod.startDate}</span></td><%-- ${prod.endDate} --%>
					</tr>
					<tr>
						<th scope="row"><label>도착일</label></th>
						<td colspan="5"><span class="flight_num_txt">${prod.endDate}</span></td><%-- ${prod.endDate} --%>
					</tr>
				</tbody>
			</table>

			<h3>예약자 정보</h3>
				<table class="table table-hover">

				<colgroup>
					<col style="width: 15%">
					<col />
					<col style="width: 15%">
					<col style="width: 25%">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row"><label>이름</label></th>
						<td colspan="5">${member.memName}</td>
					</tr>
					<tr>
						<!-- <th scope="row"><label>예약 유형</label></th>
             <td><span>일반예약 </span>[<span>10명</span><span> 예약가능]</span></td> -->
						<th scope="row"><label>생년월일</label></th>
						<td>${member.memBir}</td>
						<th scope="row"><label>성별</label></th>
						<td><span class="air_txt">${member.memSex}</span></td>
					</tr>

					<tr>
						<th scope="row"><label>이메일</label></th>
						<td colspan="5">
							<%-- ${prod.endDate} --%>
							<span class="flight_num_txt">${member.memMail}</span>
						</td>
					</tr>
					<tr>
						<th scope="row"><label>휴대폰번호</label></th>
						<td colspan="5">
								<%-- ${prod.endDate} --%>
							<span class="flight_num_txt">
									${member.memHp}
						</span>
						</td>
					</tr>
					
				</tbody>
			</table>

			<h3>여행자 정보</h3>

			<h4>인원 상세 정보 <input type="button" value="추가" id="addbtn"> </h4>
			<div id="touristinfo">
				<div class="tourist">
				<p>
					이름(한글) : <input type="text" name="tourList[0].touristKrNm">
					&nbsp;&nbsp;휴대폰번호 : <input type="text" name="tourList[0].touristHp">
				<p>
					이름(영문) : <input type="text" name="tourList[0].touristFstNm" placeholder="성">
					&nbsp;<input type="text" name="tourList[0].touristLstNm" placeholder="이름"> 
					<select 	title="연령대 구분" name="tourList[0].touristAge" id="selectage" size="1">
					
						<option value="A" data-price="${prod.adultPrice}">성인</option>
						<option value="C" data-price="${prod.childPrice}">아동</option>
						<option value="B" data-price="${prod.babyPrice}">유아</option>
					</select> 
					</p>
					</div>
			</div>	
<script type="text/javascript">

	var index=0;
	// 여행자 추가 버튼 
	$('#addbtn').click(function(e){
		idx = $('div.tourist').size();
		str = '<div class="tourist"><p>'
		str += '	이름(한글) : <input type="text" name="tourList[' + idx + '].touristKrNm">'
		str += '&nbsp;&nbsp;휴대폰번호 : <input type="text" name="tourList[' + idx + '].touristHp">'
			str +='<p>'
		str +='이름(영문) : <input type="text" name="tourList[' + idx + '].touristFstNm" placeholder="성">'
		str +='&nbsp;<input type="text" name="tourList[' + idx + '].touristLstNm" placeholder="이름">' 
		str +='<select 	title="연령대 구분" name="tourList[' + idx + '].touristAge" id="selectage" size="1">'
	
		str +=	'<option value="A" data-price="${prod.adultPrice}">성인</option>'
		str +=	'<option value="C" data-price="${prod.childPrice}">아동</option>'
		str +=	'<option value="B" data-price="${prod.babyPrice}">유아</option>'
		str +=	'</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="deletebtn">삭제</button></div>'
		$('#touristinfo').append(str);
			fn_tourist_price_calculate();
	});
	
	// 여행자 추가 및 삭제시 이름붙이
	var fn_tourist_input_rename=function(){
		$('div.tourist').each(function(i, el){
			$el = $(el);
			$el.find('input[name$=touristKrNm]').attr('name','tourList[' + i + '].touristKrNm');
			$el.find('input[name$=touristHp]').attr('name','tourList[' + i + '].touristHp');
			$el.find('input[name$=touristFstNm]').attr('name','tourList[' + i + '].touristFstNm');
			$el.find('input[name$=touristLstNm]').attr('name','tourList[' + i + '].touristLstNm');
			$el.find('select[name$=touristAge]').attr('name','tourList[' + i + '].touristAge');
		}); // $('div.tourist').each
	}; // fn_tourist_input_rename
	
	//여행자에 따른 계산 
	function fn_tourist_price_calculate(){
		console.log("계산합니다.");
		tot_price=0;
		tot_people=0;
		tot_adult_cnt=0;
		tot_child_cnt=0;
		tot_baby_cnt=0;
		$('select[name$=touristAge]').each(function(idx, el) {
			$el = $(el);
			$op=$el.find('option:selected');
		
			if($op.val() == 'B'){
				tot_baby_cnt++;						
			} else if($op.val() == 'C'){
				tot_child_cnt++;
			} else {
				tot_adult_cnt++;
			}
		});//('select[name$=touristAge]').each
		
		tot_price = (${prod.adultPrice} * tot_adult_cnt) + ( ${prod.childPrice} * tot_child_cnt) + ( ${prod.babyPrice}  * tot_baby_cnt);
		tot_people = tot_adult_cnt + tot_child_cnt + tot_baby_cnt;

		$("p.adult .cnt").text(tot_adult_cnt);
		$("p.child .cnt").text(tot_child_cnt);
		$("p.baby .cnt").text(tot_baby_cnt);
		$("#total_summary strong").text(tot_price);
		$("#total_people strong").text(tot_people);
		$("input[name=resPeople]").val(tot_people);
		$("input[name=resPrice]").val(tot_price);
		
	} //fn_tourist_input_rename()
	
	
	$('#touristinfo').on('click','.deletebtn',  function(){
			$(this).closest('div.tourist').remove();
			fn_tourist_input_rename(); 	
			fn_tourist_price_calculate();
	}); // $('#touristinfo').on('click','.deletebtn'
	
		
			
	$('#touristinfo').on('change','select[name$=touristAge]',function(){
		fn_tourist_price_calculate();
	});	 //	$('#touristinfo').on('change','select[name$=touristAge]'
	
	window.onload=function(){
		fn_tourist_price_calculate();
	} 	
</script>
				

				
	<h4>요청사항</h4>
	<textarea placeholder="요청 사항을 적어주세요." name="reqClaim" id="rervNote" title="내용입력" style="width: 30%" rows="10"></textarea>
		
	<h4>약관</h4>
	<div>
		<ol>
			<li>기획 여행 : 여행사가 미리 여행목적지 및 관광일정, 여행자에게 제공될 운송 및 숙식서비스 내용(이하
				‘여행서비스’라 함), 여행요금을 정하여 광고 또는 기타 방법으로 여행자를 모집하여 실시하는 여행.</li>
			<li>희망 여행 : 여행자(개인 또는 단체)가 희망하는 여행조건에 따라 여행사가 운송․숙식․관광 등 여행에
				관한 전반적인 계획을 수립하여 실시하는 여행.</li>
			<li>해외여행 수속대행(이하 ‘수속대행계약’이라 함) : 여행사가 여행자로부터 소정의 수속대행요금을 받기로
				약정하고, 여행자의 위탁에 따라 다음에 열거하는 업무(이하 ‘수속대행업무’라 함)를 대행하는 것.
				<ol>
					<li>1) 사증, 재입국 허가 및 각종 증명서 취득에 관한 수속</li>
					<li>2) 출입국 수속서류 작성 및 기타 관련업무</li>
				</ol>
			</li>
		</ol>
		<input type="checkbox" id="nextBtn" name="check1">여행약관에 동의합니다.
	</div>
	
	<h1>계좌 정보</h1>
	<table class="table table-hover">
		<tr>
			<th>결제은행</th>
			<td>
				<select name="accountBank">
					<option value="">-- 은행을 선택하세요 --</option>
					<option value="우리은행"  data-account="045-10210-454685" >우리은행</option>
					<option value="농협"   data-account="309-8457-74587">농협</option>
					<option value="국민은행"   data-account="123-45678-12354">국민은행</option>
					<option value="신한은행"  data-account="99658-12345">신한은행</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>결제계좌</th>
			<td><input type="text" value="" name="account"></td>
		</tr>
	</table>
			
			
			
	<div class="box_line">
		<dl class="total_ticket_con">
			<dt>총액</dt>
			<dd class="total_info">
				<ul class="psg_list">
					<li>
						<p class="psg_type adult">성인</p>
						<!-- <p class="psg_price"><span class="price_txt">2,489,000 원</span><span>X 1명</span></p> -->
						<p class="psg_type adult" id="adt_tot">
							<span class="price_txt">
							<fmt:formatNumber value="${prod.adultPrice }"  />
						 	</span>
						 	<span>X&nbsp;&nbsp;<span class="cnt">0</span>명</span>
						</p>
					</li>
					<li>
						<p class="psg_type ">아동</p>
						<p class="psg_price child" id="chd_tot">
							<span class="price_txt"><fmt:formatNumber value="${prod.childPrice }"  /></span>
							<span>X&nbsp;&nbsp;<span class="cnt">0</span>명</span>
						</p>
						
					</li>
					<li>
						<p class="psg_type ">유아</p>
						<p class="psg_price baby" id="inf_tot">
							<span class="price_txt"><fmt:formatNumber value="${prod.babyPrice }"  /></span>
							<span>X&nbsp;&nbsp;<span class="cnt">0</span>명</span>
						</p>
					</li>
				</ul>
			</dd>
			<dd class="total_price emp_red" id="total_summary">총액<strong>0</strong> 원
			<input type="hidden" name="resPrice" value="0">
			</dd>
			<dd class="total_people emp_red" id="total_people">총인원<strong>0</strong> 명
			<input type="hidden" name="resPeople" value="0">
			</dd>
		</dl>
	</div>
	
	<input type="submit" value="예약하기" id="resbtn">
			
	<script type="text/javascript">

		// 약관동의체크
		$('#resbtn').click(function(e){
		if($('input[name="check1"]').is(":checked") == false){
				alert("약관에 동의해 주세요");
				return false;
			}
		}); //약관 동의 처리 
		//콜백 
				

		$("select[name=accountBank]").change(function() {
			// alert($(this).find('option:selected').data('account') + "-----" +  $(this).val() );
			acc = $(this).find('option:selected').data('account');
			$('input[name=account]').val(acc);
			
		}) // select[name=accountBank]").change 

	</script>

	</form>
	</div>
</body>
</html>