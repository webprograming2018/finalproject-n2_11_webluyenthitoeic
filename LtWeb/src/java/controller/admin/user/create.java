/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.user;

import config.DB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.Controller;
import java.util.HashMap;
/**
 *
 * @author Admin
 */
@WebServlet(name = "UserCreateController", urlPatterns = {"/admin/user/create"})
public class create extends Controller {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        String stay = request.getParameter("stay");
        HashMap<String, String> map = new HashMap<>();
        map.put("name", name);
        map.put("email", email);
        map.put("password", password);
        map.put("role", role);
        map.put("status", "1");
        map.put("remember_token", "");
        new DB("users").insert(map);
        if(stay!=null){
            response.sendRedirect(request.getContextPath()+"/admin/user/create");
        }else{
            response.sendRedirect(request.getContextPath()+"/admin/user/index");
        }
    }

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(this.auth(request) == false) {
            response.sendRedirect(request.getContextPath()+"/Login");
            return;
        }
        showView(request, response,"/admin/user/create.jsp");
    }

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        processRequest(request, response);
    }

    
}
