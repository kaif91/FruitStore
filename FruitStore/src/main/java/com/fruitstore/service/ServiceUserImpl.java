package com.fruitstore.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fruitstore.vo.VoUser;
import com.fruitstore.hibernate.DaoUser;
import com.fruitstore.hibernate.User;


@Service
public class ServiceUserImpl implements ServiceUser{

    @Autowired
    private DaoUser daoUser;

    @Override
    public void save(User user) {
        daoUser.save(user);
    }

    @Override
    public void update(User user) {
        daoUser.update(user);
    }

    @Override
    public void delete(User user) {
        daoUser.delete(user);
    }

    @Override
    public void save(VoUser user) {
        daoUser.save(user);

    }

}