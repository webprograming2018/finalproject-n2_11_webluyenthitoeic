/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.question;

import config.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Part1;
import model.Part2;
import com.google.gson.Gson;

@WebServlet(name = "getPart", urlPatterns = {"/admin/question/getPart"})
public class getPart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String test = request.getParameter("test");
        String part = request.getParameter("part");
        ArrayList listPart = listPart(test, part);
        String json = null;
        json = new Gson().toJson(listPart);
        response.getWriter().write(json);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    public static ArrayList listPart(String id,String part){
        ArrayList listPart = (ArrayList) new DB(part, part)
                                        .where("test_id", "=", String.valueOf(id))
                                        .orderBy("created_at")
                                        .get();
        System.out.println();
             
        return listPart;
    }

    
}
