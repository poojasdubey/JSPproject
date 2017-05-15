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
	
	<jsp:useBean id="sb" class="com.sh.bookshop.beans.SubjectsBean"/>
	${ sb.fetchSubjects() }
	<form method="post" action="books.jsp">
		<c:forEach var="sub" items="${sb.subList}">
			<input type="radio" name="subject" value="${sub}"> ${sub} <br/>
		</c:forEach>
		<a href="showcart.jsp">Show Cart</a>
		<input type="submit" value="Show Books"/>
	</form>
</body>
</html>



