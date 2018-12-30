
package model;

import java.io.Serializable;
import java.util.HashMap;

/**
 *
 * @author Admin
 */
public class Level implements Serializable{
    private String id;
    private String level;
    
    public Level(HashMap<String, String> cols) {
        this.id = cols.get("id");
        this.level = cols.get("level");
    }
    
    public Level(String level) {
        this.level = level;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    
    
}
