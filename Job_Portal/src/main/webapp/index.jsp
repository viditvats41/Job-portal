<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="all_components/all_css.jsp" %>
<style type="text/css">
.back_img {
    background-image: url("img/n2.jpg");
    width: 100%;
    height:90vh;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>

</head>
<body>
<%@ include file="all_components/navbar.jsp" %>



<div class="container-fluid back_img">
	<div class="text-center">
		<h1 class= "text-white p-4"> Online Job Portal</h1>
			
	</div>
</div>
</body>
</html>