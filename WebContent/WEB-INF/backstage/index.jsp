<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
 <%@ taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>EST</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
  <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/backstage/index.css"/>
  <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/backstage/admin_list.css"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">心悦电竞后台管理</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
          ${ad.username}
        </a>
        <dl class="layui-nav-child">
        <dd><a data-id="${ad.id}" class="layui-btn layui-btn-normal show-btn" href="javascript:;"><i class="layui-icon layui-icon-search"></i>个人信息</a></dd>
         <!--  <dd><a class="tab-info" href="javascript:;"></a></dd> -->
         <!--  <dd><a class="tab-info" href="javascript:;">重置密码</a></dd> -->
          <dd><a data-id="${ad.id}" class="layui-btn layui-btn-normal edit-btn" href="javascript:;"><i class="layui-icon layui-icon-search"></i>重置密码</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/backstage_login.jsp">退出系统</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;"><i class="layui-icon layui-icon-friends"></i>&nbsp;用户管理</a>
          <dl class="layui-nav-child">
            <dd><a class="left-menu tab-info" lay-id="2" data-href="${pageContext.request.contextPath}/app/user/findAll" href="javascript:;">用户列表</a></dd>
            <dd><a class="left-menu tab-info" lay-id="3" data-href="${pageContext.request.contextPath}/app/label/findAll" href="javascript:;">标签详情表</a></dd>
          </dl>
        </li>
         <li class="layui-nav-item">
          <a class="" href="javascript:;"><i class="layui-icon layui-icon-friends"></i>&nbsp;员工管理</a>
          <dl class="layui-nav-child">
            <dd><a class="left-menu tab-info" lay-id="4" data-href="${pageContext.request.contextPath}/app/employee/findAll" href="javascript:;">员工列表</a></dd>
            
          </dl>
        </li>
        
        <li class="layui-nav-item">
          <a href="javascript:;"><i class="layui-icon layui-icon-cart"></i>&nbsp;网页基础信息管理</a>
          <dl class="layui-nav-child">
            <dd><a class="left-menu tab-info" lay-id="5" data-href="${pageContext.request.contextPath}/app/menu/findAll" href="javascript:;">菜单管理</a></dd>
            <dd><a class="left-menu tab-info" lay-id="6" data-href="${pageContext.request.contextPath}/app/banner/findAll" href="javascript:;">Banner图片管理</a></dd>
          </dl>
        </li>
        
         <li class="layui-nav-item">
          <a href="javascript:;"><i class="layui-icon layui-icon-cart"></i>&nbsp;游戏管理</a>
          <dl class="layui-nav-child">
            <dd><a class="left-menu tab-info" lay-id="7" data-href="${pageContext.request.contextPath}/app/GLevel/findAll" href="javascript:;">游戏等级列表</a></dd>
            <dd><a class="left-menu tab-info" lay-id="8" data-href="${pageContext.request.contextPath}/app/GType/findAll" href="javascript:;">游戏类型管理</a></dd>
          </dl>
        </li>
        
         <li class="layui-nav-item">
          <a href="javascript:;"><i class="layui-icon layui-icon-cart"></i>&nbsp;订单管理</a>
          <dl class="layui-nav-child">
            <dd><a class="left-menu tab-info" lay-id="9" data-href="${pageContext.request.contextPath}/app/order/findAll" href="javascript:;">订单列表</a></dd>
            <dd><a class="left-menu tab-info" lay-id="10" data-href="${pageContext.request.contextPath}/app/appraise/findAll" href="javascript:;">订单评价列表</a></dd>
          </dl>
        </li>
        
        
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;"><i class="layui-icon layui-icon-friends"></i>&nbsp;管理员管理</a>
          <dl class="layui-nav-child">
          	<dd><a class="left-menu tab-info" lay-id="1" data-href="${pageContext.request.contextPath}/app/admin/findAll" href="javascript:;">管理员列表</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
	<div style="padding: 15px;">
			<div class="layui-tab" lay-allowClose="true" lay-filter="right-content">
				<ul class="layui-tab-title">
					<li lay-id="1" class="layui-this">管理员列表</li>
				</ul>
				<div class="layui-tab-content">
						<div class="layui-tab-item layui-show">
							 <iframe scrolling="auto" src="${pageContext.request.contextPath}/app/admin/findAll" frameborder="0" style="width: 100%;"></iframe>
						</div>
				</div>
			</div>
	</div>
  </div>
  
  <div class="layui-footer">
    <!-- 底部固定区域 -->
    © layui.com - 底部固定区域
  </div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
	/* 使用$ 符号 需要引入模块 */
	var $ = layui.$;
	
	/* 为菜单按钮绑定选项卡切换创建事件 */
	$(".tab-info").on("click",function(){
		var id = $(this).attr("lay-id");
		
		if($(".layui-tab-title li[lay-id]").length<=0){//如果content中没有选项卡,就直接创建
			//创建选项卡
			element.tabAdd('right-content', {
				title: $(this).text()
				,content: '<iframe src="'+$(this).attr("data-href")+'" frameborder="0" style="width: 100%;height: 100%;"></iframe>'
				,id:id 
			}); 
			$("iframe").css('height','800px');
		}else{//如果已经有选项卡,判断是否有当前点击的菜单对应的选项卡
		
			//定义标记
			 var flag = false;
			//遍历所有的选项卡,对比选项卡的lay-id值是否和当前所点击的菜单的lay-id相同
			$.each($(".layui-tab-title li[lay-id]"),function(i,l){
				//获取已有的选项卡的lay-id
				var layId = $(l).attr("lay-id");
				if(layId==id){//已有的选项卡lay-id和当前菜单的lay-id相同
						flag = true;
				}
			});
			
			if(flag){
				//切换到已经打开的选项卡
				element.tabChange('right-content',id)
			}else{
				//创建选项卡
				element.tabAdd('right-content', {
					title: $(this).text()
					,content: '<iframe  src="'+$(this).attr("data-href")+'" frameborder="0" style="width: 100%;height: 100%;"></iframe>'
					,id:id
				}); 
				$("iframe").css('height','800px');
			}
			 
		}
		element.tabChange('right-content',id)
	});
	
	
});

