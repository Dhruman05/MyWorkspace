package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bean.Appointment;
import com.dao.AppointmentDao;

@WebServlet("/AppointmentController")
public class AppointmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action="";
		
		String sp=request.getParameter("speciality");
		Appointment ap=AppointmentDao.getDataBySpeciality(sp);
		request.setAttribute("ap", ap);
		request.getRequestDispatcher("Appointment.jsp").forward(request, response);
		
		try {
			action = request.getParameter("action");
			if(action.equalsIgnoreCase("Make an Appointment")) {
				
				
				/*
				 * Appointment a = new Appointment();
				 * if(request.getParameter("speciality")!=null) {
				 * a.setSpeciality(request.getParameter("speciality"));
				 * a.setDatetime(request.getParameter("datetime"));
				 * a.setName(request.getParameter("name"));
				 * a.setEmail(request.getParameter("email"));
				 * a.setNumber(request.getParameter("number"));
				 * a.setMessage(request.getParameter("message"));
				 * a.setDoctor(request.getParameter("doctor"));
				 * AppointmentDao.bookAppointment(a); response.sendRedirect("index.jsp"); }
				 */
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
