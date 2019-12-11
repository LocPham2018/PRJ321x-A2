<%-- 
    Document   : page1
    Created on : Sep 24, 2019, 2:56:02 PM
    Author     : AMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String title = "Page 1";
    Object obj = session.getAttribute("username");
    if (obj == null) response.sendRedirect("/PRJ321x-A2/login.jsp");
%>
<%@include file="/components/navbar.jsp" %>
<%@include file="/components/header.jsp" %>
<div class="row">
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/hiccup.jpg" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/astrid.jpg" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/fishlegs.jpg" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/snotlout.jpg" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/tuffnut.jpg" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/ruffnut.jpg" />
    </div>
</div>
<%@include file="/components/footer.jsp" %>
