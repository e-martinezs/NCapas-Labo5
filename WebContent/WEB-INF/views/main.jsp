<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SpringJPA</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/findStudent">
		<label>ID: </label><input type="number" name="code">
		<input type="submit" value="Buscar">
	</form>
	<br>
	<table>
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Edad</th>
			<th>Estado</th>
		</tr>
		<c:forEach items="${students}" var="students">
			<tr>
				<td>${student.cStudent}</td>
				<td>${students.sName}</td>
				<td>${students.lName}</td>
				<td>${students.sAge}</td>
				<td>${students.activeDelegate}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>