<%-- 
    Document   : login
    Created on : Sep 24, 2019, 3:50:31 PM
    Author     : AMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String title = "Log in"; 
    Object obj = session.getAttribute("message");
    String message = obj == null ? "" : (String)obj;
    session.setAttribute("message", null);
%>
<%@include file="/components/navbar.jsp" %>
<form action="/PRJ321x-A2/Controller" method="POST">
    <div class="d-flex m-3">
        <p class="w-25 m-0">Username:</p>
        <div>
            <input type="text" name="username" />
        </div>
    </div>
    <div class="d-flex m-3">
        <p class="w-25 m-0">Password:</p>
        <div>
            <input type="password" name="password" />
        </div>
    </div>
    <div class="d-flex m-3">
        <p class="w-25 m-0"></p>
        <div>
            <input type="submit" value="Login" />
        </div>
    </div>
</form>
<p class="text-danger"><%= message %></p>
<%@include file="/components/footer.jsp" %>
