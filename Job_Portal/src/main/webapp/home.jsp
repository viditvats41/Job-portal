<%@page import="java.util.List" %>
<%@page import="com.entity.Jobs" %>
<%@page import="com.DB.DBConnect" %>
<%@page import="com.dao.jobDAO" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User : View Jobs</title>
    <%@include file="all_components/all_css.jsp" %>
</head>
<body style="background-color: #D3D3D3">
    <c:if test="${empty userobj}">
        <c:redirect url="login.jsp" />
    </c:if>
    <%@include file="all_components/navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h5 class="text-center text-primary">All Jobs</h5>
                
                <c:if test="${not empty succMsg}">
                    <h4 class="text-center text-danger">${succMsg}</h4>
                    <c:remove var="succMsg" />
                </c:if> 
                
                <div class="card">
                    <div class="card-body">
                        <form class="form-inline" action="more_view.jsp" method="get">
                            <div class="form-group col-md-5 mt-1">
                                <h5>Location</h5>
                            </div>
                            <div class="form-group col-md-4 mt-1">
                                <h5>Category</h5>
                            </div>
                            <div class="form-group col-md-5">
                                <select name="loc" class="custom-select" id="inlineformCustomSelectPref">
                                    <option selected value="lo">Choose....</option>
                                    <option value="Odisha">Odisha</option>
                                    <option value="Mohali">Mohali</option>
                                    <option value="Gurugram">Gurugram</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Banglore">Banglore</option>
                                </select>
                            </div>
                            <div class="form-group col-md-5">
                                <select class="custom-select" id="inlineFormCustomSelectPref" name="cat">
                                    <option value="co" selected>Choose....</option>
                                    <option value="IT">IT</option>
                                    <option value="Developer">Developer</option>
                                    <option value="Banking">Banking</option>
                                </select>
                            </div>
                            <button class="btn btn-success" type="submit">Submit</button>
                        </form>
                    </div>
                </div>
                
                <%
                jobDAO dao = new jobDAO(DBConnect.getConn());
                List<Jobs> list = dao.getAllJobsForUser();
                for(Jobs j : list) {
                %>
                <div class="card mt-2">
                    <div class="card-body">
                        <div class="text-center text-primary">
                            <i class="far fa-clipboard fa-2x"></i>
                        </div>
                        <h6><%=j.getTitle() %></h6>
                        <%
                        if(j.getDescription().length() > 0 && j.getDescription().length() < 120){
                        %>
                        <p><%=j.getDescription() %></p>
                        <%
                        } else{
                        %>
                        <p><%=j.getDescription().substring(0, 120) %>...</p>
                        <%
                        }
                        %>
                        <br>
                        <div class="form-row">
    						<div class="form-group col-md-3">
       						 <input type="text" class="form-control form-control-sm" value="Location: <%=j.getLocation() %>" readonly>
   						 </div>
    
    					<div class="form-group col-md-3">
        					<input type="text" class="form-control form-control-sm" value="Category: <%=j.getCategory() %>" readonly>
    						</div>
						</div>

                        <h6>Publish Date: <%=j.getPdate().toString() %></h6>
                        <div class="text-center">
                            <a href="one_view.jsp?id=<%=j.getId() %>" class="btn btn-sm bg-success text-white">View More</a>
                        </div>
                    </div>
                </div>
                <%
                }
                %>
            </div>
        </div>
    </div>
</body>
</html>