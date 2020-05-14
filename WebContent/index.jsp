<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>心悦电竞游戏陪玩平台-游戏陪玩美女小姐姐都在这了-相约开黑【官方网站】</title>
    <meta name="keywords" content="陪玩,心悦电竞陪玩,LOL陪玩,吃鸡陪玩,绝地求生陪玩,王者荣耀陪玩,刺激战场陪玩,英雄联盟陪玩">
    <meta name="description" itemprop="description" content="心悦电竞游戏陪玩平台为您提供全网最全面的妹子陪玩服务，这里有绝地求生吃鸡,英雄联盟LOL,王者荣耀,刺激战场,魔兽世界,APEX英雄等热门游戏陪玩服务，更有美女小姐姐陪玩24小时接单,找代练,代打平台，就上心悦电竞！">

    <meta name="format-detection" content="telephone=no"/>
    
    <link rel="icon" href="${pageContext.request.contextPath}/css/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layer.css">
    <!--底部 和 侧边栏样式 以及部分弹窗样式都在这个文件中-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public_v3_css_version=201912181140.css">
    <!--v2侧边栏样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar_v3_css_version=201912181140.css">
    <!--登录注册模板样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_registration_v3_css_version=201912181140.css">
    <!--头部导航模板样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public_nav_v3_css_version=201912181140.css">
   
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper_min_css.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public_frame_v3_css_version=201912181140.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index_v3_css_version=201912181140.css">
<style type="text/css">
body{
background: url(${pageContext.request.contextPath}/imgs/bj_girl.jpg);
}
</style>
</head>
<body>
<!--头部-->
<div class="public_nav_v3">
    <div class="info_wrap position">
        <div class="info">
            <!--logo-->
            <a href="/" class="logo_wrap"><img class="logo" alt="心悦电竞陪玩" src="${pageContext.request.contextPath}/imgs/logo.png"></a>
            <!--导航-->

            <div class="p_nav">
                <div class="active"> 导航
                </div>

   <c:forEach items="${menuList}" var="menu">
                <div class="p_nav">
                    <a href="${pageContext.request.contextPath}${menu.url}">
                 			${menu.menuName}
                    </a>
                </div>
</c:forEach>       
 </div>
          <div>  <!--登录-->
         <div class="right"> 
                  <div class="login">
                    <div class="user_login_box">
                    <c:if test="${not empty user1}">
                    ${user1.nickname}
                    <a href="${pageContext.request.contextPath}/app/logout">退出</a>
                    </c:if>
					<c:if test="${user1==null}">
					<a href="${pageContext.request.contextPath}/login.jsp">登录</a>
					<a href="${pageContext.request.contextPath}/login.jsp">/注册</a>
					</c:if>
                  </div>
                    </div>
				</div>
			</div>       
            <!--搜索-->
            <div class="search_box">
                <input type="text" style="display: none;">
                <input type="password" style="display: none;">
                <input placeholder="陪玩昵称、ID、靓号" type="text" class="nav_search_inpt" autocomplete="off" maxlength="10">
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

<script>
    var volvo_page = '2';
    var alert_pw_label = '';
