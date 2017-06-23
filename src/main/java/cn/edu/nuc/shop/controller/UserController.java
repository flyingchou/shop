package cn.edu.nuc.shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import cn.edu.nuc.shop.entiry.User;
import cn.edu.nuc.shop.service.interfaces.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String tologin(){
		return "redirect:/login.jsp";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,HttpSession session){
		try {
			User exituser = userService.login(user.getUsername(), user.getPassword());

			session.setAttribute("frontuser", exituser.getUsername());

			session.removeAttribute("msg");

			return "redirect:/product/frontlist";

		} catch (Exception e) {

			session.setAttribute("msg", "用户或密码错误");
		}
		return "forward:/login.jsp";
//		User exituser =  userService.login(user);
//
//		if(exituser ==null){
//
//			model.addAttribute("msg","用户名或密码错误");
//			return "forward:/login.jsp";
//		}
//		request.getSession()
//		.setAttribute("frontuser", exituser.getUsername());
//		request.getSession()
//		.setAttribute("frontuserId", exituser.getUid());
//
//		String path = (String) request.getSession().getAttribute("orderpath");
//
//		if(path!=null){

//			return "redirect:" + path;
//
//		}
//		return "redirect:/product/frontlist";
	}
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(User user,HttpSession session){

		session.removeAttribute("frontuser");

		return "redirect:/login.jsp";
	}
}