package com.springmvc.controller;

import java.sql.*;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.*;
import com.springmvc.model.*;

import com.springmvc.controller.*;
import conn.ConnectionDB;

public class CreateManager {	
	
public int insertLogin( Login l){
		ConnectionDB condb = new ConnectionDB();
		Connection con = condb.getConnection();
		
		int result = 0 ;
		try {
			CallableStatement stmi = con.prepareCall("{call insertLogin(?,?)}");
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
public int getMaxMemberID(){
		ConnectionDB condb = new ConnectionDB();
		Connection con = condb.getConnection();
		Statement stmi = null ;
		int result = 0 ;
		try {
			stmi = con.createStatement(); 
			String sql = "" ;
			
			sql = "SELECT max(memberID)  FROM member";
			
			ResultSet rs = stmi.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				
				result = id ;
			}
			rs.close();
			stmi.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result ;
}
	
public int insertMember(Member m, Login l){
		ConnectionDB condb = new ConnectionDB();
		Connection con = condb.getConnection();
		SimpleDateFormat sd = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		
		int result = 0 ;
		try {
			CallableStatement stmi = con.prepareCall("{call insertMember(?,?,?,?,?,?,?,?,?)}");
			stmi.setString(1, m.getMemberID());
			stmi.setString(2, l.getUsername());
			stmi.setString(3 , m.getFirstName());
			stmi.setString(4 , m.getLastName());
			stmi.setString(5 , m.getEmail());
			stmi.setString(6 , m.getImage());
			stmi.setString(7 , m.getGender());
			stmi.setString(8 ,  sd.format(m.getBirthday()));
			stmi.setString(9, m.getType());
			System.out.println(m.getMemberID());
			stmi.execute();
			result = 1 ;
			
			stmi.close();
			con.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result ;
	}

public int getMaxCategoryID(){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	Statement stmi = null ;
	int result = 0 ;
	try {
		stmi = con.createStatement(); 
		String sql = "" ;
		
		sql = "SELECT max(categoryID)  FROM categorys";
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			
			result = id ;
		}
		rs.close();
		stmi.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return result ;
}

public int insertCategorys( Categorys category){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	int result = 0 ;
	try {
		CallableStatement stmi = con.prepareCall("{call insertCategorys(?,?,?)}");
		stmi.setString(1 , category.getCategoryID());
		stmi.setString(2 , category.getCategoryName());
		stmi.setString(3 , category.getCategoryImage());
		
		stmi.execute();
		result = 1 ;
		
		stmi.close();
		con.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}

public int getMaxTemplateID(){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	Statement stmi = null ;
	int result = 0 ;
	try {
		stmi = con.createStatement(); 
		String sql = "" ;
		
		sql = "SELECT max(templateID)  FROM template";
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			
			result = id ;
		}
		rs.close();
		stmi.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return result ;
}

public int insertTemplate( Template template , String memid , String cid  , String rowid , String cardbankid){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	int result = 0 ;
	try {
		CallableStatement stmi = con.prepareCall("{call insertTemplate(?,?,?,?,?,?,?,?,?)}");
		stmi.setString(1 , template.getTemplateID());
		stmi.setString(2 , memid);
		stmi.setString(3 , cid);
		stmi.setString(4 , rowid);
		stmi.setString(5 , cardbankid);
		stmi.setString(6 , template.getTempName());
		stmi.setString(7 , template.getDescription());
		stmi.setString(8 , template.getTempPhoto());
		stmi.setString(9 , template.getCredits());
		
		stmi.execute();
		result = 1 ;
		
		stmi.close();
		con.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}

public int getMaxRowLableID(){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	Statement stmi = null ;
	int result = 0 ;
	try {
		stmi = con.createStatement(); 
		String sql = "" ;
		
		sql = "SELECT max(lableID)  FROM rowlable";
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			
			result = id ;
		}
		rs.close();
		stmi.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return result ;
}

public int insertRowLable( RowLable row ){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	int result = 0 ;
	try {
		CallableStatement stmi = con.prepareCall("{call insertRowLable(?,?,?,?,?,?)}");
		stmi.setString(1 , row.getLableID());
		stmi.setString(2 , row.getRow_1());
		stmi.setString(3 , row.getRow_2());
		stmi.setString(4 , row.getRow_3());
		stmi.setString(5 , row.getRow_4());
		stmi.setString(6 , row.getRow_5());
		
		stmi.execute();
		result = 1 ;
		
		stmi.close();
		con.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}

public int getMaxCardBankID(){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	Statement stmi = null ;
	int result = 0 ;
	try {
		stmi = con.createStatement(); 
		String sql = "" ;
		
		sql = "SELECT max(cardbankID)  FROM cardbank";
		
		ResultSet rs = stmi.executeQuery(sql);
		
		while (rs.next()) {
			int id = rs.getInt(1);
			
			result = id ;
		}
		rs.close();
		stmi.close();
		con.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return result ;
}

public int insertCardBank( CardBank cardbank ){
	ConnectionDB condb = new ConnectionDB();
	Connection con = condb.getConnection();
	
	int result = 0 ;
	try {
		CallableStatement stmi = con.prepareCall("{call insertCardBank(?,?,?,?,?,?,?,?,?,?,?)}");
		stmi.setString(1 , cardbank.getCardbankid());
		stmi.setString(2 , cardbank.getImage_1());
		stmi.setString(3 , cardbank.getImage_2());
		stmi.setString(4 , cardbank.getImage_3());
		stmi.setString(5 , cardbank.getImage_4());
		stmi.setString(6 , cardbank.getImage_5());
		stmi.setString(7 , cardbank.getImage_6());
		stmi.setString(8 , cardbank.getImage_7());
		stmi.setString(9 , cardbank.getImage_8());
		stmi.setString(10 , cardbank.getImage_9());
		stmi.setString(11 , cardbank.getImage_10());
		
		stmi.execute();
		result = 1 ;
		
		stmi.close();
		con.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	return result ;
}
}
