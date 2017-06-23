package cn.edu.nuc.shop.controller;

import javax.servlet.http.HttpSession;

import cn.edu.nuc.shop.entiry.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import cn.edu.nuc.shop.service.interfaces.AdminService;
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value="/",method=RequestMethod.GET)
	public String index(HttpSession session){
		
		if(session.getAttribute("adminusername")==null ){
			
			session.setAttribute("msg", "用户还没有登录");
			
			return "login";
		}
		return "index";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String tologin(){
		return "login";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Admin admin, HttpSession session){
		try {
			Admin existadmin = adminService.login(admin.getUsername(), admin.getPassword());

			session.setAttribute("adminusername", existadmin.getUsername());
			
			session.removeAttribute("msg");
			
			return "redirect:/admin/";
		
		} catch (Exception e) {
			
			session.setAttribute("msg", "用户或密码错误");
		}
		return "redirect:/admin/login";
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(Admin admin,HttpSession session){

		session.removeAttribute("adminusername");
		
		return "redirect:/admin/login";
	}
}
