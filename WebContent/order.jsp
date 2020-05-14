<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>立即下单-心悦电竞</title>
<meta name="keywords"
	content="陪玩,心悦电竞陪玩,LOL陪玩,吃鸡陪玩,绝地求生陪玩,王者荣耀陪玩,刺激战场陪玩,英雄联盟陪玩">
<meta name="description" itemprop="description"
	content="心悦电竞游戏陪玩平台为您提供全网最全面的妹子陪玩服务，这里有绝地求生吃鸡,英雄联盟LOL,王者荣耀,刺激战场,魔兽世界,APEX英雄等热门游戏陪玩服务，更有美女小姐姐陪玩24小时接单,找代练,代打平台，就上心悦电竞！">
<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layer.css">
<!--底部 和 侧边栏样式 以及部分弹窗样式都在这个文件中-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public_v3_css_version=201912181140.css">
<!--v2侧边栏样式-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/sidebar_v3_css_version=201912181140.css">
<!--登录注册模板样式-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/login_registration_v3_css_version=201912181140.css">
<!--头部导航模板样式-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/public_nav_v3_css_version=201912181140.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/confirm_order_css_version=201912231812.css">

  <script>
        window.website_version = "201912231812";//网站版本号用于处理js的缓存1
                    var loginstatus = 1;
                var pw_status = 0;
                //图形验证码地址
        var img_code = 'https://www.daofengdj.com/captcha.html';
        var mobileValue = 0; //判断用户是否绑定手机号：0|未绑定；1|已绑定
                mobileValue = 1;
                var public_img_str = "https://yundown.daofengdj.com/static/public/img";
        var home_img_str = "https://yundown.daofengdj.com/static/home/img";
    </script>
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirm_order_css_version=201912231812.css">

</head>
<body>
<!--头部-->

	<!--头部-->

	<div class="public_nav_v3">
		<div class="info_wrap position">
			<div class="info">
				<!--logo-->
				<a href="/" class="logo_wrap"><img class="logo" alt="心悦电竞陪玩"
					src="${pageContext.request.contextPath}/imgs/logo.png"></a>

				<!--导航-->

				<div class="p_nav">
					<div class="active">导航</div>

					<c:forEach items="${menuList}" var="menu">
						<div class="p_nav">
							<a href="${pageContext.request.contextPath}${menu.url}">
								${menu.menuName} </a>
						</div>
					</c:forEach>
				</div>
		<div>		<!--登录-->
			<div class="right"> 
                  <div class="login">
                    <div class="user_login_box" >
                  		  <c:if test="${not empty user1}">
                    ${user1.nickname}
                    <a href="${pageContext.request.contextPath}/app/logout">退出</a>
                    </c:if>
					<c:if test="${user1==null}">
					<a href="${pageContext.request.contextPath}/login.jsp">登录</a>
					<a href="${pageContext.request.contextPath}/login.jsp">/注册</a>
					</c:if></div>
                    </div>
				</div>
			</div>       
				<!--搜索-->
				<div class="search_box">
					<input type="text" style="display: none;"> <input
						type="password" style="display: none;"> <input
						placeholder="陪玩昵称、ID、靓号" type="text" class="nav_search_inpt"
						autocomplete="off" maxlength="10">
					<p class="search_p"></p>
					<!--搜索历史-->
					<ul class="msg_info_ul">
						<li class="msg_info_li" onclick="common.inputShow()">搜索历史</li>
						<li class="msg_info_li">搜索历史</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


<!--页面主体-->

<section>
<script>
	var order_ByRoomId = '0';
