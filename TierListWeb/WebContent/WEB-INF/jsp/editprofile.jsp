<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.springmvc.controller.*,com.springmvc.model.*, conn.*, java.util.*" %> 
    <%
		WebManager web = new WebManager();
    WebController webc = new WebController();
   	Member mem = (Member) session.getAttribute("member"); 
   	String user = (String) session.getAttribute("uname");
   	Login log = (Login) session.getAttribute("getlogin");
   %>
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
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
</head>
<body>
 <div id="logout" class="modal">
			  <form name = "frm1" class="modal-content animate container mb-4" action="logoutEnter" method="post">
			  	<div class="container">
			  	<h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Logout</h2>
			    	<div class="divider-custom">
			         <div class="divider-custom-line"></div>
			         <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
			         <div class="divider-custom-line"></div>
			     	</div>
				</div>
			    <div class="container mb-4 text-center">
			      <label for="uname"><b>Do you want to log out?</b></label>
			    </div>
			    <div class= "container text-center">
			    	<input class="btn btn-success" type="submit" value= "Logout">
			     	<input class="btn btn-danger" type="button" value= "Cancel" onclick="document.getElementById('logout').style.display='none'" >
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
						<div>
							<a><h2>  Hi  <%=mem.getFirstName()%> <%=mem.getLastName() %></h2></a>					
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
										<li><a href="createTemplate?user=<%=user%>">สร้าง</a></li>
										<li><a href="#">แก้ไข</a></li>
										<li><a href="#">รายการของคุณ</a>></li>
									</ul>
								</li>
								<li class="menu-parent">หมวดหมู่
									<ul class="sub-menu">
										<li><a href="#">รายการทั้งหมด</a></li>
									</ul>
								</li>
								<li><a href="viewTierList?user">TierList ของคุณ</a></li>
								<li> </li>
        						<li><a onclick="document.getElementById('logout').style.display='block'" href="#logout" ><span class="glyphicon glyphicon-log-in" ></span> Logout</a></li>
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
		<div class="page-heading">
			<div class="container">
				<h2>แก้ไขข้อมูลส่วนตัว</h2>
			
			  <form class="" action="editProfile" method="post">
				<div class="container">
					<div>
						<label><b>รูปโปรไฟล์ : </b></label>
						<img src="profile/<%=mem.getImage() %> " width="200" height="150"><br>
						&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
						<input type="file"  name="requestimage" value="<%=mem.getImage()%>>" accept=".jpg, .jpeg, .png" style="width: 40%; display:inline;"">
					</div><br>
					 <div>
						<label><b>รหัสผ่าน : </b></label>
						<input type="hidden" name="mid" value="<%=mem.getMemberID() %>">
						<input type="hidden" name="uname" value="<%=log.getUsername() %>">
			      		<input class="" type="text" placeholder="กรุณากรอกรหัสผ่านของคุณ" name="password" value="<%= log.getPassword()%>" style="width:50%;">
					</div><br>
					<div>
						<label><b>ชื่อจริง : </b></label>
			      		<input class="" type="text" placeholder="กรุณากรอกชื่อจริงของคุณ" name="fname"value="<%= mem.getFirstName() %>" style="width:50%;">
					</div><br>
					<div>
						<label><b>นามสกุล : </b></label>
			      		<input class="" type="text" placeholder="กรุณากรอกชื่อนามสกุลของคุณ" name="lname" value="<%= mem.getLastName() %>" style="width:50%;">
					</div><br>
					<div>
						<label><b>E-mail : </b></label>
			      		<input class="" type="text" placeholder="กรุณากรอกe-mailของคุณ" name="email" value="<%= mem.getEmail() %>" style="width:50%;">
					</div><br>
					
					<div><label ><b>เพศ  : </b></label>
					<select name="gender" value="<%= mem.getGender() %>" id="gender" style="width:50%;">
   					<c:if test="${ member.getGender() == 'man'}">
   						<option value="man" selected> Man</option>
   						<option value="woman"> Woman</option>
   					</c:if>
   					<c:if test="${ member.getGender() == 'woman '}">
   						<option value="man" > Man</option>
   						<option value="woman" selected> Woman</option>
   					</c:if>
  					</select>
			    	</div><br>
			    	 <div><label ><b>วันเกิด  : </b></label>
						<label for="birthday"></label>
  						<input type="date" id="birthday" name="birthday" value="<%= mem.getBirthday() %>" style="width:50%;">
			    	</div><br>
				</div>
			    <div class= "container">
			    	<input class="" type="submit"  name="submit" value="บันทึก">
			    </div>	
			  	</form>
		</div>
           </div>
		<!-- Learn courses End -->
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
	<script type="text/javascript">
     // Get the modal
        var modal = document.getElementById('logout');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
        
        </script>
</body>
</html>