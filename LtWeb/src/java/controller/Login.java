/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import model.User;
import config.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
//            deleteCookie(req.getCookies(), resp);
            HttpSession session = req.getSession();
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            System.out.println(email);
            System.out.println(password);
            if(!User.checkAuth(email, password)){
                req.setAttribute("error", "Email or password is incorrect.");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            } else {
                if(req.getParameter("remember") !=null){
                    addCookie(email, password, resp);
                }
                User user = (User) new DB("users", "User").where("email", "=", email).get().get(0);
                session.setAttribute("username", user.getName());
                session.setAttribute("role", user.getRole());

                if (User.checkAdmin(user.getRole())) {
                    resp.sendRedirect(req.getContextPath()+"/Dashbroad");
                } else {
                    req.getRequestDispatcher("/index.jsp").forward(req, resp);
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String action = req.getParameter("action");
        User user = checkCookie(req);
        if(action == null){
            if(user == null) {
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            } else{
                try {
                    if(!User.checkAuth(user.getEmail(), user.getPassword())){
                        resp.sendRedirect(req.getContextPath()+ "/login");
                    }else{
                        session.setAttribute("user", user);
                        if(User.checkAdmin(user.getRole()))
                            req.getRequestDispatcher("/index.jsp").forward(req, resp);
                        else
                            req.getRequestDispatcher("/index.jsp").forward(req, resp);
                    }
                } catch (Exception ex) {
                    Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                }
            } 
        }else {
            session.removeAttribute("email");
            deleteCookie(req.getCookies(), resp);
            resp.sendRedirect(req.getContextPath()+"");
        }
    }

    // kiem tra xem nguoi dung da tung dang nhap chua
    private User checkCookie(HttpServletRequest request){
        Cookie[] cookies = request.getCookies();
        String email = "";
        String password = "";
        for (Cookie cooky : cookies) {
            if(cooky.getName().equalsIgnoreCase("email")){
                email = cooky.getValue();
            }
            if(cooky.getName().equalsIgnoreCase("password")){
                password = cooky.getValue();
            }
        }
                System.out.println(email);
                System.out.println(password);

        if(!email.isEmpty() && !password.isEmpty()){
            return new User(email, password);
        }
        return null;
    }
    
    private void addCookie(String email, String password, HttpServletResponse response){
        Cookie cEmail = new Cookie("email", email);
        cEmail.setMaxAge(360); // thoi gian ton tai cookie
        response.addCookie(cEmail);
        Cookie cPass = new Cookie("password", password);
        cPass.setMaxAge(360);
        response.addCookie(cPass);
    }
    
    private void deleteCookie(Cookie[] cookies, HttpServletResponse response) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equalsIgnoreCase("email")) {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
            if (cookie.getName().equalsIgnoreCase("password")) {
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
        }
    }
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            String email = request.getParameter("email");
//            String password = request.getParameter("password");
////            User user =checkCookie(request);
//
//            if (email != null && password != null) {
//                User user = (User)  new DB("users", "User").where("email", "=", "vuthithuy10197@gmail.com").get().get(0);
////                if(user !=null)
////                    response.sendRedirect(request.getContextPath()+"/Dashbroad");
////                else 
////                                        out.print("Invalid user or password");
//
//                if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
//                    response.sendRedirect(request.getContextPath()+"/Dashbroad");
//                } else{
//                    out.print("Invalid user or password");
//                }
//            } else {
//                out.print("Empty Username or password");
//            }
//        }
//    }
//
//  
//
// 
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        doGet(request, response);
//      
//    }



}
