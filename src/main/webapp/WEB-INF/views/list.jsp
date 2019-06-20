<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

list page

<table width = "500" cellpadding = "0" cellspacing = "0" border="1">
	<tr> 
		<td> Id </td>
		<td> Name </td>
		<td> phone </td>
		<td> password </td>
	</tr>
	<c:forEach items ="${list}" var = "dto"> 
	<tr>
		<td> ${dto.id} </td>
		<td> ${dto.name} </td>			
		<td> ${dto.phone} </td>
		<td> ${dto.pw} </td>
	</tr>
	</c:forEach>
	
</table>


</body>
</html>