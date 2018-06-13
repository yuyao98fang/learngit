package com.mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mall.po.TbGoods;

@Controller
@RequestMapping(value="/admin")
public class AdminController {

	@RequestMapping(value="/login",method={RequestMethod.GET,RequestMethod.POST})
	public String login(Model model,String username,String password){
		if(!username.equals("admin")){
			model.addAttribute("message", "用户名错");
			return "login";
		}
		
		if(!password.equals("123456")){
			model.addAttribute("message", "密码错");
			return "login";
		}
		return "manager";
	}
	
	@RequestMapping(value="/close",method={RequestMethod.GET,RequestMethod.POST})
	public String close(){
		return "login";
	}
	
}
