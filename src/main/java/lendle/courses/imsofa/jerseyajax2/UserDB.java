/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lendle.courses.imsofa.jerseyajax2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author lendle
 */
public class UserDB {
    private static Map<String, User> db=new HashMap<String, User>();
    static{
        db.put("lendle", new User("lendle", "I don't know", "test1@com.tw"));
        db.put("user1", new User("user1", "password1", "test1@com.tw"));
        db.put("user2", new User("user2", "password2", "test1@com.tw"));
    }
    
    public static List<User> getUsers(){
        return new ArrayList<>(db.values());
    }
    
    public static User getUser(String id){
        return db.get(id);
    }
    
    public static void addUser(User user){
        db.put(user.getId(), user);
    }
    
    public static void deleteUser(User user){
        db.remove(user.getId());
    }
}
