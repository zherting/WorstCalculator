<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the Worst Calculator!</title>
</head>
<body>
	<h1>Welcome to the Worst Calculator!</h1>
	<form action="getNumberServlet" method="post">
		Enter the first number: <input type="text" name="number1" size="10">
		Enter the second number: <input type="text" name="number2" size="10">
		<input type="submit" value="Calculate Sum" />
	</form>
</html>