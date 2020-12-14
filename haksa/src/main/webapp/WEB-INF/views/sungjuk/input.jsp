<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	  <c:forEach items="${list}" var="sjdto">
	  <!-- 학생의 명단을 student 테이블에서 읽어와서 출력: 이름, 학번 -->
	    <form method="post" action="input_ok">
		  <tr>
		    <td> ${sjdto.name} </td>
		    <td> ${sjdto.hakbun} </td>
		    <td> <input type="text" name="kor" size="4"> </td>
		    <td> <input type="text" name="eng" size="4"> </td>
		    <td> <input type="text" name="mat" size="4"> </td>
		    <td> <input type="text" name="sci" size="4"> </td>
		    <td> <input type="text" name="mus" size="4"> </td>
		    <td> <input type="text" name="hap" size="4"> </td>
		    <td> <input type="text" name="avg" size="4"> </td>
		    <td> <input type="submit" value="저장"> </td>
		  </tr>
		</form>  
	  </c:forEach>
	</table>
	
</body>
</html>