<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>        
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>用户评价列表</title>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/layui/css/layui.css"/>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/backstage/appraise_list.css"/>
	</head>
	<body>
	<div class="layui-form-item">
 		<form action="${pageContext.request.contextPath}/app/appraise/add?pageSize=${pageModel.pageSize}" method="post">
		  <div class="layui-inline">
		    <label class="layui-form-label">内容</label>
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="text" value="${condition.neirong}" name="neirong" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-inline">
		    <label class="layui-form-label">星级</label>
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="text" value="${condition.dengji}" name="dengji" autocomplete="off" class="layui-input">
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
					<th>评价内容</th>
					<th>星级</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${appraise}"  var="app">
				<tr>
					<td>${app.id}</td>
					<td>${app.neirong}</td>
					<td>${app.dengji}</td>
					<td>
						<a data-id="${app.id}" class="layui-btn layui-btn-normal edit-btn" href="javascript:;"><i class="layui-icon layui-icon-search"></i> 详情</a>
						<a data-id="${app.id}" class="layui-btn layui-btn-danger del-btn" href="javascript:;"><i class="layui-icon layui-icon-close-fill"></i> 删除</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<!-- 分页  -->
		<div id="page-content" class="margin:auto"></div>
	</body>
	<!-- 添加弹出层 -->
	<div id="appraise-add-content">
		<form class="layui-form" lay-filter="add-form">
		  <div class="layui-form-item">
		    <label class="layui-form-label">评价内容</label>
		    <div class="layui-input-block">
		      <input type="text" name="neirong" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">星级</label>
		    <div class="layui-input-block">
		      <input type="text" name="dengji" value="" lay-verify="required"   autocomplete="off" class="layui-input">
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
	<!-- 详情弹出层 -->
	<div id="appraise-edit-content">
		<form class="layui-form" lay-filter="edit-form">
		  <div class="layui-form-item">
		    <label class="layui-form-label">评价内容</label>
		    <div class="layui-input-block">
		   	 <input type="text" name="id" value="" style="display:none">
		      <input type="text" name="neirong" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">星级</label>
		    <div class="layui-input-block">
		      <input type="text" name="dengji" value="" lay-verify="required"   autocomplete="off" class="layui-input">
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
		<script src="${pageContext.request.contextPath}/js/backstage/appraise_list.js"></script>
		<script>
		 contextPath = "${pageContext.request.contextPath}";
			layui.use('laypage', function(){
			  var laypage = layui.laypage;
			  
			  //执行一个laypage实例
			    laypage.render({
			     elem: 'page-content' //注意，这里的 test1 是 ID，不用加 # 号
			    ,count: ${pageModel.total} //数据总数，从服务端得到
			    ,limit: ${pageModel.pageSize}
			    ,limits: [2,5,10]
			    ,curr: ${pageModel.currPage}
			    ,groups:3
			    ,layout:['prev', 'page', 'next','count','limit']
			    ,jump: function(obj, first){
			        //obj包含了当前分页的所有参数，比如：
			       	//obj.curr得到当前页，以便向服务端请求对应页的数据。
			        //obj.limit得到每页显示的条数
			        //首次不执行
			        if(!first){
			        	location.href="${pageContext.request.contextPath}/app/appraise/findAll?currPage="+obj.curr+"&pageSize="+obj.limit;
			        }
			      }
			  });
			});
	</script>
</html>