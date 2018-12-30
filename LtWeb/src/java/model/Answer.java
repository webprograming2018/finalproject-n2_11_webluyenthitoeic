
package model;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class Answer implements Serializable{
    private String id;
    private String answer;
    private String question_id;
    private String status;
    private String script;

    public Answer( String answer, String question_id, String status, String script) {
        this.answer = answer;
        this.question_id = question_id;
        this.status = status;
        this.script = script;
    }

    public Answer() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(String question_id) {
        this.question_id = question_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getScript() {
        return script;
    }

    public void setScript(String script) {
        this.script = script;
    }
    
}
