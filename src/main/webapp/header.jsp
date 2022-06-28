<%@page import="com.bean.MedlifeUser"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Medilife - Health &amp; Medical Template | Home</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

</head>
<body>
 <!-- ***** Header Area Start ***** -->
    <header class="header-area">
        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">
                        <div class="h-100 d-md-flex justify-content-between align-items-center">
                            <p>Welcome to <span>Medifile</span> template</p>
                            <p>Opening Hours : Monday to Saturday - 8am to 10pm Contact : <span>+12-823-611-8721</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Header Area -->
        <div class="main-header-area" id="stickyHeader">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12 h-100">
                        <div class="main-menu h-100">
                            <nav class="navbar h-100 navbar-expand-lg">
                                <!-- Logo Area  -->
                                <a class="navbar-brand" href="index.jsp"><img src="img/core-img/logo.png" alt="Logo"></a>

                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#medilifeMenu" aria-controls="medilifeMenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                                <div class="collapse navbar-collapse" id="medilifeMenu">
                                
                                    <!-- Menu Area -->
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Account</a>
                                    <%
                           					try{
                           						MedlifeUser m=null;
                           						if(session.getAttribute("m")!=null)
                           							{
                           							m=(MedlifeUser)session.getAttribute("m");
                           	
                           			%>
                           				<ul class="dropdown-menu">
                             			 <li><a class="dropdown-item" href="logout.jsp">Logout(<%=m.getUsername() %>)</a></li>
                              			<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
                          			 </ul>
                           			<%
                           				}
                           				else
                           				{	
                           			%>
                          				 <ul class="dropdown-menu">
                             			 <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                             			 <li><a class="dropdown-item" href="signup.jsp">Sign Up</a></li>
                           			</ul>
                          		 	<%
                           				}
                           					}catch(Exception e){
                           					e.printStackTrace();
                          	 		}
                        
                           			%>
                                            
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="services.jsp">Services</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Appointment.jsp">Appointment</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="about-us.jsp">About Us</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.jsp">Contact</a>
                                        </li>
                                    </ul>
                                    <!-- Appointment Button -->
                                    <a href="#" class="btn medilife-appoint-btn ml-30">For <span>emergencies</span> Click here</a>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
</body>
</html>