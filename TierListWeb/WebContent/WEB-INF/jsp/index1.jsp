<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ระบบแจ้งความประสงค์การใช้งบประมาณ </title>

<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"></c:url>">
<link rel="stylesheet" href="<c:url value="/fonts/thsarabunnew"></c:url>">
<link rel="stylesheet" href="<c:url value="/fonts/fontbody.css"></c:url>">
<script src="<c:url value="/js/jquery.min.js" />"></script>
<script src="<c:url value="/js/popper.min.js" />"></script>
<script src="<c:url value="/js/bootstrap.min.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/custom/login.css"></c:url>">
<link rel="stylesheet" href="<c:url value="/css/custom/customNav.css"></c:url>">
</head>
<div class="bs-example">
    <nav class="navbar bg-nav navbar-expand-md">
        <a href="#" class="navbar-brand"> ระบบแจ้งความประสงค์การใช้งบประมาณ </a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>

        
    </nav>
</div>
<div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <h2 align="center">เข้าสู่ระบบ </h2>
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="doLoginData" method="post">
                <span></span>
                <input type="text" id="username" name="username" class="form-control" placeholder="ชื่อผู้ใช้">
                <input type="password" id="salary" name="salary" class="form-control" placeholder="รหัสผ่าน" >
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">เข้าสู่ระบบ</button>
            </form><!-- /form -->
        </div><!-- /card-container -->
</div><!-- /container -->
</body>
</html>