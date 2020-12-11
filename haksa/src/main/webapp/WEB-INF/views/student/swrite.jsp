<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
</script>
<style>
#section #btn1 {
     display:inline-block;
     width:292px;
     height:36px;
     border:1px solid #f15657;
     font-size:17px;
     text-align:center;
     padding-top:5px;
     color:#f15657;
     cursor:pointer;
   }  
   #section #aa {
     width:600px;
     height:40px;
     border:1px solid #cccccc;
     font-size:17px;
   }
   #section #bb {
     width:300px;
     height:40px;
     border:1px solid #cccccc;
     font-size:17px;
   }
   #section #cc {
     width:60px;
     height:40px;
     border:1px solid #cccccc;
     font-size:17px;
   }
   #section #dd {
     width:600px;
     height:60px;
     border:1px solid #cccccc;
     font-size:17px;
   }
   #section #submit {
     width:400px;
     height:45px;
     border:1px solid #f15657;
     background:#f15657;
     color:white;
     font-size:17px;
     
   }
   #section #ph {
     width:60px;
     height:43px;
     border:1px solid #cccccc;
     font-size:17px;
   }
   #section #submit {
     width:400px;
     height:45px;
     border:1px solid #f15657;
     background:#f15657;
     color:white;
     font-size:17px;
     
   }
</style>

</head>
<body>
  <div id="section">
   <form name="pkc" method="post" action="swrite_ok" onsubmit="return move(this)">
   	<input type="hidden" name="hphone">
    <table width="700" align="center">
      <caption> <h2> 학생 입력 </h2></caption>
      <tr>
       <td> 이름 </td>
       <td> <input type="text" name="name" id="aa"> </td>
      </tr>
      <tr>
        <td rowspan="3"> 주소 </td>
        <td> 
         <input type="text" name="zip" id="bb">
         <span id="btn1" onclick="juso_search()"> 우편번호찾기 </span>
        </td>
       </tr>
       <tr>
         <td> <input type="text" name="juso" id="aa"> </td>
       </tr>
       <tr>
         <td> <input type="text" name="juso_etc" id="aa"> </td>
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
       <td> 태어난 해  </td>
       <td> <input type="text" name="birth" id="aa"> </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
           <input type="submit" id="submit" value="완료"> 
         </td>
       </tr>
    </table>
   </form>
  </div>
</body>
</html>