package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.Appointment;
import com.util.MedlifeUtil;

public class AppointmentDao {

	public static void bookAppointment(Appointment a) {

		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="insert into appointment(speciality,doctor,datetime,name,email,number,message) values(?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, a.getSpeciality());
			pst.setString(2, a.getDoctor());
			pst.setString(3, a.getDatetime());
			pst.setString(4, a.getName());
			pst.setString(5, a.getEmail());
			pst.setString(6, a.getNumber());
			pst.setString(7, a.getMessage());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static Appointment getDataBySpeciality(String sp)
	{
		Appointment ap=null;
		try {
			Connection conn=MedlifeUtil.createConnection();
			String sql="select * from appointment where speciality=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,sp);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				ap=new Appointment();
				ap.setDoctor(rs.getString("doctor"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ap;
	}
}
