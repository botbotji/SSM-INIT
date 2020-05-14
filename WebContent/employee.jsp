<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lol-心悦电竞</title>
<meta name="keywords"
	content="陪玩,心悦电竞陪玩,LOL陪玩,吃鸡陪玩,绝地求生陪玩,王者荣耀陪玩,刺激战场陪玩,英雄联盟陪玩">
<meta name="description" itemprop="description"
	content="心悦电竞游戏陪玩平台为您提供全网最全面的妹子陪玩服务，这里有绝地求生吃鸡,英雄联盟LOL,王者荣耀,刺激战场,魔兽世界,APEX英雄等热门游戏陪玩服务，更有美女小姐姐陪玩24小时接单,找代练,代打平台，就上心悦电竞！">

<link rel="canonical"
	href="https://www.daofengdj.comhttps://www.daofengdj.com/item/1209485.html" />
<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico"
	type="upload/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/layer.cssy">
<!--底部 和 侧边栏样式 以及部分弹窗样式都在这个文件中-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/public_v3_css_version=201912181140.css">
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
	href="${pageContext.request.contextPath}/css/item_v3_css_version=201912181651.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/laypage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/swiper_min_css.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/public_nav_v3_css_version=201912181140.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/noble_gifts_css_version=201912181651.css">


