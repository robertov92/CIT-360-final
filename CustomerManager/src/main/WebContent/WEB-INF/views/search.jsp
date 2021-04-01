<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Result</title>
<style>
	*{
	font-family: Arial, Helvetica, sans-serif;
	text-align:center;
	}
	table{
	margin:0 auto;
	border-collapse: collapse;
	}
	td, th{
	border: 1px solid rgba(0, 0, 0, .3);
	padding:5px 10px;
	background:rgba(0, 0, 0, .05);
	}
	th{
	background:rgba(0, 0, 0, .8);
	color:white;
	}
</style>
</head>
<body>
	<div>
		<h1>Search Results</h1>
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>E-mail</th>
				<th>Address</th>
			</tr>
			<c:forEach items="${result}" var="customer">
				<tr>
					<td>${customer.id}</td>
					<td>${customer.name}</td>
					<td>${customer.email}</td>
					<td>${customer.address}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>