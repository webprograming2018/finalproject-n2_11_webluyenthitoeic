
package model;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class ReadQuestion implements Serializable{
    private String id;
    private String paragrap;
    private String question;
    private String script_answer;
    private int level_id;
    private int part_id;
    private int grammar_id;

    public ReadQuestion(String paragrap, String question, String script_answer, int level_id, int part_id, int grammar_id) {
        this.paragrap = paragrap;
        this.question = question;
        this.script_answer = script_answer;
        this.level_id = level_id;
        this.part_id = part_id;
        this.grammar_id = grammar_id;
    }

    public ReadQuestion() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParagrap() {
        return paragrap;
    }

    public void setParagrap(String paragrap) {
        this.paragrap = paragrap;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getScript_answer() {
        return script_answer;
    }

    public void setScript_answer(String script_answer) {
        this.script_answer = script_answer;
    }

    public int getLevel_id() {
        return level_id;
    }

    public void setLevel_id(int level_id) {
        this.level_id = level_id;
    }

    public int getPart_id() {
        return part_id;
    }

    public void setPart_id(int part_id) {
        this.part_id = part_id;
    }

    public int getGrammar_id() {
        return grammar_id;
    }

    public void setGrammar_id(int grammar_id) {
        this.grammar_id = grammar_id;
    }
    
}
