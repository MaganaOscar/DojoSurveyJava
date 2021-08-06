<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Survey Result</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/app.js"></script>
	</head>
	<body>
		<div>
			<h1>Submitted Info</h1>
			<div>
				<div>
					<p>Name:</p>
					<p>Dojo Location:</p>
					<p>Favorite Language:</p>
					<p>Comment:</p>
				</div>
				<div>
					<p><c:out value="${name}"/></p>
					<p><c:out value="${location}"/></p>
					<p><c:out value="${language}"/></p>
					<p><c:out value="${comment}"/></p>
				</div>
			</div>
			<p><a href="/">Go Back</a></p>
		</div>
	</body>
</html>