</script>
<section>
    <div class="banner-box">
        <div class="banner-wrap">
            <a class="left_entrance" href="https://www.daofengdj.com/fastinvite" target="_blank"></a>
            <a class="right_entrance" href="https://www.daofengdj.com/fastinvite" target="_blank"></a>
                        <div class="client_enter">
                <div class="live">
                     <div class="img"></div>
                     <span></span>
                     <span></span>
                     <!-- <span></span> -->
                 </div>
                <div class="client_con">
                    <div class="img"><img src="${pageContext.request.contextPath}/imgs/60.jpg" alt=""><span></span></div>
                    <p><span>83</span>人正在热聊</p>
                    <div class="but" onclick="index_v3_data.methods.go_room(225)">加入热聊</div>
                </div>
            </div>
                        <!-- 服务分类 -->
            <div class="left">
                                <div class="r-i">
                    <a href="#" target="_blank" title="英雄联盟陪玩">
                        <img src="${pageContext.request.contextPath}/imgs/7c40575ba326e7a60fa97b0de2b22dc5.png" alt="英雄联盟陪玩服务照片" class="img-service">
                        <div class="text">英雄联盟</div>
                    </a>
                </div>
                                <div class="r-i">
                    <a href="#" target="_blank" title="绝地求生陪玩">
                        <img src="${pageContext.request.contextPath}/imgs/0e3d8a90d4ebffbbe1b8092c153bc0ab.png" alt="绝地求生陪玩服务照片" class="img-service">
                        <div class="text">绝地求生</div>
                    </a>
                </div>
                                <div class="r-i">
                    <a href="#" target="_blank" title="王者荣耀陪玩">
                        <img src="${pageContext.request.contextPath}/imgs/0e3d8a90d4ebffbbe1b8092c153bc0ab.png" alt="王者荣耀陪玩服务照片" class="img-service">
                        <div class="text">王者荣耀</div>
                    </a>
                </div>
                                <div class="r-i">
                    <a href="#" target="_blank" title="语音聊天陪玩">
                        <img src="${pageContext.request.contextPath}/imgs/38e045c471c25473fcfb59d183b9d48d.png" alt="语音聊天陪玩服务照片" class="img-service">
                        <div class="text">语音聊天</div>
                    </a>
                </div>
                                <div class="r-i">
                    <a href="#" target="_blank" title="云顶之弈陪玩">
                        <img src="${pageContext.request.contextPath}/imgs/e09c740990d888af07a846134ad2c1d0.png" alt="云顶之弈陪玩服务照片" class="img-service">
                        <div class="text">云顶之弈</div>
                    </a>
                </div>
                                <div class="r-i">
                    <a href="#" target="_blank" title="和平精英陪玩">
                        <img src="${pageContext.request.contextPath}/imgs/1f845f547521b618682324a4f1b42765.png" alt="和平精英陪玩服务照片" class="img-service">
                        <div class="text">和平精英</div>
                    </a>
                </div>
                                <div class="r-i">
                    <a href="#" target="_blank" title="声音鉴定陪玩">
                        <img src="${pageContext.request.contextPath}/imgs/4023d919700131718f99ea7eabe4fb68.png" alt="声音鉴定陪玩服务照片" class="img-service">
                        <div class="text">声音鉴定</div>
                    </a>
                </div>
                                <div class="r-i">
                    <a href="#" target="_blank"  title="更多分类">
                        <img src="${pageContext.request.contextPath}/imgs/more.png" alt="" class="img-service">
                        <div class="text">更多分类</div>
                    </a>
                </div>
            </div>
            <!-- banner轮播 -->
            <div class="middle">
                <div class="middle-nav-box">
                    <ul class="middle-nav" id="middle-nav">
                                                <li id="li_nav_1" class="active">
                                                    <img src="${pageContext.request.contextPath}/imgs/21566643b3625be120d2447ef9f98885.png" alt="心悦电竞陪玩banner1" onclick="index_v3_data.methods.banner_nav(1)">
                        </li>
                                                <li id="li_nav_2">
                                                    <img src="${pageContext.request.contextPath}/imgs/6c6cd5b1869410a03c3872de07e7f9d2.png" alt="心悦电竞陪玩banner2" onclick="index_v3_data.methods.banner_nav(2)">
                        </li>
                                                <li id="li_nav_3">
                                                    <img src="${pageContext.request.contextPath}/imgs/e9ed7fe61ab0de99418ada96620da563.png" alt="心悦电竞陪玩banner3" onclick="index_v3_data.methods.banner_nav(3)">
                        </li>
                                                <li id="li_nav_4">
                                                    <img src="${pageContext.request.contextPath}/imgs/50f19a40d91cbe957b79d1c69b57a0bf.png" alt="心悦电竞陪玩banner4" onclick="index_v3_data.methods.banner_nav(4)">
                        </li>
                                            </ul>
                </div>
                <div class="middle-swiper swiper-no-swiping">
                    <div class="swiper-container gallery-top">
                        <div class="swiper-wrapper">
                                                        <a href="#" class="swiper-slide baner_a" style="background-image:url(${pageContext.request.contextPath}/imgs/4879ecad825ca9cbea0dac21d97a1e36.png);cursor: pointer;" target="_blank" title="谁与争锋活动"></a>
                                                        <a href="#" class="swiper-slide baner_a" style="background-image:url(${pageContext.request.contextPath}/imgs/148a89f7f157a7f0a77c71ad4eafdc8d.png);cursor: pointer;" target="_blank" title="聊天室招募"></a>
                                                        <a href="#" class="swiper-slide baner_a" style="background-image:url(${pageContext.request.contextPath}/imgs/cc58dbcbf516d965054cb4614cb914a4.jpg);cursor: pointer;" target="_blank" title="找大神，找萌妹"></a>
                                                        <a href="#" class="swiper-slide baner_a" style="background-image:url(${pageContext.request.contextPath}/imgs/f29f74609ac0db8f57621018c0b9765d.png);cursor: pointer;" target="_blank" title="APP下载"></a>
                                                    </div>
                    </div>
                    
                </div>
            </div>
        </div>
         <!--赠礼单-->
        <div class="list_scroll">
            <div class="scroll_dom">
                                <div class="list">
                                        <img src="${pageContext.request.contextPath}/imgs/pdd.jpg" alt="PDD-陪玩" class="avatar">
                                        
                    PDD收到芜湖大司马的超级火箭
                    <img class="gift" src="${pageContext.request.contextPath}/imgs/cjhj.jpg" alt="超级火箭"> X 115                </div>
                                <div class="list">
                                        <img src="${pageContext.request.contextPath}/imgs/DSM.jpg" alt="芜湖大司马-陪玩" class="avatar">
                                        
                                                 芜湖大司马收到智勋的飞机
                    <img class="gift" src="${pageContext.request.contextPath}/imgs/fj.jpg" alt="飞机"> X 20                </div>
                                <div class="list">
                                                <img src="${pageContext.request.contextPath}/imgs/ws.jpg" alt="韦神-陪玩" class="avatar">
                                        
                    GodV收到骚男的超时空战舰

                    <img class="gift" src="${pageContext.request.contextPath}/imgs/cskzj.jpg" alt="超时空战舰"> X 1                </div>
			                    <div class="list">
			                                        <img src="${pageContext.request.contextPath}/imgs/zzt.jpg" alt="姿姿态-陪玩" class="avatar">
			                                        
			                                                 姿姿态收到UZI的藏宝图
			                    <img class="gift" src="${pageContext.request.contextPath}/imgs/cbt.jpg" alt="飞机"> X 20                </div>
			                    <div class="list">
			                                        <img src="${pageContext.request.contextPath}/imgs/uzi.jpg" alt="UZI-陪玩" class="avatar">
			                                        
			                                                 UZI收到姿姿态的虎牙一号
			                    <img class="gift" src="${pageContext.request.contextPath}/imgs/hyyh.jpg" alt="飞机"> X 20                </div>
			                    
			                    
                            </div>
        </div>
    </div>
    <!--推荐陪玩-->
    <div class="commend-box">
        <div class="title-wrap">
            <img src="https://yundown.daofengdj.com/static/home/img/index_v3/tit_1.png" alt="" width="133">
            <div class="commend-tab">
                                <div class="tab-i active">
                                全部</div>
                                <c:forEach items="${typeList}" var="type">
                                      <div class="tab-i">
                                		${type.greamName}</div>
                                </c:forEach>
      
                            </div>

                        <a href="https://www.daofengdj.com/peiwan/lol/" class="more_a active" target="_blank" title="更多英雄联盟陪玩">
                            <div class="more">更多</div></a>           
            <div class="desc-wrap">当前有
                    <span class="pw_num">
                           18</span>
                                名陪玩秒接单
            </div>
        </div>
        
        
   <!--=======================================================================================================  -->      
                      
                        
  
  <div class="hot-wrap">
					<div class="hot-i active">
						<ul class="hot_content_wrapper">
						<c:forEach items="${employeeList }" var="employee">
							<li class="hot_content_item">
								<div class="frame_logo_wrapper ">

									<!-- frame -->
									<a href="${pageContext.request.contextPath}/app/lol?id=${employee.id}" target="_blank" title="惠子宝贝陪玩">
										<!-- logo -->
										<div class="pic_box">
											<img src="${pageContext.request.contextPath}/upload/${employee.headImg}" alt="热门推荐惠子宝贝陪玩照片" class="pic">
										</div>
									</a>
									<!-- 角标 -->
									
									<!-- 靓号 -->
									
								</div>
								<!-- 用户信息 -->
								<div class="info_wrapper">
									<span class="nick_name">${employee.nickname}</span>
									</span>

								</div>
								<!-- 价格 -->
								<div class="desc_wrapper">

									<span class="btn_wrapper">
                                                             <span class="btn_item">
                                    <img src="https://img1.daofengdj.com/uploads/images/20190710/7f005799c45ea5b8a937c22c492c825a.png" class="btn_icon" title="云顶之弈" alt="云顶之弈陪玩游戏图标">
                                </span>
									<span class="btn_item">
                                    <img src="https://img1.daofengdj.com/uploads/images/20180521/3defe5d543152dd6ac78d5758f9d49aa.png" class="btn_icon" title="和平精英" alt="和平精英陪玩游戏图标">
                                </span>
									<span class="btn_item">
                                    <img src="https://img1.daofengdj.com/uploads/images/20180521/5b1429dd9fd331262c0e580d04659ce9.png" class="btn_icon" title="王者荣耀" alt="王者荣耀陪玩游戏图标">
                                </span>
									</span>
									<span class="price_wrapper">
                                <span class="num">￥${employee.price}</span>
									<span class="company" style="margin-left: 2px;"></span>
									</span>
								</div>
								<span class="line"></span>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>                      
 <!--=======================================================================================================  -->
