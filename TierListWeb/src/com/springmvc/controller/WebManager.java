package com.springmvc.controller;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.*;

import com.springmvc.model.*;

import conn.ConnectionDB;




public class WebManager {
	
	public String doLogin(Login login) {
		ConnectionDB condb = new ConnectionDB();
		Connection con = condb.getConnection();
		Statement stmi = null ;
		String result = "";
		try {
			stmi = con.createStatement();
			String sql = "Select username , password from login where username = '" + login.getUsername() + "'" ;
			
			
			ResultSet rs = stmi.executeQuery(sql);
			
			if(rs.next()) {
				String password = rs.getString(2);
				if(login.getPassword().equals(password)) {
					result = "login success" ;
				}else {
					result = "login fail" ;
				}
			}else {
				result = "not match username !!" ;
			}
			
			rs.close();
			stmi.close();
			con.close();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result ;
	}
	
public Member getMember(Login login) {
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	Statement stmi = null ;
	
	Member result = null ;
	
	try {
		stmi = con.createStatement();
		String sql = "SELECT memberID, birthday , email , firstName , gender, image,lastName, type from member where username = '" + login.getUsername() + "'" ;
		System.out.println(sql);
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			String memberID = rs.getString(1);
			String firstName = rs.getString(4);
			String lastName = rs.getString(7);
			String email = rs.getString(3);
			String image = rs.getString(6);
			String gender = rs.getString(5);
			Date birthday = rs.getDate(2);
			String type = rs.getString(8);
			System.out.println(type);
			result = new Member(memberID, firstName , lastName , email , image , gender, birthday , type);
			
		}
		
		rs.close();
		stmi.close();
		con.close();
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
	}

public Member getMemberID(String uname) {
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	Statement stmi = null ;
	
	Member result = null ;
	
	try {
		stmi = con.createStatement();
		String sql = "SELECT memberID, birthday , email , firstName , gender, image,lastName, type from member where username = '" + uname + "'" ;
		System.out.println(sql);
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			String memberID = rs.getString(1);
			String firstName = rs.getString(4);
			String lastName = rs.getString(7);
			String email = rs.getString(3);
			String image = rs.getString(6);
			String gender = rs.getString(5);
			Date birthday = rs.getDate(2);
			String type = rs.getString(8);
			System.out.println(type);
			result = new Member(memberID, firstName , lastName , email , image , gender, birthday , type);
			
		}
		
		rs.close();
		stmi.close();
		con.close();
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
	}	


public Login getLogin(Login login) {
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	Statement stmi = null ;
	
	Login result = null ;
	
	try {
		stmi = con.createStatement();
		String sql = "SELECT username, password from login where username = '" + login.getUsername() + "'" ;
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			String un = rs.getString(1);
			String pw = rs.getString(2);
			
			result = new Login(un, pw);

		}
		
		rs.close();
		stmi.close();
		con.close();
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}
public int editLogin( Login l){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	
	int result = 0 ;
	try {
		CallableStatement stmi = con.prepareCall("{call editLogin(?,?)}");
		stmi.setString(1 , l.getUsername());
		stmi.setString(2 , l.getPassword());
		
		stmi.execute();
		result = 1 ;
		
		stmi.close();
		con.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}

public int editProfile(Member m){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	SimpleDateFormat sd = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	
	
	int result = 0 ;
	try {
		CallableStatement stmi = con.prepareCall("{call editprofile(?,?,?,?,?,?,?)}");
		stmi.setString(1 , m.getMemberID());
		stmi.setString(2 , m.getFirstName());
		stmi.setString(3 , m.getLastName());
		stmi.setString(4 , m.getEmail());
		stmi.setString(5 , m.getImage());
		stmi.setString(6 , m.getGender());
		stmi.setString(7 , sd.format(m.getBirthday()));
		
		stmi.execute();
		result = 1 ;
		
		stmi.close();
		con.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}

public List<Member> getListmember()throws SQLException{
    List<Member> list = new ArrayList<>();
    ConnectionDB condb = new ConnectionDB();
    Connection conn = condb.getConnection();
    try {
        Statement stmt = conn.createStatement();
        String sql = "select  memberID, firstName, lastName , email , gender FROM member";
        ResultSet rs = stmt.executeQuery(sql);
        System.out.println(sql);

        while(rs.next()) {
            Member member = new Member();
            member.setMemberID(rs.getString(1));
            member.setFirstName(rs.getString(2));
            member.setLastName(rs.getString(3));
            member.setEmail(rs.getString(4));
            member.setGender(rs.getString(5));

            list.add(member);
        } 
    }catch(SQLException e) {
        e.printStackTrace();
    }
    conn.close();
    return list;
}

public int deleteMember(String mem ){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	int result = 0 ;
	try {
		CallableStatement stmi = con.prepareCall("{call deleteMember(?)}");
		stmi.setString(1 , mem);
		
		stmi.execute();
		result = 1 ;
		
		stmi.close();
		con.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}

public List<Categorys> getCategorys()throws SQLException{
    List<Categorys> listcategory = new ArrayList<>();
    ConnectionDB condb = new ConnectionDB();
    Connection conn = condb.getConnection();
    try {
        Statement stmt = conn.createStatement();
        String sql = "select  categoryID, categoryName, categoryImage FROM categorys";
        ResultSet rs = stmt.executeQuery(sql);
        System.out.println(sql);

        while(rs.next()) {
        	Categorys category = new Categorys();
        	
        	category.setCategoryID(rs.getString(1));
        	category.setCategoryName(rs.getString(2));
        	category.setCategoryImage(rs.getString(3));
        	
        	listcategory.add(category);
        } 
    }catch(SQLException e) {
        e.printStackTrace();
    }
    conn.close();
    
    return listcategory;
}

public CardBank getCardBank(CardBank cardbank) {
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	Statement stmi = null ;
	
	CardBank result = null ;
	
	try {
		stmi = con.createStatement();
		String sql = "SELECT cardbankID, image_1,image_2,image_3,image_4,image_5,image_6,image_7,image_8,image_9,image_10 from cardbank where cardbankID = '" + cardbank.getCardbankid() + "'" ;
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			String cardbankID = rs.getString(1);
			String image_1 = rs.getString(2);
			String image_2 = rs.getString(3);
			String image_3 = rs.getString(4);
			String image_4 = rs.getString(5);
			String image_5 = rs.getString(6);
			String image_6 = rs.getString(7);
			String image_7 = rs.getString(8);
			String image_8 = rs.getString(9);
			String image_9 = rs.getString(10);
			String image_10 = rs.getString(11);
			
			result = new CardBank(cardbankID,image_1, image_2,image_3,image_4,image_5,image_6,image_7,image_8,image_9,image_10);
		}
		
		rs.close();
		stmi.close();
		con.close();
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}
}
