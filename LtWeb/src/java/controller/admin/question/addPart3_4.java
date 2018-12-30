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
@WebServlet(name = "addPart3_4", urlPatterns = {"/admin/question/addPart3-4"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 5MB
        maxRequestSize = 1024 * 1024 * 10) // 5MB
public class addPart3_4 extends Controller{

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addPart3_4</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addPart3_4 at " + request.getContextPath() + "</h1>");
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
        ArrayList<mediaforlisten> listMediaLevel = (ArrayList<mediaforlisten>) new DB("mediaforlisten", "mediaforlisten").select("mediaforlisten.id , mediaforlisten.mediaFile , mediaforlisten.script_answer").join("part4", "mediaforlisten.id", "=", "part4.media_id").groupBy("part4.media_id").orderBy("mediaforlisten.id desc").get();
        ArrayList<mediaforlisten> listMediaLeve2 = (ArrayList<mediaforlisten>) new DB("mediaforlisten", "mediaforlisten").select("mediaforlisten.id , mediaforlisten.mediaFile , mediaforlisten.script_answer").join("part4", "mediaforlisten.id", "=", "part4.media_id").groupBy("part4.media_id").orderBy("mediaforlisten.id desc").get();
        listMediaLevel.addAll(listMediaLeve2);
        request.setAttribute("level", level);
        request.setAttribute("listMediaLevel", listMediaLevel);
        showView(request, response, "Part3_4.jsp");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String more = request.getParameter("more");
            String media_id = null;            
            if(more!=null){
                HashMap<String, String> video = new HashMap();
                video.put("mediaFile", (String) uploadFileS(request));
                video.put("script_answer",  request.getParameter("script_answer")!=null?request.getParameter("script_answer"):"");
                new DB("mediaforlisten").insert(video);
                mediaforlisten mediaforlisten = (mediaforlisten) new DB("mediaforlisten", "mediaforlisten").orderBy("created_at desc").limit(1).get().get(0);          
                media_id = String.valueOf(mediaforlisten.getId());
            } else{
                media_id = request.getParameter("media_id");
            }
            
            String part = request.getParameter("part");
            System.out.println(media_id);
                HashMap<String, String> map = new HashMap();
                map.put("question", request.getParameter("question0"));
                map.put("answer", request.getParameter("answer0"));
                map.put("A", request.getParameter("A0"));
                map.put("B", request.getParameter("B0"));
                map.put("D", request.getParameter("D0"));
                map.put("C", request.getParameter("C0"));
                map.put("media_id", media_id);
                map.put("level_id", request.getParameter("level_id"));
            if(part.equals("part3")){
                new DB("part3").insert(map);
            } else{
                new DB("part4").insert(map);
            }

        String stay = request.getParameter("stay");
        if(stay!=null){
            response.sendRedirect(request.getContextPath()+"/admin/question/addPart3-4");
        }else{
            response.sendRedirect(request.getContextPath()+"/admin/user/index");
        }
        } catch (Exception ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            response.sendRedirect(request.getContextPath()+"/admin/question/addPart3-4");
        }
    }

   
}
