<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>LOL陪玩_LOL约玩_英雄联盟陪玩_妹子约玩_心悦电竞陪玩平台</title>
    <meta name="keywords" content="LOL陪玩,LOL约玩,英雄联盟陪玩,心悦电竞陪玩">
    <meta name="description" itemprop="description" content="LOL英雄联盟陪玩平台就上心悦电竞，找妹子？找大神？心悦陪玩应有尽有。心悦陪玩平台为您提供最全面的LOL陪玩、约玩服务，带你五杀超神，聊天、唱歌，游戏不孤单！">
    <!-- 禁止IE强制识别手机号 -->
    <meta name="format-detection" content="telephone=no"/>
    <link rel="canonical" href="https://www.daofengdj.com/peiwan/lol/"/>
    <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico" type="${pageContext.request.contextPath}/image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layer.css">
    <!--底部 和 侧边栏样式 以及部分弹窗样式都在这个文件中-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public_v3_css_version=201912181140.css">
    <!--v2侧边栏样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sidebar_v3_css_version=201912181140.css">
    <!--登录注册模板样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_registration_v3_css_version=201912181140.css">
    <!--头部导航模板样式-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/public_nav_v3_css_version=201912181140.css">
    <script>
        window.website_version = "201912181140";//网站版本号用于处理js的缓存1
                    var loginstatus = 0;
                var pw_status = 0;
                //图形验证码地址
        var img_code = 'https://www.daofengdj.com/captcha.html';
        var mobileValue = 0; //判断用户是否绑定手机号：0|未绑定；1|已绑定
                var public_img_str = "https://yundown.daofengdj.com/static/public/img";
        var home_img_str = "https://yundown.daofengdj.com/static/home/img";
    </script>
    
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/public_frame_v3_css_version=201912181140.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/list_v3_css_version=201912181140.css">


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
           <div>
            <!--登录-->
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
    var cur_game_id = '1'
    var game_id = '1';     //当前游戏ID
    var cur_demain = location.origin;
    if (cur_demain.indexOf('www.daofengdj.com') !== -1) {
        document.write('<scri' + 'pt' + ' src="js/api_v=2.js"' + '></s' + 'cript>');
    }
</script>
<!--百度地图插件-->
<div id="allmap" style="display:none;" msg="百度地图插件元素"></div>
<div class="sidebar">
    <div class="sidebar_content">
        <div class="sidebar_content_title">
            <i class="sidebar_icon game_icon"></i>
            游戏类型
        </div>
        <c:forEach items="${typeList}" var="type">
        <div class="items_box">
                            <a  href="#"
                    class="game_item active"
                    typeid="1"
                >
                
                        <i class="game_icon">
                            <img class="img1" src="imgs/2af2db213a4a80ec660cf634bcbef47e.png" alt="">
                            <img class="img2" src="imgs/12ef4a48e7b298f79ecad6b3ca8dd5e2.png" alt="">
                        </i>${type.greamName }</a>             

        </div>
		</c:forEach>
    </div>

