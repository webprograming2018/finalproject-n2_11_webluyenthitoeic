
package config;

import model.User;

/**
 *
 * @author Admin
 */
public class UserService {
    public boolean checkLogin(User user){
        if("admin".equals(user.getName()) && "12345".equals(user.getPassword())){
            return true;
        }
        return false;
    }
}
