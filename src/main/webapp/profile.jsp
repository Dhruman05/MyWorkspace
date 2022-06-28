<%@page import="java.util.List"%>
<%@page import="com.bean.Profile"%>
<%@page import="com.dao.ProfileDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ include file="header.jsp" %> 
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Medilife - Health &amp; Medical Template | Contact</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

</head>
<body>
<!-- ***** Breadcumb Area Start ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h5 class="breadcumb-title">Profile</h5>
                        <p>Update Your Profile Regularly</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Breadcumb Area End ***** -->
    
         <section class="medilife-contact-area section-padding-100">
        <div class="container">
            <div class="row">
     <!-- Contact Form Area -->
                <div class="col-12 col-lg-8">
                    <div class="contact-form">
                        <%
							List<Profile> list=ProfileDao.getAllDetails();
						%>
                        
 <form  method="post" action="ProfileController">
	<table cellspacing="10px" cellpadding="10px">
	<%
		for(Profile p:list)
		{
	%>
		<tr>
			<td>Id</td>
			<td><%=p.getId() %></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><%=p.getName() %></td>
		</tr>
		
		<tr>
			<td>Experties</td>
			<td><%=p.getExperties() %></td>
		</tr>
		<tr>
			<td>Certificates</td>
			<td><%=p.getCertification() %></td>
		<tr>
			<td>Years Of Experience</td>
			<td><%=p.getExp() %></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><%=p.getEmail() %></td>
		</tr>
		<tr> 
			<td>
			
			</td>
			<td>
				<input type="submit" name="action" value="Update Profile">
			</td>
			<td>
				<input type="submit" name="action" value="Delete Profile">
			</td>
		</tr>	
		<%
		}
		%>		 
	</table>
</form>
                    </div>
                </div>
                
                <div class="col-12 col-lg-4">
                    <div class="content-sidebar">
                    
                    </div>
                </div>
              </div>
          </div>
    </section>
<a href="ProfileForm.jsp" style="text-align:center">Create Profile</a>
</body>
</html>