<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet"  href="${pageContext.request.contextPath}/layui/css/layui.css"/>
</head>
<body>
	<form class="layui-form" action="${pageContext.request.contextPath}/admin/update?id=${ad.id}" method="post" enctype="multipart/form-data">
  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-block">
      <input type="text" name="name" value="${ad.username}" autocomplete="off" class="layui-input" readonly="readonly">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-block">
      <input type="text" name="name" value="${ad.password}" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">描述</label>
    <div class="layui-input-block">
      <textarea name="desc"  class="layui-textarea">${ad.desc}</textarea>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <input type="submit" class="layui-btn" value="保存"/>
      <a class="layui-btn" href="${pageContext.request.contextPath}/admin/index">返回</a>
    </div>
  </div>
</form>
 <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
 <script>
	layui.use('form', function(){
	  var form = layui.form;
	  
	});
</script>
</body>
</html>