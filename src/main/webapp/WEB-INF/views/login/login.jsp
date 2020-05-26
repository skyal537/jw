<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Login</title>
<%@include file="/WEB-INF/inc/top_menu.jsp" %>

<style>
	body#LoginForm{ background-image:url("https://hdwallsource.com/img/2014/11/amazing-boulders-wallpaper-39146-40043-hd-wallpapers.jpg"); 
					background-repeat:no-repeat; 
					background-position:center; 
					background-size: cover; 
					padding:10px;}
	
	.form-heading { color:#fff; font-size:23px;}
	.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
	.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
	.login-form .form-control {
	  background: #f7f7f7 none repeat scroll 0 0;
	  border: 1px solid #d4d4d4;
	  border-radius: 4px;
	  font-size: 14px;
	  height: 50px;
	  line-height: 50px;
	}
	.main-div {
	  background: #fef7e578 none repeat scroll 0 0;
	  border-radius: 2px;
	  margin: 150px auto 30px;
	  max-width: 38%;
	  padding: 50px 70px 70px 71px;
	}
	
	.login-form .form-group {
	  margin-bottom:10px;
	}
	.login-form{ text-align:center;}
	.forgot a {
	  color: #777777;
	  font-size: 14px;
	  text-decoration: underline;
	}
	.login-form  .btn.btn-primary {
	  background: #f0ad4e none repeat scroll 0 0;
	  border-color: #f0ad4e;
	  color: #ffffff;
	  font-size: 20px;
	  width: 100%;
	  height: 50px;
	  line-height: 50px;
	  padding: 0;
	}
	.forgot {
	  text-align: left; margin-bottom:30px;
	}
	.botto-text {
	  color: #ffffff;
	  font-size: 14px;
	  margin: auto;
	}
	.login-form .btn.btn-primary.reset {
	  background: #ff9900 none repeat scroll 0 0;
	}
	.back { text-align: left; margin-top:10px;}
	.back a {color: #444444; font-size: 13px;text-decoration: none;}
	
	.panel { margin-bottom: 20px;
		    background-color: #fef7e500;
		    border: 1px solid transparent;
		    border-radius: 4px;
		    -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
		    box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
		}

</style>

</head>

<body id="LoginForm">
	<div class="container">
		<h1 class="form-heading"></h1>
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h3>Welcome to 파랑풍선</h3>
					<p>Please enter your ID and Password</p>
				</div>

				<form id="Login" action="${pageContext.request.contextPath }/login/login.do" method="post">
				
					<div class="form-group">
						<input type="text" class="form-control" id="inputEmail" name="userId" placeholder="ID">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="inputPassword" name="userPass" placeholder="Password">
					</div>
					<button type="submit" class="btn btn-primary">Login</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>