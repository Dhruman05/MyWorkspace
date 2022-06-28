package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Profile;
import com.util.MedlifeUtil;

public class ProfileDao {
	
	public static void addProfile(Profile p)
	{
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="insert into profile(name,experties,certification,exp,email) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, p.getName());
			pst.setString(2, p.getExperties());
			pst.setString(3, p.getCertification());
			pst.setString(4, p.getExp());
			pst.setString(5, p.getEmail());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Profile> getAllDetails()
	{
		List<Profile> list=new ArrayList<Profile>();
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="select * from profile";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				Profile p=new Profile();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setExperties(rs.getString("experties"));
				p.setCertification(rs.getString("certification"));
				p.setExp(rs.getString("exp"));
				p.setEmail(rs.getString("email"));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static Profile getAllDetailsById(int id)
	{
		Profile p=null;
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="select * from profile where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				p=new Profile();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setExperties(rs.getString("experties"));
				p.setCertification(rs.getString("certification"));
				p.setExp(rs.getString("exp"));
				p.setEmail(rs.getString("email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}
	public static void deleteStudent(int id)
	{
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="delete from profile where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void updateStudent(Profile p)
	{
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="update profile set name=?,experties=?,certification=?,exp=?,email=? where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, p.getName());
			pst.setString(2, p.getExperties());
			
			pst.setString(3, p.getCertification());
			pst.setString(4, p.getExp());
			pst.setString(5, p.getEmail());
			pst.setInt(6, p.getId());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
