/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import model.User;
import config.DB;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import static model.User.checkAdmin;

/**
 *
 * @author Admin
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 5, // 5MB
        maxRequestSize = 1024 * 1024 * 5) // 5MB
public class Controller extends HttpServlet{
    public static int number = 0;
    public static final String SAVE_DIRECTORY = "templates/uploads";
    public static final String SAVE_DIRECTORY_JSON = "templates/js";
    static final String random = "thuyvutoeic1234567kjlafksdfks";
    static SecureRandom rnd = new SecureRandom();
        
    protected void showView(HttpServletRequest request, HttpServletResponse response, String url) {
        try {
            response.setContentType("text/html; charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean auth(HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (session.getAttribute("username") != null) {
            User user = (User) new DB("users", "User").where("name", "=", (String) session.getAttribute("username")).get().get(0);
            return checkAdmin(user.getRole());
        } 
//
//        Cookie[] cookies = request.getCookies();
//        if (cookies == null) {
//            return false;
//        }
//        
//        User user = (User) session.getAttribute("user");
//        if(user != null){
//            return checkAdmin(user.getRole());
//        }
        
        return false;
    }
    
    
    protected  String getFullSavePath(HttpServletRequest request) {
        // Đường dẫn tuyệt đối tới thư mục gốc của web app.
        String appPath = request.getServletContext().getRealPath("");
        appPath = appPath.replace('\\', '/');

        // Thư mục để save file tải lên.
        String fullSavePath = null;
        if (appPath.endsWith("/")) {
            fullSavePath = appPath + SAVE_DIRECTORY;
        } else {
            fullSavePath = appPath + "/" + SAVE_DIRECTORY;
        }
         
        // Tạo thư mục nếu nó không tồn tại.
        File fileSaveDir = new File(fullSavePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }

        return fullSavePath;
    }

     protected String uploadFileS(HttpServletRequest request) throws IOException, ServletException {
//        String fullSavePath = getFullSavePathMedia(request);
        String fullSavePath = null;
        // Danh mục các phần đã upload lên (Có thể là nhiều file).
        String filePath = "";
        for (Part part : request.getParts())
        {
            String fileName = extractFileName(part);
            if (fileName != null && fileName.length() > 0) {
                fullSavePath = getFullSavePath(request);
                
                filePath = fullSavePath + File.separator + fileName;
                File file = new File(filePath);
                while (file.exists()) {
                    filePath = fullSavePath + File.separator + fileName;
                    file = new File(filePath);
                }
                // Ghi vào file.
                part.write(filePath);
                filePath = fileName;
            }
        }
        return filePath;
    }
    protected ArrayList<String> uploadFile(HttpServletRequest request) throws IOException, ServletException {
//        String fullSavePath = getFullSavePathMedia(request);
        ArrayList<String> list = new ArrayList();
        String fullSavePath = null;
        // Danh mục các phần đã upload lên (Có thể là nhiều file).
        String filePath = "";
        for (Part part : request.getParts())
        {
            String fileName = extractFileName(part);
            System.out.println(fileName);
            if (fileName != null && fileName.length() > 0) {
                fullSavePath = getFullSavePath(request);
                
                filePath = fullSavePath + File.separator + fileName;
                File file = new File(filePath);
                while (file.exists()) {
                    filePath = fullSavePath + File.separator + fileName;
                    file = new File(filePath);
                }
                // Ghi vào file.
                part.write(filePath);
                filePath = fileName;
            }
            list.add(fileName);
        }
        return list;
    }

    protected String extractFileName(Part part) {
        // form-data; name="file"; filename="C:\file1.zip"
        // form-data; name="file"; filename="C:\Note\file2.zip"
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                // C:\file1.zip
                // C:\Note\file2.zip
                String clientFileName = s.substring(s.indexOf("=") + 2, s.length() - 1);
                clientFileName = clientFileName.replace("\\", "/");
                int i = clientFileName.lastIndexOf('/');
                // file1.zip
                // file2.zip
                return clientFileName.substring(i + 1);
            }
        }

        return null;
    }
    
    public String randomString(int len) {
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            sb.append(random.charAt(rnd.nextInt(random.length())));
        }
        return sb.toString();
    }
    
}
