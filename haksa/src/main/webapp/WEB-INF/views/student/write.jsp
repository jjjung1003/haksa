<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function juso_search()  // 우편번호 버튼 클릭시 호출 함수명
	{
	  new daum.Postcode({
	      oncomplete: function(data) {
	          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	              addr = data.roadAddress;
	          } else { // 사용자가 지번 주소를 선택했을 경우(J)
	              addr = data.jibunAddress;
	          }
	
	          // 우편번호와 주소 정보를 해당 필드에 넣는다.
	          document.pkc.zip.value = data.zonecode; // 우편번호
	          document.pkc.juso.value = addr;  // 주소
	          // 커서를 상세주소 필드로 이동한다.
	          document.pkc.juso_etc.focus();
	      }
	  }).open();
	}
	
	function move(my)
	 {
		 // 휴대전화의 번호를 합치기
		 var hphone=my.hphone1.value+"-"+my.hphone2.value+"-"+my.hphone3.value;
		 my.hphone.value=hphone;
		 // 입력값 체크유무
	 }		
	
	$(function() {
		$(".txt").datepicker({
			dateFormat : "yy-mm-dd", // 날짜 형식
			changeMonth : true, // 월 변경
			changeYear : true // 년 변경
		});
	});
	
	function hak_num()
    {
		var today=new Date();
		var year=today.getFullYear();
		var num=1;
		
		hakbun="h"+year+"00"+num;	//기존값 +1 만들어야 됨................
 		document.pkc.hakbun.value=hakbun;
    }
</script>
</head>
<body>
학생정보등록 <hr>
	<form method="post" name="pkc" action="write_ok" onsubmit="return move(this)">
	  <input type="hidden" name="hphone">
		<table width="400" align="center">
			<tr>
			  <td>학번</td>
			  <td>
			    <input type="text" name="hakbun" value="${hakbun}">
			    <input type="button" onclick="hak_num()" value="학번생성"> 
			  </td>
			</tr>
			<tr>
			  <td>이름</td>
			  <td><input type="text" name="name"></td>
			</tr>
			<tr>
			  <td>생년월일</td>
			  <td><input type="text" name="birth" class="txt" autocomplete="off"></td>
			</tr>
			<tr>
			  <td rowspan="3">주소</td>
			  <td>
			    <input type="text" name="zip" id="zip" placeholder="우편번호" size="5">
			    <input type="button" onclick="juso_search()" value="우편번호 찾기">
			  </td>
			</tr>
			<tr>
			  <td><input type="text" name="juso" id="juso" placeholder="주소"></td>
			</tr>
			<tr>
			  <td><input type="text" name="juso_etc" id="juso_etc" placeholder="세부주소"></td>
			</tr>
			<tr>
			  <td>휴대폰번호</td>
			  <td>
	            <select name="hphone1" id="ph">
	              <option value="010"> 010 </option>
	              <option value="011"> 011 </option>
	              <option value="017"> 017 </option>
	              <option value="018"> 018 </option>
	            </select>-
	           <input type="text" name="hphone2" id="cc" size="2.5">-
	           <input type="text" name="hphone3" id="cc" size="2.5">
	         </td>
			</tr>			
			<tr>
			  <td colspan="2" align="center"><input type="submit" value="등록하기"></td>
			</tr>
		</table>
	</form>
</body>
</html>