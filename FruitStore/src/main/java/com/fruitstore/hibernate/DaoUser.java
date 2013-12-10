package com.fruitstore.hibernate;

import com.fruitstore.vo.VoUser;

public interface DaoUser {
	void save(User user);
	void update(User user);
	void delete(User user);
	void save(VoUser user);

}
