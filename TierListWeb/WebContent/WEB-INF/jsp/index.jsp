<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="com.springmvc.model.* , java.util.* , conn.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tier List</title>
    <link rel="stylesheet" href="<c:url value="/css/all.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/all.min.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/lightbox.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/flexslider.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/owl.carousel.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/owl.theme.default.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/jquery.rateyo.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/inner-page-style.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/style.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/css/login.css"></c:url>">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
</head>
<body>
<div id="login" class="modal">
 		<form name="frm1" class="modal-content animate" action="verifylogin" method="post">
   		<div class="imgcontainer">
     			<span onclick="document.getElementById('login').style.display='none'" class="close" title="Close Modal">&times;</span>
   				<!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
   				<h2>Login</h2>
 		</div>
 		<div class="container">
  				<label for="uname"><b>Username</b></label>
   					<input type="text" placeholder="Enter Username" name="uname" required>
				<label for="psw"><b>Password</b></label>
   					<input type="password" placeholder="Enter Password" name="psw" required>	
  				<label>
     				<input type="checkbox" checked="checked" name="remember"> Remember me
   				</label>
		 </div>
		 	<div class="container" style="text-align: center;">
				<button type="submit" >Login</button>
   				<button type="button"  onclick="document.getElementById('login').style.display='none'" class="cancelbtn">Cancel</button>
 			</div>
		</form>
	</div>
<div id="register" class="modal">
 		<form name="frm2" class="modal-content animate" action="register" method="post" enctype="multipart/form-data">
   		<div class="imgcontainer">
     			<span onclick="document.getElementById('register').style.display='none'" class="close" title="Close Modal">&times;</span>
   				<!-- <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
   				<h2>Register</h2>
 		</div>
		<div class="container text-center col col-sm-8">
				<div><label ><b>Username : </b></label>
					<input type="text" placeholder="กรุณากรอกชื่อผู้ใช้งานของคุณ" name="username" style="width:50%;">
			    </div><br>
			    <div><label ><b>Password : </b></label>
					<input type="text" placeholder="กรุณากรอกรหัสผ่านของคุณ" name="password" style="width:50%;">
			    </div><br>
			    <div><label ><b>First Name : </b></label>
					<input type="text" placeholder="กรุณากรอกชื่อจริงของคุณ" name="fname" style="width:50%;">
			    </div><br>
			    <div><label ><b>Last Name : </b></label>
					<input type="text" placeholder="กรุณากรอกชื่อนามสกุลของคุณ" name="lname" style="width:50%;">
			    </div><br>
			    <div><label ><b>E-mail  : </b></label>
					<input type="text" placeholder="กรุณากรอกอีเมลของคุณ" name="email" style="width:50%;">
			    </div><br>
			    <div><label ><b>Gender  : </b></label>
					<select name="gender" id="gender" style="width:50%;">
   						<option value="woman">Woman</option>
    					<option value="man" >Man</option>
    					<option value="not specified" >Not Specified</option>
  					</select>
			    </div><br>
			    <div><label ><b>Birthday  : </b></label>
					<label for="birthday">Birthday:</label>
  					<input type="date" id="birthday" name="birthday" style="width:50%;">
			    </div><br>
			    <div><label ><b>Image Profile : </b></label>
					<input type="file"  name="requestimage" accept=".jpg, .jpeg, .png" style="width:50%;">
			    </div><br>
			    
			</div>
		 	<div class="container" style="text-align: center;">
				<button type="submit" >Register</button>
   				<button type="button"  onclick="document.getElementById('login').style.display='none'" class="cancelbtn">Cancel</button>
 			</div>
		</form>
	</div>
