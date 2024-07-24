package com.srs;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void saveUser(User user) {
        getCurrentSession().saveOrUpdate(user);
    }

    @Override
    public List<User> getAllUsers() {
        return getCurrentSession().createQuery("from User", User.class).list();
    }

    @Override
    public User getUserById(Long id) {
        return getCurrentSession().get(User.class, id);
    }

    @Override
    public void deleteUser(Long id) {
        User user = getUserById(id);
        if (user != null) {
            getCurrentSession().delete(user);
        }
    }

    @Override
    public User findByUsername(String username) {
        return getCurrentSession().createQuery("from User where username = :username", User.class)
                .setParameter("username", username)
                .uniqueResult();
    }
}
