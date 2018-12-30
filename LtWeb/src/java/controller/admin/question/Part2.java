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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Level;
import model.Test;
import model.mediaforlisten;

/**
 *
 * @author Admin
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 5, // 5MB
        maxRequestSize = 1024 * 1024 * 5) // 5MB
@WebServlet(name = "Part2", urlPatterns = {"/admin/question/Part2"})
public class Part2 extends Controller {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Part2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Part2 at " + request.getContextPath() + "</h1>");
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
        ArrayList<Level> level = (ArrayList<Level>) new DB("levels", "Level").all();
        request.setAttribute("level", level);
        showView(request, response, "Part2.jsp");
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          try {
            HashMap<String, String> map = new HashMap();
            String media = uploadFileS(request);
            System.out.println(media);
            map.put("mediaFile", media);
            map.put("script_answer", request.getParameter("script_answer"));
            new DB("mediaforlisten").insert(map);
            HashMap<String, String> part = new HashMap();
            part.put("level_id", request.getParameter("level_id"));
            part.put("test_id", request.getParameter("test_id"));
            part.put("answer", request.getParameter("answer"));
            mediaforlisten listen = (mediaforlisten) new DB("mediaforlisten", "mediaforlisten").orderBy("created_at desc").limit(1).get().get(0);
            part.put("media_id", String.valueOf(listen.getId()));
//            System.out.println(media);
            
            new DB("part2").insert(part);
            response.sendRedirect(request.getContextPath()+"/admin/question/Part2");
        } catch (Exception ex) {
            request.setAttribute("errorMessage", "Error");
            response.sendRedirect(request.getContextPath()+"/admin/question/Part2");
        }
    }

  
}