<div id="page" class="site" itemscope itemtype="http://schema.org/LocalBusiness">
		<header class="site-header">
			<div class="top-header">
				<div class="container">
				<div>
					<a><h2>TierList MJU</h2></a>
				</div>
					<div class="top-header-right">
						<div class="social-block">
							<ul class="social-list">
								<li><a href=""><i class="fab fa-viber"></i></a></li>
								<li><a href=""><i class="fab fa-google-plus-g"></i></a></li>
								<li><a href=""><i class="fab fa-facebook-square"></i></a></li>
								<li><a href=""><i class="fab fa-facebook-messenger"></i></a></li>
								<li><a href=""><i class="fab fa-twitter"></i></a></li>
								<li><a href=""><i class="fab fa-skype"></i></a></li>
							</ul>
						</div> 
						<div class="login-block">
							<button onclick="document.getElementById('login').style.display='block'" style="width:auto;">Login</button>
							<button onclick="document.getElementById('register').style.display='block'" style="width:auto;">Register</button>
							
						</div>
					</div>
				</div>
			</div>
			<!-- Top header Close -->
			<div class="main-header">
				<div class="container">
					<div class="nav-wrap">
						<nav class="nav-desktop">
							<ul class="menu-list">
								<li><a href="#">Home</a></li>
								<li class="menu-parent">Template
									<ul class="sub-menu">
										<li><a href="viewTemplate">รายการทั้งหมด </a></li>
									</ul>
								</li>
								<li class="menu-parent">หมวดหมู่
									<ul class="sub-menu">
										<li><a href="viewCategory">รายการทั้งหมด</a></li>
									</ul>
								</li>
								<li><a href="createTierListpage">การจัดอันดับ</a></li>
							</ul>
						</nav>
						<div id="bar">
							<i class="fas fa-bars"></i>
						</div>
						<div id="close">
							<i class="fas fa-times"></i>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Banner Close -->
		<div class="page-heading">
			<div class="container">
				<h2>สร้าง Tier List สำหรับอะไรก็ได้</h2>	
			</div>
			<div class="container">
				<h2>Tier List คือระบบการจัดอันดับที่ให้คุณจัดอันดับอะไรก็ได้ในระดับตั้งแต่ดีที่สุดไปจนถึงแย่ที่สุด การใช้รายการระดับทำให้คุณสามารถจัดกลุ่มรายการลำดับที่คล้ายคลึงกัน และสร้างรายการระดับได้ง่ายและรวดเร็ว</h2>
			</div>
			<div class="main-header">
				<div class="container">
					<div class="nav-wrap">
						<nav class="nav-desktop">
							<ul class="menu-list">
								<li><a href="#">Featured Templates</a></li>
							</ul>
						</nav>
						<div id="bar">
							<i class="fas fa-bars"></i>
						</div>
						<div id="close">
							<i class="fas fa-times"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
 	<div class="learn-courses">
			<div class="container">
				<div class="courses">
					<div class="owl-one owl-carousel">
					
						<div class="box-wrap" itemprop="event" >
							<div class="img-wrap" itemprop="image"><img src="image/animal.png" alt="courses picture"></div>
								<a href="#" class="learn-desining-banner" itemprop="name"> ดูข้อมูลเพิ่มเติม >>></a>
							<div class="box-body" itemprop="description">
								<section itemprop="time">
									<p><span>ชื่อTierlist :</span> </p>
									<p><span>วันที่จัดทำ :</span> </p>
									<p><span>ผู้จัดทำ :</span> </p>
								</section>
							</div>
						</div>

						<div class="box-wrap" itemprop="event"  >
							<div class="img-wrap"  itemprop="image"><img src="image/animal.png" alt="courses picture"></div>
								<a href="#" class="learn-desining-banner" itemprop="name"> ดูข้อมูลเพิ่มเติม >>></a>
							<div class="box-body" itemprop="description">
								
								<section itemprop="time">
									<p><span>ชื่อTierlist :</span> </p>
									<p><span>วันที่จัดทำ :</span> </p>
									<p><span>ผู้จัดทำ :</span> </p>
								</section>
							</div>
						</div>

						<div class="box-wrap" itemprop="event"  >
							<div class="img-wrap"  itemprop="image"><img src="image/animal.png" alt="courses picture"></div>
								<a href="#" class="learn-desining-banner" itemprop="name"> ดูข้อมูลเพิ่มเติม >>></a>
							<div class="box-body" itemprop="description">
								
								<section itemprop="time">
									<p><span>ชื่อTierlist :</span> </p>
									<p><span>วันที่จัดทำ :</span> </p>
									<p><span>ผู้จัดทำ :</span> </p>
								</section>
							</div>
						</div>

						<div class="box-wrap" itemprop="event"  >
							<div class="img-wrap"  itemprop="image"><img src="image/animal.png" alt="courses picture"></div>
								<a href="#" class="learn-desining-banner" itemprop="name"> ดูข้อมูลเพิ่มเติม >>></a>
							<div class="box-body" itemprop="description">
								
								<section itemprop="time">
									<p><span>ชื่อTierlist :</span> </p>
									<p><span>วันที่จัดทำ :</span> </p>
									<p><span>ผู้จัดทำ :</span> </p>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Learn courses End -->
		<section class="whyUs-section">
			<div class="container">
				<div class="whyus-wrap">
					<h1></h1>
					<p itemprop="description">
					<a href="#" class="read-more-btn">read more</a>
				</div>
			</div>
		</section>
		<!-- Closed WhyUs section -->
		<section class="page-heading">
			<div class="container">
				<h2>gallery</h2>
			</div>
		</section>
		<div>
			<h1></h1>
			<h1></h1>
			<h1></h1>
		</div>
<footer style = " 
	text-align: center;
  	padding: 10px;
  	background-color: DarkSalmon;
  	color: white;">
  		<p>Author: Hege Refsnes<br>
  		<a href="mailto:hege@example.com">hege@example.com</a></p>
</footer>
	</div>
	<script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
	<script src="<c:url value="/js/lightbox.js" />"></script>
	<script src="<c:url value="/js/all.js" />"></script>
	<script src="<c:url value="/js/isotope.pkgd.min.js" />"></script>
	<script src="<c:url value="/js/owl.carousel.js" />"></script>
	<script src="<c:url value="/js/jquery.flexslider.js" />"></script>
	<script src="<c:url value="/js/jquery.rateyo.js" />"></script>
	<script src="<c:url value="/js/custom.js" />"></script>
	<script>
	// Get the modal
	var modal = document.getElementById('login');
	var modal2 = document.getElementById('register');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
    	if (event.target == modal) {
       	 modal.style.display = "none";
    }
}
	window.onclick = function(event) {
    	if (event.target == modal2) {
       	 modal.style.display = "none";
    }
}
</script>
	
	
</body>
</html>