</div>
<div class="list_main">
    <div class="content">
        <div class="cur_position">
            <a href="https://www.daofengdj.com/" title="心悦电竞">首页</a>
            <em>/</em>
            <span>英雄联盟陪玩</span>
        </div>
        <div class="listing_search">
            <div class="nav_list">
                <div class="nav_title">筛选</div>
                <div class="nav_content">
                    <div class="nav_content_list"  onmousemove="show_option(this)" onmouseout="hide_option(this)">
                        <div class="nav_content_list_box">
                            <span class="text">性别</span>
                            <i class="icon_trigon_down"></i>
                        </div>
                        <div class="option_content">
                            <span onclick="choose_sex(0,this,'sex')">不限</span>
                            <span onclick="choose_sex(1,this,'sex')">男神</span>
                            <span onclick="choose_sex(2,this,'sex')">女神</span>
                        </div>
                    </div>
                    <div class="nav_content_list" onmousemove="show_option(this)" onmouseout="hide_option(this)">
                        <div class="nav_content_list_box">
                            <span class="text">等级分类</span>
                            <i class="icon_trigon_down"></i>
                        </div>
                        <div class="option_content" id="game_level_option"></div>
                    </div>
                </div>
            </div>
            <div class="nav_list sort_wrap">
                <div class="nav_title">排序</div>
                <div class="nav_content">
                    <div class="nav_content_list active" >
                        <div class="nav_content_list_box" onclick="click_option(this,'zonghe')">
                            <span class="text">综合排序</span>
                        </div>
                    </div>
                    <div class="nav_content_list" onmousemove="show_option(this)" onmouseout="hide_option(this)">
                        <div class="nav_content_list_box">
                            <span class="text">接单</span>
                            <i class="icon_trigon_down"></i>
                        </div>
                        <div class="option_content">
                            <span onclick="choose_sex('orders7',this,'order')">接单7日榜</span>
                            <!-- <span onclick="choose_sex('orders30',this,'order')">接单30日榜</span> -->
                        </div>
                    </div>
                    <div class="nav_content_list">
                        <div class="nav_content_list_box price_option" onclick="click_price(this)">
                            <span class="text">价格</span>
                            <i class="arrow_up"></i>
                            <i class="arrow_down"></i>
                        </div>
                    </div>
                    <div class="nav_content_list">
                        <div class="nav_content_list_box" onclick="click_option(this,'scoring')">
                            <span class="text">评价</span>
                        </div>
                    </div>
                    <div class="nav_content_list new_wrap">
                        <div class="nav_content_list_box" onclick="click_option(this,'new_person')">
                            <span class="text">新人</span>
                        </div>
                    </div>
                    <div class="nav_content_list">
                        <div class="nav_content_list_box" onclick="click_option(this,'compensation')">
                            <span class="text">超时赔</span>
                            <i class="corner_mark"></i>
                        </div>
                    </div>
                    <div class="nav_content_list" id="taiwan_box">
                        <!-- <div class="hover_hint_down_arrow"></div> -->
                        <!-- <div class="hover_hint">当前台湾风情只开通了<span>娱乐服务类型</span>，请各位老板在娱乐类型中筛选哦～</div> -->
                        <div class="nav_content_list_box" onclick="click_option(this,'taiwan')">
                            <span class="text">台湾风情</span>
                        </div>
                    </div>
                    <div class="nav_content_list">
                        <div class="nav_content_list_box" onclick="click_option(this,'near')">
                            <span class="text">附近的人</span>
                        </div>
                    </div>
                    <div class="ranking_list" onclick="show_bang_pop(this)"></div>
                </div>
            </div>
        </div>
        <div class="person_box">

            <!--缺省页-->
            <div class="empty" style="display: none;">
                <img src="imgs/nothing.png">
            </div>
            
            <ul id="person_data" class="clear_fixed">
            
            <c:forEach items="${employeeList}" var="employee">
            <li>
                    <a class="u_avatar frame_logo_wrapper" href="${pageContext.request.contextPath}/app/lol?id=${employee.id}" target="_blank" title="你的电竞女友✿陪玩">
                      <!-- 角标 -->
                      
                          <img class="avatar" data-path="${pageContext.request.contextPath}/upload/${employee.headImg}"  src="${pageContext.request.contextPath}/upload/${employee.headImg}"alt="你的电竞女友✿陪玩" class="pic">
                        		<div class="tag">
                            <!--折扣-->
                                   <div class="discount">7折</div>
                            <!--超时赔-->
                                 </div>
                    </a>
                    <div class="u_info">
                        <div class="u_info_title_and_grade clear_fixed">
                            <div class="u_title">
                                                        ${employee.nickname}</div>
                                                     
                            	<div class="u_grade">璀璨钻石</div>
                 
                        </div>
                        <div class="u_auto_and_price clear_fixed">
                            <div class="u_auto" style="width: 60px;">
                                <i style="float: left;">Online</i>
                                
                          
                            </div>
                            <div class="u_price">￥${employee.price}</div>
                        </div>
                    </div>
                </li> 
               </c:forEach>           
            </ul>
            <div class="loading" style="display: none;"></div>
        </div>
    </div>
</div>

<div class="bang_list_box_bg" style="display: none;" onclick="hide_bang_pop()"></div>
<div class="bang_list_box clear_fixed" style="display: none;">
    <div class="list_box float_left">
        <div class="title">
            <img src="https://yundown.daofengdj.com/static/home/img/searchPlayer/list_v3/renqi.png" alt="">
        </div>
        <div class="week_and_day_box_title">
            <span class="active" onclick="choose_data(1,this,'renqi')">日</span>
            <span onclick="choose_data(2,this,'renqi')">周</span>
        </div>
        <ul class="person_list" id="renqi_day"></ul>
        <ul class="person_list" id="renqi_week" style="display: none;"></ul>
    </div>
    <div class="list_box float_right">
        <div class="title">
            <img src="https://yundown.daofengdj.com/static/home/img/searchPlayer/list_v3/meili.png" alt="">
        </div>
        <div class="week_and_day_box_title">
            <span class="active" onclick="choose_data(1,this,'meili')">日</span>
            <span onclick="choose_data(2,this,'meili')">周</span>
        </div>
        <ul class="person_list" id="meili_day">
           
        </ul>
        <ul class="person_list" id="meili_week" style="display: none;">
            
        </ul>
    </div>
</div>
<div class="peiwan_tip" >
    <div class="close" onclick="client_close()"></div>
    <div class="enter" onclick="go_room()"></div>
</div>
<!--div-->


<!-- 公共登录模块 -->
<script src="https://yundown.daofengdj.com/static/public/js/phone_prefix.js?version=201912181140" msg="手机号码前缀"></script>
<script src="https://yundown.daofengdj.com/static/html_js/public/login_pop_v3.js?version=201912181140" ></script>
<script src="https://yundown.daofengdj.com/static/user/js/index/chat.js?version=201912181140" msg="单聊"></script>
<script src="https://ssl.captcha.qq.com/TCaptcha.js" msg="腾讯云图形验证"></script>
<!--侧边栏-->
<!--市场推广http://dfdj.86szs.wang 不显示-->

<!--底部-->

<script>
    //声明一个全局变量原来存放当前的导航索引值
    var nav_focus_index = 'index_peiwan';    
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
<script src="js/jquery-2.2.3.min.js"></script>
<!-- 提醒弹窗 layer -->
<script src="js/layer.js"></script>
<!-- 存储 -->
<script src="js/store.legacy.min.js"></script>
<!-- 公共js -->
<script src="js/common_v3_js_version=201912181140.js"></script>

<!-- 导航模块 -->
<script src="js/public_nav_v3_js_version=201912181140.js"></script>

<!-- 登陆板块 -->
<script src="js/login_registration_v3_js_version=201912181140.js"></script>


<script src="js/list_v3_js_version=201912181651.js"></script>

</body>
</html>