
package model;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class GrammarGiude implements Serializable {
    private String id;
    private String name;
    private String content;
    private int compare_grammer;
    private String status;

    public GrammarGiude( String name, String content, int compare_grammer, String status) {
        this.name = name;
        this.content = content;
        this.compare_grammer = compare_grammer;
        this.status = status;
    }

    public GrammarGiude() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCompare_grammer() {
        return compare_grammer;
    }

    public void setCompare_grammer(int compare_grammer) {
        this.compare_grammer = compare_grammer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
