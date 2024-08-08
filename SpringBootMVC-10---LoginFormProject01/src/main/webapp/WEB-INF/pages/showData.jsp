<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
		<h1 style="color:green;text-align:center">Result!</h1>
		
		<b>${details}</b>
		<br><br>
		<b>Sno      : ${details.sno}</b><br>
		<b>Name     :${details.name}</b><br>
		<b>UserName :${details.username}</b><br>
		<b>Password : ${details.pwd}</b><br>
		
		<br>
		<h3 style="color:green;text-align:center"><a href="fetch">Get Data Page</a></h3>
		<br>
		<h3 style="color:green;text-align:center"><a href="./">Home</a></h3>
		
		
</body>
</html>