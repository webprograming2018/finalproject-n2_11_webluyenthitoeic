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
public class passages {
    private int id;
    private String title;
    private  String content;

    public passages(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.title = cols.get("title");
        this.content = cols.get("content");
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public static ArrayList<passages> getPassagesPart6(String test_id){
        ArrayList<passages> pass = new ArrayList<passages>();
        ArrayList<Part6> listPart6 = (ArrayList<Part6>) new DB("part6", "Part6").where("test_id", "=", test_id).groupBy("passage_id").get();
        for (Part6 part6 : listPart6) {
            passages p = (passages) new DB("passages", "passages").where("id", "=", String.valueOf(part6.getPassage_id())).get().get(0);
            pass.add(p);
        }
        return pass;
    }
    
    public static ArrayList<passages> getPassagesPart7(String test_id){
        ArrayList<passages> pass = new ArrayList<passages>();
        ArrayList<Part7> listPart7 = (ArrayList<Part7>) new DB("part7", "Part7").where("test_id", "=", test_id).groupBy("passage_id").get();
        for (Part7 part7 : listPart7) {
            passages p = (passages) new DB("passages", "passages").where("id", "=", String.valueOf(part7.getPasages_id())).get().get(0);
            pass.add(p);
        }
        return pass;
    }
    
    public static  ArrayList<passages> listPassages(String level_id){
        ArrayList<passages> listPassages = (ArrayList<passages>) new DB("passages", "passages").select("passages.id , passages.content ").join("part6", "passages.id", "=", "part6.passage_id").where("part6.level_id", "=", level_id).groupBy("part6.passage_id").get(); 
        return listPassages;
    }
    
    public static  ArrayList<passages> listPassages7(String level_id){
        ArrayList<passages> listPassages = (ArrayList<passages>) new DB("passages", "passages").select("passages.id , passages.content ").join("part7", "passages.id", "=", "part7.passage_id").where("part7.level_id", "=", level_id).groupBy("part7.passage_id").get(); 
        return listPassages;
    }
    
    public static ArrayList<Part6> getPart6(String id){
        ArrayList<Part6> listPart6 = (ArrayList<Part6>) new DB("part6", "Part6").where("passage_id", "=", id).get();
        return listPart6;
    }
    
    public static ArrayList<Part7> getPart7(String id){
        ArrayList<Part7> listPart7 = (ArrayList<Part7>) new DB("part7", "Part7").where("passage_id", "=", id).get();
        return listPart7;
    }
}
