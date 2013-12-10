package com.fruitstore.service;
import com.fruitstore.hibernate.User;
import com.fruitstore.vo.VoUser;
/**
 * 
 * @author kaif
 *
 */
public interface ServiceUser {

    void save(User user);
    void update(User user);
    void delete(User user);
    void save(VoUser user);


}