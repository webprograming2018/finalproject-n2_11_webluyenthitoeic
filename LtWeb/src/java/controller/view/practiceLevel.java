/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.view;

import controller.Controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Level;
import model.Part1;
import model.Part2;
import model.Part3_4;
import model.Part5;
import model.Part6;
import model.Part7;


@WebServlet(name = "practiceLevelPart1", urlPatterns = {"/practice/level"})
public class practiceLevel extends Controller {

    
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
            out.println("<h1>Servlet practicePart1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String part = request.getParameter("part");            
        request.setAttribute("part", part);
        
        if (part.equals("1")){
            ArrayList<Level> levelPart1 = Part1.levelPart();
            request.setAttribute("level", levelPart1);
        }
        else if (part.equals("2")){
            ArrayList<Level> levelPart2 = Part2.levelPart();
            request.setAttribute("level", levelPart2);
        }
        else if (part.equals("3") ){
            ArrayList<Level> levelPart2 = Part3_4.levelPart("part3");
            request.setAttribute("level", levelPart2);
        }
        else if (part.equals("3") ){
            ArrayList<Level> levelPart2 = Part3_4.levelPart("part3");
            request.setAttribute("level", levelPart2);
        }
        else if (part.equals("4") ){
            ArrayList<Level> levelPart2 = Part3_4.levelPart("part4");
            request.setAttribute("level", levelPart2);
        }
        else if (part.equals("5")){
            ArrayList<Level> levelPart2 = Part5.levelPart();
            request.setAttribute("level", levelPart2);
        }
        else if (part.equals("6")){
            ArrayList<Level> levelPart2 = Part6.levelPart();
            request.setAttribute("level", levelPart2);
        }
        else if (part.equals("7")){
            ArrayList<Level> levelPart2 = Part7.levelPart();
            request.setAttribute("level", levelPart2);
        }
        
        showView(request, response, "/view/levelPractice.jsp");
    }

    
   
    
}
