package model;

import config.Database;
import config.DB;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

public class User  {
    protected int id;
    protected String name;
    protected String email;
    protected String password;
    protected String remember_token;
    protected String role;
    protected int status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public User() {
        super();
        this.name = "";
        this.email = "";
        this.password = "";
        this.remember_token = "";
        this.role = "customer";
        this.status = 0;
    }

    public User(HashMap<String, String> cols) {
        this.id = Integer.parseInt(cols.get("id"));
        this.name = cols.get("name");
        this.email = cols.get("email");
        this.password = cols.get("password");
        this.remember_token = cols.get("remember_token");
        this.role = cols.get("role");
        this.status = Integer.parseInt(cols.get("status"));
    }

    public User(String email, String password) {
        super();
        this.name = "";
        this.email = email;
        this.password = password;
        this.remember_token = "";
        this.role = "";
        this.status = 1;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRemember_token() {
        return remember_token;
    }

    public void setRemember_token(String remember_token) {
        this.remember_token = remember_token;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public static boolean checkAuth(String email, String password) {
        return new DB("users")
                .where("email", "=", email)
                .where("password", "=", password)
                .checkQuery();
    }
    
    public static boolean checkStatus(String email, String password) {
        return new DB("users")
                .where("email", "=", email)
                .where("password", "=", password)
                .where("status", "=", "1")
                .checkQuery();
    }

    public static boolean checkAuth(String remember) {
        return new DB("users")
                .where("remember_token", "=", remember)
                .where("status", "=", "1")
                .checkQuery();
    }

    public static User auth(String remember) {
        return (User) new DB("users", "User")
                .where("remember_token", "=", remember)
                .where("status", "=", "1")
                .get()
                .get(0);
    }

    public static boolean checkExist(String email) {
        return new DB("users")
                .where("email", "=", email)
                .checkQuery();
    }

    public String getRole() {
        return this.role;
    }

    public void setRole(String role) {
        this.role = role;
    }

  
    @Override
    public String toString() {
        return "User [id=" + id + ", name=" + name + ", password=" + password + "]";
    }

    
    public List getAllUser(HttpServletRequest request) {
        return new DB("users", "User")
                .orderBy("name")
                .paginate(request,
                        Integer.parseInt(new Database().get("paginate"))
                ).get();
    }


    public boolean blocked() {
        return this.status == 2;
    }
    
    public static boolean checkAdmin(String role){
        if(role.equals("admin"))
            return true;
        return false;
    }
}
