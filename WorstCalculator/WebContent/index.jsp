<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the Worst Calculator!</title>
<script>
	function validateForm() {
		var number = document.forms["myForm"]["number1"].value;
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
		}; // add zero in front of numbers < 10
		return i;
	}
</script>
</head>
<body onload="startTime()">
	<h1>Welcome to the Worst Calculator!</h1>
	<form name="myForm" action="getNumberServlet"
		onsubmit="return validateForm()" method="post">
		Enter the first number: <input type="text" name="number1" size="10">
		<input type="submit" value="Next" />
	</form>
	<div id="txt"></div>
</html>