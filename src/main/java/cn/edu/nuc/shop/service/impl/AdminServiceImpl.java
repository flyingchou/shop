package cn.edu.nuc.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.shop.dao.AdminMapper;
import cn.edu.nuc.shop.entiry.Admin;
import cn.edu.nuc.shop.service.interfaces.AdminService;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public Admin login(String username, String password) {
		
		Admin admin = adminMapper.findByAdmin(username, password);
		
		if( admin == null){
			throw new RuntimeException("用户名或密码不正确");
		}
		return admin;
	}

}
