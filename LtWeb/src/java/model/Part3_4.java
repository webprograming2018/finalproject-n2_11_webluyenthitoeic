
package model;

import com.google.gson.Gson;
import config.DB;
import java.util.ArrayList;
import java.util.HashMap;


/**
 *
 * @author Admin
 */
public class Part3_4 {
    private int id;
    private String answer;
    private String question;
    private String A;
    private String B;
    private String C;
    private String D;
    private int level_id;
    private int media_id;
    private int test_id;
    private String script_answer;
    private String created_at;
    
    public Part3_4(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.answer = cols.get("answer");
        this.question = cols.get("question");
        this.A = cols.get("A");
        this.B = cols.get("B");
        this.C = cols.get("C");
        this.D = cols.get("D");
        this.script_answer = cols.get("script_answer");
        this.created_at = cols.get("created_at");
        this.media_id = Integer.parseInt(cols.get("media_id"));
        this.test_id = Integer.parseInt(cols.get("test_id"));
        this.level_id = Integer.parseInt(cols.get("level_id"));
        this.level_id = Integer.parseInt(cols.get("level_id"));
    }
    
    public static void main(String[] args) {
       ArrayList<Part3_4> listPart3_4 = (ArrayList<Part3_4>) new DB("part3", "Part3_4").select("id, answer").where("media_id", "=", "32").get();
            ArrayList<String> listAnswer = new ArrayList<>();
            for (Part3_4 part3_4 : listPart3_4) {
                listAnswer.add(part3_4.getAnswer());
            }
            String json = null;
            json = new Gson().toJson(listAnswer);
    }
    public static  ArrayList<String> listAnswer(ArrayList<Part3_4> get) {
        ArrayList<String> listAnswer = new ArrayList();
        for (Part3_4 part1 : get) {
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

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
        
    public static ArrayList<Level> levelPart(String table){
        ArrayList<Part3_4> part = (ArrayList<Part3_4>) new DB(table, "Part3_4").groupBy("level_id").get();
        ArrayList<Level> level = new ArrayList<>();
        for (Part3_4 p : part) {
            Level l = (Level) new DB("levels", "Level").where("id", "=", String.valueOf(p.getLevel_id())).get().get(0);
            level.add(l);
        }
        return level;
    }
    
}
