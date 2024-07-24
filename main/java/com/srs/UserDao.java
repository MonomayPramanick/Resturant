package com.srs;

import java.util.List;

public interface UserDao {
    void saveUser(User user);
    List<User> getAllUsers();
    User getUserById(Long id);
    void deleteUser(Long id);
    User findByUsername(String username);  
}
