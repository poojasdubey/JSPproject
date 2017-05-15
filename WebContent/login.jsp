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
	<jsp:useBean id="lb" class="com.sh.bookshop.beans.LoginBean" scope="session"/>
	<jsp:setProperty name="lb" property="*"/>
	<c:choose>
		<c:when test="${lb.status == true}">
			<jsp:forward page="subjects.jsp"/>
		</c:when>
		<c:otherwise>
			Sorry, <jsp:getProperty name="lb" property="user"/> 
			<hr/>
			Invalid username or password. <br/><br/>
			<a href="index.jsp">Login Again</a>
		</c:otherwise>
	</c:choose>
</body>
</html>


