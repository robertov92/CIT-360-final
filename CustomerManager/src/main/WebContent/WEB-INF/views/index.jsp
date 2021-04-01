<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Manager</title>
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
	a{
	text-decoration: none;
	color:black;
	}
	input{
	padding:5px;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius:5px;
	width:200px;
	}
	#search_btn{
	background-color:rgba(0, 0, 0, .9);
	color:white;
	width:100px;
	}
</style>
</head>
<body>
	<div>
		<h1>Customer Manager</h1>
		<form action="search" method="get">
			<input type="text" name="keyword" value="">
			<input type="submit" value="Search" id="search_btn">
		</form>
		<h2><a href="new">Click here to add a new customer</a></h2>
		<table>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>E-mail</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${listCustomer}" var="customer">
				<tr>
					<td>${customer.id}</td>
					<td>${customer.name}</td>
					<td>${customer.email}</td>
					<td>${customer.address}</td>
					<td><a href="edit?id=${customer.id}">Edit</a>&nbsp &nbsp<a href="delete?id=${customer.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>