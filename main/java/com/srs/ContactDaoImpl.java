package com.srs;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContactDaoImpl implements ContactDao {

	
	 @Autowired
	    private SessionFactory sessionFactory;

	    protected Session getCurrentSession() {
	        return sessionFactory.getCurrentSession();
	    }
	
	
	    @Override
	    public void saveUser(Problem prob) {
	        getCurrentSession().saveOrUpdate(prob);
	    }

}
