<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>        
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>游戏等级 列表</title>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/layui/css/layui.css"/>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/backstage/glevel_list.css"/>
	</head>
	<body>
	
 		<form class="layui-form" action="${pageContext.request.contextPath}/app/GLevel/findAll?pageSize=${pageModel.pageSize}" method="post">
		  <div class="layui-inline">
		    <label class="layui-form-label">类型名</label>
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="text" value="${condition.levelname}" name="levelname" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-inline">
		    <label class="layui-form-label">描述</label>
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="text" value="${condition.descy}" name="descy" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-inline">
		    <label class="layui-form-label" style="width:80px;">游戏类型</label>
		    <div class="layui-input-inline">
		      <select id="type_list" name="greamType_id" class="layui-select">
		      	<option value="0">所有</option>
		      </select>
		    </div>
		  </div>
		  <div class="layui-inline">
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="submit" class="layui-btn" value="搜索">
		    </div>
		  </div>
  		</form>
	
	<a id="add-btn" class="layui-btn" href="#"><i class="layui-icon layui-icon-add-circle-fine"></i>添加</a>
		<table class="layui-table">
			<thead>
				<tr>
					<th>序号</th>
					<th>等级名称</th>
					<th>备注</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${glevelList}"  var="glevel">
				<tr>
					<td>${glevel.id}</td>
					<td>${glevel.levelname}</td>
					<td>${glevel.descy}</td>
					<td>
						<a data-id="${glevel.id}" class="layui-btn layui-btn-normal edit-btn" href="javascript:;"><i class="layui-icon layui-icon-search"></i> 详情</a>
						<a data-id="${glevel.id}" class="layui-btn layui-btn-danger del-btn" href="javascript:;"><i class="layui-icon layui-icon-close-fill"></i> 删除</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<!-- 分页  -->
		<div id="page-content" class="margin:auto"></div>
	</body>
	<!-- 添加弹出层 -->
	<div id="glevel-add-content">
		<form  class="layui-form"  lay-filter="add-form">
		  <div class="layui-form-item">
		    <label class="layui-form-label" style="width:80px;">游戏类型</label>
		    <div class="layui-input-block">
		      <select  name="greamtype.id" class="layui-select">
		      </select>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label" style="width:80px;">等级名</label>
		    <div class="layui-input-block">
		      <input type="text" name="levelname" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label" style="width:80px;">描述</label>
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
	<div id="glevel-edit-content">
		<form  class="layui-form" lay-filter="edit-form">
		 <div class="layui-form-item">
		    <label class="layui-form-label" style="width:80px;">游戏类型</label>
		    <div class="layui-input-block">
		      <select  name="greamtype.id" class="layui-select">
		      </select>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">等级名</label>
		    <div class="layui-input-block">
		   	 <input type="text" name="id" value="" style="display:none">
		      <input type="text" name="levelname" value="" autocomplete="off" lay-verify="required" class="layui-input">
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
		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript">
		contextPath = "${pageContext.request.contextPath}";
		//加载所有的游戏类型
		//为添加和更新的层加载类型列表
	 function typpListLoad(){
			$.ajax({
				url:contextPath+'/app/GType/getAll'
				,type:'post'
				,success:function(data,status){
						$.each(data,function(n,v){
								$("select").append('<option value="'+v.id+'" >'+v.greamName+'</option>');//显示数据库中的所有类型
						});
						//设置条件查询的下拉列表现实
						var greamType_id= ${condition.greamType_id};//获取条件
						$('#type_list option[value="'+greamType_id+'"]').attr("selected","selected");//设置选择
				}
				,error:	function(data,status){
					typeList=null;
				}
			});
		}
		typpListLoad(); 
		
		
		</script>
		<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
		<script src="${pageContext.request.contextPath}/js/backstage/glevel_list.js"></script>
		<script>
			layui.use(['laypage'], function(){
			  var laypage = layui.laypage;
			  
			  //执行一个laypage实例
			  laypage.render({
			     elem: 'page-content' //注意，这里的 test1 是 ID，不用加 # 号
			    ,count: ${pageModel.total} //数据总数，从服务端得到
			    ,limit:${pageModel.pageSize}
			    ,limits:[2,5,10]
			    ,curr:${pageModel.currPage}
			    ,groups:3
			    ,layout:['prev', 'page', 'next','count','limit']
			    ,jump: function(obj, first){
			        //obj包含了当前分页的所有参数，比如：
			       	//obj.curr得到当前页，以便向服务端请求对应页的数据。
			        //obj.limit得到每页显示的条数
			        //首次不执行
			        if(!first){
			        	location.href="${pageContext.request.contextPath}/app/GLevel/findAll?currPage="+obj.curr+"&pageSize="+obj.limit;
			        }
			      }
			  });
			});
	</script>
</html>