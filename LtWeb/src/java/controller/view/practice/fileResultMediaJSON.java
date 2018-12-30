
package controller.view.practice;

import java.util.List;


public class fileResultMediaJSON {
    private List id;
    private List answer;

    public fileResultMediaJSON(List id, List answer) {
        this.id = id;
        this.answer = answer;
    }

    public List getId() {
        return id;
    }

    public void setId(List id) {
        this.id = id;
    }

    public List getAnswer() {
        return answer;
    }

    public void setAnswer(List answer) {
        this.answer = answer;
    }

    
}
