<%@ page isELIgnored="false" %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

 <title>All Data</title>
    <link rel="icon" href="C:\Users\Abhishek Solanke\Pictures\Saved Pictures\bagad_billa.png" type="image/x-icon">
    <link rel="shortcut icon" href="C:\Users\Abhishek Solanke\Pictures\Saved Pictures\bagad_billa.png" type="image/x-icon">
   
    <style>
        body {
            background-image: url('https://static.vecteezy.com/system/resources/thumbnails/007/677/104/small_2x/white-background-with-blue-geometric-and-white-line-pattern-free-vector.jpg');
            background-size: cover; /* Make sure the background covers the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repetition */
        }
    </style>
</head>
<body>

	<!-- <table border="2" style="border-color: cyan;"> -->
	<table border="2" style="border-color: cyan; width: 80%; height: 100px;" align="center">
	
		<tr>
			<th>Sno</th>
			<th>Name</th>
			<th>UserName</th>
			<th>Password</th>
		</tr>
		
		<c:forEach var="a1" items="${result}">
		<tr>
			<td>
					${a1.sno}				
			</td>
			<td>
					${a1.name}				
			</td>
			<td>
					${a1.username}				
			</td>
			<td>
					${a1.pwd}				
			</td>
		</tr>
		</c:forEach>
	</table>


<br><br>
<h3 style="color:green;text-align:center"><a href="./">Home</a></h3>
<br>

</body>
</html>