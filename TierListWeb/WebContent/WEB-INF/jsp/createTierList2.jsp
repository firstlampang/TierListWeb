<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.springmvc.controller.*,com.springmvc.model.*, conn.*, java.util.*" %> 
 <%
		WebManager web = new WebManager();
   	Member mem = (Member) session.getAttribute("member"); 
   	String user = (String) session.getAttribute("uname");
   	
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Tier List</title>
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
     <link rel="stylesheet" type="text/css" href="<c:url value="/css/createtierlist.css"></c:url>">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.droptarget {
  float: left; 
  width: 100px; 
  height: 35px;
  margin: 15px;
  padding: 10px;
  border: 1px solid #aaaaaa;
}

#div1 {
  width: 550px;
  height: 70px;
  padding: 10px;
  border: 1px solid #aaaaaa;
}
</style>


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
										<li class="menu-parent">รายการของคุณ
											<ul class="sub-menu">
												<li><a href=""> Grand-child</a></li>
												<li><a href="">Grand-child</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li class="menu-parent">หมวดหมู่
									<ul class="sub-menu">
										<li><a href="viewCategory">รายการทั้งหมด</a></li>
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
<div class="container">
	<span class="headerContainer">
		<h2> Tier List TEST TEST : &nbsp; &nbsp; &nbsp; </h2>	
	</span>
	<a ><i class='far fa-grin-alt' style='font-size:36px;color:green'></i></a>
			&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;		
	<a ><i class='far fa-frown' style='font-size:36px;color:red'></i></a>
</div>

<div class="container">	
		<p>Drag the p element back and forth between the two rectangles:</p>
		
		<div id="div1" class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)" >
  			<p ondragstart="dragStart(event)" ondragend="dragEnd(event)" draggable="true" id="dragtarget">Drag me!</p>
		</div>
		<div id="div1" class="droptarget" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
			<p style="clear:both;"><strong>Note:</strong> drag events are not supported in Internet Explorer 8 and earlier versions or Safari 5.1 and earlier versions.</p>
			<p id="demo"></p>
		</div>			


   	<div class="container">
   		<button id="saveimage" class="button button1">บันทึก TierList </button>
   		<button id="saveimage" class="button button2" >บันทึก รูปภาพTierList</button>
   		<button id="saveimage" class="button button2" >รายงาน TierList</button>
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
    
</body>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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
     
     <script>
		function dragStart(event) {
  			event.dataTransfer.setData("Text", event.target.id);
  		document.getElementById("demo").innerHTML = "Started to drag the p element";
		}

		function dragEnd(event) {
  			document.getElementById("demo").innerHTML = "Finished dragging the p element.";
		}

		function allowDrop(event) {
  			event.preventDefault();
		}

		function drop(event) {
  			event.preventDefault();
  			var data = event.dataTransfer.getData("Text");
  			event.target.appendChild(document.getElementById(data));
	}
		
</script>
</html>