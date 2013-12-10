package com.fruitstore.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fruitstore.vo.VoUser;

@Repository("DaoUser")
public class DaoUserImpl implements DaoUser {

	private SessionFactory sessionFactory;
	private Session session;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
		session=sessionFactory.getCurrentSession();
	}
	@Override
	public void save(User user) {
			session.save(user);
	}

	@Override
	public void update(User user) {
		session.update(user);		
	}

	@Override
	public void delete(User user) {
		session.delete(user);		
	}
	
	@Override
	public void save(VoUser vouser)
	{
       User user=new User();
       user.setUsername(vouser.getUsername());
       user.setEmail(vouser.getAddress());
       user.setPassword(vouser.getPassword());
       user.setAddress(vouser.getAddress()+vouser.getCountry());
       this.save(user);
	}
}
