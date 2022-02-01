<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>
body {
	background-color: rgb(210, 190, 150);
}

td {
	font-size: large;
}

form {
	border: 3px solid #f1f1f1;
	background-color: rgb(130, 218, 200)
}

input[type=text], input[type=password] {
	
	padding: 10px 10px;
	margin: 10px 5px;
	display: inline-block;
	border: 3px solid #ccc;
	box-sizing: border-box;
}
</style>

<h1>ENTER THE CREDENTIALS</h1>

	<form action="login" method="post">

		Email : <input type="text" name="email"> </br></br>
		Password : <input type="password" name="password"> </br></br>

		 <input type="submit" value="Login">

	</form>
</body>
</html>