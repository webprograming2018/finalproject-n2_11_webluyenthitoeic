/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.view;

import config.DB;
import controller.Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Part1;
import model.Part2;
import model.Part3_4;
import model.Part5;
import model.Part6;
import model.Part7;
import model.mediaforlisten;
import model.passages;

/**
 *
 * @author Admin
 */
@WebServlet(name = "practicePart1", urlPatterns = {"/practice/part"})
public class practicePart extends Controller {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet practicePart1</title>");            
            out.println("</head>");
            out.println("<body>");
            ArrayList<Part3_4> get = (ArrayList<Part3_4>) new DB("part3", "Part3_4").where("level_id", "=", "1").get();
            for (Part3_4 part2 : get) {
                out.println("<h1>Servlet practicePart1 at " + part2.getAnswer() + "</h1>");

            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String level_id = request.getParameter("level");
        String part = request.getParameter("part");
//        processRequest(request, response);
        if (part.equals("part1")){
            ArrayList<Part1> get = (ArrayList<Part1>) new DB("part1", "Part1").where("level_id", "=", level_id).orderBy("RAND()").limit(10).get();
            request.setAttribute("part1", get);
            showView(request, response, "/view/practicePart1.jsp");
        } else if(part.equals("part2")) {
            ArrayList<Part2> get = (ArrayList<Part2>) new DB("part2", "Part2").where("level_id", "=", level_id).orderBy("RAND()").limit(10).get();
            request.setAttribute("part2", get);
            showView(request, response, "/view/practicePart2.jsp");
        } else if(part.equals("part3")) {
            ArrayList<Part3_4> get = (ArrayList<Part3_4>) new DB("part3", "Part3_4").where("level_id", "=", level_id).get();
            ArrayList<mediaforlisten> listMediaLevelPart = (ArrayList<mediaforlisten>) mediaforlisten.listMediaLevelPart(level_id) ;
            request.setAttribute("listMediaPart3", listMediaLevelPart);
            request.setAttribute("part3", get);
            showView(request, response, "/view/practicePart3.jsp");
        } else if(part.equals("part4")){
            ArrayList<Part3_4> get = (ArrayList<Part3_4>) new DB("part4", "Part3_4").where("level_id", "=", level_id).get();
            ArrayList<mediaforlisten> listMediaLevelPart = (ArrayList<mediaforlisten>) mediaforlisten.listMediaLevelPart4(level_id) ;
            request.setAttribute("listMediaPart4", listMediaLevelPart);
            request.setAttribute("part4", get);
            showView(request, response, "/view/practicePart4.jsp");
        } if (part.equals("part5")){
            ArrayList<Part5> get = (ArrayList<Part5>) new DB("part5", "Part5").where("level_id", "=", level_id).orderBy("RAND()").limit(10).get();
            request.setAttribute("part5", get);
            showView(request, response, "/view/practicePart5.jsp");
        } else if(part.equals("part6")) {
            ArrayList<Part6> get = (ArrayList<Part6>) new DB("part6", "Part6").where("level_id", "=", level_id).get();
            ArrayList<passages> listPassages = passages.listPassages(level_id);
            request.setAttribute("part6", get);
            request.setAttribute("listPassages", listPassages);
            showView(request, response, "/view/practicePart6.jsp");
        } else {
            ArrayList<Part7> get = (ArrayList<Part7>) new DB("part7", "Part7").where("level_id", "=", level_id).get();
            ArrayList<passages> listPassages = passages.listPassages7(level_id);
            request.setAttribute("part7", get);
            request.setAttribute("listPassages", listPassages);
            showView(request, response, "/view/practicePart7.jsp");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


}
