<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.springmvc.controller.*,com.springmvc.model.*, conn.*, java.util.*" %> 
    <%
		WebManager web = new WebManager();
   	Member mem = (Member) session.getAttribute("member"); 
   	String user = (String) session.getAttribute("uname");
    WebController webc = new WebController();
   	Login log = (Login) session.getAttribute("getlogin");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
    <link rel="stylesheet" href="<c:url value="/css/tierlist.css"></c:url>">
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
					<!-- <div class="top-header-left">
						<div class="top-header-block" >
							<h1>TierList MJU</h1>
						</div>
						<div class="top-header-block">
							<a href="">Login /</a>
							<a href="">Register</a>
						</div>
					</div> -->
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
							<a><h2>  Hi  ${listmember.getFirstName() } ${listmember.getLastName() }</h2></a>				
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
										<li><a href="editTemplate?user=<%=user%>">แก้ไข</a></li>
										<li><a href="viewTemplate?user=<%=user%>">รายการของคุณ </a></li>
									</ul>
								</li>
								<li class="menu-parent">หมวดหมู่
									<ul class="sub-menu">
										<li><a href="viewCategory?user=<%=user%>">รายการทั้งหมด</a></li>
									</ul>
								</li>
								<li class="menu-parent">TierListของคุณ
											<ul class="sub-menu">
												<li><a href="createTierListpage?user=<%=user%>"> สร้าง TierList</a></li>
												<li><a href="">Grand-child</a></li>
											</ul>
										</li>
								<li> </li>
								<li><a href="editprofile?user=<%=user%>"><span class="glyphicon glyphicon-user"></span>Edit Profile</a></li>
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
		<!-- Header Close -->
		<div>
			<div class="textcenter">
				<h2>สร้าง Template ของคุณ </h2>
					<form action="createTemplate" method="post" enctype="multipart/form-data">
						<div>
							<h4 class="h4-20">ชื่อ Template ของคุณ</h4>
							<input type="text" placeholder="กรุณากรอกชื่อแม่แบบของคุณ" name="tempName" style="width: 40%;">
						</div>
						<div>
							<h4 class="h4-20">เลือกหมวดหมู่</h4>
							 <% int i = 0; %>				
							<select name="categorys" class="w40">
								<option>เลือกหมวดหมู่</option>
								<c:forEach var="cname" items="${ listcategory }">
									<% i++; %>
								<option value="${ cname.getCategoryID() }">${ cname.getCategoryName() } </option>
								</c:forEach>
							</select>
			    		</div>
			    		<div>
			    			<h4 class="h4-20">คำอธิบายของ Template</h4>
			    			<textarea style="width: 40%; font-size: 18px" name="description" placeholder="คำอธิบายที่ดีจะช่วยให้ผู้ใช้พบเทมเพลตของคุณในผลการค้นหา"></textarea>
			    		</div>
			    		
			    		<div >
			    			<h4 class="h4-20">เพิ่ม URL สำหรับเครดิตรูปภาพ:</h4>
			    			<input type="text"  name="credits"  style="width: 40%;" >
			    		</div>
			    		<div >
			    			<h4 class="h4-20">ข้อความป้ายชื่อแถวเริ่มต้น</h4>
			    			<div >
        						<input type="text" name="row_1" placeholder="S" style="width: 40%;" >	
    						</div>
    						<div >
        						<input type="text" name="row_2"  placeholder="A" style="width: 40%;" >
    						</div>
    						<div >
        						<input type="text" name="row_3"   placeholder="B" style="width: 40%;" >
    						</div>
    						<div >
        						<input type="text" name="row_4"  placeholder="C" style="width: 40%;" >
    						</div>
    						<div >
        						<input type="text" name="row_5"   placeholder="D" style="width: 40%;" >
    						</div>
    						<div >
        						<input name="mid"  type="hidden" value="${listmember.getMemberID() }">
    						</div>
			    		</div>
			    		<div >
			    			<h4 class="h4-20">เลือกรูปภาพปกเทมเพลต</h4>
			    			<input type="file"  name="tempPhoto" accept=".jpg, .jpeg, .png" style="width: 40%; display:inline;" >
			    		</div>
			    		<div>
			    			<h4 class="h4-20">อัปโหลดชุดรูปภาพสำหรับ TierList เทมเพลต</h4>
			    			<p class="w40">ขนาดและการวางแนวของภาพที่สม่ำเสมอ (สี่เหลี่ยมจัตุรัส แนวตั้ง หรือแนวนอน) จะทำงานได้ดีที่สุด คุณสามารถใช้เครื่องมือสร้างข้อความเป็นรูปภาพเพื่อเพิ่มป้ายกำกับข้อความบนรูปภาพของคุณได้อย่างรวดเร็ว ขนาดไฟล์ใหญ่อาจทำให้การอัปโหลดล้มเหลว ต้องมีรูปภาพอย่างน้อย 2 รูปเพื่อสร้างเทมเพลต</p>
			    			<input type="file"  name="file" accept=".jpg, .jpeg, .png" style="width: 40%; display:inline;" multiple/">
			    		</div>
					<div class="">
						<input class="" type="submit" name="submit" value="บันทึก">
					</div>
					<div id="bar">
							<i class="fas fa-bars"></i>
						</div>
						<div id="close">
							<i class="fas fa-times"></i>
						</div>
				</form>
			</div>
		</div>
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