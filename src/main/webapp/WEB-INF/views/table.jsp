<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>table</title>
<style>
a.delete, a.update {
	color: white;
	font-weight: bold;
}
</style>

<%@include file="navbar2.jsp"%>

<%@include file="base.jsp"%>
</head>
<body>




	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th>Sr.No</th>
				<th>Name</th>
				<th>Date of Birth</th>
				<th>Gender</th>
				<th>Address</th>
				<th>City</th>
				<th>State</th>
				<th>Login Id</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${person }" var="p">
				<tr>
					<td>${p.id }</td>
					<td>${p.name }</td>
					<td>${p.dob }</td>
					<td>${p.gender }</td>
					<td>${p.address }</td>
					<td>${p.city }</td>
					<td>${p.state }</td>
					<td>${p.email }</td>
					<td><a
						href="${pageContext.request.contextPath}/delete/${p.id }"
						class="delete">Delete</a> <a
						href="${pageContext.request.contextPath}/update/${p.id }"
						class="update">Update</a></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>