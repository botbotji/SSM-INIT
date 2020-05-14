<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>        
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>员工列表</title>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/layui/css/layui.css"/>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/backstage/employee_list.css"/>
	</head>
	<body>
	<div class="layui-form-item">
 		<form action="${pageContext.request.contextPath}/app/employee/findAll?pageSize=${pageModel.pageSize}" method="post">
		  <div class="layui-inline">
		    <label class="layui-form-label">昵称</label>
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="text" value="${condition.nickname}" name="nickname" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-inline">
		    <label class="layui-form-label">真实姓名</label>
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="text" value="${condition.name}" name="name" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-inline">
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="submit" class="layui-btn" value="搜索">
		    </div>
		  </div>
  		</form>
	</div>
	<a id="add-btn" class="layui-btn" href="#"><i class="layui-icon layui-icon-add-circle-fine"></i>添加</a>
		<table class="layui-table">
			<thead>
				<tr>
					<th>序号</th>
					<th>昵称</th>
					<th>真实姓名</th>
					<th>手机号</th>
					<th>性别</th>
					<th>年龄</th>
					<th>状态</th>
					<th>价格</th>
					<th>头像</th>
					<th>地址</th>
					<th>服务介绍</th>
					<th>描述</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${employeeList}"  var="employee">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.nickname}</td>
					<td>${employee.name}</td>
					<td>${employee.phone}</td>
					<td>${employee.sex}</td>
					<td>${employee.age}</td>
					<td>${employee.state}</td>
					<td>${employee.price}</td>
					<td>${employee.headImg}<img src="${pageContext.request.contextPath }/upload/${employee.headImg}"></td>
					<td>${employee.home}</td>
					<td>${employee.serveup}</td>
					<td>${employee.descy}</td>
					<td>
						<a data-id="${employee.id}" class="layui-btn layui-btn-normal edit-btn" href="javascript:;"><i class="layui-icon layui-icon-search"></i> 详情</a>
						<a data-id="${employee.id}" class="layui-btn layui-btn-danger del-btn" href="javascript:;"><i class="layui-icon layui-icon-close-fill"></i> 删除</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<!-- 分页  -->
		<div id="page-content" class="margin:auto"></div>
	</body>
	<!-- 添加弹出层 -->
	<div id="employee-add-content">
		<form class="layui-form" lay-filter="add-form" enctype="multipart/form-data">
		  <div class="layui-form-item">
		    <label class="layui-form-label">昵称</label>
		    <div class="layui-input-block">
		      <input type="text" name="nickname" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">真实姓名</label>
		    <div class="layui-input-block">
		      <input type="text" name="name" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   
		   <div class="layui-form-item">
		    <label class="layui-form-label">手机号</label>
		    <div class="layui-input-block">
		      <input type="text" name="phone" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="employee-form-item">
		    <label class="layui-form-label">密码</label>
		    <div class="layui-input-block">
		      <input type="text" name="password" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">性别</label>
		    <div class="layui-input-block">
		      <input type="text" name="sex" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="employee-form-item">
		    <label class="layui-form-label">年龄</label>
		    <div class="layui-input-block">
		      <input type="text" name="age" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">状态</label>
		    <div class="layui-input-block">
		      <input type="text" name="state" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">价格</label>
		    <div class="layui-input-block">
		      <input type="text" name="price" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">头像</label>
		    	<div class="layui-upload">
  				<button type="button" class="layui-btn" id="txt">保存图片</button>
  				<div class="layui-upload-list">
    				<img class="layui-upload-img" class="demo1" style="height: 50px;width: 200px;"/>
    				<p id="demoText"></p>
  		 		</div>
			</div>  
		  </div>
		    <div class="layui-form-item">
		    <label class="layui-form-label">地址</label>
		    <div class="layui-input-block">
		      <input type="text" name="home" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		    <div class="layui-form-item">
		    <label class="layui-form-label">服务介绍</label>
		    <div class="layui-input-block">
		      <input type="text" name="serveup" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">描述</label>
		    <div class="layui-input-block">
		      <textarea name="descy"  class="layui-textarea"></textarea>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button lay-submit class="layui-btn" lay-filter="add-form">保存</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		</form>
	</div>
	<!-- 详情弹出层  -->
	<div id="employee-edit-content">
		<form class="layui-form" lay-filter="edit-form" enctype="application/x-www-form-urlencoded">
		  <div class="layui-form-item">
		    <label class="layui-form-label">昵称</label>
		    <div class="layui-input-block">
		   	 <input type="text" name="id" value="" style="display:none">
		      <input type="text" name="nickname" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  
		   <div class="layui-form-item">
		    <label class="layui-form-label">真实姓名</label>
		    <div class="layui-input-block">
		      <input type="text" name="name" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label">手机号</label>
		    <div class="layui-input-block">
		      	<input type="text" name="phone" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  
		   <div class="employee-form-item">
		    <label class="layui-form-label">密码</label>
		    <div class="layui-input-block">
		      <input type="text" name="password" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">性别</label>
		    <div class="layui-input-block">
		      <input type="text" name="sex" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="employee-form-item">
		    <label class="layui-form-label">年龄</label>
		    <div class="layui-input-block">
		      <input type="text" name="age" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">状态</label>
		    <div class="layui-input-block">
		      <input type="text" name="state" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">价格</label>
		    <div class="layui-input-block">
		      <input type="text" name="price" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		 	   <div class="layui-form-item">
		    <label class="layui-form-label">头像</label>
		    	<div class="layui-upload">
  				<button type="button" class="layui-btn" id="test">修改图片</button>
  				<div class="layui-upload-list">
    				<img class="layui-upload-img" class="demo1" style="height: 50px;width: 200px;"/>
    				<p id="demoText"></p>
  		 		</div>
			</div>  
		  </div>
		    <div class="layui-form-item">
		    <label class="layui-form-label">地址</label>
		    <div class="layui-input-block">
		      <input type="text" name="home" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		    <div class="layui-form-item">
		    <label class="layui-form-label">服务介绍</label>
		    <div class="layui-input-block">
		      <input type="text" name="serveup" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  
		  
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">描述</label>
		    <div class="layui-input-block">
		      <textarea name="descy"  class="layui-textarea"></textarea>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button lay-submit class="layui-btn" lay-filter="edit-form">保存</button>
		    </div>
		  </div>
		</form>
	</div>
	
	<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
		<script src="${pageContext.request.contextPath}/js/backstage/employee_list.js"></script>
		<script>
		 contextPath = "${pageContext.request.contextPath}";
			layui.use('laypage', function(){
			  var laypage = layui.laypage;
			  
			  //执行一个laypage实例
			  laypage.render({
			     elem:'page-content' //注意，这里的 test1 是 ID，不用加 # 号
			    ,count: ${pageModel.total} //数据总数，从服务端得到
			    ,limit: ${pageModel.pageSize}
			    ,limits: [2,5,10]
			    ,curr:${pageModel.currPage}
			    ,groups:3
			    ,layout:['prev', 'page', 'next','count','limit']
			    ,jump: function(obj, first){
			        //obj包含了当前分页的所有参数，比如：
			       	//obj.curr得到当前页，以便向服务端请求对应页的数据。
			        //obj.limit得到每页显示的条数
			        //首次不执行
			        if(!first){
			        	location.href="${pageContext.request.contextPath}/app/employee/findAll?currPage="+obj.curr+"&pageSize="+obj.limit;
			        }
			      }
			  });
			});
	</script>
	<!-- 添加 -->
<script>
contextPath = "${pageContext.request.contextPath}";

layui.use(['upload','jquery','layer'], function(){
  var $ = layui.jquery
  ,upload = layui.upload
  ,layer=layui.layer;
  
  
  //普通图片上传
  var uploadInst = upload.render({
    elem: '#test'
    ,url: contextPath+'/app/employee/save'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('.demo1').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });
});
 </script>
 
 <!-- 修改 -->
<script>
contextPath = "${pageContext.request.contextPath}";
layui.use(['upload','jquery','layer'], function(){
  var $ = layui.jquery
  ,upload = layui.upload
  ,layer=layui.layer;
  
  
  //普通图片上传
  var uploadInst = upload.render({
     elem:'#txt'
    ,url: contextPath+'/app/employee/save'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('.demo1').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });
});
 </script>
 
</html>