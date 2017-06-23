package cn.edu.nuc.shop.service.interfaces;

import cn.edu.nuc.shop.entiry.User;

public interface UserService {
	
//	int regist(User user);
	
	int checkusername(String username);
	
//	User login(User user);

	User login(String username, String password);
}
