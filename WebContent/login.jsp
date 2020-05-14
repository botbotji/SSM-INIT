<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>心悦电竞登录注册</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<div class="materialContainer">

	<div class="box">
	<form action="${pageContext.request.contextPath }/app/login" method="post">
		<div class="title">登录</div>
		<div class="input">
			<label for="name">用户名</label>
			<input type="text" name="username" id="name">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="pass">密码</label>
			<input type="password" name="password" id="pass">
			<span class="spin"></span>
		</div>
		<div class="button login">
			<button>
				<span>登录</span>
				<i class="fa fa-check"></i>
			</button>
		</div>
		<a href="javascript:" class="pass-forgot">忘记密码？</a>
		</form>
	</div>

	<div class="overbox">
		<div class="material-button alt-2">
			<span class="shape">
			</span>
		</div>
		<form action="${pageContext.request.contextPath }/app/register" method="post">
		<div class="title">注册</div>
		<div class="input">
			<label for="regname">用户名</label>
			<input type="text" name="username" id="regname">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="regpass">密码</label>
			<input type="password" name="password" id="regpass">
			<span class="spin"></span>
		</div>
		<div class="input">
			<label for="reregpass">确认密码</label>
			<input type="password" name="descy" id="reregpass">
			<span class="spin"></span>
		</div>
		<div class="button">
			<button>
				<span>注册</span>
			</button>
		</div>
		</form>
	</div>

</div>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/index.js"></script>

</body>
</html>