package cn.edu.nuc.shop.service.interfaces;

import cn.edu.nuc.shop.entiry.Admin;

public interface AdminService {

	
	/**
	 * 用户登录
	 * @param name 账号
	 * @param password 密码
	 * @return Admin
	 */
	Admin login(String name,String password);
}
