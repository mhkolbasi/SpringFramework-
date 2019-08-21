<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
  background-image: url("https://i.pinimg.com/originals/82/a6/6c/82a66c6b69a61564494a682e4fb0d704.jpg");
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #009999;">
  <span class="navbar-brand mb-0 h1" style="color:white;  font-family: 'Crimson Text', serif; ">Muhammed Hüseyin Kolbaşı</span>
 
</nav>
<div class="container" >


	<div class="row">
	 	<div class="col-md-3"></div>
	 	<div class="col-md-6 pt-xl-5">
	 		<h1 style="color: #004d4d; font-family: 'Crimson Text', serif;">Sign in</h1>
	 		<br/>
	<form action="login" method="post">
	<div class="form-group">
		 <div class="input-group">
	        <div class="input-group-prepend">
	            <div class="input-group-text"><i class="fa fa-envelope" style="color:#669999;"></i></div>
	        </div>
	        <input type="text" class="form-control"  placeholder="E-mail" name="umail" style="font-family: 'Crimson Text', serif; font-size: 18px;">
	    </div>
	 </div>  
	
	 <div class="form-group">
	    	<div class="input-group">
	        <div class="input-group-prepend">
	            <div class="input-group-text"><i class="fa fa-lock" style="color:#669999; font-size: 25px;"></i></div>
	        </div>
	        <input type="password" class="form-control"  placeholder="Password" name="upassword" style="font-family: 'Crimson Text', serif; font-size: 18px;">
	    </div>
	   </div>
	   
	    <button value="send" type="submit" class="btn btn-outline-secondary btn-md btn-block" style="font-size: 20px; font-family: 'Crimson Text', serif;">Login</button>
						
	</form>
	 	</div>
	 	<div class="col-md-3"></div>
	</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

</html>