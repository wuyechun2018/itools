package itools.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import itools.dao.UserDao;
import itools.model.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	
	
	public List<User> list(){
		return userDao.getUserList();
	}

}
