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
public class Part6 {
    private int id;
    private String answer;
    private String A;
    private String B;
    private String C;
    private String D;
    private int level_id;
    private int test_id;
    private int passage_id;
    private String script_answer;
    
    public Part6(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.answer = cols.get("answer");
        this.A = cols.get("A");
        this.B = cols.get("B");
        this.C = cols.get("C");
        this.D = cols.get("D");
        this.script_answer = cols.get("script_answer");
        this.passage_id = Integer.parseInt(cols.get("passage_id"));
        this.test_id = Integer.parseInt(cols.get("test_id"));
        this.level_id = Integer.parseInt(cols.get("level_id"));
    }
    
    public static  ArrayList<String> listAnswer(ArrayList<Part6> get) {
        ArrayList<String> listAnswer = new ArrayList();
        for (Part6 part1 : get) {
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

    public String getA() {
        return A;
    }

    public void setA(String A) {
        this.A = A;
    }

    public String getB() {
        return B;
    }

    public void setB(String B) {
        this.B = B;
    }

    public String getC() {
        return C;
    }

    public void setC(String C) {
        this.C = C;
    }

    public String getD() {
        return D;
    }

    public void setD(String D) {
        this.D = D;
    }

    public int getLevel_id() {
        return level_id;
    }

    public void setLevel_id(int level_id) {
        this.level_id = level_id;
    }

    public int getTest_id() {
        return test_id;
    }

    public void setTest_id(int test_id) {
        this.test_id = test_id;
    }

    public int getPassage_id() {
        return passage_id;
    }

    public void setPassage_id(int pasages_id) {
        this.passage_id = pasages_id;
    }

    public String getScript_answer() {
        return script_answer;
    }

    public void setScript_answer(String script_answer) {
        this.script_answer = script_answer;
    }
    public static ArrayList<Level> levelPart(){
        ArrayList<Part6> part = (ArrayList<Part6>) new DB("part6", "Part6").groupBy("level_id").get();
        ArrayList<Level> level = new ArrayList<>();
        for (Part6 p : part) {
            Level l = (Level) new DB("levels", "Level").where("id", "=", String.valueOf(p.getLevel_id())).get().get(0);
            level.add(l);
        }
        return level;
    }
}
