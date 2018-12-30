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
public class Test {
    private int id;
    private String name;
    private String media; 
    private String title;
    private String created_at;

    public Test(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.name = cols.get("name");
        this.title = cols.get("title");
        this.media = cols.get("media");
        this.created_at = cols.get("created_at");
    }

    public int getId() {
        return id;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    
}
