<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<table>
<tr>
<td><input type="search" name="name" placeholder="search"/></td>
<td><a href="./"><img src="images/search.jpg" height="25px" width="25px"/></a></td>
</tr>
</table>
<table border="2" style="border-color: cyan; width: 100%; height: 80px;" align="center">
		<tr style="background-color:yellow;color:green">
				<th>EMPNO</th>
				<th>ENAME</th>
				<th>JOB</th>
				<th>SALARY</th>
				<th>Edit</th>
				<th>Delete</th>
		</tr>
		
		<c:forEach var="dt" items="${Tabdata}">
	
		<tr style="text-align:center">
				<td>
					 <b> ${dt.empno}</b>
				</td>
				<td>
					 <b> ${dt.ename}</b>
				</td>
				<td>
					<b>  ${dt.job}</b>
				</td>
				<td>
					 <b> ${dt.sal}</b>
				</td>
				<td>
					<b><a href="edit?sno=${dt.empno}">edit <img src="images/edit.jpg" height="30px" width="35px"/></a></b>
				</td>
				<td>
					<b><a href="delete?sno=${dt.empno}">delete <img src="images/delete.jpg" height="30px" width="35px"/></a></b>
				</td>
				
		</tr>
	
		</c:forEach>
		
</table>
<br>
<h2 style="color:green;text-align:center">${msgD}</h2>
<br>
<h2 style="color:green;text-align:center">${myMsg}</h2>
<br>
<h2 style="color:green;text-align:center">${updtmsg}</h2>
<br>
<h3 style="color:green;text-align:center"><a href="./">Home<img src="images/home.jpg" height="50px" width="50px"/></a></h3>
<br>
<h3 style="color:green;text-align:center"><a href="addData">Add Employee <img src="images/addEmp.jpg" height="50px" width="50px"/> </a></h3>


</body>
</html>



