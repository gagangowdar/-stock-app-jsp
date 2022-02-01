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
<br>
<br>
<form action="create"method="post">
		Name:<input type="text" name="name">
		<br> 
		<br>
		brand:<select name="brand">
                <option value="Lg" >LG</option>
                <option value="Sony">Sony</option>
                <option value="onida">onida</option>
                <option value="fastrack">fastrack</option>
                <option value="mi">mi</option>
                <option value="samsung">samsung</option>
            </select>
		<br>
		<br> 
		cost:<input type="number" name="cost">
		<br> 
		<br>
		quantity:<input type="number" name="quantity">
		<br> 
		<br>
		type:<select name="type">
                <option value="tv" >TV</option>
                <option value="phone">phone</option>
                <option value="computer">computer</option>
                <option value="radio"> radio</option>
                <option value="watch"> watch</option>
                <option value="tab">tab</option>
            </select>
		<br>
		<br>
		<input type="submit" value="create">
	</form>
</body>
</html>