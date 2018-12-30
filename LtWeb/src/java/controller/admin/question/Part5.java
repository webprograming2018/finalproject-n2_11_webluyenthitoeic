/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.question;

import config.DB;
import controller.Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Level;
import model.Test;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Part5", urlPatterns = {"/admin/question/Part5"})
public class Part5 extends Controller {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Part5</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Part5 at " + request.getContextPath() + "</h1>");
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
        ArrayList<Test> test = (ArrayList<Test>) new DB("Test", "Test").all();
        request.setAttribute("test", test);
        ArrayList<Level> level = (ArrayList<Level>) new DB("Levels", "Level").all();
        request.setAttribute("level", level);
        showView(request, response, "Part5.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
                HashMap<String, String> map = new HashMap();
                map.put("question", request.getParameter("question0"));
                map.put("answer", request.getParameter("answer0"));
                map.put("A", request.getParameter("A0"));
                map.put("B", request.getParameter("B0"));
                map.put("D", request.getParameter("D0"));
                map.put("C", request.getParameter("C0"));
                map.put("script_answer", request.getParameter("script_answer"));
                map.put("level_id", request.getParameter("level_id"));
            String stay = request.getParameter("stay");
            if(stay!=null){
                response.sendRedirect(request.getContextPath()+"/admin/question/Part5");
            }else{
                response.sendRedirect(request.getContextPath()+"/admin/user/index");
            }
        } catch (Exception ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            response.sendRedirect(request.getContextPath()+"/admin/question/Part5");
        }
    }

 
}
