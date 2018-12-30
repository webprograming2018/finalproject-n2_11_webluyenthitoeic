
package model;

import config.DB;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class Part implements Serializable{
    private String id;
    private String level_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLevel_id() {
        return level_id;
    }

    public void setLevel_id(String level_id) {
        this.level_id = level_id;
    }

    public Part(HashMap<String, String> cols) {
        this.level_id = cols.get("level_id");
    }
    
    public static ArrayList<Level> levelPart(String table, String model){
        ArrayList<Part> part = (ArrayList<Part>) new DB(table, model).groupBy("level_id").get();
        ArrayList<Level> level = new ArrayList<>();
        for (Part p : part) {
            Level l = (Level) new DB("levels", "Level").where("id", "=", p.getLevel_id()).get().get(0);
            level.add(l);
        }
        return level;
    }
    
}
