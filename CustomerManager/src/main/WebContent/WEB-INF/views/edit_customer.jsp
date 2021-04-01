<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Customer</title>
<style>
	*{
	font-family: Arial, Helvetica, sans-serif;
	}
	div{
	width:400px;
	margin:0 auto;
	}
	h1{
	text-align:center;
	}
	#customer{
	background-color:rgba(0, 0, 0, .1);
	margin:0 auto;
	padding: 30px 50px;
	border-radius:10px;
	}
	input{
	margin-bottom:10px;
	padding:5px;
	width:97%;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius:5px;
	}
	#submit{
	width:100px;
	margin-top:10px;
	background-color:rgba(0, 0, 0, .9);
	color:white;
	}
</style>
</head>
<body>
	<div>
		<h1>Edit Customer</h1>
		<form:form action="save" method="post" modelAttribute="customer">
			<label>ID: <br><input type="text" value="${customer.id}" readonly></label><br>
			<label>Name:<br><form:input path="name" /></label><br>
			<label>E-mail:<br><form:input path="email" /></label><br>
			<label>Address:<br><form:input path="address" /></label><br>
			<input id="submit" type="submit" value="Save"/>
			<form:hidden path="id"/>
		</form:form>
	</div>
</body>
</html>