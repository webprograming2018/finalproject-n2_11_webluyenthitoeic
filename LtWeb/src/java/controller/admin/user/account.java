/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.user;

import model.User;
import config.DB;
import controller.Controller;
import dao.UserDAO;
import static dao.UserDAO.update;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "UserAccountController", urlPatterns = {"/admin/user/account"})
public class account extends Controller {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet account</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet account at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(this.auth(request) == false) {
            response.sendRedirect(request.getContextPath()+"/Login");
            return;
        }
        String id = request.getParameter("id");
        User user = UserDAO.selectBy(id);
        request.setAttribute("user", user);
        showView(request, response, "/admin/user/account.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        Map<String, String> map = new HashMap();
        map.put("name", request.getParameter("name"));
        map.put("password", request.getParameter("password"));
        map.put("role", request.getParameter("role"));
        map.put("status", request.getParameter("status"));
        new DB("users", "User").update(map, id);
        response.sendRedirect(request.getContextPath()+"/admin/user/index");
    }



}
