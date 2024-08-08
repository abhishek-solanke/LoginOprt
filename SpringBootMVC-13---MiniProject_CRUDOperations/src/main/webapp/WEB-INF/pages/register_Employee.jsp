<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>

 <title>All Data</title>
     			   <style>
        body 
        {
            background-image: url('https://static.vecteezy.com/system/resources/thumbnails/007/677/104/small_2x/white-background-with-blue-geometric-and-white-line-pattern-free-vector.jpg');
            background-size: cover; /* Make sure the background covers the entire page */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent image repetition */
        }
   					 </style>
</head>
<body>


<h1 style="color:green;text-align:center">Register Employeee !</h1>

<c:form action="addData" method="post" modelAttribute="myEnt">
			
	<table border="2" style="border-color:cyan;width:400px;height:150px;align:center;">
			
			<tr>
					<td>Employee Name:</td>
					<td><c:input type="text" name="ename" path="ename"/></td>				
			</tr>
			<tr>
					<td>Employee Job:</td>
					<td><c:input type="text" name="job" path="job"/></td>				
			</tr>
			<tr>
					<td>Employee Salary:</td>
					<td><c:input type="text" name="sal" path="sal"/></td>				
			</tr>
			<tr>
					<td style="align:center"><input type="submit" name="Submit"></td>				
					<td style="align:center"><input type="reset" name="cancel"></td>
			</tr>
	</table>		
			
</c:form>


<br><br>
<h3 style="color:green;text-align:center"><a href="./">Home<img src="images/home.jpg" height="50px" width="50px"/></a></h3>

<br><br>
<h3 style="color:green;text-align:center"><a href="report">Get Report Data<img src="images/getReport.jpg" height="50px" width="50px"/></a></h3>


</body>
</html>