<div class="bottom-wrap" id="bottom-wrap">
<!-- 热门活动 -->
    <ul class="hot_activity" id="hot_activity">
        <div class="title-wrap">
            <img src="https://yundown.daofengdj.com/static/home/img/index_v3/tit_3.png" alt="" width="133">
            <!-- <a href="/activity/list" target="_blank" title="更多活动">
                <div class="more">更多</div>
            </a> -->
        </div>
                <li>
            
           
                        <a href="javascript:;" onclick="index_v3_data.methods.activity_end()">
                            <img src="https://img1.daofengdj.com/uploads/images/20191125/e9849362175ae36bc88c6de3ca08c849.jpg" alt="">
                <div class="desc"><span class="name">年度盛典预选赛</span><span class="end">已结束</span></div>
                <div class="data">活动时间 2019.11.25-2019.12.04</div>
             </a>
        </li>
       
                <li>
            
           
                        <a href="javascript:;" onclick="index_v3_data.methods.activity_end()">
                            <img src="https://img1.daofengdj.com/uploads/images/20191110/8283dbc84f19e36ba8e5dfa431dc730d.png" alt="">
                <div class="desc"><span class="name">优质大神</span><span class="end">已结束</span></div>
                <div class="data">活动时间 2019.11.11-2019.11.11</div>
             </a>
        </li>
       
                <li>
            
           
                        <a href="javascript:;" onclick="index_v3_data.methods.activity_end()">
                            <img src="https://img1.daofengdj.com/uploads/images/20191111/f7f2c716a1941170d8d442c49dec99aa.png" alt="">
                <div class="desc"><span class="name">双十一狂欢节</span><span class="end">已结束</span></div>
                <div class="data">活动时间 2019.11.11-2019.11.13</div>
             </a>
        </li>
       
            </ul>
    <!-- 排行榜 -->

    <!-- 平台保障 -->
    <div class="bottom_ul" id="bottom_ul">
        <li><img src="https://yundown.daofengdj.com/static/home/img/index_v3/bot_1.png" alt=""><span>极速接单</span>八分钟不接单赔付</li>
        <li><img src="https://yundown.daofengdj.com/static/home/img/index_v3/bot_2.png" alt=""><span>信息提醒</span>来单短信提醒 不错过订单</li>
        <li><img src="https://yundown.daofengdj.com/static/home/img/index_v3/bot_3.png" alt=""><span>品质保障</span>服务不满意免单</li>
        <li><img src="https://yundown.daofengdj.com/static/home/img/index_v3/bot_4.png" alt=""><span>资金日结</span>实时掌控工资 给你安心</li>
        <li><img src="https://yundown.daofengdj.com/static/home/img/index_v3/bot_5.png" alt=""><span>7*24小时服务</span>自助下单 客服答疑</li>
    </div>
    <!-- 性别 标签选择 移到登录里面 -->
    </section>



