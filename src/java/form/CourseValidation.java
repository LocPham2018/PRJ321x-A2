/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package form;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author AMIN
 */
@WebServlet(name = "CourseValidation", urlPatterns = {"/CourseValidation"})
public class CourseValidation extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String name = request.getParameter("Name");
            int age = Integer.parseInt(request.getParameter("Age"));
            String nation = request.getParameter("Nation");
            String courses = request.getParameterValues("Courses") == null ? "" : String.join(", ", request.getParameterValues("Courses"));
            String language = request.getParameter("Language");
            
            HttpSession session = request.getSession();
            
            if (courses.equals("") || name.equals("") || Pattern.compile("\\d").matcher(name).find()) {
                if (courses.equals("")) session.setAttribute("course error", "Chưa chọn khoá học.");
                if (name.equals("")) session.setAttribute("name error", "Tên không được để trống.");
                if (Pattern.compile("\\d").matcher(name).find()) session.setAttribute("name error", "Tên không hợp lệ.");
                response.sendRedirect("/PRJ321x-A2/CourseForm.jsp");
            } else {
                out.println("<p>Họ tên: " + name + "</p>");
                out.println("<p>Tuổi: " + age + "</p>");
                out.println("<p>Quốc gia: " + nation + "</p>");
                out.println("<p>Khoá học: " + courses + "</p>");
                out.println("<p>Ngôn ngữ: " + language + "</p>");
                out.println("<a href='/PRJ321x-A2/CourseForm.jsp'>Trở lại đăng ký học</a>");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
