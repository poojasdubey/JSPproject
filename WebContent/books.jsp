<%@page import="com.sh.bookshop.daos.Book"%>
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
	
	"${param.subject}" Books
	<br/><br/>
	<jsp:useBean id="bb" class="com.sh.bookshop.beans.BooksBean"/>
	<jsp:setProperty name="bb" property="subject" param="subject" />
	<jsp:setProperty name="bb" property="bookid" param="bookid" />
	${ bb.fetchBooks() }
	${ bb.findBookDetails() }
	<form method="post" action="addcart.jsp">
		<c:forEach var="b" items="${bb.bookList}">
			<input type="checkbox" name="book" value="${b.id}"/> ${b.name} <a href="books.jsp?subject=${bb.subject}&bookid=${b.id}">Details</a> <br/>
		</c:forEach>
		<input type="submit" value="Add Cart"/>
	</form>
	<div>
		<c:if test="${bb.book != null}">
			${bb.book}
		</c:if>
	</div>
</body>
</html>


