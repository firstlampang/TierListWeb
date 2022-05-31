package com.springmvc.controller;

import java.io.File;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.*;

@Controller
public class WebController {
	
	@RequestMapping(value= "/editprofile", method=RequestMethod.GET)
	public ModelAndView getmember(HttpServletRequest request , HttpSession session) {
		
		ModelAndView mav = new ModelAndView("editprofile");
		
		String user = request.getParameter("user");
		System.out.println(user);
		WebManager web = new WebManager();
		
		
		Login login = new Login();
		login.setUsername(user);
		
		Member member = web.getMember(login);
		Login log = web.getLogin(login);
		mav.addObject(member);
		
		/*
		 * System.out.println(log.getUsername()); System.out.println(log.getPassword());
		 */
		
		session.setAttribute("member", member);
		session.setAttribute("getlogin", log);
		
		return mav;
	}
	
	@RequestMapping(value= "/editProfile", method=RequestMethod.POST)
	public ModelAndView editProfile(HttpServletRequest request , HttpSession session) {
		
		ModelAndView mav = new ModelAndView("member");
		
		
		WebManager web = new WebManager();
		String uname = request.getParameter("uname");
		String mid = request.getParameter("mid");
		String requestimage = request.getParameter("requestimage");
		String pass = request.getParameter("password");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		Date date =  new Date();
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
            date = dateFormat.parse(birthday);
        } catch (ParseException e) {
            e.printStackTrace();
        }

		Login login = new Login();
		login.setUsername(uname);
		login.setPassword(pass);
		web.editLogin(login);
		
		Member member = new Member();
		member.setMemberID(mid);
		member.setImage(requestimage);
		member.setFirstName(fname);
		member.setLastName(lname);
		member.setEmail(email);
		member.setGender(gender);
		member.setBirthday(date);
		
		web.editProfile(member);
		
		return mav;
	}
	
//	@RequestMapping(value= "/managermember", method=RequestMethod.GET)
//	public ModelAndView Listmember(HttpServletRequest request , HttpSession session) {
//		
//		ModelAndView mav = new ModelAndView("managermember");
//		
//		return mav;
//	}
	
	@RequestMapping(value= "/managermember", method=RequestMethod.GET)
	public ModelAndView getListmember(HttpServletRequest request , HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		WebManager web = new WebManager();
		
		try {
			List<Member> member = web.getListmember();
			mav.addObject("listmem",member);
			
		} catch (SQLException e) {
				
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping(value= "/deletemem", method=RequestMethod.GET)
	public ModelAndView DeleteMember(HttpServletRequest request , HttpSession session) {
		
		ModelAndView mav = new ModelAndView("managermember");
		WebManager web = new WebManager();
		String memID = request.getParameter("memberID");
		web.deleteMember(memID);
		
		System.out.println("member =" +memID);
		try {
			List<Member> member = web.getListmember();
			mav.addObject("listmem",member);
			
		} catch (SQLException e) {
				
			e.printStackTrace();
		}
		
		
		return mav;
	}
	
	@RequestMapping(value= "/createTemplate", method=RequestMethod.GET)
	public ModelAndView createTemplate(HttpServletRequest request , HttpSession session) {
		
		ModelAndView mav = new ModelAndView("createTemplate");
		WebManager web = new WebManager();
		
		String uname = request.getParameter("user");
		Member mem = web.getMemberID(uname);
		mav.addObject("listmember", mem);
		
		try {
			List<Categorys> listcategory = web.getCategorys();
			for(Categorys c : listcategory ) {
				System.out.println(c.getCategoryName());
			}
			mav.addObject("listcategory",listcategory);
			
		} catch (SQLException e) {
				
			e.printStackTrace();
		}
		
		return mav;
	}
	
	@RequestMapping(value= "/viewCategory", method=RequestMethod.GET)
	public ModelAndView viewCategory(HttpServletRequest request , HttpSession session) {
		
		ModelAndView mav = new ModelAndView("categoryAdmin");
		WebManager web = new WebManager();
		try {
			List<Categorys> category = web.getCategorys();
			mav.addObject("listcate",category);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return mav;
	}
	
	@RequestMapping(value= "/createTierListpage", method=RequestMethod.GET)
	public ModelAndView ViewTierListPage(HttpServletRequest request , HttpSession session) {
		
		ModelAndView mav = new ModelAndView("createTierList");
		WebManager web = new WebManager();
		
		
		return mav;
		
	}
}
