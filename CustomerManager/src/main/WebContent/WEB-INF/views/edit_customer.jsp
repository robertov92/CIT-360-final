<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Customer</title>
</head>
<body>
	<div>
		<h2>Edit Customer</h2>
		<form:form action="save" method="post" modelAttribute="customer">
			<table>
				<tr>
					<td>ID:</td>
					<td>
						${customer.id}
						<form:hidden path="id"/>
					</td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>E-mail:</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" /></td>
				</tr>
				<tr><td><input type="submit" value="Save"/></td></tr>
			</table>
		</form:form>
	</div>
</body>
</html>