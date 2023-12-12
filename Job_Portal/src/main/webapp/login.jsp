<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@ include file="all_components/all_css.jsp" %>

<style type="text/css">
.log_img {
    background-image: url("img/n5.jpg");
    width: 100%;
    height:90vh;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>

</head>
<body>
<%@ include file="all_components/navbar.jsp" %>
<div class="log_img">
	<div class="container-fluid ">
		<div class="row pt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class=" fa-solid fa-user fa-2x" aria-hidden="true"></i>
							<h5>Login Page</h5>
						</div>
						
						<c:if test="${not empty succMsg}">
                    		<h4 class="text-center text-danger">${succMsg}</h4>
                    		<c:remove var="succMsg" />
                		</c:if> 
						
						<form action="login" method="post">
							
							<div class="form-group">
								<label for="exampleInputEmail">Email</label>
								<input type="email" required="required" class="form-control" id="exampleInputEmail" Aria-Describedby="emailHelp" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword">Password</label>
								<input type="password" required="required" class="form-control" id="exampleInputPassword" name="password">
							</div>
							
							<button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			
			</div>
		</div>
	
	</div>
</div>
</body>
</html>