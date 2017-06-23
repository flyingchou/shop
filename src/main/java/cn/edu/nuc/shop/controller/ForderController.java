package cn.edu.nuc.shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.nuc.shop.entiry.Forder;
import cn.edu.nuc.shop.service.interfaces.ForderService;
//订单提交管理
@Controller
@RequestMapping("/forder")
public class ForderController {

	@Autowired
	private ForderService forderMapper;
	
	@RequestMapping(value="/order",method=RequestMethod.GET)
	public String toorder(){
		return "redirect:/order.jsp";
	}
	
	@RequestMapping(value="/order",method=RequestMethod.POST)
	public String order(Forder forder,HttpSession session,HttpServletRequest request){
		
		Forder sessionforder = (Forder)session.getAttribute("forder");
		
		int count=0;
		try {
			count = forderMapper.insertOrder(forder,sessionforder);
			
		} catch (Exception e) {
			
			request.setAttribute("msg", "商品数量不足");
			
			return "forward:/msg.jsp";
		}
		
		 System.out.println(forder.getFid());
		 
		 System.out.println(count+"--------------------------");
		 
		 request.setAttribute("msg", "提交订单成功");
		 
		 request.removeAttribute("forder");
		 session.removeAttribute("forder");

		return "forward:/msg.jsp";
	}
	
}
