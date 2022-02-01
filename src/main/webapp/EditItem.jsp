<%@page import="com.ty.dto.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file="navigation.jsp" %>

<%

  Item item= (Item)request.getAttribute("myItem");
%>

<h1>Edit Item</h1>
<form action="edit" method="post">
        Id:<input type="number" name="itemId" value="<%=item.getId()%>" readonly="readonly">
		<br> 
		<br>
		Name:<input type="text" name="itemName" value="<%=item.getName()%>">
		<br> 
		<br>
		Email:<input type="text" name="brand" value="<%=item.getBrand()%>">
		<br> 
		<br>
		Age:<input type="number" name="cost" value="<%=item.getCost()%>">
		<br>
		<br> 
		Mobile:<input type="number" name="quantity" value="<%=item.getQuantity()%>">
		<br> 
		<br>
		Password:<input type="text" name="type" value="<%=item.getType()%>">
		<br>
		<br>
		<input type="submit" value="update Item">
	</form>
</body>
</html>