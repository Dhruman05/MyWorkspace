package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.MedlifeUser;
import com.dao.MedlifeUserDao;
import com.services.Services;

@WebServlet("/MedlifeUserController")
public class MedlifeUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		
		if(action.equalsIgnoreCase("sign up"))
		{
			MedlifeUser m=new MedlifeUser();
			if(request.getParameter("password").equals(request.getParameter("cpassword")))
			{	
				m.setUsertype(request.getParameter("usertype"));
				m.setUsername(request.getParameter("username"));
				m.setEmail(request.getParameter("email"));
				m.setMobile(request.getParameter("mobile"));
				m.setPassword(request.getParameter("password"));
				m.setCpassword(request.getParameter("cpassword"));
				m.setAddress(request.getParameter("address"));
				MedlifeUserDao.signupMedlifeUser(m);
				response.sendRedirect("login.jsp");
			}
			else
			{
				request.setAttribute("msg","Password and Confirm Password Is Not Matching");
				request.getRequestDispatcher("signup.jsp").forward(request, response);
				
			}
		}
		else if(action.equalsIgnoreCase("login"))
		{
			MedlifeUser m=MedlifeUserDao.checkLogin(request.getParameter("email"), request.getParameter("password"));
			if (m==null)
			{
				request.setAttribute("msg","Email or Password is incorrect");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else if(m.getUsertype().equalsIgnoreCase("patient"))
			{
				HttpSession session=request.getSession();
				session.setAttribute("m",m);
				request.getRequestDispatcher("index.jsp").forward(request,response);
			}
			else if(m.getUsertype().equalsIgnoreCase("doctor"))
			{
				HttpSession session=request.getSession();
				session.setAttribute("m",m);
				request.getRequestDispatcher("doctor_index.jsp").forward(request,response);
			}
		}
		else if(action.equalsIgnoreCase("change password"))
		{
			HttpSession session=request.getSession();
			MedlifeUser m = (MedlifeUser) session.getAttribute("m");
			if(m.getPassword().equals(request.getParameter("old_password")))
			{
				if(request.getParameter("new_password").equals(request.getParameter("cnew_password")))
						{
							MedlifeUserDao.change_password(m.getEmail(), request.getParameter("new_password"));
							response.sendRedirect("logout.jsp");
						}
				else{
					request.setAttribute("msg","New Password & Confirm New Password Does Not Matched!");
					request.getRequestDispatcher("change_password.jsp").forward(request, response);
				    }					
			}
			else 
			{
				request.setAttribute("msg","Old Password Is Incorrect");
				request.getRequestDispatcher("change_password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("send otp"))
		{
			String email=request.getParameter("email");
			boolean flage=MedlifeUserDao.checkEmail(email);
			if(flage==true)
			{
				int val =((int)(Math.random()*9000)+1000);
				System.out.println(val);
				Services.sendMail(email, val);
				request.setAttribute("otp", val);
				request.setAttribute("email",email);
				request.getRequestDispatcher("otp.jsp").forward(request, response);
			}
			else
			{	
				System.out.println("hi");
				request.setAttribute("msg", "email does not exist");
				request.getRequestDispatcher("forgot_password.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("verify otp"))
		{
			String email=request.getParameter("email");
			int otp=Integer.parseInt(request.getParameter("otp"));
			int uotp=Integer.parseInt(request.getParameter("uotp"));
			if(otp==uotp)
			{
				request.setAttribute("email",email);
				request.getRequestDispatcher("new_password.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("otp", otp);
				request.setAttribute("email",email );
				request.setAttribute("msg","Invalid OTP");
				request.getRequestDispatcher("otp.jsp").forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("update password"))
		{
			String email=request.getParameter("email");
			String new_password=request.getParameter("new_password");
			String cnew_password=request.getParameter("cnew_password");
			
			if(new_password.equals(cnew_password))
			{
				MedlifeUserDao.change_password(email, new_password);
				request.setAttribute("msg","password updated successfully");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("msg", "new and confirm new password does not matched");
				request.setAttribute("email",email);
				request.getRequestDispatcher("new_password.jsp").forward(request, response);
			}
		}
	}

}
