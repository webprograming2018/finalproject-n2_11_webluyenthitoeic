
package dao;

import model.User;
import config.DB;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/**
 *
 * @author Admin
 */
public class UserDAO {
    public boolean checkPass(){
        return true;
    }
    public static ArrayList<User> selectUser(String search){
        ArrayList<User> listUser = new ArrayList();
        listUser = (ArrayList<User>) new DB("users", "User")
                                                    .where("name", "like", "%" + search + "%")
                                                    .orderBy("created_at")
                                                    .get();
        for (User user : listUser) {
            System.out.println(user.getId());
        }
        return listUser;
    }
    public static User selectBy(String id){
        User user = new User();
        user = (User) new DB("users", "User")
                    .where("id", "=", id)
                    .get().get(0);
        return user;
    }
    public static  void update(Map map, String id){
        new DB("users", "User").update(map, id);
    }
//    public static void main(String[] args) {
//        Map<String, String> map = new HashMap();
//        User user= selectBy("1");
//        map.put("name", "phuongdieu");
//        map.put("email", "vuthithuy10197@gmail.com");
//    }
}
