/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.view;

import com.google.gson.Gson;
import config.DB;
import controller.Controller;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Part1;
import static model.Part1.listAnswer;
import static model.Part2.listAnswer;
import static model.Part3_4.listAnswer;
import static model.Part5.listAnswer;
import static model.Part6.listAnswer;
import static model.Part7.listAnswer;
import model.Part2;
import model.Part3_4;
import model.Part5;
import model.Part6;
import model.Part7;
import model.Test;
import model.mediaforlisten;
import static model.mediaforlisten.listMediaPart;
import model.passages;
import static model.passages.getPassagesPart6;
import static model.passages.getPassagesPart7;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ResultTestFull", urlPatterns = {"/toeic/result"})
public class ResultTestFull extends HttpServlet {

        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("test_id");
        ArrayList<Part1> part1 = (ArrayList<Part1>) new DB("part1", "Part1").where("test_id", "=", id).get();
        ArrayList<Part2> part2 = (ArrayList<Part2>) new DB("part2", "Part2").where("test_id", "=", id).get();
        ArrayList<Part3_4> part3 = (ArrayList<Part3_4>) new DB("part3", "Part3_4").where("test_id", "=", id).orderBy("media_id").get();
        ArrayList<Part3_4> part4 = (ArrayList<Part3_4>) new DB("part4", "Part3_4").where("test_id", "=", id).orderBy("media_id").get();
        ArrayList<Part5> part5 = (ArrayList<Part5>) new DB("part5", "Part5").where("test_id", "=", id).get();
        ArrayList<Part6> part6 = (ArrayList<Part6>) new DB("part6", "Part6").where("test_id", "=", id).orderBy("passage_id").get();
        ArrayList<Part7> part7 = (ArrayList<Part7>) new DB("part7", "Part7").where("test_id", "=", id).orderBy("passage_id").get();
        
        ArrayList<String> answerPart1 = listAnswer(part1);
        ArrayList<String> answerPart2 = listAnswer(part2);
        ArrayList<String> answerPart3 = listAnswer(part3);
        ArrayList<String> answerPart4 = listAnswer(part4);
        ArrayList<String> answerPart5 = listAnswer(part5);
        ArrayList<String> answerPart6 = listAnswer(part6);
        ArrayList<String> answerPart7 = listAnswer(part7);

        ArrayList<String> listAnswer = new ArrayList<>();
        listAnswer.addAll(answerPart1);
        listAnswer.addAll(answerPart2);
        listAnswer.addAll(answerPart3);
        listAnswer.addAll(answerPart4);
        listAnswer.addAll(answerPart5);
        listAnswer.addAll(answerPart6);
        listAnswer.addAll(answerPart7);
        
        String json = null;
        json = new Gson().toJson(listAnswer);
        response.getWriter().write(json);
    }

  
}
