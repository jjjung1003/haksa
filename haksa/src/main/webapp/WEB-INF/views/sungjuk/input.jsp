<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function jjj_tot(num)
	{
		var kor=document.getElementsByClassName("kor")[num].value;
		var eng=document.getElementsByClassName("eng")[num].value;
		var mat=document.getElementsByClassName("mat")[num].value;
		var sci=document.getElementsByClassName("sci")[num].value;
		var mus=document.getElementsByClassName("mus")[num].value;
		var tot=Number(kor)+Number(eng)+Number(mat)+Number(sci)+Number(mus);
		
		document.getElementsByClassName("tot")[num].value=tot;
	}
	
	function jjj_avg(num)
	{
		var kor=document.getElementsByClassName("kor")[num].value;
		var eng=document.getElementsByClassName("eng")[num].value;
		var mat=document.getElementsByClassName("mat")[num].value;
		var sci=document.getElementsByClassName("sci")[num].value;
		var mus=document.getElementsByClassName("mus")[num].value;
		var tot=Number(kor)+Number(eng)+Number(mat)+Number(sci)+Number(mus);
		var avg=tot/5;
		document.getElementsByClassName("avg")[num].value=avg;
	}
</script>
</head>
<body>	
	<table width="800" align="center">
	  <tr>
	    <td> 이름 </td>
	    <td> 학번 </td>
	    <td> 국어 </td>
	    <td> 영어 </td>
	    <td> 수학 </td>
	    <td> 과학 </td>
	    <td> 음악 </td>
	    <td> 총점 </td>
	    <td> 평균 </td>
	    <td> 저장 </td>
	  </tr>
	  <c:set var="i" value="0"/>
	  <c:forEach items="${list}" var="sjdto">
	  <!-- 학생의 명단을 student 테이블에서 읽어와서 출력: 이름, 학번 -->
	    <form method="post" action="input_ok">
	    <input type="hidden" name="name" value="${sjdto.name}"/>
    	<input type="hidden" name="hakbun" value="${sjdto.hakbun}"/>	
		  <tr>
		    <td> ${sjdto.name} </td>
		    <td> ${sjdto.hakbun} </td>
		    <td> <input type="text" name="kor" class="kor" id="kor" size="4"> </td>
		    <td> <input type="text" name="eng" class="eng" id="eng" size="4"> </td>
		    <td> <input type="text" name="mat" class="mat" id="mat" size="4"> </td>
		    <td> <input type="text" name="sci" class="sci" id="sci" size="4"> </td>
		    <td> <input type="text" name="mus" class="mus" id="mus" size="4"> </td>
		    <td> <input type="text" name="tot" class="tot" id="tot" size="4" onblur="jjj_tot(${i})"> </td>
		    <td> <input type="text" name="avg" class="avg" id="avg" size="4" onblur="jjj_avg(${i})"> </td>
		    <td> <input type="submit" value="저장"> </td>
		  </tr>
		</form> 	
	  <c:set var="i" value="${i+1}"/>	 
	  </c:forEach>
	</table>
	
</body>
</html>