<%@page import="com.bean.Appointment"%>
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

<!-- ***** Breadcumb Area Start from here ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/breadcumb3.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h5 class="breadcumb-title">Appointment</h5>
                        <p>Enter Required Details And Book Appointment</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Breadcumb Area End ***** -->
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<!-- ***** Book An Appoinment Area Start ***** -->
    <div class="medilife-book-an-appoinment-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="appointment-form-content">
                        <div class="row no-gutters align-items-center">
                            <div class="col-12 col-lg-9">
                                <div class="medilife-appointment-form">
                                
                                
                                <%
                                	Appointment ap=null;
                                	if(request.getAttribute("ap")!=null)
                                	{
                                		ap=(Appointment)request.getAttribute("ap");
                                	}
                                
                                %>
                                
                                    <form action="AppointmentController" method="post">
                                        <div class="row align-items-end">
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <select class="form-control" name="speciality" onchange="this.form.submit();">
                                                    <option>--Select Speciality--</option>
                                                    <option>Heart</option>
                                                    <option>Kidney</option>
                                                    <option>Bones & Muscles</option>
                                                    <option>Ear Nose Throat</option>
                                                    <option>Teeth</option>
                                                    <option>Cold & Fever</option>
                                                    <option>Regular Body checkup</option>
                                                    <option>Not Decidable</option>
                                                </select>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-3">
                                            	<div class="form-group">
                                                    <input type="text" class="form-control" name="doctor"  placeholder="Doctor" value="<%=ap.getDoctor()%>" readonly="readonly">
                       							</div>
                                            </div>
                                            <div class="col-12 col-md-5">
                                                <div class="form-group">
                                                    <input type="datetime-local" class="form-control" name="datetime"  placeholder="Date and Time">
                                                </div>
                                            </div>
                                            
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="name"  placeholder="Name">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="number" placeholder="Phone">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-4">
                                                <div class="form-group">
                                                    <input type="email" class="form-control border-top-0 border-right-0 border-left-0" name="email" placeholder="E-mail">
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-7">
                                                <div class="form-group mb-0">
                                                    <textarea name="message" class="form-control mb-0 border-top-0 border-right-0 border-left-0" cols="30" rows="10" placeholder="Message"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-12 col-md-5 mb-0">
                                                <div class="form-group mb-0">
                                                    <button type="submit" name="action" value="Make an Appointment" class="btn medilife-btn">Make an Appointment</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-12 col-lg-3">
                                <div class="medilife-contact-info">
                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info mb-30">
                                        <img src="img/icons/alarm-clock.png" alt="">
                                        <p>Mon - Sat 08:00 AM - 02:00 PM</p>
                                    </div>
                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info mb-30">
                                        <img src="img/icons/envelope.png" alt="">
                                        <p>0080 673 729 766 <br>contact@business.com</p>
                                    </div>
                                    <!-- Single Contact Info -->
                                    <div class="single-contact-info">
                                        <img src="img/icons/map-pin.png" alt="">
                                        <p>Lamas Str, no 14-18 <br>41770 Miami</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Book An Appoinment Area End ***** -->
    
     <!-- ***** Features Area Start ***** -->
    <div class="medilife-features-area section-padding-100">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-6">
                    <div class="features-content">
                        <h2>A new way to treat patients in a revolutionary facility</h2>
                        <p>Now taking appointments will become easy and fast.Patients can book appointment online from anywhere.Patients will receive confirmation email about time slot.Advance bookings can be done.Patients can pay their fees online.Benefits of online booking is fast and less time consuming.Contact less payment option is available.</p>
                        <a href="services.jsp" class="btn medilife-btn mt-50">View the services</a>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="features-thumbnail">
                        <img src="img/bg-img/medical1.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Features Area End ***** -->
    
     <!-- ***** Footer Area Start ***** -->
    <footer class="footer-area section-padding-100">
        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area">
                            <div class="footer-logo">
                                <img src="img/core-img/logo.png" alt="">
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer.</p>
                            <div class="footer-social-info">
                                <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area">
                            <div class="widget-title">
                                <h6>Latest News</h6>
                            </div>
                            <div class="widget-blog-post">
                                <!-- Single Blog Post -->
                                <div class="widget-single-blog-post d-flex">
                                    <div class="widget-post-thumbnail">
                                        <img src="img/blog-img/ln1.jpg" alt="">
                                    </div>
                                    <div class="widget-post-content">
                                        <a href="#">Better Health Care</a>
                                        <p>Dec 02, 2017</p>
                                    </div>
                                </div>
                                <!-- Single Blog Post -->
                                <div class="widget-single-blog-post d-flex">
                                    <div class="widget-post-thumbnail">
                                        <img src="img/blog-img/ln2.jpg" alt="">
                                    </div>
                                    <div class="widget-post-content">
                                        <a href="#">A new drug is tested</a>
                                        <p>Dec 02, 2017</p>
                                    </div>
                                </div>
                                <!-- Single Blog Post -->
                                <div class="widget-single-blog-post d-flex">
                                    <div class="widget-post-thumbnail">
                                        <img src="img/blog-img/ln3.jpg" alt="">
                                    </div>
                                    <div class="widget-post-content">
                                        <a href="#">Health department advice</a>
                                        <p>Dec 02, 2017</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area">
                            <div class="widget-title">
                                <h6>Contact Form</h6>
                            </div>
                            <div class="footer-contact-form">
                                <form action="#" method="post">
                                    <input type="text" class="form-control border-top-0 border-right-0 border-left-0" name="footer-name" id="footer-name" placeholder="Name">
                                    <input type="email" class="form-control border-top-0 border-right-0 border-left-0" name="footer-email" id="footer-email" placeholder="Email">
                                    <textarea name="message" class="form-control border-top-0 border-right-0 border-left-0" id="footerMessage" placeholder="Message"></textarea>
                                    <button type="submit" class="btn medilife-btn">Contact Us <span>+</span></button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-sm-6 col-xl-3">
                        <div class="footer-widget-area">
                            <div class="widget-title">
                                <h6>News Letter</h6>
                            </div>

                            <div class="footer-newsletter-area">
                                <form action="#">
                                    <input type="email" class="form-control border-0 mb-0" name="newsletterEmail" id="newsletterEmail" placeholder="Your Email Here">
                                    <button type="submit">Subscribe</button>
                                </form>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Footer Area -->
        <div class="bottom-footer-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="bottom-footer-content">
                            <!-- Copywrite Text -->
                            <div class="copywrite-text">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
<p>Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
</p>                      </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ***** Footer Area End ***** -->
</body>
</html>