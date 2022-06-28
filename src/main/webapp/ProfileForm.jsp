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
                        <h5 class="breadcumb-title">My Profile</h5>
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
                        <h5 class="mb-50">Enter Details Here</h5>

                       <form action="ProfileController" method="post">
                        
                            <div class="form-group">
                                <input type="text" class="form-control" name="name" placeholder="Name">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" name="experties" placeholder="Experties" cols="30" rows="10"></textarea>
                            </div>
                             <div class="form-group">
                                <textarea class="form-control" name="certification" placeholder="Certificates" cols="30" rows="10"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="exp" placeholder="Years Of Experience"></input>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email"  placeholder="Email"></input>
                            </div>
                            <input type="submit" class="btn medilife-btn" name="action" value="Submit"></input>
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
</body>
</html>