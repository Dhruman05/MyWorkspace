package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bean.Profile;
import com.dao.ProfileDao;

@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("submit"))
		{
			Profile p = new Profile();
			p.setName(request.getParameter("name"));
			p.setExperties(request.getParameter("experties"));
			p.setCertification(request.getParameter("certification"));
			p.setExp(request.getParameter("exp"));
			p.setEmail(request.getParameter("email"));
			ProfileDao.addProfile(p);
			response.sendRedirect("profile.jsp");
		}
		else if(action.equalsIgnoreCase("Update Profile"))
		{
			Profile p=new Profile();
			p.setName(request.getParameter("name"));
			p.setExperties(request.getParameter("experties"));
			p.setCertification(request.getParameter("certification"));
			p.setExp(request.getParameter("exp"));
			p.setEmail(request.getParameter("email"));
			ProfileDao.updateStudent(p);
			response.sendRedirect("ProfileForm.jsp");
		}
		else if(action.equalsIgnoreCase("Delete Profile"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			ProfileDao.deleteStudent(id);
			response.sendRedirect("profile.jsp");
		}
	}
	

}
