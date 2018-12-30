/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import config.DB;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class mediaforlisten {
    private int id;
    private String mediaFile;
    private String created_at;
    private String script_answer;

    public mediaforlisten(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.mediaFile = cols.get("mediaFile");
        this.created_at = cols.get("created_at");
        this.script_answer = cols.get("script_answer");
    }

    
    public int getId() {
        return id;
    }

    public String getScript_answer() {
        return script_answer;
    }

    public void setScript_answer(String script_answer) {
        this.script_answer = script_answer;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMediaFile() {
        return mediaFile;
    }

    public void setMediaFile(String mediaFile) {
        this.mediaFile = mediaFile;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public static  mediaforlisten getMedia(int id) {
        mediaforlisten get = (mediaforlisten) new DB("mediaforlisten", "mediaforlisten").where("id", "=", String.valueOf(id)).get().get(0);
        return get;
    }
  
    public static  ArrayList<mediaforlisten> listMediaPart(String partName, String test_id){
        ArrayList<mediaforlisten> mediaFile = new ArrayList<>();
        ArrayList<Part3_4> list = (ArrayList<Part3_4>) new DB(partName, "Part3_4").where("test_id", "=", test_id).groupBy("media_id").get();
        for (Part3_4 part : list) {
            mediaforlisten media = (mediaforlisten) new DB("mediaforlisten", "mediaforlisten").where("id", "=",  String.valueOf(part.getMedia_id())).get().get(0);
            mediaFile.add(media);
        }
        return mediaFile;
    }
    
    public static  ArrayList<mediaforlisten> listMediaLevel(String tableName, String level_id){
        ArrayList<Part3_4> listPart = (ArrayList<Part3_4>) new DB(tableName, "part3_4").where("level_id", "=", level_id).groupBy("level_id").get();
        ArrayList<mediaforlisten> listMediaLevel = new ArrayList<>(); 
        return listMediaLevel;
    }
    
    public static  ArrayList<mediaforlisten> listMediaLevelPart(String level_id){
        ArrayList<mediaforlisten> listMediaLevel = (ArrayList<mediaforlisten>) new DB("mediaforlisten", "mediaforlisten").select("mediaforlisten.id , mediaforlisten.mediaFile , mediaforlisten.script_answer").join("part3", "mediaforlisten.id", "=", "part3.media_id").where("part3.level_id", "=", level_id).groupBy("part3.media_id").get(); 
        return listMediaLevel;
    }
    
    public static  ArrayList<mediaforlisten> listMediaLevelPart4(String level_id){
        ArrayList<mediaforlisten> listMediaLevel = (ArrayList<mediaforlisten>) new DB("mediaforlisten", "mediaforlisten").select("mediaforlisten.id , mediaforlisten.mediaFile , mediaforlisten.script_answer").join("part4", "mediaforlisten.id", "=", "part4.media_id").where("part4.level_id", "=", level_id).groupBy("part4.media_id").get(); 
        return listMediaLevel;
    }
    
    public static ArrayList<Part3_4> getPart(String tableName, String id){
        ArrayList<Part3_4> getPart = (ArrayList<Part3_4>) new DB(tableName, "Part3_4").where("media_id", "=", id).get();
        return getPart;
    }
    
    
//    public static void main(String[] args) {
//        ArrayList<Part3_4> get = (ArrayList<Part3_4>) new DB("part3", "Part3_4").where("level_id", "=", "1").get();
//        ArrayList<mediaforlisten> listMediaLevelPart = (ArrayList<mediaforlisten>) mediaforlisten.listMediaLevelPart(get) ;
//        for (mediaforlisten object : listMediaLevelPart) {
//            System.out.println(object.getScript_answer());
//        }
//        mediaforlisten Media = listMediaLevelPart.get(0);
//        ArrayList<Part3_4> getPart = mediaforlisten.getPart("part3", String.valueOf(Media.getId()));
//        for (Part3_4 part3_4 : getPart) {
//            System.out.println(part3_4.getAnswer());
//        }
//    }
}
