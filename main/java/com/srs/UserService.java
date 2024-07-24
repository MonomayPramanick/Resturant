package com.srs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    @Transactional
    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    @Transactional(readOnly = true)
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }
                                                                                    
    @Transactional(readOnly = true)
    public User getUserById(Long id) {
        return userDao.getUserById(id);
    }

    @Transactional
    public void deleteUser(Long id) {
        userDao.deleteUser(id);
    }

    @Transactional(readOnly = true)
    public boolean validateUser(String username, String password) {
        User user = userDao.findByUsername(username);
        return user != null && user.getPassword().equals(password);
    }

    @Transactional(readOnly = true)
    public User findByUsername(String username) {
        return userDao.findByUsername(username);
    }
}
