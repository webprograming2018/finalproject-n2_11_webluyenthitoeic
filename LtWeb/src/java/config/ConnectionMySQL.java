
package config;

import model.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ConnectionMySQL {
      
    public static Connection getConnection() throws Exception {
        String host = "localhost";
        String userName = "root";
        int port = 3306;
        String dbName = "web-toeic";
        String password = "";
        String sql = "jdbc:mysql://"+host+":"+port+"/"+dbName;
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection(sql, userName, password);
        if(conn!=null)
            System.out.println("thanh cong");
        return conn;
    }
    public static void main(String[] args) throws Exception {
        ConnectionMySQL.getConnection();
        User user =(User)  new DB("users", "User").where("email", "=", "vuthithuy10197@gmail.com").get().get(0);
        System.out.println(user.getName());
    }
  
    
    
}