</script>
<input type="text" style="display:none" />
<input type="password" style="display:none" />
    <a href="/index/recharge/ali_return.html" target="_blank" id="pay_form_url" ></a>
	<div class="box">
		<p class="p1">我的订单</p>
	</div>
	<div class="box">
		<p class="p2">订单信息</p>
		<p class="p3" style="display:none;">订单开始时间为：${date}请在续单开始之前支付，否则不能成功续单</p>
		<div class="info1">
			<ul class="ul1">
				<li class="li1">下单时间</li>
				<li class="li2">员工</li>
				<li class="li3">服务技能</li>
				<li class="li4">单价</li>
				<li class="li5">购买数量</li>
				<li class="li6">玩家</li>
			</ul>
			<ul class="ul2">
				<li class="li1 li3_color">
					
						${date}
					
				</li>
				<li class="li2 li3_color" v-text="nickname">${employee.nickname}</li>
				<li class="li3 li3_color" v-text="name">
				<div style="white-space:nowrap;overflow: hidden;">${employee.serveup}
				 </div></li>
 
				<li class="li4 li3_color" v-text="name">
					￥${employee.price}
				</li>
				<li class="li5 li3_color" v-text="name">
				${num}
				</li>
				<!-- 总价 -->
				<li class="li6" v-text="name">${user1.nickname}</li>
			</ul>
			<ul class="ul3 li3_color">
				<li class="li1">
				<h3>备注：署名特殊情况！
					<textarea  id="txt" v-model="text" maxlength="30" title="备注" placeholder="备注：" >
					
					</textarea>
					</h3>
					<p v-text="textlength+'/30'">0/30</p>
				</li>
			</ul>
			
		</div>
		<div class="txt4" id="user_info" qq="" mobile="17628226743">
			<div>
				<img src="${pageContext.request.contextPath}/imgs/ico_33.png">手机：
				<input type="text" v-model="mobile" maxlength="11" ref="phone1"value="${employee.phone}">
				<span class="sp1">(必填)</span>
			</div>
			<div>
				<img src="${pageContext.request.contextPath}/imgs/ico_31.png">QQ：
				<input id="qq" v-model="qq" maxlength="15" type="text" ref="qq1" value="${employee.password}">
				<span class="sp1">(必填)</span>
			</div>

			<div>
				<img src="${pageContext.request.contextPath}/imgs/ico_32.png">微信：
				<input type="text" v-model="weixin_number" maxlength="20">
				<span class="sp2">(选填)</span>
			</div>
			<div style="display: none" v-show="couponShow">
				<img src="${pageContext.request.contextPath}/imgs/icon_coupon.png">优惠：
				<select class="coupon_sel" v-model="coupon_select" @change="chooseCoupon()">
					<option value="">不使用优惠券</option>
					<option :value="item.id" v-for="item in coupon_list" :disabled="check_coupon(item)" :money="item.money" :om="order_money" @click="checkCouponFun(item.use_channe)">{{item.desc}}</option>
				</select>
			</div>
		</div>
		
	</div>
	
	<div class="box">
		<p class="p2">支付方式</p>
		<div class="info3 no-pick">
			
			<div @click="change_method(1)" class="d1" :class="pay_method===1?'active':''">
				<img src="${pageContext.request.contextPath}/imgs/ico_pay1.png">
				<span>余额支付</span>
				<p v-show="pay_surplus" v-cloak id="shengyu_pay" shengyu_pay="0">剩余：0</p>
			</div>
						<div @click="change_method(9)" class="d1" :class="pay_method===9?'active':''"  v-cloak v-if="true">
				<img src="${pageContext.request.contextPath}/imgs/ico_pay3.png">
				<span>微信支付</span>
			</div>
						<div @click="change_method(2)" class="d1" :class="pay_method===2?'active':''"  v-cloak v-if="pay_switch===2||pay_switch===3">
				<img src="${pageContext.request.contextPath}/imgs/ico_pay2.png">
				<span>支付宝支付</span>
			</div>
					</div>
	</div>
	<div class="box" style="padding-top:10px;">
		
		<div class="discount_msg_show d3" style="display: none;" v-show="discount_show">优惠：<span>- {{discount_money | money1}} 元</span></div>
		<div class="d2">实付金额：
			<p>￥${employee.price*num}</p>
		</div>
	<!-- 	<div class="submit">
			<input id="submit" type="button" value="提交订单"/>
		</div> -->
		<div class="submit" data-id="${od.id}">
			提交订单
		</div>
		<div id="order"></div>
		<div class="txt2">
			<img src="${pageContext.request.contextPath}/imgs/ico_10 (1).png">
			<span>温馨提示：提交订单后，待支付的订单有3分钟的付款时间，逾期将自动取消订单。</span>
		</div>
	</div>
	<div class="box1">

	</div>
</section>
<!--弹窗区域-->
<!--余额支付-->
<div id="balance_payment" class="g-mask" :class="{'g-maskshow':isshow}">
	<div class="g-maskBox">
		<p>
			<img @click="isshow = false" src="${pageContext.request.contextPath}/imgs/close_img.png" class="closeImg">
		</p>
		<div class="info">
			<p class="p1">请输入支付密码</p>
			<div class="pbox" :class="{'pboxShow':!loadShow}">
				<input @keyup="keyup(0)" maxlength="1" type="password">
			</div>
			<div class="loadBox" :class="{'loadShow':loadShow}">
				<img src="${pageContext.request.contextPath}/imgs/loading1.gif" alt="">
				<span>请稍等...</span>
			</div>
			<div class="txt">
				<p>初始支付密码：手机号后6位</p>
				<p>请前往&nbsp;&nbsp;安全设置&nbsp;--&nbsp;修改密码</p>
			</div>
		</div>
	</div>
