/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import config.DB;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class media {
    private int id;
    private String mediaFile;
    private String created_at;
    private String script_answer;

     public media(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.mediaFile = cols.get("mediaFile");
        this.script_answer = cols.get("script_answer");
        
    }
    
    public int getId() {
        return id;
    }

    public String getScript_answer() {
        return script_answer;
    }

    public void setScript_answer(String script_answer) {
        this.script_answer = script_answer;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMediaFile() {
        return mediaFile;
    }

    public void setMediaFile(String mediaFile) {
        this.mediaFile = mediaFile;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public static  String getMedia(int id) {
        mediaforlisten get = (mediaforlisten) new DB("mediaforlisten").where("id", "=", String.valueOf(id)).get().get(0);
        String mediaFile = get.getMediaFile();
        return mediaFile;
    }
   
}
