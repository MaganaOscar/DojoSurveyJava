<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Survey</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/app.js"></script>
	</head>
	<body>
		<div>
			<form method="POST" action="/result">
				<label for="name">Your Name: </label>
				<input type="text" name="name" id="name"/>
				<label for="location">Dojo Location: </label>
				<select name="location" id="location">
					<option value="San Jose">San Jose</option>
					<option value="Boise">Boise</option>
					<option value="Seattle">Seattle</option>
				</select>
				<label for="language">Favorite Language: </label>
				<select name="language" id="language">
					<option value="Python">Python</option>
					<option value="Javascript">Javascript</option>
					<option value="Java">Java</option>
				</select>
				<label for="comment">Comment(optional): </label>
				<textarea id="comment" name="comment" rows="3" cols="30"></textarea>
				<button type="submit">Submit</button>
			</form>
		</div>
	</body>
</html>