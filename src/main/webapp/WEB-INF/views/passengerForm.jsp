<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
	<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Passenger Form</title>
</head>
<body>
<h1>Passenger Form</h1>
<hr>
<form:form method="post" modelAttribute="passenger">
<form:label for="firstName" path="firstName">First Name</form:label>
<form:input path="firstName" id="firstName" type="text"></form:input>
<br>
<form:label for="lastName" path="lastName">Last Name</form:label>
<form:input path="lastName" id="lastName" type="text"></form:input>
<br>
<form:label for="email_id" path="email_id">Email</form:label>
<form:input path="email_id" id="email_id" type="text"></form:input>
<br>
<form:label for="tel_no" path="tel_no">Phone</form:label>
<form:input path="tel_no" id="tel_no" type="text"></form:input>
<br>
<form:label for="address" path="address">Address</form:label>
<form:input path="address" id="address" type="text"></form:input>
<br>
<button type="submit">Add Passenger</button>
</form:form>
</body>
</html>