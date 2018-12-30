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
@WebServlet(name = "testDetail", urlPatterns = {"/test"})
public class test extends Controller {
public static final String SAVE_DIRECTORY_JSON = "templates/js";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id == null){
            ArrayList<Test> test = (ArrayList<Test>) new DB("Test", "Test").where("status", "=", "1").orderBy("created_at").get();
            request.setAttribute("test", test);
            showView(request, response, "/view/contest.jsp");
        }
        request.setAttribute("test_id", id);
        ArrayList<Part1> part1 = (ArrayList<Part1>) new DB("part1", "Part1").where("test_id", "=", id).get();
        ArrayList<Part2> part2 = (ArrayList<Part2>) new DB("part2", "Part2").where("test_id", "=", id).get();
        ArrayList<Part3_4> part3 = (ArrayList<Part3_4>) new DB("part3", "Part3_4").where("test_id", "=", id).orderBy("media_id").get();
        ArrayList<Part3_4> part4 = (ArrayList<Part3_4>) new DB("part4", "Part3_4").where("test_id", "=", id).orderBy("media_id").get();
        ArrayList<Part5> part5 = (ArrayList<Part5>) new DB("part5", "Part5").where("test_id", "=", id).get();
        ArrayList<Part6> part6 = (ArrayList<Part6>) new DB("part6", "Part6").where("test_id", "=", id).orderBy("passage_id").get();
        ArrayList<Part7> part7 = (ArrayList<Part7>) new DB("part7", "Part7").where("test_id", "=", id).orderBy("passage_id").get();
        int total = part1.size() + part2.size()+ part3.size() + part4.size() + part5.size() + part6.size() + part7.size();
        ArrayList<mediaforlisten> listMediaPart3 = listMediaPart("part3", id);
        ArrayList<mediaforlisten> listMediaPart4 = listMediaPart("part4", id);
        ArrayList<passages> getPassagesPart6 = getPassagesPart6(id);
        ArrayList<passages> getPassagesPart7 = getPassagesPart7(id);

        request.setAttribute("total", total);
        request.setAttribute("part1", part1);
        request.setAttribute("part2", part2);
        request.setAttribute("part3", part3);
        request.setAttribute("part4", part4);
        request.setAttribute("part5", part5);
        request.setAttribute("part6", part6);
        request.setAttribute("part7", part7);
        request.setAttribute("listMediaPart3", listMediaPart3);
        request.setAttribute("listMediaPart4", listMediaPart4);
        request.setAttribute("getPassagesPart6", getPassagesPart6);
        request.setAttribute("getPassagesPart7", getPassagesPart7);
        
        for (mediaforlisten object : listMediaPart3) {
            System.out.println(object);
        }
        
        for (mediaforlisten object : listMediaPart3) {
            System.out.println(object);
        }
        
        showView(request, response, "/view/test.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String id = request.getParameter("id");
//        ArrayList<Part1> part1 = (ArrayList<Part1>) new DB("part1", "Part1").where("test_id", "=", id).get();
//        ArrayList<Part2> part2 = (ArrayList<Part2>) new DB("part2", "Part2").where("test_id", "=", id).get();
//        ArrayList<Part3_4> part3 = (ArrayList<Part3_4>) new DB("part3", "Part3_4").where("test_id", "=", id).orderBy("media_id").get();
//        ArrayList<Part3_4> part4 = (ArrayList<Part3_4>) new DB("part4", "Part3_4").where("test_id", "=", id).orderBy("media_id").get();
//        ArrayList<Part5> part5 = (ArrayList<Part5>) new DB("part5", "Part5").where("test_id", "=", id).get();
//        ArrayList<Part6> part6 = (ArrayList<Part6>) new DB("part6", "Part6").where("test_id", "=", id).orderBy("passage_id").get();
//        ArrayList<Part7> part7 = (ArrayList<Part7>) new DB("part7", "Part7").where("test_id", "=", id).orderBy("passage_id").get();
//        
//        ArrayList<String> answerPart1 = listAnswer(part1);
//        ArrayList<String> answerPart2 = listAnswer(part2);
//        ArrayList<String> answerPart3 = listAnswer(part3);
//        ArrayList<String> answerPart4 = listAnswer(part4);
//        ArrayList<String> answerPart5 = listAnswer(part5);
//        ArrayList<String> answerPart6 = listAnswer(part6);
//        ArrayList<String> answerPart7 = listAnswer(part7);
//        
//        ArrayList<String> userAnswerPart1 = new ArrayList();
//        ArrayList<String> userAnswerPart2 = new ArrayList();
//        ArrayList<String> userAnswerPart3 = new ArrayList();
//        ArrayList<String> userAnswerPart4 = new ArrayList();
//        ArrayList<String> userAnswerPart5 = new ArrayList();
//        ArrayList<String> userAnswerPart6 = new ArrayList();
//        ArrayList<String> userAnswerPart7 = new ArrayList();
//        
//        for (Part1 p : part1) {
//            userAnswerPart1.add(request.getParameter("answer["+p.getId()+"][0]"));
//        }
//        for (Part2 p : part2) {
//            userAnswerPart2.add(request.getParameter("answer["+p.getId()+"][1]"));
//        }
//        for (Part3_4 p : part3) {
//            userAnswerPart3.add(request.getParameter("answer["+p.getId()+"][2]"));
//        }
//        for (Part3_4 p : part4) {
//            userAnswerPart4.add(request.getParameter("answer["+p.getId()+"][3]"));
//        }
//        for (Part5 p : part5) {
//            userAnswerPart5.add(request.getParameter("answer["+p.getId()+"][4]"));
//        }
//        for (Part6 p : part6) {
//            userAnswerPart6.add(request.getParameter("answer["+p.getId()+"][5]"));
//        }
//        for (Part7 p : part7) {
//            userAnswerPart7.add(request.getParameter("answer["+p.getId()+"][6]"));
//        }
        
        
    }
    
    protected String pathJson(HttpServletRequest request, String file) throws IOException{
            String appPath = request.getServletContext().getRealPath("");
            appPath = appPath.replace('\\', '/');
            String pathJson = null;
            if (appPath.endsWith("/")) {
                pathJson = appPath + SAVE_DIRECTORY_JSON + "/" + file;
            } else {
                pathJson = appPath + "/" + SAVE_DIRECTORY_JSON + "/" + file;
            }
            File fileSaveDir = new File(pathJson);
            if (!fileSaveDir.exists()) {
                fileSaveDir.createNewFile();
            }
            return pathJson;
         }
    
}
