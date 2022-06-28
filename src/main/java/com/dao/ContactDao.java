package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.Contact;
import com.util.MedlifeUtil;

public class ContactDao {

	public static void addContact(Contact c)
	{
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="insert into contact(name,email,message) value(?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setString(2, c.getEmail());
			pst.setString(3, c.getMessage());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
