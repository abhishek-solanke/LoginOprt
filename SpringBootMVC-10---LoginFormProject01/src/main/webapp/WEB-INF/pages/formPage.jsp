<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

 <title>Form Fill</title>
    <link rel="icon" href="C:\Users\Abhishek Solanke\Pictures\Saved Pictures\bagad_billa.png" type="image/x-icon">
    <link rel="shortcut icon" href="C:\Users\Abhishek Solanke\Pictures\Saved Pictures\bagad_billa.png" type="image/x-icon">
   
    <style>
        body {
            background-image: url('https://png.pngtree.com/background/20211215/original/pngtree-modern-simple-elegant-landing-page-website-background-picture-image_1455134.jpg');
            background-size: cover; /* Make sure the background covers the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repetition */
        }
    </style>
</head>
<body>


<h1 style="color:green;text-align:center">Login </h1>

			<form action="fetchForm" method="post">
    <table border="2"; style="border-color:cyan"; align="center">
        <tr>
            <td>Sno:</td>
            <td><input type="text" name="sno" placeholder="sno" ></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" placeholder="name"></td>
        </tr>
        <tr>
            <td>UserName:</td>
            <td><input type="email" name="username" placeholder="username"></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="pwd" placeholder="password"></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <input type="submit" value="Submit">
            </td>
        </tr>
    </table>
</form>
			
			
			<br><br>
		<h3 style="color:green;text-align:center"><a href="./">Home</a></h3>
		<br>
		<h3 style="color:green;text-align:center"><a href="fetch">All Data</a></h3>
		
		</body>
		</html>
			
