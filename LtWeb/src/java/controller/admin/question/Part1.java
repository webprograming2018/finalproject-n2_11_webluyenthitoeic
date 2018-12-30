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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Level;
import model.Test;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.annotation.MultipartConfig;
import model.mediaforlisten;
/**
 *
 * @author Admin
 */
@WebServlet(name = "Part1", urlPatterns = {"/admin/question/Part1"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 5MB
        maxRequestSize = 1024 * 1024 * 10) // 5MB
public class Part1 extends Controller {

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
        request.setAttribute("level", level);
        showView(request, response, "Part1.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        final int permitedSize = 80 * 1024 * 1024;
        MultipartRequest req = new MultipartRequest( request, getFullSavePath(request));
             
        String uploadFile = uploadFileS(request);
        System.out.println(uploadFile.length());

        int dem = Integer.parseInt(req.getParameter("dem").trim());
        for (int i = 0; i <= dem; i++) {
            String media = "media"+i;
            HashMap<String, String> listen = new HashMap();
            listen.put("mediaFile",(String)request.getParameter("media"+i));
           
            new DB("mediaforlisten").insert(listen);
            mediaforlisten mediaforlisten = (mediaforlisten) new DB("mediaforlisten", "mediaForListen").orderBy("created_at desc").limit(1).get().get(0);
            System.out.println(mediaforlisten.getMediaFile());

            HashMap<String, String> map  = new HashMap();
            map.put("media_id", String.valueOf(mediaforlisten.getId()));
            map.put("level_id", req.getParameter("level_id"+i));
            map.put("test_id", req.getParameter("test_id"+i));
            map.put("picture", req.getParameter("picture"+i));
            map.put("answer", req.getParameter("answer"+i));
            map.put("script_answer", req.getParameter("script_answer"+i));
            System.out.println("ok");

            new DB("Part1").insert(map);
        }
        
    }


}
