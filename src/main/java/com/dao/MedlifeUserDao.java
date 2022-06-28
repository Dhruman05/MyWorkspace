package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.MedlifeUser;
import com.util.MedlifeUtil;

public class MedlifeUserDao {

	public static void signupMedlifeUser(MedlifeUser m)
	{
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="insert into medlifeuser(usertype,username,email,mobile,password,address) values(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, m.getUsertype());
			pst.setString(2, m.getUsername());
			pst.setString(3, m.getEmail());
			pst.setString(4, m.getMobile());
			pst.setString(5, m.getPassword());
			pst.setString(6, m.getAddress());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static MedlifeUser checkLogin(String email,String password)
	{
		MedlifeUser m = null;
		try
		{
			Connection conn=MedlifeUtil.createConnection();
			String sql="select * from medlifeuser where email=? and password=?";
			PreparedStatement pst =conn.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2,password);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) 
			{
				m = new MedlifeUser();
				m.setId(rs.getInt("id"));
				m.setUsertype(rs.getString("usertype"));
				m.setUsername(rs.getString("username"));
				m.setEmail(rs.getString("email"));
				m.setMobile(rs.getString("mobile"));
				m.setPassword(rs.getString("password"));
				m.setAddress(rs.getString("address"));
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return m;	
	}
	
	public static void change_password(String email,String password)
	{
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="update medlifeuser set password=? where email=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,password);
			pst.setString(2, email);
			pst.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static boolean checkEmail(String email) 
	{
		boolean flage=false;
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="select * from medlifeuser where email=?";
			PreparedStatement pst =conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) 
			{
				flage=true;
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return flage;	
	}
	
		
	
	

}
