package com.srs;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDaoImpl implements CartDao {

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void saveCart(Cart cart) {
        getCurrentSession().saveOrUpdate(cart);
    }

    @Override
    public List<Cart> getallitem() {
        return getCurrentSession().createQuery("from Cart", Cart.class).list();
    }

    @Override
    public User findByUsername(String username) {
        return getCurrentSession().createQuery("from User where username = :username", User.class)
                .setParameter("username", username)
                .uniqueResult();
    }

    @Override
    public User findingUser(String username) {
        return getCurrentSession().createQuery("SELECT u FROM User u LEFT JOIN FETCH u.carts WHERE u.username = :username", User.class)
                .setParameter("username", username)
                .uniqueResult();
    }
}
