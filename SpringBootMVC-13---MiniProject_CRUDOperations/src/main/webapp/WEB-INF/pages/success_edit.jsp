<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<title>Edit</title>
    <style>
        body 
        {
            background-image: url('https://img.freepik.com/free-photo/office-desk-workspace-bright-color-yellow-background_169016-38713.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1722038400&semt=ais_user');
            background-size: cover; /* Make sure the background covers the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repetition */
        }
    </style>
</head>
<body>

		<h1 style="color:green;text-align:center">SuccessFully Edited  .. </h1>
		<br>
		<h2>${editedData.empno}</h2>
		<br>
		<h2>${editedData.ename}</h2>
		<br>
		<h2>${editedData.job}</h2>
		<br>
		<h2>${editedData.sal}</h2>
		

<br><br>
<h3 style="color:green;text-align:center"><a href="./">Home<img src="images/home.jpg" height="50px" width="50px"/></a></h3>

<br>
<h3 style="color:green;text-align:center"><a href="report">Get Report Data<img src="images/getReport.jpg" height="50px" width="50px"/></a></h3>


</body>
</html>