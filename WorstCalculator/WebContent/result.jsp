<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<p>
		First number: ${numberForCalculate.getNumber1()} <br /> Second
		number: ${numberForCalculate.getNumber2()} <br /> Sum:
		${numberForCalculate.sum() } <br />
	</p>
	<a href="index.jsp">Provide another number for calculation </a>
</body>
</html>