<%-- 
    Document   : CourseForm
    Created on : Sep 24, 2019, 4:24:52 PM
    Author     : AMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String title = "Đăng ký học";
    Object obj = session.getAttribute("username");
    if (!"admin".equals(obj)) response.sendRedirect("/PRJ321x-A2/login.jsp");
    obj = session.getAttribute("name error");
    String ne = obj == null ? "" : (String)obj;
    obj = session.getAttribute("course error");
    String ce = obj == null ? "" : (String)obj;
    session.setAttribute("name error", null);
    session.setAttribute("course error", null);
%>
<%@include file="/components/navbar.jsp" %>
<form action="/PRJ321x-A2/CourseValidation" method="POST">
    <div class="d-flex m-3">
        <p class="w-25 m-0">Họ và tên</p>
        <div>
            <input type="text" name="Name" />
        </div>
        <p class="text-danger m-0">&nbsp;<%= ne %></p>
    </div>
    <div class="d-flex m-3">
        <p class="w-25 m-0">Tuổi</p>
        <div>
            <input type="number" min="19" max="39" name="Age" value="20" />
        </div>
    </div>
    <div class="d-flex m-3">
        <p class="w-25 m-0">Quốc gia</p>
        <div>
            <select name="Nation">
                <option value="Việt Nam" selected>Việt Nam</option>
                <option value="Mỹ">Mỹ</option>
                <option value="Anh">Anh</option>
                <option value="Trung Quốc">Trung Quốc</option>
                <option value="Pháp">Pháp</option>
            </select>
        </div>
    </div>
    <div class="d-flex m-3">
        <p class="w-25 m-0">Khoá học</p>
        <div>
            <select name="Courses" size="5" multiple>
                <option value="C#">C#</option>
                <option value="Java">Java</option>
                <option value="C++">C++</option>
                <option value="Python">Python</option>
                <option value="Ruby on Rail">Ruby on Rail</option>
            </select>
        </div>
        <p class="text-danger m-0">&nbsp;<%= ce %></p>
    </div>
    <div class="d-flex m-3">
        <p class="w-25 m-0">Ngôn ngữ</p>
        <div>
            <input type="radio" name="Language" value="Tiếng Việt" checked /> Tiếng Việt <br />
            <input type="radio" name="Language" value="English" /> English <br />
            <input type="radio" name="Language" value="Francais" /> Francais
        </div>
    </div>
    <div class="d-flex m-3">
        <div class="w-25">
            <input type="submit" value="Submit" class="btn btn-primary" />
        </div>
        <div>
            <a role="button" href="./page1.jsp" class="btn btn-primary">Cancel</a>
        </div>
    </div>
</form>
<%@include file="/components/footer.jsp" %>
