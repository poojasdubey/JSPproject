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
	Hello, ${sessionScope.lb.user}<hr/>
	<jsp:useBean id="cb" class="com.sh.bookshop.beans.CartBean" scope="session"/>
	<c:set var="total" value="0"/>
	<table border="1">
		<thead>
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Author</td>
				<td>Subject</td>
				<td>Price</td>
			</tr>
		</thead>
		<c:forEach var="id" items="${cb.cart}">
			<tr>
				<td>${id}</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<c:set var="total" value="${total + 1}"/>
		</c:forEach>
	</table>
	Total : Rs. ${total}/-
	<br/><br/>
	<a href="logout.jsp">Sign Out</a>
</body>
</html>

