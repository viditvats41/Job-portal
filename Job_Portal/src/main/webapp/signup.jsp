<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<%@ include file="all_components/all_css.jsp" %>
<style type="text/css">
.sig_img {
    background-image: url("img/n6.jpg");
    width: 100%;
    height:90vh;
    background-repeat: no-repeat;
    background-size: cover;
}
.card {
    width: 500px; /* Adjust the width as needed */
    height: 500px; /* Adjust the height as needed */
}


</style>
</head>
<body>
<%@ include file="all_components/navbar.jsp" %>
<div class="sig_img ">
	<div class="container-fluid">
		<div class="row pt-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Registration</h5>
						</div>
						
						<c:if test="${not empty succMsg}">
							<h4 class="test-center text-success">${succMsg}</h4>
							<c:remove var="succMsg"/>
						
						</c:if>
					
					<form action="add_user" method="post">
						<div class="form-group">
							<label for="name">Full Name</label>
							<input type="text" class="form-control" id="na" required="required" name="name"  Aria-Describedby="nameHelp">
						</div>
						<div class="form-group">	
							<label for="email">Email</label>
      						<input type="email" class="form-control" id="em" name="email" required="required" Aria-Describedby="emailHelp">
						</div>
     						<label for="qua">Qualification</label>
     						<input type="text"  name="qua" required="required" class="form-control" id="qu" Aria-Describedby="qualificationHelp">
						<div class="form-group">
     						<label for="psw">Password</label>
      						<input type="password"  name="ps" required="required" class="form-control" id="psw" Aria-Describedby="passwordHelp">
						</div>
						
						
						<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>	
</div>

</body>
</html>