</div>
<!--微信支付支付/支付宝支付-->
<div id="weixin_payment" class="g-mask" :class="{'g-maskshow':isshow}">
	<div class="g-maskBox">
		<p>
			<img @click="closePo" src="${pageContext.request.contextPath}/imgs/close_img.png" class="closeImg">
		</p>
		<div class="info">
			<p class="p1">应付金额：<span v-text="pay_money">00.00</span>元</p>
			<p class="p2" v-text="title"></p>
			<div id="codem" class="imgBox" :class="{'imgShow':!loadShow}">
			</div>
			<div class="loadBox" :class="{'loadShow':loadShow}">
				<img src="imgs/loading1.gif" alt="">
				<span>正在生成二维码...</span>
			</div>
		</div>
	</div>
</div>

<!--被对方拉黑后的提示信息-->
<div class="limit_order_tc">
	<div class="info">
		<div class="txt">Ta限制了您的下单，换个陪陪下单吧！</div>
		<div class="btn_box">
			<a href="/"><p class="p1">换个陪陪</p></a>
			<p class="p2">去派单厅</p>
		</div>
	</div>
</div>

<!--底部-->

<footer>

        <div class="foot_bottom">版权所有 &#169 2019心悦网络科技有限公司</div>
    </footer>

<script>
    //声明一个全局变量原来存放当前的导航索引值
    var nav_focus_index = 'placeorder';    
</script>
<!--  -->
<script>
/**
 * 表单提交成功埋码
 * 此处是基础代码
 * 在注册提交成功的时候要执行
 * window._agl && window._agl.push(['track', ['success', {t: 3}]])
 * 现在这个代码放在新用户性别选择的按钮上且只有这一个地方
 */
window._agl = window._agl || [];
(function () {
    _agl.push(
        ['production', '_f7L2XwGXjyszb4d1e2oxPybgD']
    );
    (function () {
        var agl = document.createElement('script');
        agl.type = 'text/javascript';
        agl.async = true;
        agl.src = 'https://fxgate.baidu.com/angelia/fcagl.js?production=_f7L2XwGXjyszb4d1e2oxPybgD';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(agl, s);
    })();
})();
</script>
<script>
//百度统计
var _hmt = _hmt || [];
(function() {
    var hm = document.createElement("script");
    var s = document.getElementsByTagName("script")[0];
    hm.src = "https://hm.baidu.com/hm.js?92ccc5eceb3aa1534ed26f5ce1a7acd2";
    s.parentNode.insertBefore(hm, s);
})();
</script>
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>

<script>
    function totop(){
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
<!--插件-->
<!-- jquery-2.2.3 -->
<script src="${pageContext.request.contextPath}/js/jquery-2.2.3.min.js"></script>
<!-- 提醒弹窗 layer -->
<script src="${pageContext.request.contextPath}/js/layer.js"></script>
<!-- 存储 -->
<script src="${pageContext.request.contextPath}/js/store.legacy.min.js"></script>
<!-- 公共js -->
<script src="${pageContext.request.contextPath}/js/common_v3_js_version=201912181140.js"></script>

<!-- 导航模块 -->
<script src="${pageContext.request.contextPath}/js/public_nav_v3_js_version=201912181140.js"></script>

<!-- 登陆板块 -->
<script src="${pageContext.request.contextPath}/js/login_registration_v3_js_version=201912181140.js"></script>

<script src="${pageContext.request.contextPath}/js/require.js" data-main='https://yundown.daofengdj.com/static/home/js/placeorder/confirm_order' saync='true'></script>
<script src="${pageContext.request.contextPath}/js/require.config.js_version=201912231812.js"></script>
<script type="text/javascript">
$(".submit").click(function(){
	var descy = $.trim($("#txt").val());
	var dateId= $(this).attr('data-id');
	console.log(dateId);
	$.ajax({
		"url":"${pageContext.request.contextPath}/app/order/update?id="+dateId+"&bascy="+descy,
		"success":function(data,status){
		            alert("提交成功");  
		      },
		"error":function(obj){
			alert("提交失败！请重试。");
		  }
		});
	});
</script>
</body>
</html>