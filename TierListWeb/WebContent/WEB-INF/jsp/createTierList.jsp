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
<title>Create Tier List </title>
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
     
     <script type="text/javascript">
     
		 function tierlistID(elementname){
			 
			console.log("5555555555555555555555555");
			var tierlist = document.getElementsByName("tierlist_"+""+elementname)[0];
			tierlist.id = Date.now();
			
			return Date.now();
		}
		 
	</script>
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
		<h2> Tier List : &nbsp; &nbsp; &nbsp; </h2>	
	</span>
	<a ><i class='far fa-grin-alt' style='font-size:36px;color:green'></i></a>
			&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;		
	<a ><i class='far fa-frown' style='font-size:36px;color:red'></i></a>
	
	
</div>

	<div  id="board" class="container"> 
		<div class="row"> 
			<div id="s" class="lable"> S</div>
		</div>
		<div id="s" class="row"> 
			<div id="a" class="lable">A</div>
		</div>
		<div class="row"> 
			<div id="b" class="lable">B</div>
		</div>
		<div class="row"> 
			<div id="c" class="lable">C</div>
		</div>
		<div class="row"> 
			<div id="d" class="lable">D</div>
		</div>
		<div class="row"> 
			<div id="" class="lable">E</div>
		</div>
		<div class="row"> 
			<div id="s" class="lable">F</div>
		</div>
	</div>
	<div class="container">
		<button id="addCard" class="button button1">เพิ่มรูป</button>
		
	</div>
	<div class="container">
		<h2>Card Bank</h2>
		
	</div>
	<div>
	
	</div>
   <div id="bank" class="container">
   	<div class="card" draggable="true" id="tierlistID('tierlist_1')" name="tierlist_1" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_1() }" style="pointer-events: none;"></div>
   		
   <div class="card" draggable="true" id="tierlistID('tierlist_2')" name="tierlist_2" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_2() }" style="pointer-events: none;"></div>
   
   <div class="card" draggable="true" id="tierlistID('tierlist_3')" name="tierlist_3" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_3() }" style="pointer-events: none;"></div>
  
   <div class="card" draggable="true" id="tierlistID('tierlist_4')" name="tierlist_4" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_4() }" style="pointer-events: none;"></div>
   
   <div class="card" draggable="true" id="tierlistID('tierlist_5')" name="tierlist_5" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_5() }" style="pointer-events: none;"></div>
   
   <div class="card" draggable="true" id="tierlistID('tierlist_6')" name="tierlist_6" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_6() }" style="pointer-events: none;"></div>
   		
 	<div class="card" draggable="true" id="tierlistID('tierlist_7')" name="tierlist_7" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_7() }" style="pointer-events: none;"></div>
   		
   	<div class="card" draggable="true" id="tierlistID('tierlist_8')" name="tierlist_8" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_8() }" style="pointer-events: none;"></div>	
   
   <div class="card" draggable="true" id="tierlistID('tierlist_9')" name="tierlist_9" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_9() }" style="pointer-events: none;"></div>
   		
	<div class="card" draggable="true" id="tierlistID('tierlist_10')" name="tierlist_10" ondragstart = "onDragStart()" ondragend = "onDragEnd()" onclick = "deleteCard()">
   		<img width="100" height="85" src="template/${ cardbank.getImage_10() }" style="pointer-events: none;"></div>

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
<script src="<c:url value="/js/rows.js" />"></script>
<script src="<c:url value="/js/cards.js" />"></script>
<script src="<c:url value="/js/bank.js" />"></script>

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
</html>