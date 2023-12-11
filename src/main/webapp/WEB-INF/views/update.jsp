<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
		<nav class="navbar">
			<ul>
				<li><a >Welcome, ${loginsuccess.name }</a></li>
				<li><a href="${pageContext.request.contextPath}/table">Table</a></li>
				<div>

					<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>

				</div>
			</ul>



		</nav>
	</header>

	<div class="wrapper">
		<h1>Update Form</h1>
		<form action="${pageContext.request.contextPath}/updated"
			method="post">
			<input type="text" name="id" value="${person.id }"/>
			<div class="input-box">

				Name :<input type="text" name="name" placeholder="Name"
					required="required"
					value="${person.name }">

			</div>
			<div class="input-box">

				Date of Birth :<input type="text" name="dob"
					placeholder="Date of Birth" required="required"
					value="${person.dob }">

			</div>
			<div class="input-box">

				Gender :<input type="text" name="gender" placeholder="Gender"
					required="required"
					value="${person.gender }">

			</div>
			<div class="input-box">

				Address :<input type="text" name="address" placeholder="Address"
					required="required"
					value="${person.address }">

			</div>
			<div class="input-box">

				City :<input type="text" name="city" placeholder="City"
					required="required"
					value="${person.city }">

			</div>
			<div class="input-box">

				State :<input type="text" name="state" placeholder="State"
					required="required"
					value="${person.state }">

			</div>
			<div class="input-box">

				Login id :<input type="text" name="email" placeholder="Login id"
					required="required"
					value="${person.email }">

			</div>


			<div class="input-box">
				Password :<input type="password" name="password"
					placeholder="Password" required="required"
					value="${person.password }">

			</div>

			<button type="Submit">update</button>

		</form>



	</div>

</body>
</html>