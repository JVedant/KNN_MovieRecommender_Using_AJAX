<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie recommender</title>
<style type="text/css">
form {
	width: 300px;
	margin: 0 auto;
	text-align: center;
	float: left
}

.value-button {
	display: inline-block;
	border: 1px solid #ddd;
	margin: 0px;
	width: 25px;
	height: 5px;
	text-align: center;
	vertical-align: middle;
	padding: 10px 0;
	background: #eee;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.value-button:hover {
	cursor: pointer;
}

form #decrease {
	margin-right: -4px;
	margin-bottom: 5px;
	border-radius: 8px 0 0 8px;
}

form #increase {
	margin-left: -4px;
	margin-bottom: 5px;
	border-radius: 0 8px 8px 0;
}

form #input-wrap {
	margin: 0px;
	padding: 0px;
}

input#numberOfRecommendations {
	text-align: center;
	border: none;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	margin: 0px;
	width: 40px;
	height: 23px;
}

input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}
</style>
</head>
<body>
	Movie:
	<input type="text" id="movieName" />
	<br>
	<br>
	<br>
	<div style="float:left">number of recommendations:</div>
	<form>
		<div style="float: left" class="value-button" id="decrease"
			onclick="decreaseValue()" value="Decrease Value">-</div>
		<input type="number" id="numberOfRecommendations" value="0"
			style="float: left" />
		<div style="float: left" class="value-button" id="increase"
			onclick="increaseValue()" value="Increase Value">+</div>
	</form>
	<br>
	<br>
	<input type="button" value="Recommend" onclick="get_result()"/>
	<br>
	<a href="result.html">result</a>
	<script src="Recommender.js" type="text/javascript"></script>
</body>
</html>