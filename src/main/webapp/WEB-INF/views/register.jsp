<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<%@include file="base.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container d-flex justify-content-center align-items-center vh-100" style="padding-top: 250px;">
	<div class="card col-md-8 center">
		
		<div class="card col-md-12">
		  <div class="card col-md-12" style="padding: 30px;">
		<h1>Register</h1>
		

		

		<form class="" action="${pageContext.request.contextPath }/registed"
			method="post">
		<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Name
					</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					name="name" >
			
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Date of Birth
					</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					name="dob" >
			
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Gender
					</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					name="gender" >
			
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Address
					</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					 name="address" >
			
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">City
					</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					name="city" >
			
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">State
					</label> <input type="text" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					name="state">
			
			</div>
		
		
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Login id
					</label> <input type="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					 name="email" >
			
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
				<input type="password" class="form-control"
					id="exampleInputPassword1"
					name="password">
			</div>
			<div class="mb-3 form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
		</div>
	</div>
	</div>
</div>
</body>
</html>