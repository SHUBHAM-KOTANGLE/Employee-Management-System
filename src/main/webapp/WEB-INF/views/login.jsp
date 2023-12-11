<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="base.jsp"%>
</head>
<body>

	<header>
		<%@include file="navbar.jsp"%>
	</header>

	

<div class="card col-md-3 mt-6 mb-6 container d-flex justify-content-center align-items-center vh-100">
	<form action="${pageContext.request.contextPath }/logedin"
		method="post">
		<div class="mb-4">
			<h1>Login</h1>
			<label for="exampleInputEmail1" class="form-label">Email
				address</label> <input type="email" class="form-control"
				id="exampleInputEmail1" aria-describedby="emailHelp" name="email">

		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">Password</label>
			<input type="password" class="form-control"
				id="exampleInputPassword1" name="password">
		</div>
		<div class="mb-3 form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Check me
				out</label>
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
		<div class="register-link">
			<p>
				Don't have an account <a
					href="${pageContext.request.contextPath }/register">Register</a>
			</p>
		</div>
	</form>
</div>


</body>
</html>