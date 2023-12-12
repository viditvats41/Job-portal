<%--@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<%@page import= "com.entity.Jobs" %>
<%@page import="com.dao.jobDAO" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Jobs</title>
<%@ include file="all_components/all_css.jsp" %>


</head>
<body style="background-color:#f0f1f2;">

<c:choose>
    <c:when test="${userobj.role ne 'admin'}">
        <c:redirect url="login.jsp"/>
    </c:when>
</c:choose>

	<%@ include file="all_components/navbar.jsp" %>
	
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						

<%
int id = Integer.parseInt(request.getParameter("id"));
jobDAO dao = new jobDAO(DBConnect.getConn());
Jobs j = dao.getJobById(id);
%>

						<h5>Edit Jobs</h5>
					</div>
					<form action="update" method="post">
					
					<input type="hidden" value="<%=j.getId() %>" name="id">
						<div class="form-group">
							<label for="title">Enter Title</label> 
							<input type="text" id="title" name="title" required class="form-control" value="<%=j.getTitle() %>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="inlineFormCustomSelectPref">Location</label> <select name="location"
								class="custom-select" id="inlineFormCustomSelectPref">
								<option value="<%=j.getLocation() %>"><%=j.getLocation() %></option>
								<option value="Delhi">Delhi</option>
								<option value="Gurugram">Gurugram</option>
								<option value="Banglore">Banglore</option>
								<option value="Mohali">Mohali</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="category">Category</label><select class="custom-select" id="category" name="category">
								<option value="<%=j.getCategory() %>"><%=j.getCategory() %></option>
								<option value="IT">IT</option>
								<option value="Developer">Developer</option>
								<option value="Banking">Banking</option>
								
								</select>	
							</div>
							
							<div class="form-group col-md-4">
								<label for="sta">Status</label> <select class="form-control" id="sta" name="status">
								<option class="Active" value="<%=j.getStatus() %>"><%=j.getStatus() %>
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option> 
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="des">Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
					             class="form-control" id="des"><%=j.getDescription() %></textarea>
						</div>
						<button type="submit" class="btn btn-success">Update Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>