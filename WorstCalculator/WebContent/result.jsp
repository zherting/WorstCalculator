<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
<script>
	function startTime() {
		var today = new Date();
		var h = today.getHours();
		var m = today.getMinutes();
		var s = today.getSeconds();
		m = checkTime(m);
		s = checkTime(s);
		document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
		var t = setTimeout(startTime, 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i
		};
		return i;
	}
</script>
</head>
<body onload="startTime()">
	<p>
		First number: ${numberForCalculate.getNumber1()} <br /> Second
		number: ${numberForCalculate.getNumber2()} <br /> Sum:
		${numberForCalculate.sum() } <br />
	</p>
	<a href="index.jsp">Provide another number for calculation </a>
	<div id="txt"></div>
</body>
</html>