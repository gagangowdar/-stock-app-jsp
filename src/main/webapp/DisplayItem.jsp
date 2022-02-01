<%@page import="com.ty.dto.Item"%>
<%@page import="java.util.List"%>
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
          body{
            background-color: rgb(227, 148, 111);
        }
        table,
        th,
        td {
            border-collapse: collapse;
        }

        th,
        td {
            padding: 15px;
        }
    </style>



<%@ include file="navigation.jsp" %>

   <%
   List<Item> items=(List<Item>)request.getAttribute("myItem");
   %>
   
   <table border="1">
   <tr>
   <th>Id</th>
   <th>Name</th>
   <th>Brand</th>
   <th>Cost</th>
   <th>Quantity</th>
   <th>Type</th>
   <th>Delete</th>
   <th>Edit</th>
   </tr>
   
       <%
		for(Item item:items) {
		%>
			
			<tr>
				<td><%= item.getId() %></td>
				<td><%= item.getName() %></td>
				<td><%= item.getBrand() %></td>
				<td><%= item.getCost() %></td>
				<td><%= item.getQuantity() %></td>
				<td><%= item.getType() %></td>
				<td>
				<a href="delete?id=<%=item.getId()%>">Delete</a>
				</td>	
				<td>
				<a href="get?id=<%=item.getId()%>">Edit</a>
				</td>
			</tr>
			
	<%
		}
	%>
   
   </table>
</body>
</html>