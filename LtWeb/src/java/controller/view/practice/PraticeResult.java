/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.view;

import com.google.gson.Gson;
import config.DB;
import controller.view.practice.fileResultMediaJSON;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
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
import org.json.simple.JSONArray;

/**
 *
 * @author Admin
 */
@WebServlet(name = "PraticeResult", urlPatterns = {"/pratice/result"})
public class PraticeResult extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String part = request.getParameter("part");
        String id = request.getParameter("id");
        String answer = null;
        if (part.equals("part1")) {
            Part1 p = (Part1) new DB("part1", "Part1").where("id", "=", id).get().get(0);
            answer = p.getAnswer();
           
        } else if(part.equals("part2")){
            Part2 p = (Part2) new DB("part2", "Part2").where("id", "=", id).get().get(0);
            answer = p.getAnswer();
        } else if(part.equals("part3")) {
            ArrayList<Part3_4> listPart3_4 = (ArrayList<Part3_4>) new DB("part3", "Part3_4").where("media_id", "=", id).get();
            ArrayList<String> listAnswer = new ArrayList<>();
            for (Part3_4 part3_4 : listPart3_4) {
                listAnswer.add(part3_4.getAnswer()+""+String.valueOf(part3_4.getId()));
            }
            String json = null;
            json = new Gson().toJson(listAnswer);
            response.getWriter().write(json);
            return;
        } else if(part.equals("part4")) {
            ArrayList<Part3_4> listPart3_4 = (ArrayList<Part3_4>) new DB("part4", "Part3_4").where("media_id", "=", id).get();
            ArrayList<String> listAnswer = new ArrayList<>();
            for (Part3_4 part3_4 : listPart3_4) {
                listAnswer.add(part3_4.getAnswer()+""+String.valueOf(part3_4.getId()));
            }
            String json = null;
            json = new Gson().toJson(listAnswer);
            response.getWriter().write(json);
            return;
        } else if(part.equals("part5")){
            Part5 p = (Part5) new DB("part5", "Part5").where("id", "=", id).get().get(0);
            answer = p.getAnswer();
        } else if(part.equals("part6")) {
            ArrayList<Part6> listPart6 = (ArrayList<Part6>) new DB("part6", "Part6").where("passage_id", "=", id).get();
            ArrayList<String> listAnswer = new ArrayList<>();
            for (Part6 part6 : listPart6) {
                listAnswer.add(part6.getAnswer()+""+String.valueOf(part6.getId()));
            }
            String json = null;
            json = new Gson().toJson(listAnswer);
            response.getWriter().write(json);
            return;
        } else {
            ArrayList<Part7> listPart7 = (ArrayList<Part7>) new DB("part7", "Part7").where("passage_id", "=", id).get();
            ArrayList<String> listAnswer = new ArrayList<>();
            for (Part7 part7 : listPart7) {
                listAnswer.add(part7.getAnswer()+""+String.valueOf(part7.getId()));
            }
            String json = null;
            json = new Gson().toJson(listAnswer);
            response.getWriter().write(json);
            return;
        }
        String json = null;
        json = new Gson().toJson(answer);
        response.getWriter().write(json);
    }



}
