<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Passengers List</title>
</head>
<body>
<h1>Displaying the List for All Passengers</h1>
<hr>
<div>

<table style="border:1px solid black;">
<tr>
<th>Passenger FirstName:</th>
<th>Passenger LastName:</th>
<th>Passenger Address:</th>
<th>Passenger Email</th>
<th>Passenger Tel Phone:</th>
</tr>
<c:forEach items="${passengerList}" var="passenger">
<tr>
<td>${passenger.firstName}</td>
<td>${passenger.lastName}</td>
<td>${passenger.address}</td>
<td>${passenger.email_id}</td>
<td>${passenger.tel_no}</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>