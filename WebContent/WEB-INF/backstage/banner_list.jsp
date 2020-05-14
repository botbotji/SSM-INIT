<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>        
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>banner列表</title>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/layui/css/layui.css"/>
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/backstage/banner_list.css"/>
	</head>
	<body>
	<div class="layui-form-item">
 		<form class="layui-form" action="${pageContext.request.contextPath}/app/banner/findAll?pageSize=${pageModel.pageSize}" method="post">
		  <div class="layui-inline">
		    <label class="layui-form-label">图片名</label>
		    <div class="layui-input-inline" style="width: 100px;">
		      <input type="text" value="${condition.imgName}" name="imgName" autocomplete="off" class="layui-input">
		    </div>
		  </div>
			<div class="layui-inline">
		    	<label class="layui-form-label" style="width:80px;">菜单</label>
		    	<div class="layui-input-inline">
		      		<select id="type_list" name="menu_id" class="layui-select">
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
	</div>
	<a id="add-btn" class="layui-btn" href="#"><i class="layui-icon layui-icon-add-circle-fine"></i>添加</a>
		<table class="layui-table">
			<thead>
				<tr>
					<th>序号</th>
					<th>图片名</th>
					<th>图片</th>
					<th>排序</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${bannerList}"  var="banner">
				<tr>
					<td>${banner.id}</td>
					<td>${banner.imgName}</td>
					<td>${banner.image} <img src="${pageContext.request.contextPath }/upload/${banner.image}"></td>
					<td>${banner.orderby}</td>
					<td>
						<a data-id="${banner.id}" class="layui-btn layui-btn-normal edit-btn" href="javascript:;"><i class="layui-icon layui-icon-search"></i> 详情</a>
						<a data-id="${banner.id}" class="layui-btn layui-btn-danger del-btn" href="javascript:;"><i class="layui-icon layui-icon-close-fill"></i> 删除</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<!-- 分页  -->
		<div id="page-content" class="margin:auto"></div>
	</body>
	<!-- 添加弹出层 -->
	<div id="banner-add-content">
		<form class="layui-form" lay-filter="add-form" enctype="multipart/form-data">
		  <div class="layui-form-item">
		    <label class="layui-form-label" style="width:80px;">菜单</label>
		    <div class="layui-input-block">
		      <select  name="menu.id" class="layui-select">
		      </select>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">图片名</label>
		    <div class="layui-input-block">
		      <input type="text" name="imgName" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		  
		  
		  <div class="layui-form-item">
		    <label class="layui-form-label">图片</label>
		   	<div class="layui-upload">
  				<button type="button" class="layui-btn" id="test">上传图片</button>
  				<div class="layui-upload-list">
    				<img class="layui-upload-img" id="demo1" style="height: 50px;width: 200px;">
    				<p id="demoText"></p>
  		 		</div>
			</div>  
		  </div>
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">排序</label>
		    <div class="layui-input-block">
		      <input type="text" name="orderby" value="" lay-verify="required"   autocomplete="off" class="layui-input">
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
	<div id="banner-edit-content">
		<form class="layui-form" lay-filter="edit-form" enctype="multipart/form-data">
		  <div class="layui-form-item">
		    <label class="layui-form-label" style="width:80px;">菜单</label>
		    <div class="layui-input-block">
		      <select  name="banner.id" class="layui-select">
		      </select>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">图片名</label>
		    <div class="layui-input-block">
		   	 <input type="text" name="id" value="" style="display:none">
		      <input type="text" name="imgName" value="" autocomplete="off" lay-verify="required" class="layui-input">
		    </div>
		  </div>
		    <div class="layui-form-item">
		    <label class="layui-form-label">图片</label>
		    	<div class="layui-upload">
  				<button type="button" class="layui-btn" id="text">修改图片</button>
  				<div class="layui-upload-list">
    				<img class="layui-upload-img" id="demo1" style="height: 50px;width: 200px;"/>
    				<p id="demoText"></p>
  		 		</div>
			</div>  
		  </div>
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">排序</label>
		    <div class="layui-input-block">
		      <input type="text" name="orderby" value="" lay-verify="required"   autocomplete="off" class="layui-input">
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
				url:contextPath+'/app/menu/getAll'
				,type:'post'
				,success:function(data,status){
						$.each(data,function(n,v){
								$("select").append('<option value="'+v.id+'" >'+v.menuName+'</option>');//显示数据库中的所有类型
						});
						//设置条件查询的下拉列表现实
						var menu_id= ${condition.menu_id};//获取条件
						$('#type_list option[value="'+menu_id+'"]').attr("selected","selected");//设置选择
				}
				,error:	function(data,status){
					typeList=null;
				}
			});
		}
		typpListLoad(); 
		
			</script>
	<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
		<script src="${pageContext.request.contextPath}/js/backstage/banner_list.js"></script>
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
			        	location.href="${pageContext.request.contextPath}/app/banner/findAll?currPage="+obj.curr+"&pageSize="+obj.limit;
			        }
			      }
			  });
			});
	</script>
<script>
contextPath = "${pageContext.request.contextPath}";

layui.use(['upload','jquery','layer'], function(){
  var $ = layui.jquery
  ,upload = layui.upload
  ,layer=layui.layer;
  
  
  //普通图片上传
  var uploadInst = upload.render({
    elem: '#test'
    ,url: contextPath+'/app/banner/save'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo1').attr('src', result); //图片链接（base64）
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
 
<script>
contextPath = "${pageContext.request.contextPath}";

layui.use(['upload','jquery','layer'], function(){
  var $ = layui.jquery
  ,upload = layui.upload
  ,layer=layui.layer;
  
  
  //普通图片上传
  var uploadInst = upload.render({
    elem: '#text'
    ,url: contextPath+'/app/banner/save'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo1').attr('src', result); //图片链接（base64）
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