<!-- 公共登录模块 -->
<script src="https://yundown.daofengdj.com/static/public/js/phone_prefix.js?version=201912181140" msg="手机号码前缀"></script>
<script src="https://yundown.daofengdj.com/static/html_js/public/login_pop_v3.js?version=201912181140" ></script>
<script src="https://yundown.daofengdj.com/static/user/js/index/chat.js?version=201912181140" msg="单聊"></script>
<script src="https://ssl.captcha.qq.com/TCaptcha.js" msg="腾讯云图形验证"></script>
<!--侧边栏-->
<!--市场推广http://dfdj.86szs.wang 不显示-->


<!--底部-->

<footer>
    <div class="foot">
        <div class="left">
            <!--市场推广http://dfdj.86szs.wang 不显示-->
                        <div class="left_i">
                <div class="bt">关于我们</div>
                <div class="list">
                    <div class="li">
                        <a href="https://www.daofengdj.com/help/contact_us.html" class="text" target="_blank" title="心悦电竞联系我们">联系我们</a>
                    </div>
                    <div class="li">
                        <a href="https://www.daofengdj.com/help/company_profile.html" class="text" target="_blank" title="心悦电竞公司简介">公司简介</a>
                    </div>
                   <!-- <div class="li">
                        <a href="https://www.daofengdj.com/index/join_us.html" class="text"  target="_blank" title="心悦电竞加入我们">加入我们</a>
                    </div> -->
                    <div class="li">
                        <a href="https://www.daofengdj.com/help/disclaimer.html" class="text" target="_blank" title="心悦电竞免责声明">免责声明</a>
                    </div>
                </div>
            </div>
                        <div class="left_i">
                <div class="bt">联系我们</div>
                <div class="list">
                    <!--市场推广http://dfdj.86szs.wang 不显示-->
                                        <div class="li">
                        <span class="text">客服电话</span>
                        <span class="num">
                                                        0371-55637968
                                                    </span>
                    </div>
                    <div class="li">
                        <span class="text">客服QQ</span>
                        <span class="num">2848380075</span>
                    </div>
                                        <div class="li">
                        <a class="text">网站地图</a>
                    </div>
					<div class="li">
					    <a href="https://www.daofengdj.com/index/join_us.html" class="text"  target="_blank" title="加入我们">加入我们</a>
					</div>
                </div>
            </div>
                        <div class="left_i link_wrap">
                <div class="bt">友情链接</div>
                
                                <div class="list">
                                        <div class="li">
                        <a class="text" title="租号玩" href="https://www.zuhaowan.com" target="_blank">租号玩</a>
                    </div>
                                        <div class="li">
                        <a class="text" title="rollfun" href="http://www.irollfun.com/" target="_blank">rollfun</a>
                    </div>
                                        <div class="li">
                        <a class="text" title="无忧安全" href="http://www.wyaq.com/" target="_blank">无忧安全</a>
                    </div>
                                    </div>
                            </div>
                    </div>
        <div class="right">
            <div class="ma_wrap">
                <img src="https://yundown.daofengdj.com/static/public/img/app.png" alt="心悦电竞APP下载二维码" class="ma">
                <div class="text">扫码下载APP</div>
            </div>
            <div class="ma_wrap">
                <img src="https://yundown.daofengdj.com/static/public/img/gzh_code.png" alt="心悦电竞公众号二维码" class="ma">
                <div class="text">关注微信公众号</div>
            </div>
        </div>
    </div>
        <div class="foot_bottom">版权所有 &#169 2019 心悦网络科技有限公司 <a href="#" target="_blank"></div>
    </footer>

<script>
    //声明一个全局变量原来存放当前的导航索引值
    var nav_focus_index = 'index_index_index';    
</script>
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

<!--插件-->
<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/index_v3_js_version=201912181140.js"></script>
<!-- 推荐陪玩 -->
<!-- <script src="https://yundown.daofengdj.com/static/html_js/index_v3/hot_pw.js?version=201912181140"></script> -->
<!-- 排行榜 -->
<script src="${pageContext.request.contextPath}/js/rank_js_version=201912181651.js"></script>  
<!-- 富豪推荐 -->
<script src="${pageContext.request.contextPath}/js/volvo_js_version=201912181140.js"></script>  

<script>
    //window.onload = function() {
        // 页面加载
        index_v3_data.onload();
        // hot_pw_data.onload();
        rank_v3_data.onload();
        volvo_data.onload();
    //};
</script>

</body>
</html>