$(".left-menu").css("padding-left","40px");
</script>
<script>
layui.use(['layer','jquery','form'],function(){
		var layer =  layui.layer;
		var $ = layui.jquery;
		var form = layui.form;
		var contextPath ="${pageContext.request.contextPath}";
		//点击添加按钮，打开页面
		$('.edit-btn').on('click',function(){
			var dataId  =  $(this).attr("data-id");
			 $.ajax({
					url:contextPath+'/app/admin/findById?id='+dataId
					,type:'post'
					,success:function(data,status){
						console.log(data.username);
						//将获取到的数据设置到表单中
						 $('#admin-edit-content input[name="id"]').attr("value",data.id);
						 $('#admin-edit-content input[name="username"]').attr("value",data.username);
						 $('#admin-edit-content input[name="password"]').attr("value",data.password);
						 $('#admin-edit-content textarea[name="descy"]').val(data.descy);
					}
					,error:	function(data,status){
						console.log(data);
					}
					
				});
			layer.open({
				type:1,
				content:$('#admin-edit-content'),
				area:['300px','400px'],
				offset: ['60px', '1065px'],
				title: ['重置密码', 'font-size:18px;']
			});
	});
//保存数据
	 form.on('submit(edit-form)', function(data){
//	  	console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
//	  	console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
//	  	console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
	 
	  	$.ajax({
				url:contextPath+'/app/admin/update'
				,data:data.field
				,type:'post'
				,success:function(data,status){
					console.log(data);
					layer.open({
						type:0,
						content:'修改成功'
					});
					location.href=contextPath+"/backstage_login.jsp";
				}
				,error:	function(data,status){
					console.log(data);
					layer.open({
						type:0,
						content:'修改失败'
					});
				}
			}); 
	 }); 
	});
</script>
<script>  
layui.use(['layer','jquery','form'],function(){
	var layer =  layui.layer;
	var $ = layui.jquery;
	var form = layui.form;
	var contextPath ="${pageContext.request.contextPath}";
		//点击添加按钮，打开页面
		$('.show-btn').on('click',function(){
			var dataId  =  $(this).attr("data-id");
			 $.ajax({
					url:contextPath+'/app/admin/findById?id='+dataId
					,type:'post'
					,success:function(data,status){
						console.log(data.username);
					}
					,error:	function(data,status){
						console.log(data);
					}
				});
			 
			layer.open({
				type:1,
				content:$('#admin-show-content'),
				area:['300px','400px'],
				offset: ['60px', '1065px'],
				title: ['个人信息', 'font-size:18px;'],
			});
		});
		
	});
</script>
</body>
<!-- 个人性息 -->
	<div id="admin-show-content" style="display:none">
		<form class="layui-form" lay-filter="edit-form">
		 <div class="layui-form-item">
		    <label class="layui-form-label">ID:</label>
		    <div class="layui-input-block">
		      <span><input type="text" name="id" value="${ad.id}" autocomplete="off" lay-verify="required" class="layui-input" readonly="readonly"></span>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">账号：</label>
		    <div class="layui-input-block">
		      <input type="text" name="username" value="${ad.username}" lay-verify="required"   autocomplete="off" class="layui-input">
		    </div>
		  </div>
		   <div class="layui-form-item">
		    <label class="layui-form-label">性别：</label>
		    <div class="layui-input-block">
		      <input type="text" name="sex" value="男" lay-verify="required"   autocomplete="off" class="layui-input">
		    </div>
		  </div>
		     <div class="layui-form-item">
		    <label class="layui-form-label">年龄：</label>
		    <div class="layui-input-block">
		      <input type="text" name="age" value="20岁" lay-verify="required"   autocomplete="off" class="layui-input" readonly="readonly">
		    </div>
		  </div>
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">个人信条：</label>
		    <div class="layui-input-block">
		      <textarea name="descy"  value="" class="layui-textarea" readonly="readonly">${ad.descy}</textarea>
		    </div>
		  </div>
		</form>
	</div>
<!-- 详情弹出层 -->
	<div id="admin-edit-content" style="display:none">
		<form class="layui-form" lay-filter="edit-form">
		  <div class="layui-form-item">
		    <label class="layui-form-label">账号</label>
		    <div class="layui-input-block">
		   	 <input type="text" name="id" value="" style="display:none">
		      <input type="text" name="username" value="" autocomplete="off" lay-verify="required" class="layui-input" readonly="readonly">
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">密码</label>
		    <div class="layui-input-block">
		      <input type="text" name="password" value="" lay-verify="required"   autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  <div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">描述</label>
		    <div class="layui-input-block">
		      <textarea name="descy"  value="" class="layui-textarea"></textarea>
		    </div>
		  </div>
		 <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button lay-submit class="layui-btn" lay-filter="edit-form">保存</button>
		    </div>
		  </div>
		</form>
	</div>
</html>