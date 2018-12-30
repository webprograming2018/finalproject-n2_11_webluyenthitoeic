
package model;

import config.DB;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class Part5 {
    private int id;
    private String answer;
    private String question;
    private String A;
    private String B;
    private String C;
    private String D;
    private int level_id;
    private int test_id;
    private String script_answer;
    
    public Part5(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.answer = cols.get("answer");
        this.question = cols.get("question");
        this.A = cols.get("A");
        this.B = cols.get("B");
        this.C = cols.get("C");
        this.D = cols.get("D");
        this.script_answer = cols.get("script_answer");
        this.test_id = Integer.parseInt(cols.get("test_id"));
        this.level_id = Integer.parseInt(cols.get("level_id"));
    }
    
    public static  ArrayList<String> listAnswer(ArrayList<Part5> get) {
        ArrayList<String> listAnswer = new ArrayList();
        for (Part5 part1 : get) {
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

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
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

    public String getScript_answer() {
        return script_answer;
    }

    public void setScript_answer(String script_answer) {
        this.script_answer = script_answer;
    }
    public static ArrayList<Level> levelPart(){
        ArrayList<Part5> part = (ArrayList<Part5>) new DB("part5", "Part5").groupBy("level_id").get();
        ArrayList<Level> level = new ArrayList<>();
        for (Part5 p : part) {
            Level l = (Level) new DB("levels", "Level").where("id", "=", String.valueOf(p.getLevel_id())).get().get(0);
            level.add(l);
        }
        return level;
    }
}
