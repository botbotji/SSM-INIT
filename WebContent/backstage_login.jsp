<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录</title>
<link href="${pageContext.request.contextPath }/css/backstage/login.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<!-- -->
<style type="text/css">
	body{
	font-family: 'Droid Sans', sans-serif;
	font-size:100%;
	background: url(${pageContext.request.contextPath }/images/bg.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
}
</style>
<script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
</head>
<body>
<!-- contact-form -->	
<div class="message warning">
<div class="inset">
	<div class="login-head">
		<h1>登录</h1>
		 <div class="alert-close"> </div> 			
	</div>
		<form action="${pageContext.request.contextPath }/app/admin/login" method="post">
			<li>
				<input type="text" class="text" name="username" value="用户名"  onfocus="this.value = '';" onblur="if (this.value == '用户名') {this.value = 'Password';}"><a href="#" class=" icon user"></a>
			</li>
				<div class="clear"> </div>
			<li>
				<input type="password" name="password" value="密码" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码';}"> <a href="#" class="icon lock"></a>
			</li>
			<div class="clear"> </div>
			<div class="submit">
				<input type="submit"  value="登录" >
					<div class="clear">  </div>	
			</div>
				
		</form>
		</div>					
	</div>
	</div>
	<div class="clear"> </div>
<!--- footer --->
<div class="footer">
	<p>Copyright &copy; 2014.</p>
</div>

</body>
</html>