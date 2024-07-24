package com.srs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class Contactservice {
	   @Autowired
	    private ContactDao contactdao;
	   

	    @Transactional
	    public void saveUser(Problem prob) {
	       contactdao.saveUser(prob);
	    }


}
