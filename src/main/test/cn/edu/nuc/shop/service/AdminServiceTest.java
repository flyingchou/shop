package cn.edu.nuc.shop.service;

import cn.edu.nuc.shop.entiry.Admin;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.nuc.shop.service.interfaces.AdminService;
import cn.edu.nuc.shop.util.IPTimeStamp;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-context.xml","classpath:spring-mvc.xml"})
public class AdminServiceTest {
	
	@Autowired
	private AdminService adminService;
	
	@Test
	public void login(){
		Admin admin = adminService.login("admin", "admin");
		System.out.println(admin);
		IPTimeStamp ip = new IPTimeStamp();
		System.out.println(ip.getTimeStamp());
	}
}
