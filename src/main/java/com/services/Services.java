package com.services;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Services {

	public static void sendMail(String email,int otp){
		final String username  = "mailfortesting809@gmail.com";
		final String password   = "Mailfortesting@809";
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("OTP For Forgot Password");
			message.setText("Dear User,"+"\n\nYour OTP For Forgot Password Is "+otp);
			Transport.send(message);
			System.out.println("Done");
 
		} catch (MessagingException e) {
			System.out.println(e);
		}		
	}
}
