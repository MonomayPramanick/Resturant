package com.srs;

import java.util.List;

public interface CartDao {
    void saveCart(Cart cart);

    User findByUsername(String username);
    User findingUser(String username);
    public List<Cart> getallitem() ;
}
