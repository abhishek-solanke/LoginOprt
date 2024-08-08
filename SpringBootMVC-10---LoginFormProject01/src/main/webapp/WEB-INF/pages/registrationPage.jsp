<%-- <%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1 style="color:green;text-align:center">Registration or Login</h1>


<h3 style="color:red;text-align:center">Login / SignIn</h3>
<br>
<form action="checkLogin" method="post">
    <table border="2"; style="border-color:cyan"; align="center";>
    <tr>
            <td>SNo:</td>
            <td><input type="text" name="sno" placeholder="sno"></td>
        </tr>
        <tr>
            <td>UserName:</td>
            <td><input type="text" name="username" placeholder="username"></td>
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
<h3 style="color:green"><a href="getForm">Register? / SignUp</a></h3>
<br>
<br> 
<h3 style="color:green;text-align:center"><a href="./">Home</a></h3>
<br> 
<h3 style="color:green;text-align:center"><a href="fetch">See Data</a></h3> 

==========================================================================================================

--%>

<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

 <title>Login</title>
    <link rel="icon" href="C:\Users\Abhishek Solanke\Pictures\Saved Pictures\bagad_billa.png" type="image/x-icon">
    <link rel="shortcut icon" href="C:\Users\Abhishek Solanke\Pictures\Saved Pictures\bagad_billa.png" type="image/x-icon">
   
    <style>
        body {
            background-image: url('https://img.freepik.com/free-photo/office-desk-workspace-bright-color-yellow-background_169016-38713.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1722038400&semt=ais_user');
            background-size: cover; /* Make sure the background covers the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repetition */
        }
    </style>
</head>
<body>
    <h1 style="color:green;text-align:center">Registration or Login</h1>

    <h3 style="color:red;text-align:center">Login / SignIn</h3>
    <br>
    <form action="checkLogin" method="post">
        <table border="2" style="border-color:cyan; margin-left:auto; margin-right:auto; ">
            <tr>
                <td>SNo:</td>
                <td><input type="text" name="sno" placeholder="sno"></td>
            </tr>
            <tr>
                <td>UserName:</td>
                <td><input type="text" name="username" placeholder="username"></td>
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
    <h3 style="color:green"><a href="getForm">Register? / SignUp</a></h3>
    <br><br>
    <h3 style="color:green;text-align:center"><a href="./">Home</a></h3>
    <br>
    <h3 style="color:green;text-align:center"><a href="fetch">See Data</a></h3>
</body>
</html>
