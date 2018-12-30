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
import model.mediaforlisten;
import model.passages;

/**
 *
 * @author Admin
 */
@WebServlet(name = "Part6_7", urlPatterns = {"/admin/question/Part6"})
public class Part6 extends Controller {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Part6_7</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Part6_7 at " + request.getContextPath() + "</h1>");
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
        ArrayList<passages> listPassages = (ArrayList<passages>) new DB("passages", "passages").select("passages.id , passages.content,  passages.title").join("part6", "mediaforlisten.id", "=", "part6.passage_id").groupBy("part6.passage_id").orderBy("passages.id desc").get();
        request.setAttribute("level", level);
        request.setAttribute("listPassages", listPassages);
        showView(request, response, "Part6.jsp");
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String more = request.getParameter("more");
            String passages_id = null;            
            if(more!=null){
                HashMap<String, String> video = new HashMap();
                video.put("passages", request.getParameter("passages"));
                new DB("passages").insert(video);
                passages p = (passages) new DB("passages", "passages").orderBy("created_at desc").limit(1).get().get(0);          
                passages_id = String.valueOf(p.getId());
            } else{
                passages_id = request.getParameter("passages_id");
            }
            System.out.println(passages_id);
                HashMap<String, String> map = new HashMap();
                map.put("answer", request.getParameter("answer0"));
                map.put("A", request.getParameter("A0"));
                map.put("B", request.getParameter("B0"));
                map.put("D", request.getParameter("D0"));
                map.put("C", request.getParameter("C0"));
                map.put("passages_id", passages_id);
                map.put("level_id", request.getParameter("level_id"));
            
                new DB("part6").insert(map);

        String stay = request.getParameter("stay");
        if(stay!=null){
            response.sendRedirect(request.getContextPath()+"/admin/question/Part6");
        }else{
            response.sendRedirect(request.getContextPath()+"/admin/user/index");
        }
        } catch (Exception ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            response.sendRedirect(request.getContextPath()+"/admin/question/Part6");
        }
    }

   
}
