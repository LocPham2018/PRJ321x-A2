<%-- 
    Document   : page2
    Created on : Sep 24, 2019, 2:56:13 PM
    Author     : AMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String title = "Page 2";
    Object obj = session.getAttribute("username");
    if (obj == null) response.sendRedirect("/PRJ321x-A2/login.jsp");
    session.setAttribute("page", title);
%>
<%@include file="/components/navbar.jsp" %>
<%@include file="/components/header.jsp" %>
<div class="row">
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/toothless.png" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/lightfury.png" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/stormfly.png" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/meatlug.png" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/hookfang.png" />
    </div>
    <div class="mb-3 col-sm-12 col-md-6 col-lg-4">
        <img class="rounded w-100" src="./img/barfnbelch.png" />
    </div>
</div>
<%@include file="/components/footer.jsp" %>
