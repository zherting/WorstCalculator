<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the Worst Calculator!</title>
<script>
	function validateForm2() {
		var number = document.forms["myForm2"]["number2"].value;
		if (number == "") {
			alert("Number must be filled out.");
			return false;
		}
	}
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
	<h1>Welcome to the Worst Calculator!</h1>
	<form name="myForm2" action="getNumber2Servlet"
		onsubmit="return validateForm2()" method="post">
		Enter the second number: <input type="text" name="number2" size="10">
		<input type="submit" value="Calculate Sum" />
	</form>
	<div id="txt"></div>
</html>