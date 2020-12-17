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
	<!-- 성적표 조회를 클릭 : 성적 과목, 총점, 평균 출력 -->
	성적리스트 <hr>
	<table width="800" height="300" align="center">
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
	  </tr>
	  <c:set var="i" value="0"/>
	  <c:forEach items="${list}" var="sjdto">
	  <!-- 학생의 명단을 student 테이블에서 읽어와서 출력: 이름, 학번 -->
	    <input type="hidden" name="name" value="${sjdto.name}"/>
    	<input type="hidden" name="hakbun" value="${sjdto.hakbun}"/>	
		  <tr>
		    <td> ${sjdto.name} </td>
		    <td> ${sjdto.hakbun} </td>
		    <td> ${sjdto.kor} </td>
		    <td> ${sjdto.eng} </td>
		    <td> ${sjdto.mat} </td>
		    <td> ${sjdto.sci} </td>
		    <td> ${sjdto.mus} </td>
		    <td> ${sjdto.tot} </td>
		    <td> ${sjdto.avg} </td>
		  </tr>
	  <c:set var="i" value="${i+1}"/>	 
	  </c:forEach>
	</table>
</body>
</html>