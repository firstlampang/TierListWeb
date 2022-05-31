package com.springmvc.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.*;




@Controller
public class LoginController {
	
	@RequestMapping(value="/verifylogin", method= RequestMethod.POST)
	public ModelAndView verifylogin(HttpServletRequest request , Model md , HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		String username = request.getParameter("uname");
		String password = request.getParameter("psw");

		Login login = new Login(username, password);
		WebManager web = new WebManager();
		Member mtype = web.getMember(login);
		
		String result = web.doLogin(login);
		String ad = "Admin";
		System.out.println(result);
		if("login success".equals(result) && mtype.getType().equals(ad)) {
			mav = new ModelAndView("admin");
			Member member = web.getMember(login);
			md.addAttribute("uname", login.getUsername());
			session.setAttribute("uname", login.getUsername());
			session.setAttribute("login", login);
			session.setAttribute("member", member);
			
			mav.addObject("listmember",member);
			
		}else if ("login success".equals(result) && !mtype.getType().equals(ad)) {
			mav = new ModelAndView("member");
			Member member = web.getMember(login);
			md.addAttribute("uname", login.getUsername());
			session.setAttribute("uname", login.getUsername());
			session.setAttribute("login", login);
			session.setAttribute("member", member);
			
			mav.addObject("listmember",member);
		
		}else {
			md.addAttribute("error_msg", result);
		}
		return mav;
	}
	
	@RequestMapping(value= "/logoutEnter", method=RequestMethod.POST)
	public ModelAndView logoutEnter(HttpServletRequest request , HttpSession session) {
	
		ModelAndView mav = new ModelAndView("index");
		session.removeAttribute("login");
		session.removeAttribute("member");
		
		return mav;
	}

}
