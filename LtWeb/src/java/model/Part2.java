/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import com.google.gson.Gson;
import config.DB;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class Part2 {
    private int id;
    private String answer;
    private int level_id;
    private int media_id;
    private int test_id;
    private String script_answer;
    public Part2(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.answer = cols.get("answer");
        this.script_answer = cols.get("script_answer");
        this.media_id = Integer.parseInt(cols.get("media_id"));
        this.test_id = Integer.parseInt(cols.get("test_id"));
        this.level_id = Integer.parseInt(cols.get("level_id"));
    }

    public static  ArrayList<String> listAnswer(ArrayList<Part2> get) {
        ArrayList<String> listAnswer = new ArrayList();
        for (Part2 part1 : get) {
            listAnswer.add(part1.getAnswer());
        }
        return listAnswer;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getLevel_id() {
        return level_id;
    }

    public void setLevel_id(int level_id) {
        this.level_id = level_id;
    }

    public int getMedia_id() {
        return media_id;
    }

    public void setMedia_id(int media_id) {
        this.media_id = media_id;
    }

    public int getTest_id() {
        return test_id;
    }

    public void setTest_id(int test_id) {
        this.test_id = test_id;
    }

    public String getScript_answer() {
        return script_answer;
    }

    public void setScript_answer(String script_answer) {
        this.script_answer = script_answer;
    }
    public static ArrayList<Level> levelPart(){
        ArrayList<Part1> part = (ArrayList<Part1>) new DB("part1", "Part1").groupBy("level_id").get();
        ArrayList<Level> level = new ArrayList<>();
        for (Part1 p : part) {
            Level l = (Level) new DB("levels", "Level").where("id", "=", String.valueOf(p.getLevel_id())).get().get(0);
            level.add(l);
        }
        return level;
    }
    
}
