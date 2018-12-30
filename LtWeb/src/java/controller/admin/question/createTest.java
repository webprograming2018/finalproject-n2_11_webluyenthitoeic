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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Test;

/**
 *
 * @author Admin
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 5, // 5MB
        maxRequestSize = 1024 * 1024 * 5) // 5MB
@WebServlet(name = "createTest", urlPatterns = {"/admin/question/test/create"})
public class createTest extends Controller {
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
            out.println("<h1> " + request.getParameter("name") + "</h1>");
            out.println("<h3> " + request.getParameter("title") + "</h3>");
            out.println("<h3> " + uploadFile(request) + "</h3>");
            out.println("</body>");
            out.println("</html>");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
          }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(this.auth(request) == false) {
            response.sendRedirect(request.getContextPath()+"/Login");
            return;
        }
        showView(request, response,"/admin/question/createTest.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        try {
            HashMap<String, String> map = new HashMap();
            map.put("name", request.getParameter("name"));
            map.put("title", request.getParameter("title"));
            String media = uploadFileS(request);
            System.out.println(media);
            map.put("media", media);
            new DB("test").insert(map);
            response.sendRedirect(request.getContextPath()+"/admin/question/test");
        } catch (Exception ex) {
            request.setAttribute("errorMessage", "Error");
            showView(request, response,"/admin/question/createTest.jsp");
        }
    }


}
