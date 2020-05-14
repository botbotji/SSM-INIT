layui.use(['layer','jquery','form'],function(){
	var layer =  layui.layer;
	var $ = layui.jquery;
	var form = layui.form;
	
	$('.del-btn').on("click",function(){
		
		var dataId  =  $(this).attr("data-id");
		layer.open({
			  type: 0, 
			  content: '危险操作，是否删除',
			  offset:'100px',
			  yes:function(index,layero){
				  //使用jquery的ajax方法，url制定请求的路径，type指定请求的类型，success指定成功（状态码为200）调用的方法，
				  //error指定请求失败调用（状态码为400，500）的方法，data指定需要提交的参数，dataType指定提交参数的类型，
				  $.ajax({
					url:contextPath+'/app/employee/delById?id='+dataId
					,type:'post'
					,success:function(data,status){
						console.log(data);
						layer.open({
							type:0,
							content:'删除成功'
						});
						location.href=contextPath+"/app/employee/findAll";
					}
					,error:	function(data,status){
						layer.open({
							type:0,
							content:'删除失败'
						});
					}
					
				});
			  }
			});
	});
	
	//点击添加按钮，打开页面
	$('#add-btn').on('click',function(){
		layer.open({
			type:1,
			content:$('#employee-add-content'),
			area:['500px','500px'],
			offset:'100px'
		});
	});
	
	//点击添加按钮，打开页面
	$('.edit-btn').on('click',function(){
		var dataId  =  $(this).attr("data-id");
		 $.ajax({
				url:contextPath+'/app/employee/findById?id='+dataId
				,type:'post'
				,success:function(data,status){
					console.log(data);
					//将获取到的数据设置到表单中
					 $('#employee-edit-content input[name="id"]').attr("value",data.id);
					 $('#employee-edit-content input[name="nickname"]').attr("value",data.nickname);
					 $('#employee-edit-content input[name="phone"]').attr("value",data.phone);
					 $('#employee-edit-content input[name="sex"]').attr("value",data.sex);
					 $('#employee-edit-content input[name="age"]').attr("value",data.age);
					 $('#employee-edit-content input[name="state"]').attr("value",data.stste);
					 $('#employee-edit-content input[name="price"]').attr("value",data.price);
					 $('#employee-edit-content input[name="name"]').attr("value",data.name);
					 $('#employee-edit-content input[name="password"]').attr("value",data.password);
					 $('#employee-edit-content input[name="headImg"]').attr("value",data.headImg);
					 $('#employee-edit-content input[name="home"]').attr("value",data.home);
					 $('#employee-edit-content input[name="serveup"]').attr("value",data.serveup);
					 $('#employee-edit-content textarea[name="descy"]').val(data.descy);
				}
				,error:	function(data,status){
					console.log(data);
				}
				
			});
		
		layer.open({
			type:1,
			content:$('#employee-edit-content'),
			area:['500px','500px'],
			offset:'100px'
		});
	});
	
	
	//保存数据
	form.on('submit(add-form)', function(data){
//		  console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
//		  console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
//		  console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
		 
		  $.ajax({
					url:contextPath+'/app/employee/add'
					,data:data.field
					,type:'post'
					,success:function(data,status){
						console.log(data);
						layer.open({
							type:0,
							content:'添加成功'
						});
						location.href=contextPath+"/app/employee/findAll";
					}
					,error:	function(data,status){
						console.log(data);
						layer.open({
							type:0,
							content:'添加失败'
						});
					}
					
				});
		  
		  return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
		});
	
	//保存数据
	form.on('submit(edit-form)', function(data){
//		  console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
//		  console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
//		  console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
		 
		  $.ajax({
					url:contextPath+'/app/employee/update'
					,data:data.field
					,type:'post'
					,success:function(data,status){
						console.log(data);
						layer.open({
							type:0,
							content:'修改成功'
						});
						location.href=contextPath+"/app/employee/findAll";
					}
					,error:	function(data,status){
						console.log(data);
						layer.open({
							type:0,
							content:'修改失败'
						});
					}
					
				});
		  
		  return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
		});
	
	
});