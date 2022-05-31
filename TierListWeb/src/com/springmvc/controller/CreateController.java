package com.springmvc.controller;

import java.io.*;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.*;




@Controller
public class CreateController {
	
	@RequestMapping(value= "/register", method=RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request , HttpSession session){
		ModelAndView mav = new ModelAndView("index");
		
		try {
            request.setCharacterEncoding("UTF-8");
            
            List<FileItem> data = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
            String path = request.getSession().getServletContext().getRealPath("/") + "resources/images/profile/";
            
            String username = data.get(0).getString("UTF-8");
            String password = data.get(1).getString("UTF-8");
            String fname = data.get(2).getString("UTF-8");
            String lname = data.get(3).getString("UTF-8");
            String email = data.get(4).getString("UTF-8");
            String gender = data.get(5).getString("UTF-8");
            String birthday = data.get(6).getString("UTF-8");
            String requestimage = data.get(7).getName();
            data.get(7).write(new File(path + File.separator+requestimage));
            
            System.out.println(path);
            System.out.println("show detail");
            System.out.println(username+"-"+password+"-"+fname+"-"+lname+"-"+email+"-"+gender+"-"+birthday+"-"+requestimage);

    		CreateManager cm = new CreateManager();
    		WebManager web = new WebManager();
    		Login login = new Login(username,password);
    		
    		int i = cm.getMaxMemberID();
    		int k =i+1 ;
    		String mid = String.valueOf(k);

    		Date date =  new Date();
            try {
                SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                date = dateFormat.parse(birthday);
            } catch (ParseException e) {
                e.printStackTrace();
            }

    		String mtype = "member";
    		Member mb = new Member(mid, fname, lname, email, requestimage,gender, date, mtype);
    		cm.insertLogin(login);
    		cm.insertMember(mb,login);
    		
    		
    		
        } catch (Exception e1) {
            e1.printStackTrace();
        }
		
		return mav;
	}
	
	@RequestMapping(value= "/createCategory", method=RequestMethod.POST)
	public ModelAndView createCategorys(HttpServletRequest request , HttpSession session){
		
		ModelAndView mav = new ModelAndView("categoryAdmin");
		
		try {
            request.setCharacterEncoding("UTF-8");
            
            List<FileItem> data = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
            String path = request.getSession().getServletContext().getRealPath("/") + "resources/images/categorys/";
            
            String categoryname = data.get(0).getString("UTF-8");
            String catePhoto = data.get(1).getName();
            data.get(1).write(new File(path + File.separator+catePhoto));
            
            System.out.println(path);
            System.out.println("show detail");
            System.out.println(categoryname+"-"+catePhoto);

    		CreateManager cm = new CreateManager();
    		
    		int i = cm.getMaxCategoryID();
    		int k =i+1 ;
    		String cateid = String.valueOf(k);
    		
    		Categorys category = new Categorys(cateid,categoryname,catePhoto);
    		
    		cm.insertCategorys(category);
    		
    		
    		
        } catch (Exception e1) {
            e1.printStackTrace();
        }
		
		return mav;
	}
	
	@RequestMapping(value= "/createTemplate" , method=RequestMethod.POST)
	public ModelAndView createTemplate(HttpServletRequest request , HttpSession session){
		
		ModelAndView mav = new ModelAndView("createTierList");
	
		
	if(ServletFileUpload.isMultipartContent(request)) {
		try {
            request.setCharacterEncoding("UTF-8");
            
            ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
            List<FileItem> data = sf.parseRequest(request);
            		
            String path = request.getSession().getServletContext().getRealPath("/") + "resources/images/template/";
            
            String tempName = data.get(0).getString();
            String cateId = data.get(1).getString();
            String description = data.get(2).getString();
            String credits = data.get(3).getString();
            String row_1 = data.get(4).getString();
            String row_2 = data.get(5).getString();
            String row_3 = data.get(6).getString();
            String row_4 = data.get(7).getString();
            String row_5 = data.get(8).getString();
            String memid = data.get(9).getString();
            String tempPhoto = data.get(10).getName();
            String image_1 = data.get(11).getName();
            String image_2 = data.get(12).getName();
            String image_3 = data.get(13).getName();
            String image_4 = data.get(14).getName();
            String image_5 = data.get(15).getName();
            String image_6 = data.get(16).getName();
            String image_7 = data.get(17).getName();
            String image_8 = data.get(18).getName();
            String image_9 = data.get(19).getName();
            String image_10 = data.get(20).getName();
            for(FileItem item : data){
            	if (!item.isFormField()) {
            		String fileName = item.getName();
            		File file = new File(path + File.separator+fileName);
            		item.write(file);
            	}
            }
            System.out.println("tempName : "+tempName);
            System.out.println("categorys : "+cateId);
            System.out.println("description : "+description);
            System.out.println("credits : "+credits);
            System.out.println("row_1 : "+row_1+" : row_2 : "+row_2+" : row_3 : "+row_3+" : row_4 : "+row_4+" : row_5 : "+row_5);
            System.out.println("memberID : "+memid);
            System.out.println("tempPhoto : "+tempPhoto);
            System.out.println("image : "+image_1+" : image : "+image_2+" : image : "+image_3+" : image : "+image_4+" : image : "+image_5);
            System.out.println("image : "+image_6+" : image : "+image_7+" : image : "+image_8+" : image : "+image_9+" : image : "+image_10);
            System.out.println("path : "+path);
			
			 // data.get(10).write(new File(path + File.separator+tempPhoto));
			 // data.get(11).write(new File(path + File.separator+setPhoto));
			  
			  CreateManager cm = new CreateManager(); 
			  WebManager web = new WebManager(); 
			  
			  int r = cm.getMaxRowLableID(); 
			  int row =r+1 ; 
			  String rowid = String.valueOf(row);
			  
			  int i = cm.getMaxTemplateID(); 
			  int k =i+1 ; 
			  String tmpid = String.valueOf(k);
			  
			  int cb = cm.getMaxCardBankID(); 
			  int cbid =cb+1 ; 
			  String cardbankid = String.valueOf(cbid);
			  
			  
			  RowLable rowlable = new RowLable(rowid,row_1,row_2,row_3,row_4,row_5);
			  Template temp = new Template( tmpid, tempName, description, tempPhoto,credits );
			  CardBank cardbank = new CardBank(cardbankid,image_1,image_2,image_3,image_4,image_5,image_6,image_7,image_8,image_9,image_10 );
			  
			  cm.insertCardBank(cardbank);
			  cm.insertRowLable(rowlable);
			  cm.insertTemplate(temp, memid, cateId, tmpid, cardbankid);
			  
			  CardBank cardbankimg = web.getCardBank(cardbank);
			  
			  mav.addObject("cardbank",cardbankimg);
			  
			  try { List<Categorys> listcategory = web.getCategorys();
			  
			  for(Categorys c :listcategory ) { 
				  System.out.println(c.getCategoryName()); 
			  }
			  mav.addObject("listcategory",listcategory);
			  
			  } catch (SQLException e) {
				  
			  e.printStackTrace(); }
			 
			  
    		
        } catch (Exception e1) {
            e1.printStackTrace();
        }
	}
		return mav;
	}

}
