<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">EMS</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Welcome, ${loginsuccess.name }</a></li>
					
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" 
					href="${pageContext.request.contextPath}/table">Table</a>
					</li>


			</ul>
			<ul class="navbar-nav ml-auto">
				
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/logout">Logout</a></li>
			</ul>
		</div>
	</div>
</nav>