window._NODLE_GIFTS = {
	isshow:true,//贵族礼物是否显示
	gifts:[//客户端贵族礼物配置不通过接口
		{
			id:42,
			price:188,
			name:"原谅TA",
			explain:"还是原谅TA吧！",
			g_alias:"ylm",
			enable_noble_id:0,//
			enable_level:0,
			_active:false,
			g_type:2,//贵族礼物
			icon_path:"https://img1.daofengdj.com/uploads/images/20180929/6189b0cccb7634a3b42040cc28193f8a.gif",
			icon_big_path:"https://img1.daofengdj.com/uploads/images/20180926/75ecbbffc2999cc082341d0ac5440977.gif",
		},
		{
			id:37,
			price:99,
			name:"辣条",
			explain:"跟着土豪天天吃辣条",
			g_alias:"latiao",
			enable_noble_id:0,//
			enable_level:0,
			_active:false,
			g_type:2,//贵族礼物
			icon_path:"https://img1.daofengdj.com/uploads/images/20180918/198430d288064c733e4860a6833d1f45.gif",
			icon_big_path:"https://img1.daofengdj.com/uploads/images/20180926/75ecbbffc2999cc082341d0ac5440977.gif",
		},
		{
			id:38,
			price:5200,
			name:"LOVE",
			explain:"爱你长久，更在乎朝暮",
			g_alias:"love",
			enable_noble_id:0,//
			enable_level:0,
			_active:false,
			g_type:2,//贵族礼物
			icon_path:"https://img1.daofengdj.com/uploads/images/20180918/515149b98326a2aed5a71d48e427dbf8.gif",
			icon_big_path:"https://img1.daofengdj.com/uploads/images/20180910/b399534cc111855c8be382939130f99b.jpg",
		},
		{
			id:45,
			price:18880,
			name:"梦幻城堡",
			explain:"奢华梦幻均赠你",
			g_alias:"castle",
			enable_noble_id:0,//
			enable_level:0,
			_active:false,
			g_type:2,//贵族礼物
			icon_path:"https://img1.daofengdj.com/uploads/images/20180929/f5c4447030e6760f8439c08f7e9fe4f2.gif",
			icon_big_path:"https://img1.daofengdj.com/uploads/images/20180910/b399534cc111855c8be382939130f99b.jpg",
		},
		{
			id:43,
			price:99,
			name:"臭鸡蛋",
			explain:"丢Ta臭鸡蛋！",
			g_alias:"egg",
			enable_noble_id:0,//
			enable_level:0,
			_active:false,
			g_type:2,//贵族礼物
			icon_path:"https://img1.daofengdj.com/uploads/images/20180929/f110a30846855caf4c62b8b0223de4e6.gif",
			icon_big_path:"https://img1.daofengdj.com/uploads/images/20180926/75ecbbffc2999cc082341d0ac5440977.gif",
		},
		{
			id:44,
			price:1880,
			name:"丘比特之箭",
			explain:"爱神之箭",
			g_alias:"cupid",
			enable_noble_id:0,//
			enable_level:0,
			_active:false,
			g_type:2,//贵族礼物
			icon_path:"https://img1.daofengdj.com/uploads/images/20180929/0c8bad7ed0b79d93d3d033ce2422ddde.gif",
			icon_big_path:"https://img1.daofengdj.com/uploads/images/20180926/75ecbbffc2999cc082341d0ac5440977.gif",
		},
	],
	beforehand_load:[//这里面的图片会被预先加载

		// GIF 图
		"/ylm/ylm.gif",// 原谅帽
		"/ylm/img1.png",// 原谅帽
		"/latiao/img1.gif",  // 辣条
		"/love/love.gif",// love
		"/castle/castle.gif",// 城堡
		"/egg/egg.gif",// 鸡蛋
		"/cupid/cupid.gif",// 丘比特之箭

		// 原谅帽 帧图
		"/ylm/frame/0.png",
		"/ylm/frame/1.png",
		"/ylm/frame/2.png",
		"/ylm/frame/3.png",
		"/ylm/frame/4.png",
		"/ylm/frame/5.png",
		"/ylm/frame/6.png",
		"/ylm/frame/7.png",

		// love 帧图
		"/love/frame/0.png",
		"/love/frame/1.png",
		"/love/frame/2.png",
		"/love/frame/3.png",
		"/love/frame/4.png",
		"/love/frame/5.png",
		"/love/frame/6.png",
		"/love/frame/7.png",

		// 城堡 帧图
		"/castle/frame/0.png",
		"/castle/frame/1.png",
		"/castle/frame/2.png",
		"/castle/frame/3.png",
		"/castle/frame/4.png",
		"/castle/frame/5.png",
		"/castle/frame/6.png",
		"/castle/frame/7.png",

		//背景
		"/success_1.png",
		"/success_2.png",
		"/success_3.png",
	],
	img_arr:[],
	dom_num:false,//显示数量的元素
	big_dom:false,//外层盒子
	big_dom_guazai:false,//是否被插入文档
	old_Last:{//上次信息
		user_name:false,
		play_name:false,
		gift_name:false,
	},
	latiao_state:false,//辣条特效是不是在展示true在展示
	love_state:false,//love特效是不是在展示true在展示
	time1:null,//定时器
	time2:null,//定时器
	time3:null,//定时器
	time4:null,//定时器

	love:{//lover特效缓存主要用于在客户端使用因为不能刷新
		all:[],//图片对象
		dom_big:false,//外层对象
		remove_time:100,
		num:0,
	},
	castle:{//城堡特效缓存主要用于在客户端使用因为不能刷新
		all:[],//图片对象
		dom_big:false,//外层对象
		remove_time:100,
		num:0,
	},
	ylm:{//原谅帽特效缓存主要用于在客户端使用因为不能刷新
		all:[],//图片对象
		dom_big:false,//外层对象
		remove_time:100,
		num:0,
	},

	display_all:[],//展示队列
	//显示最外层盒子
	//贵族礼物的特效展示
	effect_display:function(alias,user_name,play_name,gift_name,gift_num){
		//先检测显示队列中最后一个是不是跟这个一样
		//存放到展示队列中
		var last_data = this.display_all[this.display_all.length-1];
		if(last_data){
			if(user_name){
				if((last_data.user_name === user_name) && (last_data.play_name === play_name) && (last_data.gift_name === gift_name)){
					last_data.gift_num += gift_num;
				};
			};
		}else{
			var json = {};
			json.alias = alias;
			if(user_name){
				json.alias = alias;
				json.user_name = user_name;
				json.play_name = play_name;
				json.gift_name = gift_name;
				json.gift_num = gift_num;
			};
			this.display_all.push(json);
		};
		//检测是否可以显示了
		this.is_show_fn();
	},
	is_show_fn:function(){
		if(!this.big_dom_guazai){
			//显示
			var jsn = this.display_all[0];//显示数组中的第一个
			this.display_all = this.display_all.splice(1);
			if(jsn){
				if(jsn.user_name){
					this.effect_display2(jsn.alias,jsn.user_name,jsn.play_name,jsn.gift_name,jsn.gift_num);
				}else{
					this.effect_display2(jsn.alias);
				};
			};
		};
	},
	effect_display2:function(alias,user_name,play_name,gift_name,gift_num){
		//根据设定的别名进行处理
		this.big_dom_guazai = true;//开始显示
		if(!this.big_dom){
			var _width = document.documentElement.clientWidth;
		    var _height = document.documentElement.clientHeight;
		    var bigobj = $(document.createElement("div"));
		    bigobj.attr("class","aristocratic_gifts");
		    //背景
		    // var oimg = $(document.createElement("img"));
		    // oimg.attr("class","success_bg");
		    // oimg.attr("src",url_kuaijie2+"/public/img/aristocratic_gifts/success_1.png");
		    // bigobj.append(oimg);
		    //是否需要展示信息
		    this.dom_num = false;
		    if(user_name){
		    	//添加赠送信息
		    	var div1 = $(document.createElement("div"));
		    	div1.attr("class","information");
		    	var str = '<span class="s1">'+user_name+'</span>送给<span class="s2">'+play_name+'</span> <span class="s3">'+gift_name+'</span> <span class="s4">X '+gift_num+'</span>';
		    	div1.html(str);
		    	this.dom_num = div1.find('.s4');
		    	bigobj.append(div1);
		    };
		    var _top = (_height-800)/2;
		    if(_top<0){_top=0};
		    bigobj.css("top",_top+"px");
		    this.big_dom = bigobj;
		};
	    $(document.body).append(this.big_dom);

	    if(alias === 'ylm'){
	    	//原谅帽特效
			if((typeof(_de_bug)=="undefined")||((typeof(_de_bug)=="boolean")&&_de_bug)){//在浏览器中 特效使用帧图
				this.effect_fn("po_img",this.ylm,"100","/public/img/aristocratic_gifts/ylm/frame/",49,100);
			}else {
				var path = url_kuaijie2+"/public/img/aristocratic_gifts/ylm/ylm.gif";
				//left图片在bigobj中的相对宽高
				var _top = 100;
				this.direct_display(path,_top,8000,4000);
				var oimg = $(document.createElement("img"));
				oimg.attr("class","po_img ylmbg");
				oimg.attr("src",url_kuaijie2+"/public/img/aristocratic_gifts/ylm/img1.png");
				oimg.css("top","100px");
				oimg.css("z-index","87");
				this.big_dom.append(oimg);
				setTimeout(function(){
					oimg.animate({
						opacity: 1
					}, 1000);
				},1500);
				setTimeout(function(){
					oimg.animate({
						opacity: 0
					}, 1000);
				},2500);
				setTimeout(function(){
					oimg.animate({
						opacity: 1
					}, 1000);
				},5500);
				setTimeout(function(){
					oimg.animate({
						opacity: 0
					}, 1000);
				},6500);
			}
	    }else if(alias === 'latiao'){
	    	//拉条特效
	    	//530/530(宽高)
	    	var path = url_kuaijie2+"/public/img/aristocratic_gifts/latiao/img1.gif";
	    	//left图片在bigobj中的相对宽高
	    	var _top = 125;
	    	this.direct_display(path,_top,8000);
	    }else if(alias === 'love'){
	    	//love特效
			if((typeof(_de_bug)=="undefined")||((typeof(_de_bug)=="boolean")&&_de_bug)){//在浏览器中 特效使用帧图
				this.effect_fn("po_img",this.love,"100","/public/img/aristocratic_gifts/love/frame/",36,100);
			}else {
				var path = url_kuaijie2+"/public/img/aristocratic_gifts/love/love.gif";
				//left图片在bigobj中的相对宽高
				var _top = 100;
				this.direct_display(path,_top,8000);
			}
	    }else if(alias === 'castle'){
	    	//城堡效果
			if((typeof(_de_bug)=="undefined")||((typeof(_de_bug)=="boolean")&&_de_bug)){//在浏览器中 特效使用帧图
				this.effect_fn("po_img",this.castle,"30","/public/img/aristocratic_gifts/castle/frame/",21,60);
			}else {
				var path = url_kuaijie2+"/public/img/aristocratic_gifts/castle/castle.gif";
				//left图片在bigobj中的相对宽高
				var _top = 100;
				this.direct_display(path,_top,8000);
			}
	    }else if(alias === 'egg'){
	    	//鸡蛋效果
	    	//530/530(宽高)
	    	var path = url_kuaijie2+"/public/img/aristocratic_gifts/egg/egg.gif";
	    	//left图片在bigobj中的相对宽高
	    	var _top = 125;
	    	this.direct_display(path,_top,4000,2000);
	    }else if(alias === 'cupid'){
	    	//丘比特效果
	    	var path = url_kuaijie2+"/public/img/aristocratic_gifts/cupid/cupid.gif";
	    	//left图片在bigobj中的相对宽高
	    	var _top = 125;
	    	this.direct_display(path,_top,8000,3000);
	    };
	},
	
	//帧特效 公共函数
	effect_fn:function(class_name,arr_obj,_top,url,num,time){//class_name:外层类名 arr_obj：帧特效 对象，_top:top高度,url:图片地址，num:帧图片数量,time:图片展示时间（s）
		//不太好写所以用帧动画播放一共0-num张图片
		var _this = this;
		var arrinfo = arr_obj.all;
		if (!arr_obj.dom_big){
			var bigdom = $(document.createElement("span"));
			bigdom.attr("class",class_name);
			bigdom.css("top",_top+"px");
			var path = url_kuaijie2+url;
			for(var i=0;i<=num;i++){
				var oimg = $(document.createElement("img"));
				oimg.attr("src",path+i+".png");
				oimg.css("display","none");
				var jsn = {
					isshow:false,
					dom:oimg,
				};
				arrinfo.push(jsn);
				bigdom.append(oimg);
			};
			arr_obj.dom_big = bigdom;
			this.big_dom.append(arr_obj.dom_big);
		};
		this.big_dom.append(arr_obj.dom_big);
		//第一张图片显示
		for(var i=0;i<=num;i++){
			if(i===0){
				if(!arrinfo[i].isshow){
					arrinfo[i].isshow = true;
					arrinfo[i].dom.css("display","block");
				};
			}else{
				if(arrinfo[i].isshow){
					arrinfo[i].isshow = false;
					arrinfo[i].dom.css("display","none");
				};
			};
		};
		arr_obj.remove_time = time;
		clearInterval(this.time2);
		arr_obj.num++;
		this.time2 = setInterval(function(){
			for(var i=0;i<=num;i++){
				if(i===arr_obj.num){
					if(!arrinfo[i].isshow){
						arrinfo[i].isshow = true;
						arrinfo[i].dom.css("display","block");
					};
				}else{
					if(arrinfo[i].isshow){
						arrinfo[i].isshow = false;
						arrinfo[i].dom.css("display","none");
					};
				};
			};
			arr_obj.num++;
			if(arr_obj.num>num){
				arr_obj.num = 0;
			};
			arr_obj.remove_time --;
			if(arr_obj.remove_time<0){
				clearInterval(_this.time2);
				if(is_info_item){
					location = location;
				}else{
					arr_obj.dom_big.remove();
					_this.big_dom.remove();
					_this.big_dom = false;
					_this.big_dom_guazai = false;
					_this.is_show_fn();
				};
			};
		},100);
	},
	//直接显示gif的方法
	direct_display:function(path,_top,time,time1){//path： 图片地址，_top：顶部距离，time：总展示时间，time1：单次循环展示时间
		var _this = this;
		var oimg = $(document.createElement("img"));
		oimg.attr("class","po_img");
		oimg.attr("src",url_kuaijie2+"/public/img/aristocratic_gifts/src_change.png");

		oimg.css("top",_top+"px");
		setTimeout(function(){
			oimg.attr("src",path);
		},20);
		this.big_dom.append(oimg);
		// 循环展示gif
		if(time1){
			var _timer = setInterval(function() {
				oimg.attr("src",path);
			},time1);
		};
		this.time1 = setTimeout(function(){
			oimg.remove();
			if(is_info_item){
				location = location;
			}else{
				clearInterval(_timer);
				_this.big_dom.remove();
				_this.big_dom = false;
				_this.big_dom_guazai = false;
				_this.is_show_fn();
			};
		},time||3500);
		
	},
	//预加载方法
	loading:function(){
		var arr = this.beforehand_load;
		var path = url_kuaijie2+'/public/img/aristocratic_gifts';
		for(var i=0,len=arr.length;i<len;i++){
			var oimg = $(document.createElement("img"));
			oimg.attr("src",path+arr[i]);
			this.img_arr.push(oimg);
		};
	},
};
setTimeout(function(){
	//10秒钟后会加载设置的预先加载的图片
	_NODLE_GIFTS.loading();
},15000);
//_NODLE_GIFTS.effect_display("latiao","西门春雪","一页古成","LOVE",5);
//_NODLE_GIFTS.effect_display("love");
//_NODLE_GIFTS.effect_display("latiao");
//_NODLE_GIFTS.display_all;