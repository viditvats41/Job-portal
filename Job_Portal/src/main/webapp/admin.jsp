<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@ include file="all_components/all_css.jsp" %>
<style type="text/css">
.adm_img {
    background-image: url("img/n7.jpg");
    width: 100%;
    height:90vh;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>

</head>
<body>

<c:choose>
    <c:when test="${userobj.role ne 'admin'}">
        <c:redirect url="login.jsp"/>
    </c:when>
</c:choose>



<%@ include file="all_components/navbar.jsp" %>
<div class="adm_img">
	<div class="container-fluid ">
		<div class="text-center">
			<h1 class= "text-white p-4"> Welcome Admin</h1>
			
		</div>
	</div>
</div>
</body>
</html>