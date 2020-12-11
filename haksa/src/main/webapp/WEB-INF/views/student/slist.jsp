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
학생리스트 <hr>
	<table width="800" align="center" border="1px solid black">
	  <tr>
		<td>학번</td>
		<td>이름</td>
		<td>우편번호</td>
		<td>주소</td>
		<td>핸드폰번호</td>
		<td>생일</td>
	  </tr>
		<c:forEach items="${list}" var="sdto">
	  <tr>
		<td>${sdto.hakbun}</td>
		<td>${sdto.name}</td>
		<td>${sdto.zip}</td>
		<td>${sdto.juso} ${sdto.juso_etc}</td>
		<td>${sdto.hphone}</td>
		<td>${sdto.birth}</td>
	  </tr>
		</c:forEach>
	</table>
</body>
</html>