</head>
<body>
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
				<!--登录-->
				<div>
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
					</c:if>
					</div>
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

		<script>
			var body_bgi = "";
			var bodyBGI = document.querySelector('body');
			var img_path = "";
			if (body_bgi !== '') {
				img_path = body_bgi;
			};
			var str = "";
			str += 'background: url(${pageContext.request.contextPath}/imgs/bj_girl.jpg);';
			str += 'background-position: center 58px;';
			str += 'background-repeat:no-repeat; background-attachment:fixed;';

			bodyBGI.setAttribute("style", str);
			var pw_info = {
				"uid" : 1209485,
				"avatar" : "https:\/\/img1.daofengdj.com\
			/\/uploadss\/avatar\/20181023\/9cusct7fbmcg0f0h9qua1c5ntcyn2ngn.jpg",
				"nickname" : "\u6986\u67d4\u963f",
				"font_color" : 0,
				"sex" : 2,
				"tags_id" : "2,3,5",
				"login_status" : 2,
				"intro" : "",
				"scoring" : "5",
				"pw_status" : 1,
				"vip_uid" : 0,
				"bond_status" : 1,
				"address" : "\u5730\u5740\u4fdd\u5bc6",
				"avatar_frame" : "1",
				"tags" : [ {
					"tags_id" : "2",
					"tags_name" : "\u841d\u8389\u97f3"
				}, {
					"tags_id" : "3",
					"tags_name" : "\u5e7d\u9ed8\u9017\u6bd4"
				}, {
					"tags_id" : "5",
					"tags_name" : "\u60c5\u611f\u77e5\u5fc3"
				} ],
				"is_follow" : 1,
				"login_status_msg" : "\u5728\u7ebf",
				"order_num" : 384,
				"appraise_num" : 56,
				"follow_num" : 31,
				"is_qh" : null,
				"background" : ""
			};
			var pw_sponsor_info = null;
			var pw_info1 = {
				uid : "${employee.id}",
				nickname : "${employee.nickname}",
				avatar : "https://img1.daofengdj.com//uploadss/avatar/20181023/9cusct7fbmcg0f0h9qua1c5ntcyn2ngn.jpg!daofengdj/sq/270",
				tags : [ {
					"tags_id" : "2",
					"tags_name" : ""
				}, {
					"tags_id" : "3",
					"tags_name" : ""
				}, {
					"tags_id" : "5",
					"tags_name" : ""
				} ],
				pw_sponsor_name : "",
				final_end_time : "",
			};
			localStorage.setItem("pw_info", JSON.stringify(pw_info));
			var login_status = '';
		</script>
	
	<section status="${employee.id}"> <input type="hidden"
		name="id" value="${employee.id}" /> <span style="display: none;"
		id="codem"></span>
	<div class="detail_wrapper">
		<div class="detail_content">
			<!-- 面导航 -->
			<div class="crumbs_nav">
				<div class="nav_list">
					<c:forEach items="${menuList}" var="menu">
						<a href="https://www.daofengdj.com/" title="心悦电竞">${menu.menuName}</a>
						<img src="${pageContext.request.contextPath}/imgs/ico_03.png"
							alt="">
					</c:forEach>
					<a href="#">陪玩</a> <img
						src="${pageContext.request.contextPath}/imgs/ico_03.png" alt="">

					<span>${employee.nickname}</span>

				</div>

			</div>


			<div class="content_top">
				<span class="status on_line">${employee.state}</span>
				<div class="pic_box">
					<p class="pic">
						<img src="${pageContext.request.contextPath}/upload/${employee.headImg}">
							alt="${employee.nickname}陪玩"> <span class="frame_0"></span>
					</p>
				</div>
				<div class="box1">
					<div class="t1">
						${employee.nickname} <i class="gender"></i> <i class="rz"> <span>平台认证</span>
						</i> <i class="star"> <span>明星陪玩</span>
						</i> <i class="pei" msg="超时赔显示"> <span style="width: 240px;">${employee.descy}</span>
						</i>
					</div>
					<div class="t2">
						<div id="pw_uid" pw_nick_name="${employee.nickname }"
							pw_uid="${employee.password}">ID：${employee.password}</div>
						<div class="mieli">
							<i class="ml"></i> 10450<span></span>
						</div>
						<div class="qiri">
							<em class="text">五日热度<i class="num">600+</i></em> <span
								class="desc">最近五日接单和收礼物的综合排名</span>
						</div>
					</div>
					<div class="t3">
						<img src="${pageContext.request.contextPath}/imgs/address.png"
							alt="" class="ico_address"> <span class="text">${employee.home}</span>

					</div>

				</div>

				<div class="box2 dong_tai_msg ">
					<ul>
						<li>
							<div>
								17:40 <span class="nickname">小坏蛋77741</span> 赠送 <a
									href="https://www.daofengdj.com/item/1592898.html"
									target="_blank">可爱多✨接通宵单</a> 1个蛋糕<img src="imgs/dangao.pngo"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:40 <span class="nickname">幸运签杀手</span> 赠送 <a
									href="https://www.daofengdj.com/item/1349901.html"
									target="_blank">一命。</a> 10个香吻<img src="imgs/xiangwen.pngw"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:40 <span class="nickname">南有乔木，</span> 赠送 <a
									href="https://www.daofengdj.com/item/1981800.html"
									target="_blank">北鹿</a> 20个肥宅水<img src="imgs/feizhaishui.png"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:40 <span class="nickname">Yn与伱聘诉＋</span> 赠送 <a
									href="https://www.daofengdj.com/item/1779832.html"
									target="_blank">Yn与伱聘诉＋</a> 1个小拳拳<img
									src="imgs/xiaoquanquan.png" alt="">
							</div>
						</li>
						<li>
							<div>
								17:40 <span class="nickname">女人都是泡椒风爪</span> 赠送 <a
									href="https://www.daofengdj.com/item/1981800.html"
									target="_blank">北鹿</a> 10个肥宅水<img src="imgs/feizhaishui.pngz"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:40 <span class="nickname">◉‿◉小丑男友</span> 赠送 <a
									href="https://www.daofengdj.com/item/1981800.html"
									target="_blank">北鹿</a> 20个肥宅水<img src="imgs/feizhaishui.pngi"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:40 <span class="nickname">天道落叶</span> 赠送 <a
									href="https://www.daofengdj.com/item/1777777.html"
									target="_blank">私欲ヾ收抽奖礼物</a> 20个麻辣烫<img src="imgs/malatang.png"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">女人都是泡椒风爪</span> 赠送 <a
									href="https://www.daofengdj.com/item/1981800.html"
									target="_blank">北鹿</a> 99个好人卡<img src="imgs/haorenka.png"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">南有乔木，</span> 赠送 <a
									href="https://www.daofengdj.com/item/1981800.html"
									target="_blank">北鹿</a> 10个肥宅水<img src="imgs/feizhaishui.pngz"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">◉‿◉小丑男友</span> 赠送 <a
									href="https://www.daofengdj.com/item/1981800.html"
									target="_blank">北鹿</a> 10个肥宅水<img src="imgs/feizhaishui.png"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">犹豫的小星</span> 赠送 <a
									href="https://www.daofengdj.com/item/2034194.html"
									target="_blank">Ns奈斯</a> 1个小拳拳<img src="imgs/xiaoquanquan.png"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">一命。</span> 赠送 <a
									href="https://www.daofengdj.com/item/1161271.html"
									target="_blank">幸运签杀手</a> 50个香吻<img src="imgs/xiangwen.png"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">◉‿◉小丑男友</span> 赠送 <a
									href="https://www.daofengdj.com/item/1996255.html"
									target="_blank">女人都是泡椒风爪</a> 5个肥宅水<img
									src="imgs/feizhaishui.pngi" alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">药不能停！</span> 赠送 <a
									href="https://www.daofengdj.com/item/1777777.html"
									target="_blank">私欲ヾ收抽奖礼物</a> 10个好人卡<img
									src="imgs/haorenka.pngo" alt="">
							</div>
						</li>
						<li>
							<div>
								17:39 <span class="nickname">南有乔木，</span> 赠送 <a
									href="https://www.daofengdj.com/item/1996255.html"
									target="_blank">女人都是泡椒风爪</a> 10个麻辣烫<img
									src="imgs/malatang.pngl" alt="">
							</div>
						</li>
						<li>
							<div>
								17:38 <span class="nickname">Yn与伱聘诉＋</span> 赠送 <a
									href="https://www.daofengdj.com/item/1779832.html"
									target="_blank">Yn与伱聘诉＋</a> 1个小拳拳<img
									src="imgs/xiaoquanquan.png" alt="">
							</div>
						</li>
						<li>
							<div>
								17:38 <span class="nickname">M听说</span> 赠送 <a
									href="https://www.daofengdj.com/item/1965389.html"
									target="_blank">M听说</a> 22个好人卡<img src="imgs/haorenka.pngn"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:38 <span class="nickname">南有乔木，</span> 赠送 <a
									href="https://www.daofengdj.com/item/1962187.html"
									target="_blank">◉‿◉小丑男友</a> 10个麻辣烫<img src="imgs/malatang.pnga"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:38 <span class="nickname">最后一颗心。</span> 赠送 <a
									href="https://www.daofengdj.com/item/1675272.html"
									target="_blank">无限收礼物给我</a> 1个皇冠<img src="imgs/huangguan.png"
									alt="">
							</div>
						</li>
						<li>
							<div>
								17:37 <span class="nickname">◉‿◉小丑男友</span> 赠送 <a
									href="https://www.daofengdj.com/item/1981800.html"
									target="_blank">北鹿</a> 15个肥宅水<img src="imgs/feizhaishui.pngz"
									alt="">
							</div>
						</li>
						<li>
							<div>
								09:34 <span class="nickname">腆着脸的十二</span> 赠送 <a
									href="https://www.daofengdj.com/item/1336154.html"
									target="_blank">瑾璃收打call</a> 1个周冠(7天)<img
									src="imgs/zhouguan.gif" alt="">
							</div>
						</li>
						<li>
							<div>
								02:36 <span class="nickname">腆着脸的十二</span> 赠送 <a
									href="https://www.daofengdj.com/item/1917142.html"
									target="_blank">板蓝根啾渣女团</a> 1个周冠(7天)<img
									src="imgs/zhouguan.gif" alt="">
							</div>
						</li>
						<li>
							<div>
								00:38 <span class="nickname">Ronin、</span> 赠送 <a
									href="https://www.daofengdj.com/item/1329216.html"
									target="_blank">宠溺、vo好困了</a> 1个日冠(1天)<img src="imgs/riguan.gif"
									alt="">
							</div>
						</li>
					</ul>
				</div>
				<div class="box3">
					<!-- 关注 -->
					<div id="follow" isfollow="1" class='gz '>
						<p class="guanzhu">31</p>
						<p onclick="item_v3_data.methods.followUser()">
							<img class="follow_ico"
								src="${pageContext.request.contextPath}/imgs/guanzhu_icon.png">
							<span class='follow_text'>关注</span>
						</p>
					</div>
					<!-- 分享 -->
					<div class="share_wrap">
						<div class="share_text_wrap">
							<i class="icon"></i><span class="text">分享</span>
						</div>
						<div class="share_box">
							<div class="share_content">
								<i class="icon"></i>
								<div class="share_detail">
									<div class="bdsharebuttonbox" data-tag="share_1">
										<a href="javascript:;" class="bds_sqq" data-cmd="sqq"
											title="分享到QQ好友"><span>QQ好友</span></a> <a href="javascript:;"
											class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"><span>QQ空间</span></a>
										<a href="javascript:;" class="bds_tsina" data-cmd="tsina"
											title="分享到新浪微博"><span>新浪微博</span></a>
									</div>
									<div class="share_wx wx_code">
										<img alt="加载中"> <span class="text">扫码分享</span>
									</div>
								</div>
								<div class="share_url">
									<input type="text" class="inpt" value="" readonly
										id="share_url_inpt"> <span class="copy_btn">复制</span>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- 相册 -->
			<div class="content_bottom">
				<div class="content_left">

					<div class="top">
						<div id="picBox" class="pic">
							<div class="picBox_info">
								<p>
									<i onclick="item_v3_data.methods.showLargeIcon()" class="i1"
										path="""></i> <span class="wai"> <span class="nei"><img
											src="${pageContext.request.contextPath}/upload/${employee.headImg}"
											class="picImg" alt="${employee.nickname}的照片1"></span></span>

								</p>
							</div>
							<div onclick="item_v3_data.methods.showLargeIcon()"
								class="enlarge">
								<img src="${pageContext.request.contextPath}/imgs/icofd.png">
							</div>
						</div>
						<div class="picBtn">
							<div class="leftBtn"
								onclick="item_v3_data.methods.changePhoto('left')"></div>
							<!-- <img  class="leftBtn" src="https://yundown.daofengdj.com/static/home/img/item_v3/left_3.png"> -->
							<div class="rightBtn"
								onclick="item_v3_data.methods.changePhoto('right')"></div>
							<!-- <img onclick="item_v3_data.methods.changePhoto('right')" class="rightBtn" src="https://yundown.daofengdj.com/static/home/img/item_v3/right_3.png"> -->
						</div>
					</div>

					<!-- 赠送礼物 -->
					<div class="middle">
						<div class="middle_tab_wrapper">
							<div class="middle_tab_item"
								onclick="item_v3_data.methods.giftTab(this,0)"></div>
							<div class="middle_tab_item"
								onclick="item_v3_data.methods.giftTab(this,1)"></div>
						</div>
						<div class="middle_content_wrapper">
							<!-- 礼物 -->
							<div class="middle_content_item on left_gift">
								<div class="swiper-container">
									<div class="swiper-wrapper gift_list_wrapper">
														
										<div class="swiper-slide ">
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',0)">
												<div class="img_wrap">
													<img src="${pageContext.request.contextPath}/imgs/83.png"
														alt="头条礼物陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">头条礼物</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">1</span>
													</div>
												</div>
												<div class="gift_mark">
													<div class="dot"></div>
													<div class="pulse"></div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',0)">
												<div class="img_wrap">
													<img
														src="${pageContext.request.contextPath}/imgs/maikefeng1.png"
														alt="麦克风陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">麦克风</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">1</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',0)">
												<div class="img_wrap">
													<img
														src="${pageContext.request.contextPath}/imgs/xingyunxing.png"
														alt="幸运星陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">幸运星</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">1</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',0)">
												<div class="img_wrap">
													<img
														src="${pageContext.request.contextPath}/imgs/bangbangda.png"
														alt="棒棒哒陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">棒棒哒</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">1</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_5',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_5',0)">
												<div class="img_wrap">
													<img
														src="${pageContext.request.contextPath}/imgs/xianhua.png"
														alt="鲜花陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">鲜花</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">5</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_6',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_6',0)">
												<div class="img_wrap">
													<img
														src="${pageContext.request.contextPath}/imgs/baobao.png"
														alt="抱抱陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">抱抱</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">10</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_7',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_7',0)">
												<div class="img_wrap">
													<img
														src="${pageContext.request.contextPath}/imgs/memeda.png"
														alt="么么哒陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">么么哒</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">30</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_8',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_8',0)">
												<div class="img_wrap">
													<img
														src="${pageContext.request.contextPath}/imgs/daxiong.png"
														alt="大熊陪玩礼物1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">大熊</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">180</span>
													</div>
												</div>
											</div>
										</div>
										<div class="swiper-slide ">



											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item3_1',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item3_1',0)">
												<div class="img_wrap">
													<img src="${pageContext.request.contextPath}/imgs/yutu.png"
														alt="玉兔陪玩礼物3" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">玉兔</div>
													<div class="num">
														<img
															src="${pageContext.request.contextPath}/imgs/zuanshi.png"
															alt="" class="icon"> <span class="text">999</span>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="swiper-pagination"></div>
								<!-- 礼物详情 -->
								<div class="gift_pop_wrapper" id="left_gift_list">
									<div class="gift_pop_item gift_pop_item1_1 gift_pop_item1"
										price="1" id="36" icon_big_path="imgs/sss.png"
										icon_path="imgs/huangguan.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',0)">
										<img
											src="${pageContext.request.contextPath}/imgs/share_ico.png"
											class="icon">
										<div class="gift_info_wrapper">
											<img src="${pageContext.request.contextPath}/imgs/70.png"
												alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">头条礼物</span> <span class="price_wrapper">
													<img
													src="${pageContext.request.contextPath}/imgs/zuanshi.png"
													alt="" class="price_icon"> <span
													class="text zhifujin">1</span>
												</span>
												<div class="desc">今日头条活动礼物</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_2 gift_pop_item2"
										price="1" id="47" icon_big_path="imgs/maikefeng.png"
										icon_path="imgs/maikefeng.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',0)">
										<img
											src="${pageContext.request.contextPath}/imgs/share_ico.png"
											class="icon">
										<div class="gift_info_wrapper">
											<img
												src="${pageContext.request.contextPath}/imgs/maikefeng1.png"
												alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">麦克风</span> <span class="price_wrapper">
													<img
													src="${pageContext.request.contextPath}/imgs/zuanshi.png"
													alt="" class="price_icon"> <span
													class="text zhifujin">1</span>
												</span>
												<div class="desc"></div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_3 gift_pop_item3"
										price="1" id="24" icon_big_path="/uploads/xingyunxing.png"
										icon_path="imgs/xingyunxing.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',0)">
										<img src="imgs/share_ico.png" class="icon">
										<div class="gift_info_wrapper">
											<img src="imgs/xingyunxing.png" alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">幸运星</span> <span class="price_wrapper">
													<img src="imgs/ico_18 (1).png" alt="" class="price_icon">
													<span class="text zhifujin">1</span>
												</span>
												<div class="desc">带给你更多的幸运</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_4 gift_pop_item4"
										price="1" id="25"
										icon_big_path="https://img1.daofengdj.com/uploadss/uploads/20180528/ffb1959d10301a5791e0ee9a45685d29.png"
										icon_path="imgs/bangbangda.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',0)">
										<img src="imgs/share_ico.png" class="icon">
										<div class="gift_info_wrapper">
											<img src="imgs/bangbangda.png" alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">棒棒哒</span> <span class="price_wrapper">
													<img src="imgs/ico_18 (1).png" alt="" class="price_icon">
													<span class="text zhifujin">1</span>
												</span>
												<div class="desc">导师真是棒棒哒</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_5 gift_pop_item5"
										price="5" id="26"
										icon_big_path="https://img1.daofengdj.com/uploadss/uploads/20180528/68f3fca7dd1b1855869c4a34ce60732b.png"
										icon_path="imgs.xianhua.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_5',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_5',0)">
										<img src="imgs/share_ico.png" class="icon">
										<div class="gift_info_wrapper">
											<img src="imgs/xianhua.png" alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">鲜花</span> <span class="price_wrapper">
													<img src="imgs/ico_18 (1).png" alt="" class="price_icon">
													<span class="text zhifujin">5</span>
												</span>
												<div class="desc">只为逗你开心</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_6 gift_pop_item6"
										price="10" id="27"
										icon_big_path="https://img1.daofengdj.com/uploadss/uploads/20180528/4e97c9c9f3daf154825ac6e16d604ade.png"
										icon_path="imgs/baobao.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_6',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_6',0)">
										<img src="imgs/ico_18 (1).png" class="icon">
										<div class="gift_info_wrapper">
											<img src="imgs/baobao.png" alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">抱抱</span> <span class="price_wrapper">
													<img src="imgs/ico_18 (1).pngs" alt="" class="price_icon">
													<span class="text zhifujin">10</span>
												</span>
												<div class="desc">抱抱，把我的温暖传递给你</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_7 gift_pop_item7"
										price="30" id="28" icon_big_path="imgs/memeda.png"
										icon_path="imgs/memeda.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_7',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_7',0)">
										<img src="imgs/memeda.png" class="icon">
										<div class="gift_info_wrapper">
											<img src="imgs/memeda.pngm" alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">么么哒</span> <span class="price_wrapper">
													<img src="imgs/ico_18 (1).png" alt="" class="price_icon">
													<span class="text zhifujin">30</span>
												</span>
												<div class="desc">kiss u love u</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_8 gift_pop_item8"
										price="180" id="29" icon_big_path="imgs/daxiong.pngg"
										icon_path="imgs/daxiong.pngg"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_8',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_8',0)">
										<img src="imgs/daxiong.png" class="icon">
										<div class="gift_info_wrapper">
											<img src="imgs/daxiong.pngg" alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">大熊</span> <span class="price_wrapper">
													<img src="imgs/ico_18 (1).png" alt="" class="price_icon">
													<span class="text zhifujin">180</span>
												</span>
												<div class="desc">让它代我陪伴你</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item3_1 gift_pop_item1"
										price="999" id="41"
										icon_big_path="https://img1.daofengdj.com/uploadss/uploads/20180920/b10188fa53257f2732da2ed998d395ce.png"
										icon_path="https://img1.daofengdj.com/uploadss/uploads/20180920/b10188fa53257f2732da2ed998d395ce.png"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item3_1',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item3_1',0)">
										<img
											src="https://yundown.daofengdj.com/static/home/img/item_v3/share_ico.png"
											class="icon">
										<div class="gift_info_wrapper">
											<img
												src="https://img1.daofengdj.com/uploadss/uploads/20180920/b10188fa53257f2732da2ed998d395ce.png!daofengdj/sq/70"
												alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">玉兔</span> <span class="price_wrapper">
													<img
													src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
													alt="" class="price_icon"> <span
													class="text zhifujin">999</span>
												</span>
												<div class="desc">月宫玉兔</div>
											</div>
										</div>
										<ul class="gift_pop_list_wrapper">
											<li data="1" class="gift_pop_list_item">
												<p class="num">1</p>
											</li>
											<li data="10" class="gift_pop_list_item">
												<p class="num">10</p>
											</li>
											<li data="30" class="gift_pop_list_item">
												<p class="num">30</p>
											</li>
											<li data="66" class="gift_pop_list_item">
												<p class="num">66</p>
											</li>
											<li data="520" class="gift_pop_list_item">
												<p class="num">520</p>
											</li>
											<li data="1314" class="gift_pop_list_item">
												<p class="num">1314</p>
											</li>
										</ul>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt">
												<span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 冠名 -->
							<div class="middle_content_item left_guanming">
								<div class="swiper-container">
									<div class="swiper-wrapper gift_list_wrapper">
										<div class="swiper-slide ">
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',0)">
												<div class="img_wrap">
													<img
														src="https://img1.daofengdj.com/uploadss/uploads/20180601/6f4e977166bb83ceef5591ee2ee1d501.gif!daofengdj/sq/83"
														alt="日冠(1天)陪玩冠名1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">日冠(1天)</div>
													<div class="num">
														<img
															src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
															alt="" class="icon"> <span class="text">1314</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',0)">
												<div class="img_wrap">
													<img
														src="https://img1.daofengdj.com/uploadss/uploads/20180601/c488d898efe3493b6ade705c1d2a92bd.gif!daofengdj/sq/83"
														alt="周冠(7天)陪玩冠名1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">周冠(7天)</div>
													<div class="num">
														<img
															src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
															alt="" class="icon"> <span class="text">5200</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',0)">
												<div class="img_wrap">
													<img
														src="https://img1.daofengdj.com/uploadss/uploads/20180601/07f603e73477dbe673c5a624c77f9e84.gif!daofengdj/sq/83"
														alt="月冠(30天)陪玩冠名1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">月冠(30天)</div>
													<div class="num">
														<img
															src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
															alt="" class="icon"> <span class="text">13140</span>
													</div>
												</div>
											</div>
											<div class="gift_list_item"
												onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',1)"
												onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',0)">
												<div class="img_wrap">
													<img
														src="https://img1.daofengdj.com/uploadss/uploads/20180601/274b3402cd4d9ca1b98769397447fc9a.gif!daofengdj/sq/83"
														alt="生死冠(360天)陪玩冠名1" class="gift_icon">
												</div>
												<div class="info">
													<div class="name">生死冠(360天)</div>
													<div class="num">
														<img
															src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
															alt="" class="icon"> <span class="text">131400</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="swiper-pagination"></div>
								<!-- 冠名详情 -->
								<div class="gift_pop_wrapper" id="left_guanming_list">
									<div class="gift_pop_item gift_pop_item1_1 gift_pop_item1"
										price="1314" id="3"
										icon_path="https://img1.daofengdj.com/uploadss/uploads/20180601/6f4e977166bb83ceef5591ee2ee1d501.gif"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_1',0)">
										<img
											src="https://yundown.daofengdj.com/static/home/img/item_v3/share_ico.png"
											class="icon">
										<div class="gift_info_wrapper">
											<img
												src="https://img1.daofengdj.com/uploadss/uploads/20180601/6f4e977166bb83ceef5591ee2ee1d501.gif!daofengdj/sq/70"
												alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">日冠(1天)</span> <span class="price_wrapper">
													<img
													src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
													alt="" class="price_icon"> <span
													class="text zhifujin">1314</span>
												</span>
												<div class="desc">只想留在你身边</div>
											</div>
										</div>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt"
													readonly> <span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_2 gift_pop_item2"
										price="5200" id="4"
										icon_path="https://img1.daofengdj.com/uploadss/uploads/20180601/c488d898efe3493b6ade705c1d2a92bd.gif"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_2',0)">
										<img
											src="https://yundown.daofengdj.com/static/home/img/item_v3/share_ico.png"
											class="icon">
										<div class="gift_info_wrapper">
											<img
												src="https://img1.daofengdj.com/uploadss/uploads/20180601/c488d898efe3493b6ade705c1d2a92bd.gif!daofengdj/sq/70"
												alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">周冠(7天)</span> <span class="price_wrapper">
													<img
													src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
													alt="" class="price_icon"> <span
													class="text zhifujin">5200</span>
												</span>
												<div class="desc">只想留在你身边</div>
											</div>
										</div>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt"
													readonly> <span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_3 gift_pop_item3"
										price="13140" id="5"
										icon_path="https://img1.daofengdj.com/uploadss/uploads/20180601/07f603e73477dbe673c5a624c77f9e84.gif"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_3',0)">
										<img
											src="https://yundown.daofengdj.com/static/home/img/item_v3/share_ico.png"
											class="icon">
										<div class="gift_info_wrapper">
											<img
												src="https://img1.daofengdj.com/uploadss/uploads/20180601/07f603e73477dbe673c5a624c77f9e84.gif!daofengdj/sq/70"
												alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">月冠(30天)</span> <span
													class="price_wrapper"> <img
													src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
													alt="" class="price_icon"> <span
													class="text zhifujin">13140</span>
												</span>
												<div class="desc">只想留在你身边</div>
											</div>
										</div>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt"
													readonly> <span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
									<div class="gift_pop_item gift_pop_item1_4 gift_pop_item4"
										price="131400" id="6"
										icon_path="https://img1.daofengdj.com/uploadss/uploads/20180601/274b3402cd4d9ca1b98769397447fc9a.gif"
										onmouseover="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',1)"
										onmouseout="item_v3_data.methods.showGiftDetail('.gift_pop_item1_4',0)">
										<img
											src="https://yundown.daofengdj.com/static/home/img/item_v3/share_ico.png"
											class="icon">
										<div class="gift_info_wrapper">
											<img
												src="https://img1.daofengdj.com/uploadss/uploads/20180601/274b3402cd4d9ca1b98769397447fc9a.gif!daofengdj/sq/70"
												alt="" class="cur_icon">
											<div class="gift_info_content">
												<span class="name">生死冠(360天)</span> <span
													class="price_wrapper"> <img
													src="https://yundown.daofengdj.com/static/home/img/item_v3/ico_18.png"
													alt="" class="price_icon"> <span
													class="text zhifujin">131400</span>
												</span>
												<div class="desc">永远守护在你身边</div>
											</div>
										</div>
										<div class="gift_op_bottom">
											<div class="user_info_wrapper">
												<div class="surplus_diamonds">
													<span class="text">剩余钻石:</span> <span class="num">0</span>
												</div>
												<div class="recharge_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">
													<span class="recharge_text">充值</span><i
														class="recharge_icon"></i>
												</div>
											</div>
											<div class="btn_wrapper">
												<input type="number" value="1" maxlength="4" class="inpt"
													readonly> <span class="send_btn"
													onclick="tel_login_v1.bindPopShowFun(1)">赠送</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 排行榜 -->
					<div class="bottom">
						<!-- 头部切换 -->
						<div class="title">
							<div class="bottom_tab bottom_tab_1"
								onclick="item_v3_data.methods.bindTab(this,0)"></div>
							<div class="bottom_tab bottom_tab_2"
								onclick="item_v3_data.methods.bindTab(this,1)"></div>
						</div>
					</div>
				</div>
				<div class="content_right">
					<!-- 收到礼物 -->
					<div class="top">
						<div class="receive_list_wrapper">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20181114/0faad2c5d0f602fa236f6c445874928a.png"
												title="香奈儿包包" alt="榆柔阿陪玩收到礼物香奈儿包包" class="gift_img">
										</div>
										<span class="gift_price">1</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20180510/b8b8b8471e24d359d4050a80ce61501f.png"
												title="大熊" alt="榆柔阿陪玩收到礼物大熊" class="gift_img">
										</div>
										<span class="gift_price">1</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20190429/8b4d0613f4284ce4459c9e60fdd1daad.png"
												title="蓝色妖姬" alt="榆柔阿陪玩收到礼物蓝色妖姬" class="gift_img">
										</div>
										<span class="gift_price">2</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20181114/87764f27f3910615fe4abab054292e40.png"
												title="棒棒糖" alt="榆柔阿陪玩收到礼物棒棒糖" class="gift_img">
										</div>
										<span class="gift_price">1</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20190429/ad6f8406222cb4d2395cbb6975af0f43.png"
												title="板砖" alt="榆柔阿陪玩收到礼物板砖" class="gift_img">
										</div>
										<span class="gift_price">4</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20180510/4f1472c54a59349fdd4ca96f5c3f7b75.png"
												title="么么哒" alt="榆柔阿陪玩收到礼物么么哒" class="gift_img">
										</div>
										<span class="gift_price">9</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20180510/57733bd212aa642118e122a3c2bb686f.png"
												title="抱抱" alt="榆柔阿陪玩收到礼物抱抱" class="gift_img">
										</div>
										<span class="gift_price">43</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20181114/a1d9c1732439f9c422a28e02fe0e7875.png"
												title="香吻" alt="榆柔阿陪玩收到礼物香吻" class="gift_img">
										</div>
										<span class="gift_price">6</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20190124/83deeed8de10a3b103dc8254338bb0f2.png"
												title="压岁包" alt="榆柔阿陪玩收到礼物压岁包" class="gift_img">
										</div>
										<span class="gift_price">4</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20190429/8ae8115639eefafc4a9ad978c5a5ab39.png"
												title="666" alt="榆柔阿陪玩收到礼物666" class="gift_img">
										</div>
										<span class="gift_price">28</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20180510/ca33b0598d76fc72f560fd7b0f4743f1.png"
												title="鲜花" alt="榆柔阿陪玩收到礼物鲜花" class="gift_img">
										</div>
										<span class="gift_price">13</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20180531/9ca7e3cfea27df659cb767da3d9abc62.png"
												title="幸运星" alt="榆柔阿陪玩收到礼物幸运星" class="gift_img">
										</div>
										<span class="gift_price">76</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20180601/043ec74676bba98018f291b3bc97563e.png"
												title="棒棒哒" alt="榆柔阿陪玩收到礼物棒棒哒" class="gift_img">
										</div>
										<span class="gift_price">97</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20180604/bac999eb619056f3861d03ea229e41a3.png"
												title="头条礼物" alt="榆柔阿陪玩收到礼物头条礼物" class="gift_img">
										</div>
										<span class="gift_price">2968</span>
									</div>
									<div class="swiper-slide swiper-no-swiping">
										<div class="img_wrap">
											<img
												src="https://img1.daofengdj.com/uploads/images/20190429/a3eb9d7c1e963b6a27ea4315b3c2a478.png"
												title="小星星" alt="榆柔阿陪玩收到礼物小星星" class="gift_img">
										</div>
										<span class="gift_price">1</span>
									</div>
								</div>
							</div>
							<div class="op_btn swiper-button-prev"></div>
							<div class="op_btn swiper-button-next"></div>
						</div>
					</div>
					<!-- 下单操作 -->
					<div class="middle">
						<!-- 服务选项卡 -->
						<div id="tab_div" class="s_tab_w middle_tab_wrapper">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<div onclick="item_v3_data.methods.serviceTab(0)"
										class="swiper-slide swiper-no-swiping middle_tab_item active">
										<span class="text">英雄联盟</span> 
										<span class="icon"></span>
									</div>
									<div onclick="item_v3_data.methods.serviceTab(1)"
										class="swiper-slide swiper-no-swiping middle_tab_item ">
										<span class="text">绝地求生</span> 
										<span class="icon"></span>
									</div>
								</div>
							</div>
						</div>
						<!-- 服务内容 -->
						<div class="middle_content_wrapper" id="tab_cont">
							<div class="middle_content_item" play_uid="1209485" company="小时"
								avatar="https://img1.daofengdj.com//uploadss/avatar/20181023/9cusct7fbmcg0f0h9qua1c5ntcyn2ngn.jpg"
								nickname="榆柔阿" name="英雄联盟" server_type="1" pay_money="4000"
								style="display: block;">
								<div class="txt1">
									<img class="game_img"
										src="https://img1.daofengdj.com/uploads/images/20180404/94ce94348d8056f254d5dd0fd34b78a7.jpg"
										alt="英雄联盟陪玩服务">
									<div class="">
										<!-- 服务信息 -->
										<div class="d1">
											<span>￥<span>${employee.price}</span></span>
										</div>
										<div class="d2">
											<p>璀璨钻石</p>
										</div>
										<div class="d3">
											<span>接单数量：106次</span>
										</div>
										<!-- 音频 -->

									</div>
								</div>
								<!-- 自我介绍 -->
								<div class="txt3 on">
									<span class="txt3_title">服务介绍</span>
									<div>${employee.serveup}</div>
								</div>
								<!-- 标签 -->
							</div>
							<div class="middle_content_item" play_uid="1209485" company="小时"
								avatar="https://img1.daofengdj.com//uploadss/avatar/20181023/9cusct7fbmcg0f0h9qua1c5ntcyn2ngn.jpg"
								nickname="榆柔阿" name="绝地求生" server_type="12" pay_money="4000"
								style="">
								<div class="txt1">
									<img class="game_img"
										src="https://img1.daofengdj.com/uploadss/uploads/20180404/84ea4ed45f641c82ea7b4a10888621f2.jpg"
										alt="绝地求生陪玩服务">
									<div class="">
										<!-- 服务信息 -->
										<div class="d1">
											<span>￥<span>${employee.price}</span></span>
										</div>
										<div class="d2">
											<p>中级</p>
										</div>
										<div class="d3">
											<span>接单数量：109次</span>
										</div>
										<!-- 音频 -->

									</div>
								</div>
								<!-- 自我介绍 -->
								<div class="txt3 on">
									<span class="txt3_title">服务介绍</span>
									<div>${employee.serveup}</div>
								</div>
								<!-- 标签 -->
							</div>
							<div class="desc_wrap">
								<div class="desc_i">
									<i class="icon"></i> <span class="text">未开始随时退</span>
								</div>
								<div class="desc_i">
									<i class="icon"></i> <span class="text">超时自动退</span>
								</div>
								<div class="desc_i">
									<i class="icon"></i> <span class="text">不满意可退单</span>
								</div>
							</div>
							<div class="position_box">
								<!-- 折扣 -->
								<div class="discount">
									<img
										src="https://yundown.daofengdj.com/static/home/img/item_v3/icon_discount.png"
										alt="" class="discount_icon"> <span
										class="discount_text_wrapper"> <i class="icon"></i> <span
										class="discount_text_item">数量满20，9 折<i></i></span>
									</span>
								</div>
								<!-- 超时赔样式显示 -->
								<div class="timeout_company">
									<i class="company"></i>
									<div>
										<span>${employee.descy}</span>
									</div>
								</div>
							</div>

							<!-- 提交操作 -->
							<div class="btnBox">
								<div class="change_num">
									<p class="jian no-pick "
										onclick="item_v3_data.methods.changeOrderNum2()">-</p>
									<input id="num" type="number" value="1" class="inpt" readonly>
									<p class="jia no-pick "
										onclick="item_v3_data.methods.changeOrderNum1()">+</p>
								</div>
								<div id="add-order"
									class="order_submit on_line">
									<a id="add-order" href="javascript:;">立即下单</a></div>
							</div>
						</div>
					</div>
					<!-- 评价和礼物墙 -->
					<div class="bottom">
						<div class="bottom_tab_wrapper">
							<div class="bottom_tab_item active"
								onclick="item_v3_data.methods.changeEvaluagePage(this,0)">
								<span class="text">用户评价</span> <i class="icon"></i>
							</div>
							<div class="bottom_tab_item"
								onclick="item_v3_data.methods.changeEvaluagePage(this,1)">
								<span class="text">赠礼墙</span> <i class="icon"></i>
							</div>
							<div class="bottom_tab_item"
								onclick="item_v3_data.methods.changeEvaluagePage(this,2)">
								<span class="text">动态</span> <i class="icon"></i>
							</div>
						</div>
						<div class="bottom_content_wrapper">
							<!-- 评价 -->
							<div class="bottom_content_item evaluate on">
								<div class="content">
									<div class="content_wrap">
									
									<ul>
						
										<li>
											<div class="pic">
											<img alt="" class="pic_img" src="https://img1.daofengdj.com//uploadss/avatar/20191210/p0ksge4u0d3ntpsfciszkcd5zdxs7zhc.jpg!daofengdj/sq/60">
											</div>
											<p class="frame_3"></p>
										</li>
										<li>
											<div class="nick">
												<span>饱饱啊ui特不怕</span>
												<!-- <div class="icon_wrapper">
													<img alt="" src="https://yundown.daofengdj.com/static/public/img/level_v3/6.png">
												</div> -->
												<div class="s1">2019-12-15 19:15:45</div>
											</div>
											<div class="txt1">
												<div class="text">
												评语：
													<div style="border:3px;width: 650px;height: 40px;bottom: 0;overflow: hidden;">太和初，累官至礼部郎中、知台杂。四年，李宗闵作相，用为给事中。五年，宋申锡为王守澄诬陷，固言与同列伏阁论之。将作监王堪修奉太庙弛慢，罚俸，仍改官为太子宾客。制出，固言封还。曰：“东宫调护之地，不可令弛慢被罚之人处之。”改为均王傅，六年，迁工部侍郎。七年四月，转尚书左丞，奉诏定左右仆射上事仪注。八年，李德裕辅政，出为华州刺史。
其年十月，宗闵复入，召拜吏部侍郎。九年五月，迁御吏大夫。六月，宗闵得罪，固言代为门下侍郎、平章事,寻加崇文馆大学士。时李训郑注用事自欲窃辅相之权宗闵既逐外示公体爰立固言其实恶与宗闵朋党。九月，以兵部尚书出为兴元节度使。李训自代固言为平章事。训、注诛，文宗思其谠正，开成元年四月，复召为平章事，判户部事。</div>
												</div>
											</div>
											<div class="comment">
												<div class="comment_i"></div>
												<span class="line"></span>
												<div class="comment_i"></div>
											</div>
										</li>
									</ul>
									</div>

									<!-- 页码 -->
									<div id="pageInfo2" class="page"
										style="margin: 0 auto; text-align: center; padding: 15px 0 5px 0;"></div>
									<!-- 空 -->
									<div class="empty">
										<img
											src="https://yundown.daofengdj.com/static/home/img/item_v3/empty_01.png">
									</div>
									<!-- loading -->
									<div class="loadBox">
										<img
											src="https://yundown.daofengdj.com/static/public/img/loading1.gif">
										<span>正在加载请稍等...</span>
									</div>
								</div>
							</div>
							<!-- 赠礼墙 -->
							<div class="bottom_content_item gift">
								<div class="gift_tab_wrapper">
									<div class="gift_tab_item active"
										onclick="item_v3_data.methods.changeGiftTab(this,0)">礼物</div>
									<div class="gift_tab_item"
										onclick="item_v3_data.methods.changeGiftTab(this,1)">冠名</div>
								</div>
								<div class="gift_content_wrapper">
									<div class="gift_content_item on gift_wall">
										<ul class="gift_list_wall"></ul>
										<div id="pageInfo" class="page"></div>
										<div class="empty">
											<img
												src="https://yundown.daofengdj.com/static/home/img/item_v3/empty.png"><span>人家也想要礼物哦~</span>
										</div>
										<div class="loadBox" v-show="load">
											<img
												src="https://yundown.daofengdj.com/static/public/img/loading1.gif">
											<span>正在加载请稍等...</span>
										</div>
									</div>
									<div class="gift_content_item gm_wall">
										<ul class="gm_list_wall"></ul>
										<div id="pageInfo1" class="page"></div>
										<div class="empty">
											<img
												src="https://yundown.daofengdj.com/static/home/img/item_v3/empty.png"><span>人家也想要冠名哦~</span>
										</div>
										<div class="loadBox" v-show="load">
											<img
												src="https://yundown.daofengdj.com/static/public/img/loading1.gif">
											<span>正在加载请稍等...</span>
										</div>
									</div>
								</div>
							</div>
							<!-- 动态 -->
							<div class="bottom_content_item dynamic">
								<div class="content">
									<div class="content_wrap"></div>
									<!-- 页码 -->
									<div id="pageInfo3" class="page"
										style="margin: 0 auto; text-align: center; padding: 15px 0 5px 0;"></div>
									<div class="empty">
										<img
											src="https://yundown.daofengdj.com/static/home/img/item_v3/empty.png"><span>暂无动态哦~</span>
									</div>
									<!-- loading -->
									<div class="loadBox">
										<img
											src="https://yundown.daofengdj.com/static/public/img/loading1.gif">
										<span>正在加载请稍等...</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 弹窗区域 --> <!--钻石余额不够-->
	<div id="zuanshi_no" class="g-mask">
		<div class="g-maskBox">
			<p>
				<img
					src="https://yundown.daofengdj.com/static/public/img/close_img.png"
					class="closeImg">
			</p>
			<div class="info" msg="内容区域">
				<div class="txt">
					<img
						src="https://yundown.daofengdj.com/static/home/img/item_v1/img05.png">
					<div>钻石余额不足，请充值</div>
				</div>
				<div class="btn-box">
					<p class="btn-cancel">稍后充值</p>
					<p class="btn-determine">
						<a href="/index/recharge/vocher.html?noble=1" target="_blank"
							style="display: block; color: #fff">立即充值</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	</section>


	<script>
		var url_kuaijie = "https://yundown.daofengdj.com/static/home/img/item_v3/";
		var url_kuaijie2 = "https://yundown.daofengdj.com/static";
		//在用户详情页面礼物特效展示完后会刷新页面在客户端不会所以下面参数为true时就是在详情页面
		var is_info_item = true;
	</script>



	<!--侧边栏-->
	<!--底部-->
	<footer>
	<div class="foot">
		<div class="left">
			<!--市场推广http://dfdj.86szs.wang 不显示-->
			<div class="left_i">
				<div class="bt">关于我们</div>
				<div class="list">
					<div class="li">
						<a href="https://www.daofengdj.com/help/contact_us.html"
							class="text" target="_blank" title="心悦电竞联系我们">联系我们</a>
					</div>
					<div class="li">
						<a href="https://www.daofengdj.com/help/company_profile.html"
							class="text" target="_blank" title="心悦电竞公司简介">公司简介</a>
					</div>
					<!-- <div class="li">
                        <a href="https://www.daofengdj.com/index/join_us.html" class="text"  target="_blank" title="心悦电竞加入我们">加入我们</a>
                    </div> -->
					<div class="li">
						<a href="https://www.daofengdj.com/help/disclaimer.html"
							class="text" target="_blank" title="心悦电竞免责声明">免责声明</a>
					</div>
				</div>
			</div>
			<div class="left_i">
				<div class="bt">联系我们</div>
				<div class="list">
					<!--市场推广http://dfdj.86szs.wang 不显示-->
					<div class="li">
						<span class="text">客服电话</span> <span class="num">
							0371-55637968 </span>
					</div>
					<div class="li">
						<span class="text">客服QQ</span> <span class="num">2848380075</span>
					</div>
					<div class="li">
						<a class="text">网站地图</a>
					</div>
					<div class="li">
						<a href="https://www.daofengdj.com/index/join_us.html"
							class="text" target="_blank" title="加入我们">加入我们</a>
					</div>
				</div>
			</div>
		</div>
		<div class="right">
			<div class="ma_wrap">
				<img
					src="https://yundown.daofengdj.com/static/public/img/gzh_code.png"
					alt="心悦电竞公众号二维码" class="ma">
				<div class="text">关注微信公众号</div>
			</div>
		</div>
	</div>
	<div class="foot_bottom">版权所有 &#169 2019 心悦网络科技有限公司</div>
	</footer>

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
		(function() {
			_agl.push([ 'production', '_f7L2XwGXjyszb4d1e2oxPybgD' ]);
			(function() {
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
		(function() {
			var bp = document.createElement('script');
			var curProtocol = window.location.protocol.split(':')[0];
			if (curProtocol === 'https') {
				bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
			} else {
				bp.src = 'http://push.zhanzhang.baidu.com/push.js';
			}
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(bp, s);
		})();
	</script>

	<script>
		function totop() {
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
	<script
		src="${pageContext.request.contextPath}/js/common_v3_js_version=201912181140.js"></script>

	<!-- 导航模块 -->
	<script
		src="${pageContext.request.contextPath}/js/public_nav_v3_js_version=201912181140.js"></script>

	<!-- 登陆板块 -->
	<script
		src="${pageContext.request.contextPath}/js/login_registration_v3_js_version=201912181140.js"></script>

	<!--插件-->
	<!-- swiper -->
	<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
	<!-- 二维码 -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.qrcode.min.js"></script>
	<!-- laypage -->
	<script src="${pageContext.request.contextPath}/js/laypage.js"></script>
	<!-- 页面主js -->
	<script
		src="${pageContext.request.contextPath}/js/item_v3_js_version=201912201845.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/noble_gifts_js_version=201912201845.js"></script>
	<script>
		window.onload = function() {
			// 页面加载
			item_v3_data.onload();
		};
	</script>
	<script type="text/javascript">
		
	$('#add-order').on('click',function(){
		
		
		var num = $('#num').val();
		console.log(num)
		location.href="${pageContext.request.contextPath}/app/dingdan?id=${employee.id}&&num="+num;
		
	})
	
	</script>
</body>
</html>