
(function ($) {
    var scrollUp, timerID;
    $.fn.extend({
        Scroll: function (opt, callback) {
            //参数初始化
            if (!opt) var opt = {};
            var _this = this.eq(0).find("ul:first");
            var lineH = _this.find("li:first").height(), //获取行高
                line = opt.line ? parseInt(opt.line, 10) : parseInt(this.height() / lineH, 10), //每次滚动的行数，默认为一屏，即父容器高度
                speed = opt.speed ? parseInt(opt.speed, 10) : 500, //卷动速度，数值越大，速度越慢（毫秒）
                timer = opt.timer ? parseInt(opt.timer, 10) : 3000; //滚动的时间间隔（毫秒）
            if (line == 0) line = 1;
            var upHeight = 0 - line * lineH;
            //滚动函数
            scrollUp = function () {
                _this.animate({
                    marginTop: upHeight
                }, speed, function () {
                    for (var i = 1; i <= line; i++) {
                        _this.find("li:first").appendTo(_this);
                    }
                    _this.css({
                        marginTop: 0
                    });
                });
            }
            //鼠标事件绑定
            _this.hover(function () {
                clearInterval(timerID);
            }, function () {
                timerID = setInterval(scrollUp, timer);
            }).mouseout();
        }
    });

})($);
var picBox, picBox_p, picBtnBox, picBtnBox_li, tab_div, tab_div_p, tab_cont, tab_cont_list, timer1, AlllongTime;
var picImg = document.querySelectorAll('.picImg');
var this_video = document.querySelector("#this_video");
var this_show_index = 0;
var item_v3_data = {
    data: {// 页面涉及的数据
        pw_info: pw_info,// 当前陪玩信息
        pw_sponsor_info: pw_sponsor_info,//冠名信息
        is_ajax_follow:false,//是否点击关注按钮
        zIndex: 1, //相册切换使用
        gift_box2: {
            gift_box2_show: false, //是否显示礼物框
            gift_list: [], //礼物数据
            guan_list: [], //冠名数据
            index: -1, //当前选中的礼物
            show_class: true, //有没有移上去的效果指所有的li
        },
        this_zuanshi_num: document.querySelector(".surplus_diamonds .num").innerText, //当前用户的钻石数或者未登录
        special: common.GetQueryString("special"),//判断是否是活动
        game_sever_ind: 0, //服务内容切换的索引值提交时用到
        isdiscount_num: 1,//下单数量
        vodio:[],//声音对象
        allTimeObj: document.querySelectorAll('.longTime'),// 所有音频时间对象
        evaluateCurPage:1,// 评论当前页
        replayUid: '',//动态回复人id
        token:$(" input[ name='__token__' ] ").val(),
    },
    watch: function() {// 要监听的数据变化相关
        var _this = item_v3_data;
        // 下单数量变化
        $('.change_num .inpt').on('input propertychange', function () {//手机号
            var value = $(this).val();
            console.log(value);
            
            if (value > 9999) {
                layer.msg("最大值不能超过9999", {
                    time: 1500
                });
                _this.data.isdiscount_num = 9999;
                $(this).val("9999");
                return;
            } else if (value < 1) {
                layer.msg("最小值为1", {
                    time: 1500
                });
                _this.data.isdiscount_num = 1;
                $(this).val("1");
                return;
            };
            if (_this.data.special == 'act') {
                layer.msg("8元体验活动每次只能下单一个小时！", {
                    time: 1500
                });
                _this.data.isdiscount_num = 1;
                $(this).val("1");
                return;
            }
        });
    },
    onload: function() {// 页面加载完成需要执行的js
        var _this = item_v3_data;
        _this.watch();
        // _this.html.createHtml();
        // 设置背景
        // _this.methods.setBodyBg();
        //动态数据滚动
        if ($(".dong_tai_msg li").length > 1) {
            $(".dong_tai_msg").Scroll({ line: 1, speed: 800, timer: 2000 });
        };
        // 生成分享内容
        _this.methods.generateQrCode();
        // ============相册相关=======
        /*图片切换*/
        picBox = document.querySelector('#picBox .picBox_info');
        picBox_p = picBox.querySelectorAll('p');
        picBtnBox = document.querySelector('#picBtnBox');
        picBtnBox_li = picBtnBox.querySelectorAll('li');
        _this.data.imgLength = picBox_p.length;
        if (_this.data.imgLength > 4) {
            _this.data.isImgBtn = true;
        };
        // ============相册相关=======

        // ============送礼物冠名相关=======
        // 礼物swiper
        var gift_swiper = new Swiper('.content_left .left_gift .swiper-container', {
            pagination: '.content_left .left_gift .swiper-pagination',
            loop: false,
            observer: true,
            observeParents: true,
            autoplayDisableOnInteraction: false,
            paginationClickable: true,
        });
        // 冠名swiper
        var guanming_swiper = new Swiper('.content_left .left_guanming .swiper-container', {
            pagination: '.content_left .left_guanming .swiper-pagination',
            loop: false,
            observer: true,
            observeParents: true,
            autoplayDisableOnInteraction: false,
            paginationClickable: true,
        });
        var $left_gift_list = $("#left_gift_list");//礼物外层盒子

        //输入框事件 
        $left_gift_list.find('.inpt').keyup(function () {
            var $li = $(this).parents(".gift_pop_item");
            var price = $li.attr("price");
            $li.find('.zhifujin').html(price * this.value || 0);
        });

        //礼物
        var $gift_send_btn = $left_gift_list.find('.send_btn_gift');//赠送礼物的按钮
        if ($gift_send_btn) {
            $gift_send_btn.click(function (event) {
                var $li = $(this).parents(".gift_pop_item");
                var item = {
                    id: $li.attr("id") * 1,
                    icon_path: $li.attr("icon_path"),
                    icon_big_path: $li.attr("icon_big_path"),
                    web_value: $li.find('.inpt').val() * 1,
                    price: $li.attr("price")
                };
                _this.methods.giftSubmit(item, 1);
            });
        };
        //礼物快捷选择
        $left_gift_list.find('.gift_pop_list_wrapper .gift_pop_list_item').click(function (event) {
            var val = $(this).attr("data");
            var $li = $(this).parents(".gift_pop_item");
            var price = $li.attr("price");
            $li.find('.inpt').val(val);
            $li.find('.zhifujin').html(price * val || 0);
            $(this).addClass('active').siblings().removeClass("active");
        });
        // 隐藏钻石不足弹窗
        $("#zuanshi_no .btn-cancel").click(function(){
            $("#zuanshi_no").removeClass("g-maskshow");
        });
        $("#zuanshi_no .closeImg").click(function(){
            $("#zuanshi_no").removeClass("g-maskshow");
        });

        //冠名
        var $left_guanming_list = $("#left_guanming_list");//礼物外层盒子
        var $send_btn_guanming = $left_guanming_list.find('.send_btn_guanming');//赠送冠名的按钮
        if ($send_btn_guanming) {
            //gift2_submit_fn(item,2)
            $send_btn_guanming.click(function (event) {
                var $li = $(this).parents(".gift_pop_item");
                var item = {
                    id: $li.attr("id") * 1,
                    icon_path: $li.attr("icon_path"),
                    web_value: 1,
                    price: $li.attr("price")
                };
                _this.methods.giftSubmit(item, 2);
            });
        };
        // ============送礼物冠名相关=======
        // 收到的礼物
        var receive_gift_swiper = new Swiper('.receive_list_wrapper .swiper-container', {
            nextButton: '.receive_list_wrapper .swiper-button-prev',
            prevButton: '.receive_list_wrapper .swiper-button-next',
            slidesPerView: 6,
            paginationClickable: true,
            spaceBetween: 30
        });
        // ==============下单操作相关============
        /*内容切换*/
        tab_div = document.querySelector('#tab_div');
        tab_div_p = tab_div.querySelectorAll('.middle_tab_item');
        tab_cont = document.querySelector('#tab_cont');
        tab_cont_list = tab_cont.querySelectorAll('.middle_content_item');
        // 服务选项卡
        setTimeout(function () {
            // 头部我的礼物swiper
            var service_swiper = new Swiper('.s_tab_w .swiper-container', {

                pagination: '.s_tab_w .swiper-pagination',
                slidesPerView: 6,
                spaceBetween: 0,
                slidesPerGroup: 6,
                speed: 800,
                loop: false,

                loopFillGroupWithBlank: true,
                prevButton: '.s_tab_w .swiper-button-next',
                nextButton: '.s_tab_w .swiper-button-prev',
            });
            _this.methods.initService(); //初始化显示哪项服务
        }, 500);
        // 载入音频
        setTimeout(_this.methods.loadAudio,500);
        // ==============下单操作相关============
        // 评论
        _this.methods.getEvaluate(1);
        
    },
    html: {// 页面创建HTML结构相关
        createHtml:function() {
            console.log('测试创建html');
        },
        /**
         *晋级成功弹窗
         *
         * @param {*} json
         */
        createGradeHtml:function(json) {
            var obj = $("<div></div>");
            obj.attr('class','success_promotion p-mask');
            var str = "";
            str +=    '<div class="info"> ' +
                '<div class="grade_box">'+json.after+'</div>' +
                '<div class="title">恭喜您</div>' +
                '<div class="sub_title">贵族等级从 <span>'+json.before+'</span> 升级至 <span>'+json.after+'</span></div>';
            // str +=        '<div class="msg">恭喜您从' + json.before + '晋级为' + json.after+'</div>';
            str +=        '<a class="link" href="/user/usercenter/index.html">查看我的特权</a>';
            str +=        '<p class="btn"></p>';
            str +=    '</div>';
            obj.html(str);
            json.dom = obj;

            obj.find(".btn").click(function(){
                obj.remove();
            });
            $("section").append(json.dom);
        },
        /**
         *送礼成功弹窗
         *
         * @param {*} json
         */
        createGiftSuccessHtml: function (json) {
            var _this = item_v3_data;
            var obj = $("<div></div>");
            obj.attr('class', 'g-mask g-maskshow');
            obj.attr('id', 'liwu_success');
            var str = "";
            str +=    '<div class="liwu_success_content">';
            if (json.price < 101) {
                str += '<img src="' + url_kuaijie + 'success_1.png" alt="" class="pop_bg">';
            } else if (json.price > 100 && json.price < 501) {
                str += '<img src="' + url_kuaijie + 'success_2.png" alt="" class="pop_bg">';
            } else if (json.price > 500) {
                str += '<img src="' + url_kuaijie + 'success_3.png" alt="" class="pop_bg">';
            };
            str +=        '<img src="'+json.path+'" class="gift_img">';
            str +=        '<div class="gift_num">';
            str +=            '<i>X</i>';
            str +=            '<span class="text">'+json.num+'</span>';
            str +=        '</div>';
            str +=    '</div>';
            obj.html(str);
            json.dom = obj;
            obj.find(".liwu_success_content").click(function () {
                console.log('aaa');
                console.log('aaa');
                if (_this.data.upgradeInfo && _this.data.upgradeInfo.upgrade) {
                    console.log('bbb');
                    // 晋级成功
                   /* _this.data.upgradeInfo = {
                        upgrade: json.upgrade,
                        before: json.before,
                        after: json.after,
                        dom: false
                    }*/
                    _this.html.createGradeHtml( _this.data.upgradeInfo);
                }
                obj.remove();
            });
            $("section").append(json.dom);
        },
        /**
         *冠名弹窗
         *
         * @param {*} json
         */
        createGMPopHtml:function(json) {
            var _this = item_v3_data;
            var obj = $("<div></div>");
            obj.attr("class","g-mask g-maskshow");
            obj.attr('id','guanming_info');
            var str ='';
            str +=    '<div class="g-maskBox">';
            str +=        '<p>';
            str +=            '<img  src="' + url_kuaijie + 'pre_3.png" class="closeImg">';
            str +=        '</p>';
            str +=        '<div class="info" msg="内容区域">';
            str +=            '<div class="txt">';
            if(json.type == 1) {// 正常冠名
                str += '<h3>输入冠名</h3>';
                str += '<p>快来输入您的名字保护Ta吧~</p>';
            }else if(json.type ==2 ){// 预约冠名
                str += '<h3>预约冠名</h3>';

                str += '<p>TA当前已被冠名，您可提前预约</p>';
            }
            str +=            '</div>';
            str +=            '<div class="txt1">';
            str +=                '<div class="guan_box"><img src="'+json.guan_path+'"></div>';
            if (json.type == 2) {// 预约冠名
                str +=                '<div class="p_time">';
                str +=                    '<span>冠名开始时间：</span><br>';
                str +=                    json.pw_sponsor_info.final_end_time;
                str +=                '</div>';
            }
            if (json.type == 1) {// 正常冠名
                str += '<input placeholder="昵称最多4个字" type="text" maxlength="4" v-model="guan_m_info.game_name" class="guan_focus_name">';
                str +=                '<p >';
                str +=                    '<span title="'+json.pw_nickname+'">'+json.pw_nickname+'</span>';
                str +=                '</p>';
            } else if (json.type == 2) {// 预约冠名
                str += '<input placeholder="昵称最多4个字" type="text" maxlength="4" v-model="guan_m_info.game_name" class="guan_focus_name tips_input">';
                str +=                '<p class="tips_class">';
                str +=                    '<span title="'+json.pw_nickname+'">'+json.pw_nickname+'</span>';;
                str +=                '</p>';
                str +=                '<p class="tips_p">冠名预约成功后，不可退款！</p>';
            }
            
            str +=            '</div>';
            str +=            '<div class="btn-box">';
            str +=                '<p class="btn-determine">';
            if (json.type == 1) {// 正常冠名
                str +=                    '<span>立即守护</span>';
            } else if (json.type == 2) {// 预约冠名
                str +=                    '<span>马上预约</span>';
            }
            str +=                '</p>';
            if (json.type == 2) {// 预约冠名
                str +=                '<p class="btn_cancel" >暂不预约</p>';
            }
            str +=            '</div>';
            str +=        '</div>';
            str +=    '</div>';
            obj.html(str);
            json.dom = obj;
            json.dom_inpt = obj.find(".guan_focus_name");//输入框
            obj.find(".closeImg").click(function () {
                obj.remove();
            });
            obj.find(".btn_cancel").click(function () {
                obj.remove();
            });
            obj.find(".btn-determine").click(function(){
                json.inpt_val = json.dom_inpt.val();
                _this.methods.submitGM(json);
            });
            $("section").append(json.dom);
        },
        /**
         *冠名成功弹窗
         *
         * @param {*} json
         */
        createGMSuccessHtml: function (json) {
            var _this = item_v3_data;
            var obj = $("<div></div>");
            obj.attr('class', 'g-mask g-maskshow');
            obj.attr('id', 'guanming_success');
            var str = "";
            str +=    '<div class="g-maskBox">';
            str +=        '<p>';
            str +=            '<img src="' + url_kuaijie + 'pre_3.png" class="closeImg">';
            str +=        '</p>';
            str +=        '<div class="info" msg="内容区域">';
            str +=            '<div class="txt">';
            str +=                '<h3>冠名成功</h3>';
            str +=                '<p>你们的距离又拉近了一步哟~</p>';
            str +=            '</div>';
            str +=            '<div class="txt1">';
            str +=                '<div class="guan_box"><img src="'+json.guan_path+'"></div>';
            str +=            '</div>';
            str +=            '<div class="btn-box">';
            str +=                '<p class="btn-determine" >好的</p>';
            str +=            '</div>';
            str +=        '</div>';
            str +=    '</div>';
            obj.html(str);
            json.dom = obj;
            obj.find(".closeImg").click(function () {
                obj.remove();
            });
            obj.find(".btn-determine").click(function () {
                obj.remove();
            });
            $("section").append(json.dom);
        },
        /**
         *用户评价单条信息创建
         *
         * @param {*} json
         */
        createEvaluateHtml: function(item){
            var _this = item_v3_data;
            var obj = $("<ul></ul>");
            var str = "";
            // str +='<ul v-for="(item,index) in list" :key="index" >';
            str +=    '<li class="avatar_wrap">';
            str +=        '<div class="pic">';
            str +=            '<img class="pic_img" src="'+_P_H(item.avatar,60)+'">';
            str +=            '<p class="frame_'+(item.avatar_frame-1)+'"></p>';
            str +=        '</div>';
            str +=    '</li>';
            str +=    '<li>';
            str +=        '<div class="nick">';
            str +=            '<span>'+item.nickname+'</span>';
            str +=            '<div class="icon_wrapper">';
            if (item.level>1) {// 等级
                var level = Number(item.level) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/level_v3/' + level +'.png" alt="" class="icon_level">';
            }
            if (item.noble > 1) {// 爵位
                var noble = Number(item.noble) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/rank_v2/' + noble + '.png" alt="" class="icon_title">';
            }
            if (item.vip_uid > 0) {// 靓号
                str += '<div class="vip_num" ><span class="text">'+item.vip_uid+'</span></div>';
            }
            str +=            '</div>';
            str +=            '<div class="s1">'+item.add_time+'</div>';
            str +=            '<div class="fraction f'+item.scoring+'">';
            str +=                '<i></i>';
            str +=                '<i></i>';
            str +=                '<i></i>';
            str +=                '<i></i>';
            str +=                '<i></i>';
            str +=            '</div>';
            str +=        '</div>';
            if (item.noble >= 4) {// 爵位等级达到标准 显示评论框
                str += '    <div class="txt1 on">';
                str +=          '<i class="ico"></i>';
                str +=          '<div class="text style1">';
            }else {
                str += '<div class="txt1">';
                str +=      '<div class="text">';
            }
            str +=                '<div>'+item.appraise_content+'</div>';
            str +=            '</div>';
            str +=        '</div>';
            str +=        '<div class="comment">';
            // 点赞数
            str +=            '<div class="comment_i">';
            if (item.is_praise) {
                str += '<p class="comment_1 icon ok"></p>';
            }else {
                str += '<p class="comment_1 icon"></p>';
            }
            str +=                '<p class="comment_2">'+item.praise_num+'</p>';
            str +=            '</div>';
            str +=            '<span class="line"></span>';
            // 评论数
            str +=            '<div class="comment_i">';
            str +=                '<p class="comment_3 icon" @click="com_open(1,item.id,item.is_del,item)"></p>';
            str +=                '<p class="comment_4">'+item.reply_num+'</p>';
            str +=            '</div>';
            str +=        '</div>';
            str +=    '</li>';
            str +=    '<li class="comment_click ">';
            str +=        '<div class="comment_click_in">';
            str +=            '<p>回复@'+item.nickname+':</p>';
            str +=            '<textarea class="comment_content"maxlength="50" onchange="this.value=this.value.substring(0, 50)" onkeydown="this.value=this.value.substring(0, 50)" onkeyup="this.value=this.value.substring(0, 50)"></textarea>';
            str +=            '<div class="comment_middle">';
            str +=                '<p><span class="num">0</span>/<span class="all_num">50</span></p>';
            str +=                '<span @click="com_enter(item)" class="comment_yes btn">发表</span>';
            str +=                '<span @click="com_out()" class="comment_no btn">取消</span>';
            str +=            '</div>';
            str +=        '</div>';
            str +=        '<ul  class="receive_list">';
            
            str +=        '</ul>';
            str +=    '</li>';
            // str +='</ul>';
            obj.html(str);
            item.dom = obj;
            item.dom_receive_evaluate = obj.find(".comment_click");// 二级评价外层
            item.dom_receive_evaluate_list = obj.find(".receive_list");// 二级评价列表外层
            item.dom_praise_icon = obj.find('.comment_1');// 点赞图标
            item.dom_praise_num = obj.find('.comment_2');// 点赞数量
            item.dom_replay_num = obj.find('.comment_4');// 评论数量
            item.dom_replay_content = obj.find(".comment_content");//评论框输入内容
            obj.find(".comment_1").click(function(){//点赞
                _this.methods.praiseEvaluate(item);
            });
            obj.find(".comment_3").click(function () {//评论
                if(!item._open) {//评论未展开
                    // 判断是否登录
                    if(login_status != '1'){
                        // layer.msg('登录后才能评论！');
                        tel_login_v1.bindPopShowFun(1);
                        return;
                    }
                    _this.methods.getReceiveEvaluate(1,item);//获取回复评论
                    item._open = true;// 标记打开
                    item.dom_receive_evaluate.addClass("on");
                }else {// 评论已展开 关闭
                    item._open = false; // 标记关闭
                    item.dom_receive_evaluate.removeClass("on");
                }
            });
            // 监听输入数量
            item.dom_replay_content.on("input propertychange",function() {
                var l = $(this).val().length;
                obj.find(".num").text(l);
            });
            $(".evaluate .content_wrap").append(item.dom);
            obj.find(".comment_no").click(function () {//评论取消
                item._open = false; // 标记关闭
                item.dom_receive_evaluate.removeClass("on");
            });
            obj.find(".comment_yes").click(function () {//评论发表
                item._open = false; // 标记关闭
                item.dom_receive_evaluate.removeClass("on");
                var content = item.dom_replay_content.val().trim();
                content = common.filterXSS(content);
                if (content==''){
                    layer.msg("内容不能为空",{time:1500});
                    return false;
                }
                _this.methods.enterReceiveEvaluate(item, content);
            });
        },
        /**
         *评价回复列表单条信息创建
         *
         * @param {*} json
         */
        createReceiveEvaluateHtml: function(info,item) {
            var _this = item_v3_data;
            var obj = $('<li style="width: 663px;"></li>');
            var str = "";
            str +=                '<div class="com_pic_box">';
            str +=                    '<img class="com_img" src="'+item.avatar+'">';
            str +=                    '<p class="frame_'+(item.avatar_frame-1)+'"></p>';
            str +=                '</div>';
            str +=                '<div class="comment_user">';
            str +=                    '<div class="comment_user_title">';
            str +=                        '<div class="comment_user_name">'+item.nickname+'</div>';
            str += '<div class="icon_wrapper">';
            if (item.level > 1) {// 等级
                var level = Number(item.level) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/level_v3/' + level + '.png" alt="" class="icon_level">';
            }
            if (item.noble > 1) {// 爵位
                var noble = Number(item.noble) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/rank_v2/' + noble + '.png" alt="" class="icon_title">';
            }
            if (item.vip_uid > 0) {// 靓号
                str += '<div class="vip_num" ><span class="text">' + item.vip_uid + '</span></div>';
            }
            str += '</div>';
            str += '<div class="time">' + item.add_time + '</div>';
            str +=                    '</div>';
            str +=                    '<p class="comment_mid">'+item.appraise_content+'</p>';
            str +=                '</div>';
            obj.html(str);
            item.dom = obj;
            info.dom_receive_evaluate_list.append(item.dom);
        },
        /**
         *赠礼墙 礼物
         *
         * @param {*} json
         */
        createGiftWallHtml: function (item) {
            var _this = item_v3_data;
            var obj = $("<li></li>");
            
            var str = "";
            str +=        '<div class="pic">';
            str +=                    '<img class="pic_img" src="'+item.avatar+'">';
            str +=                    '<p class="frame_'+(item.avatar_frame-1)+'"></p>';
            str +=        '</div>';
            str +=        '<div class="info">';
            str +=            '<span class="nickname">'+item.nickname+'</span>';
            str +=            '<div class="icon_wrapper">';
            if (item.level > 1) {// 等级
                var level = Number(item.level) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/level_v3/' + level + '.png" alt="" class="icon_level">';
            }
            if (item.noble > 1) {// 爵位
                var noble = Number(item.noble) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/rank_v2/' + noble + '.png" alt="" class="icon_title">';
            }
            if (item.vip_uid > 0) {// 靓号
                str += '<div class="vip_num" ><span class="text">' + item.vip_uid + '</span></div>';
            }
            str +=            '</div>';
            str +=            '<div class="time">' + _this.methods.timer2(item.create_time) + '</div>';
            str +=        '<div class="gift_detail">';
            str +=            '<span class="text">赠送</span>';
            str +=            '<img class="icon" src="'+_P_H(item.path,58)+'">';
            str +=            '<span class="num" ><span>X</span> '+item.num+'</span>';
            str +=        '</div>';
            str +=        '</div>';
            

            obj.html(str);
            item.dom = obj;
            $(".gift_list_wall").append(item.dom);
        },
        /**
         *赠礼墙 冠名
         *
         * @param {*} json
         */
        createGMWallHtml: function (item) {
            var _this = item_v3_data;
            var obj = $("<li></li>");
            var str = "";
            str +='<li >';
            str +=        '<div class="pic">';
            str +=                    '<img class="pic_img" src="'+item.avatar+'">';
            str +=                    '<p class="frame_'+(item.avatar_frame-1)+'"></p>';
            str +=        '</div>';
            str +=        '<div class="info">';
            str +=            '<span class="nickname">'+item.unickname+'</span>';
            str +=            '<div class="icon_wrapper">';
            if (item.level > 1) {// 等级
                var level = Number(item.level) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/level_v3/' + level + '.png" alt="" class="icon_level">';
            }
            if (item.noble > 1) {// 爵位
                var noble = Number(item.noble) - 1;
                str += '<img src="' + url_kuaijie2+'/public/img/rank_v2/' + noble + '.png" alt="" class="icon_title">';
            }
            if (item.vip_uid > 0) {// 靓号
                str += '<div class="vip_num" ><span class="text">' + item.vip_uid + '</span></div>';
            }
            str +=            '</div>';
            str +=            '<div class="time">' + _this.methods.timer2(item.create_time) + '</div>';
            str +=        '<div class="gift_detail">';
            str +=            '<span class="text">赠送</span>';
            str +=            '<img class="icon" src="'+_P_H(item.path,58)+'">';
            str +=        '</div>';
            str +=        '</div>';
            
            str +=    '</li>';

            obj.html(str);
            item.dom = obj;
            $(".gm_list_wall").append(item.dom);
        },
        /**
         *动态单条信息创建
         *
         * @param {*} json
         */
        createDynamicHtml: function(item){
            var _this = item_v3_data;
            var obj = $("<ul></ul>");
            var str = "";
            // str +='<ul v-for="(item,index) in list" :key="index" >';
            str +=    '<li class="avatar_wrap">';
            str +=        '<div class="pic">';
            str +=            '<img class="pic_img" src="'+_P_H(item.avatar,60)+'">';
            // str +=            '<p class="frame_'+(item.avatar_frame-1)+'"></p>';
            str +=        '</div>';
            str +=    '</li>';
            str +=    '<li>';
            str +=        '<div class="nick">';
            str +=            '<span>'+item.nickname+'</span>';
            // str +=            '<div class="icon_wrapper">';
            // if (item.level>1) {// 等级
            //     var level = Number(item.level) - 1;
            //     str += '<img src="' + url_kuaijie2+'/public/img/level_v3/' + level +'.png" alt="" class="icon_level">';
            // }
            // if (item.noble > 1) {// 爵位
            //     var noble = Number(item.noble) - 1;
            //     str += '<img src="' + url_kuaijie2+'/public/img/rank_v2/' + noble + '.png" alt="" class="icon_title">';
            // }
            // if (item.vip_uid > 0) {// 靓号
            //     str += '<div class="vip_num" ><span class="text">'+item.vip_uid+'</span></div>';
            // }
            // str +=            '</div>';
            str +=            '<div class="s1">'+item.create_time+'</div>';
            str +=        '</div>';
           
            str +=       '<div class="txt1">';
            str +=            '<div class="text">';
            str +=                '<div>'+item.content+'</div>';
            str +=            '</div>';
            if(item.imgs_path.length>0) {
                str += '<div class="img_list">';
                for (var img_i in item.imgs_path) {
                    str += '<img src="' + item.imgs_path[img_i] + '" class="img_i">';
                };
                str += '</div>';
            }
            if (item.video_path) {
                str += '<div class="video_wrap" path="' + item.video_path+'">';
                str += '<img src="' + item.video_thumb + '" class="video_img">';
                str += '<i class="icon"></i>';
                str += '</div>';
            }
            

            str +=        '</div>';
            str +=        '<div class="comment">';
            if (item.praise_num>0) {
                // 点赞人
                str += '<div class="praise_wrap">';
                str += '<div class="praise_imgs">';
                for (var praise_i in item.praise_list) {
                    str += '<img src="' + item.praise_list[praise_i] + '" class="praise_img">';
                }
                str += '</div>';
                str += '<span class="praise_num"><span class="text">' + item.praise_num + '</span>人觉得很赞</span>';
                str += '</div>';
            }
            // 点赞数
            str +=            '<div class="comment_i">';
            if (item.is_praise) {
                str += '<p class="comment_1 icon ok"></p>';
            }else {
                str += '<p class="comment_1 icon"></p>';
            }
            str +=            '</div>';
            str +=            '<span class="line"></span>';
            // 评论数
            str +=            '<div class="comment_i">';
            str +=                '<p class="comment_3 icon" @click="com_open(1,item.id,item.is_del,item)"></p>';
            str +=                '<p class="comment_4">'+item.reply_num+'</p>';
            str +=            '</div>';
            str +=        '</div>';
            str +=    '</li>';
            str +=    '<li class="comment_click ">';
            // str +=        '<div class="comment_click_in ">';
            // str +=            '<p>回复@<span class="replay_name">'+item.nickname+'</span>:</p>';
            // str +=            '<textarea class="comment_content"maxlength="50" onchange="this.value=this.value.substring(0, 50)" onkeydown="this.value=this.value.substring(0, 50)" onkeyup="this.value=this.value.substring(0, 50)"></textarea>';
            // str +=            '<div class="comment_middle">';
            // str +=                '<p><span class="num">0</span>/<span class="all_num">50</span></p>';
            // str +=                '<span @click="com_enter(item)" class="comment_yes btn">发表</span>';
            // str +=                '<span @click="com_out()" class="comment_no btn">取消</span>';
            // str +=            '</div>';
            // str +=        '</div>';
            str +=        '<ul  class="receive_list">';
            
            str +=        '</ul>';
            str +=    '</li>';
            // str +='</ul>';
            obj.html(str);
            item.dom = obj;
            item.dom_receive_dynamic = obj.find(".comment_click");// 二级评价外层
            item.dom_receive_dynamic_list = obj.find(".receive_list");// 二级评价列表外层
            item.dom_praise_icon = obj.find('.comment_1');// 点赞图标
            item.dom_praise_num = obj.find('.praise_num .text');// 点赞数量
            item.dom_replay_num = obj.find('.comment_4');// 评论数量
            // item.dom_replay_content = obj.find(".comment_content");//评论框输入内容
            item.dom_replay_nickname = obj.find(".replay_name");//回复人昵称
            // item.dom_replay_inpt = obj.find(".comment_click_in");// 评价输入框
            obj.find(".video_wrap").click(function(){
                //播放视频
                var path = $(this).attr("path");
                window.open('/index/peiwan/video_play.html?path=' + path);
            });

            obj.find(".comment_1").click(function(){//点赞
                _this.methods.praiseDynamic(item);
            });
            obj.find(".comment_3").click(function () {//评论
                if(!item._open) {//评论未展开

                    // 判断是否登录
                    if(login_status != '1'){
                        // layer.msg('登录后才能评论！');
                        tel_login_v1.bindPopShowFun(1);
                        return;
                    }

                    // _this.data.replayUid = item.id;//回复id
                    if (Number(item.dom_replay_num.text())>0){
                        _this.methods.getReceiveDynamic(item);//获取回复评论
                        item._open = true;// 标记打开
                        item.dom_receive_dynamic.addClass("on");
                    }
                    // item.dom_replay_content.focus();
                }else {// 评论已展开 关闭
                    item._open = false; // 标记关闭
                    _this.data.replayUid = '';
                    item.dom_receive_dynamic.removeClass("on");
                }
            });
            // 监听输入数量
            // item.dom_replay_content.on("input propertychange",function() {
            //     var l = $(this).val().length;
            //     obj.find(".num").text(l);
            // });
            $(".dynamic .content_wrap").append(item.dom);
            // obj.find(".comment_no").click(function () {//评论取消
            //     item._open = false; // 标记关闭
            //     item.dom_receive_dynamic.removeClass("on");
            // });
            // obj.find(".comment_yes").click(function () {//评论发表
            //     // item._open = false; // 标记关闭
            //     // item.dom_receive_dynamic.removeClass("on");
            //     var content = item.dom_replay_content.val().trim();
            //     content = common.filterXSS(content);
            //     if (content==''){
            //         layer.msg("内容不能为空",{time:1500});
            //         return false;
            //     }
            //     _this.methods.enterReceiveDynamic(item, content);
            // });
            // 针对主评论回复
            // obj.find(".avatar_wrap").click(function(){
            //     item.dom_replay_nickname.html(item.nickname);
            //     _this.data.replayUid = item.id;
            //     item.dom_replay_content.focus();
            // });
        },
        /**
         *动态回复列表单条信息创建
         *
         * @param {*} json
         */
        createReceiveDynamicHtml: function(info,item) {
            var _this = item_v3_data;
            var obj = $('<li style="width: 693px;"></li>');
            var str = "";
            str +=                '<div class="com_pic_box">';
            str +=                    '<img class="com_img" src="'+item.h_avatar+'">';
            str +=                '</div>';
            str +=                '<div class="comment_user">';
            str +=                    '<div class="comment_user_title">';
            str +=                        '<div class="comment_user_name">'+item.h_nickname+'</div>';
            str += '<div class="icon_wrapper">';
            str += '</div>';
            str += '<span class="replay_btn parent">回复</span>';
            str += '<div class="time">' + item.create_time + '</div>';
            
            str +=                    '</div>';
            str +=                    '<p class="comment_mid">'+item.reply_content+'</p>';
            str += '<div class="replay_inpt_wrap parent">';
            str += '<p>回复@<span class="replay_name">' + item.h_nickname + '</span>:</p>';
            str += '<textarea class="comment_content"maxlength="50" onchange="this.value=this.value.substring(0, 50)" onkeydown="this.value=this.value.substring(0, 50)" onkeyup="this.value=this.value.substring(0, 50)"></textarea>';
            str += '<div class="comment_middle">';
            str += '<p><span class="num">0</span>/<span class="all_num">50</span></p>';
            str += '<span class="comment_yes btn">发表</span>';
            str += '<span class="comment_no btn">取消</span>';
            str += '</div>';
            str += '</div>';
            str += '<div class="replay_list">';
            for (var ii in item.reply) {
                str +='<div class="replay_i">';
                str += '<img class="avatar" src="' + item.reply[ii].h_avatar + '">';
                str +='<div class="info_wrap">';
                str +='<div class="nickname_wrap">';
                str += '<span class="nickname">' + item.reply[ii].h_nickname + '</span><span class="text">回复</span><span class="nickname">' + item.reply[ii].b_nickname + '</span>';
                str +='</div>';
                str += '<span class="replay_btn child" replay_id="' + item.reply[ii].id + '" replay_uid="' + item.reply[ii].uid+'">回复</span>';
                str += '<span class="time">' + item.reply[ii].create_time + '</span>';
                str += '<span class="replay_detail">' + item.reply[ii].reply_content + '</span>';
                str += '<div class="replay_inpt_wrap child">';
                str += '<p>回复@<span class="replay_name">' + item.reply[ii].h_nickname + '</span>:</p>';
                str += '<textarea class="comment_content"maxlength="50" onchange="this.value=this.value.substring(0, 50)" onkeydown="this.value=this.value.substring(0, 50)" onkeyup="this.value=this.value.substring(0, 50)"></textarea>';
                str += '<div class="comment_middle">';
                str += '<p><span class="num">0</span>/<span class="all_num">50</span></p>';
                str += '<span class="comment_yes btn">发表</span>';
                str += '<span class="comment_no btn">取消</span>';
                str += '</div>';
                str += '</div>';
                str += '</div>';

                str +='</div>';
            }
            str += '</div>';
            str +=        '</div>';
            
            obj.html(str);
            item.dom = obj;
            info.dom_receive_dynamic_list.append(item.dom);
            // 父节点回复
            item.dom_replay_content = obj.find(".replay_inpt_wrap.parent .comment_content");//评论框输入内容
            item.dom_replay_inpt = obj.find(".replay_inpt_wrap.parent");// 评价输入框外层
            
            obj.find(".replay_btn.parent").click(function () {//评论
                if (!item._open) {//评论未展开 
                   _this.data.replayId = item.id;//回复id
                    item.dom_replay_inpt.show();
                    // _this.methods.getReceiveDynamic(item);//获取回复评论
                    item._open = true;// 标记打开
                    item.dom_replay_content.focus();
                } else {// 评论已展开 关闭
                    item._open = false; // 标记关闭
                   _this.data.replayId = '';
                    item.dom_replay_inpt.hide();
                }
            });
            // 监听输入数量
            item.dom_replay_content.on("input propertychange", function () {
                var l = $(this).val().length;
                item.dom_replay_inpt.find(".num").text(l);
            });
            item.dom_replay_inpt.find(".comment_no").click(function () {//评论取消
                item._open = false; // 标记关闭
                item.dom_replay_inpt.hide();
            });
            item.dom_replay_inpt.find(".comment_yes").click(function () {//评论发表
                item._open = false; // 标记关闭
                // item.dom_replay_inpt.hide();
                var content = item.dom_replay_content.val().trim();
                content = common.filterXSS(content);
                if (content == '') {
                    layer.msg("内容不能为空", { time: 1500 });
                    return false;
                }
                _this.methods.enterReceiveDynamic(info,item.id, content);
            });
            // 子节点回复
            item.dom_replay_content1 = obj.find(".replay_inpt_wrap.child .comment_content");//评论框输入内容
            
            
            item.dom_replay_inpt1 = obj.find(".replay_inpt_wrap.child");// 评价输入框外层
            obj.find(".replay_btn.child").click(function () {//评论
                if (!item._open1) {//评论未展开 
                    _this.data.replayUid = $(this).attr("replay_uid");//回复uid
                    _this.data.replayId = $(this).attr("replay_id");//回复id
                    item.dom_replay_inpt1 = $(this).siblings('.replay_inpt_wrap');
                    item.dom_replay_content1 = $(this).siblings('.replay_inpt_wrap').find(".comment_content");
                    item.replay_uid_val = 
                    item.dom_replay_inpt1.show();

                    // _this.methods.getReceiveDynamic(item);//获取回复评论
                    item._open1 = true;// 标记打开
                    item.dom_replay_content1.focus();
                } else {// 评论已展开 关闭
                    item._open1 = false; // 标记关闭
                    _this.data.replayUid = '';
                    _this.data.replayId = '';
                    item.dom_replay_inpt1.hide();
                }
            });
            // 监听输入数量
            item.dom_replay_content1.on("input propertychange", function () {
                var l = $(this).val().length;
                item.dom_replay_inpt1.find(".num").text(l);
            });
            item.dom_replay_inpt1.find(".comment_no").click(function () {//评论取消
                item._open1 = false; // 标记关闭
                item.dom_replay_inpt1.hide();
            });
            item.dom_replay_inpt1.find(".comment_yes").click(function () {//评论发表
                item._open1 = false; // 标记关闭
                // item.dom_replay_inpt.hide();
                var content = item.dom_replay_content1.val().trim();
                content = common.filterXSS(content);
                if (content == '') {
                    layer.msg("内容不能为空", { time: 1500 });
                    return false;
                }
                _this.methods.enterReceiveDynamic(info, _this.data.replayId, content, _this.data.replayUid);
            });
        },
    },
    methods: {// 要执行的方法相关
        /*
         *跳转固定聊天室
         */
        go_room:function (id) {
            if(loginstatus != 1){
                tel_login_v1.bindPopShowFun(1);
                return;
            }
            common.jump_chat_room(id);
        },
        //返回格式时间2017-12-05 10:02:25
        timer2: function (value, type) {
            if (type === 1) {
                return common.timestamp(value);
            } else {
                var str = common.timestamp(value);
                return str.replace(/ /, "\n");
            };
        },
        /**
         *设置背景
         *
         */
        setBodyBg:function() {
            var bodyBGI = document.querySelector('body');
            var img_path = url_kuaijie + "/bj_girl.png";
            if (body_bgi !== '') {
                img_path = body_bgi;
            };
            var str = "";
            str += 'background: url("' + img_path + '");';
            str += 'background-position: center 58px;';
            str += 'background-repeat:no-repeat; background-attachment:fixed;';
            bodyBGI.setAttribute("style", str);
        },
        /**
         *关注
         *
         */
        followUser: function () {
            var _this = item_v3_data;
            var pw_uid = _this.data.pw_info.uid;
            if (!_this.data.is_ajax_follow) {
                _this.data.is_ajax_follow = true;
                if (_this.data.pw_info.is_follow == 1) {
                    var url = '/index/peiwan/follow';
                    var postData = {
                        pw_uid: pw_uid
                    };
                    common.ajax(url, postData, function (res) {
                        if (res.code === 1) {
                            _this.data.pw_info.is_follow = 2;
                            var obj = document.querySelector('.guanzhu');
                            obj.innerHTML = Number(obj.innerHTML) + 1;
                            document.querySelector('.gz').classList.add('on');
                            document.querySelector('.follow_text').innerHTML = "已关注";
                        } else if (res.code === 0) {
                            tel_login_v1.bindPopShowFun(1);
                        }
                        _this.data.is_ajax_follow = false;
                    });

                } else {
                    var url = '/index/peiwan/cancel_follow';
                    var postData = {
                        pw_uid: pw_uid
                    };
                    common.ajax(url, postData, function (res) {
                        if (res.code === 1) {
                            _this.data.pw_info.is_follow = 1;
                            var obj = document.querySelector('.guanzhu');
                            obj.innerHTML = Number(obj.innerHTML) - 1;
                            document.querySelector('.gz').classList.remove('on');
                            document.querySelector('.follow_text').innerHTML = "关注";
                        } else if (res.code === 0) {
                            layer.msg(res.msg);
                        }
                        _this.data.is_ajax_follow = false;
                    });
                };
            }
        },
        /**
         *生成分享二维码
         *
         */
        generateQrCode:function () {
            var url = window.location.href;
            url = url.replace("/item/", "/m-item/");
            $('#codem').qrcode({
                render: 'canvas',
                text: url,
                height: 130,
                width: 130,
                typeNumber: -1, //计算模式
                correctLevel: 2, //纠错等级
                background: "#ffffff", //背景颜色
                foreground: "#000000", //前景颜色
            });
            setTimeout(function () {
                var dataUrl = $('#codem canvas').get(0).toDataURL('image/jpeg');
                $(".wx_code img").attr("src", dataUrl).css("display", "block");
                var shareurl = window.location.href;
                $(".share_url .inpt").val(shareurl);
            }, 500);
            // 百度分享
            share_baidu_fn();
        },
        /**
         *hover 缩略图 图片变化
         *
         * @param {*} num
         */
        changePhotoTab: function (num) {
            var _this = item_v3_data;
            this_show_index = num;
            _this.data.zIndex = _this.data.zIndex + 1;
            _this.data.imgIndex = num;
            picBox_p[num].style.zIndex = _this.data.zIndex;
            for (var i = 0, len = picBtnBox_li.length; i < len; i++) {
                picBtnBox_li[i].classList.remove("active");
            };
            picBtnBox_li[num].classList.add("active");
        },
        /**
         *图片左右移动
         *
         * @param {*} type left,right
         * @returns
         */
        changePhoto: function (type) {
            console.log(type);
            
            var _this = item_v3_data;
            console.log(_this.data.isMove);
            
            if (_this.data.isMove) {
                return;
            };
            if (type === 'left') {
                var _left = picBtnBox.offsetLeft;
                if (_left >= 0) {
                    return;
                };
                _this.data.isMove = true;
                picBtnBox.style.left = (_left + 70) + "px";
            } else if (type === 'right') {
                var _left = picBtnBox.offsetLeft;
                var num1 = _this.data.imgLength - 5;
                if (_left <= -(num1 * 70)) {
                    return;
                };
                _this.data.isMove = true;
                picBtnBox.style.left = (_left - 70) + "px";
            };
            if (_this.data.isMove) {
                setTimeout(function () {
                    _this.data.isMove = false;
                }, 300);
            };
        },
        /**
         *图片放大
         *
         * @returns
         */
        showLargeIcon: function () {
            var _this = item_v3_data;
            if (!this_show_index && this_video) {
                //播放视频
                var path = this_video.getAttribute("path");
                window.open('/index/peiwan/video_play.html?path=' + path);
                return;
            };
            var arr = {
                "start": this.imgIndex,
                "data": []
            };
            for (var i = 0, len = picImg.length; i < len; i++) {
                var jsn = {};
                jsn.src = picImg[i].src;
                arr.data.push(jsn);
            };
            layer.photos({
                photos: arr,
                shift: 5 //0-6的选择，指定弹出图片动画类型，默认随机
            });
        },
        /**
         *礼物数据回复默认
         *
         */
        resetGiftData: function () {
            var _this = item_v3_data;
            this.gift_box2.show_class = true;
            for (var i = 0, len = this.gift_box2.gift_list.length; i < len; i++) {
                this.gift_box2.gift_list[i].web_show2 = false;
            };
            for (var i = 0, len = this.gift_box2.guan_list.length; i < len; i++) {
                this.gift_box2.guan_list[i].web_show2 = false;
            };
        },
        /**
         *赠送礼物切换
         *
         * @param {*} ind 0,1
         */
        giftTab: function (btn,ind) {
            var _this = item_v3_data;
            if(ind === 1) {
                $(btn).parent().addClass('on');
            }else {
                $(btn).parent().removeClass('on');
            }
            
            $(".content_left .middle_content_item").eq(ind).addClass("on").siblings().removeClass("on");
            // _this.methods.resetGiftData();
        },
        /**
         *显示礼物详情
         *
         * @param {*} classname 元素名
         * @param {*} type 0：隐藏 1：关闭
         */
        showGiftDetail:function(classname,type) {
            if(type === 1) {
                $(classname).show().siblings().hide();
            }else {
                $(classname).hide().siblings().hide();
            }
        },
        /**
         *礼物赠送
         *
         * @param {*} item
         * @param {*} type 1|礼物，2|冠名
         * @returns
         */
        giftSubmit: function (item, type) {
            var _this = item_v3_data;
            var url = "/index/peiwan/buyGift";
            item.web_value = $.trim(item.web_value);
            if (item.web_value < 1) {
                layer.msg("最少为1个", {
                    time: 1000
                });
                return;
            } else if (item.web_value > 9999) {
                layer.msg("最多为9999个", {
                    time: 1000
                });
                return;
            };
            // 钻石不足，显示钻石不足弹窗
            if (_this.data.this_zuanshi_num < (item.web_value * item.price)) {
                $("#zuanshi_no").addClass("g-maskshow");
                return;
            };
            var todata = {
                pw_uid: _this.data.pw_info.uid,
                __token__:_this.data.token,
            };
            if (type === 1) {
                //礼物
                todata.gift_id = item.id;
                todata.number = item.web_value;
                _this.data.send_gift_num = item.web_value;
                _this.data.send_gift_price = parseInt((item.web_value * item.price) / 10);
            } else if (type === 2) {
                todata.date = item.id;
                //冠名会打开输入冠名的弹窗
                var gm_json = {
                    guan_id: item.id,
                    guan_path: item.icon_path,
                    pw_nickname: _this.data.pw_info.nickname,
                    type:1,//1正常冠名 2预约冠名
                    pw_sponsor_info: _this.data.pw_sponsor_info
                };
                if (_this.data.pw_sponsor_info && _this.data.pw_sponsor_info.nickname != '') {
                    gm_json.type = 2;
                };



                // 显示冠名弹窗
                _this.html.createGMPopHtml(gm_json);
                return;
            }

            var temp_json = {
                type: type,
                img_url: item.icon_big_path,
                url: url,
                postData: todata,
            };
            _this.methods.submitPay(temp_json);
        },
        /**
         *送礼支付钻石
         *
         */
        submitPay:function(json) {
            var _this = item_v3_data;
            var url = json.url;
            var postData = json.postData;
            common.ajax(url, postData, function (res) {
                console.log(res);
                if(json.type === 1) {
                    if (res.code === 1) {
                        if (res.data.upgrade) {
                            // 晋级成功
                            _this.data.upgradeInfo = {
                                upgrade: res.data.upgrade,
                                before:res.data.before_noble,
                                after:res.data.after_noble,
                                dom:false
                            }
                        } else {
                            // 送礼成功
                            setTimeout(function () {
                                //关闭赠送后刷新页面
                                location = location;
                            }, 3000);
                        };
                        var temp_gift_info = {
                            price: _this.data.send_gift_price,
                            path: json.img_url,
                            num: _this.data.send_gift_num,
                        };
                        // 显示赠礼成功弹窗
                        _this.html.createGiftSuccessHtml(temp_gift_info);
                    } else if (res.code === -9) {
                        // 钻石不足
                        $("#zuanshi_no").addClass("g-maskshow");
                    } else {
                        layer.msg(res.msg);
                    };

                } else if (json.type === 2) {//冠名
                    if (res.code == 1) {// 冠名成功
                        json.domData.dom.remove();// 关闭冠名弹窗
                        var temp_gm = {
                            guan_path: json.domData.guan_path
                        };
                        _this.html.createGMSuccessHtml(temp_gm);
                        // _public.main.guanming_success.isshow = true;
                    } else if (res.code == -9) {// 钻石不足
                        json.domData.dom.remove();// 关闭冠名弹窗
                        $("#zuanshi_no").addClass("g-maskshow");
                    } else if (res.code == -1) {
                        // 冠名昵称不符合标准
                        layer.msg(res.msg);
                        json.domData.dom_inpt.val("").focus();
                        return;
                    } else {
                        json.domData.dom.remove();// 关闭冠名弹窗
                        layer.msg(res.msg);
                    };
                }
            });
            
        },
        /**
         *冠名输入确定按钮
         *
         * @param {*} data
         * @returns
         */
        submitGM: function (data) {
            var _this = item_v3_data;
            //冠名输入内容提交
            var todata = {
                pw_uid: _this.data.pw_info.uid,
                sponsor_id: data.guan_id,
                nickname: data.inpt_val,
                __token__ : _this.data.token
            };
            if ($.trim(todata.nickname) == "") {
                layer.msg("冠名不能为空", {
                    time: 1000
                });
                return;
            };
            var temp_json = {
                type: 2,
                url: '/index/peiwan/sponsor',
                postData: todata,
                domData:data
            };
            _this.methods.submitPay(temp_json);
        },
        /**
         *排行榜切换
         *
         * @param {*} ind 索引值 0 1
         */
        bindTab:function(btn,ind) {
            if(ind === 0) {
                $(btn).parent().removeClass("on");
            }else if(ind === 1) {
                $(btn).parent().addClass("on");
            }
            $(".list_wrapper").eq(ind).addClass("on").siblings('.list_wrapper').removeClass("on");
        },
        /**
         *内容区域切换
         *
         * @param {*} num
         * @param {*} is_auto
         */
        serviceTab: function (num, is_auto) {
            var _this = item_v3_data;
            _this.data.game_sever_ind = num;
            for (var i = 0, len = tab_div_p.length; i < len; i++) {
                tab_div_p[i].classList.remove("active");
                tab_cont_list[i].style.display = "none";
            };
            tab_div_p[num].classList.add("active");
            tab_cont_list[num].style.display = "block";
            if (is_auto && num > 6) {
                $(".middle .swiper-button-prev").trigger("click");
            }
        },
        /**
         *拿到游戏id显示当前游戏的服务项
         *
         */
        initService: function () {
            var _this = item_v3_data;
            var gameid = common.GetQueryString("classid"); //查看当前游戏
            if (gameid) {
                //有游戏id
                if (tab_div_p.length) {
                    for (var i = 0, len = tab_cont_list.length; i < len; i++) {
                        var server_type = tab_cont_list[i].getAttribute('server_type');
                        if (server_type == gameid) {
                            _this.methods.serviceTab(i, 1);
                            continue;
                        };
                    };
                };
            }
        },
        /**
         *载入音频时间
         *
         * @param {*} ind
         * @param {*} num
         */
        loadAudioTime:function (ind, num) {
            var _this = item_v3_data;
            _this.data.allTimeObj[ind].innerHTML = num + "s";
        },
        /**
         *载入音频
         *
         */
        loadAudio:function () {
            var _this = item_v3_data;
            var allobj = document.querySelectorAll('audio');
            var alli1 = document.querySelectorAll('.play_i');
            // var alli2 = document.querySelectorAll('.play_i2');
            for (var i = 0, len = allobj.length; i < len; i++) {
                var arr = {};
                arr.el = allobj[i];
                // arr.el.volume = 0.5;
                arr.i1 = alli1[i];
                // arr.i2 = alli2[i];
                arr.t = null;
                arr.i = i;
                arr.load = _this.methods.loadAudioTime;
                arr.allTime = 0;
                arr.getTime = function () {
                    var _this1 = this;
                    this.t = setInterval(function () {
                        if (_this1.el.duration) {
                            clearInterval(_this1.t);
                            _this1.t = null;
                            _this1.allTime = parseInt(_this1.el.duration);
                            _this1.load(_this1.i, parseInt(_this1.el.duration));
                        };
                    }, 500);
                };
                arr.getTime();
                _this.data.vodio.push(arr);
            };
            setInterval(function () {
                for (var i = 0, len = _this.data.vodio.length; i < len; i++) {
                    if (_this.data.vodio[i].el.paused) {
                        _this.data.vodio[i].i1.classList.remove('play');
                        // _this.data.vodio[i].i2.classList.remove('play');
                    } else {
                        _this.data.vodio[i].i1.classList.add('play');
                        // _this.data.vodio[i].i2.classList.add('play');
                    };
                };
            }, 200);
        },
        //音频播放
        playAutio: function (ind) {
            var _this = item_v3_data;
            if (_this.data.vodio[ind].allTime) {
                for (var i = 0, len = _this.data.vodio.length; i < len; i++) {
                    if (ind != i) {
                        _this.data.vodio[i].el.pause();
                    };
                };
                if (_this.data.vodio[ind].el.paused) {
                    _this.data.vodio[ind].el.play();
                } else {
                    _this.data.vodio[ind].el.pause();
                };
            };
        },
        /**
         *打开单聊窗口
         *
         * @returns
         */
        show_chat_pop_fn: function () {
            var _this = item_v3_data;
            if (loginstatus) {
                var user_uid = document.querySelector('#user-uid').value;
                var pw_uid = _this.data.pw_info.uid;
                var friend_notice = {};
                if (user_uid == pw_uid) {
                    layer.msg("不能跟自己聊天");
                    return false;
                } else {
                    friend_notice = {
                        id: pw_uid,
                        avatar: _this.data.pw_info.avatar,
                        nickname: _this.data.pw_info.nickname,
                        num: 0,
                        uid: _this.data.pw_info.uid,
                        login_status: 0,
                        type: 2,
                        create_time: "",
                        timestamp: "",
                        dom: false
                    };
                    localStorage.setItem("temp_friend_info", JSON.stringify(friend_notice));
                    var url = "/user/index/chat.html?pw_uid=" + _this.data.pw_info.uid;//把房间的信息都用url参数传递过去
                    window.b_chat_win = window.open(url, "chat_win");
                }
            } else {
                tel_login_v1.bindPopShowFun(1);
            }

        },
        /**
         *订单数量加
         *
         */
        changeOrderNum1: function () {
            var _this = item_v3_data;
            _this.data.isdiscount_num = Number(_this.data.isdiscount_num) + 1;
            if (_this.data.isdiscount_num < 1) {
                _this.data.isdiscount_num = 1;
            }else if(_this.data.isdiscount_num > 23){
                _this.data.isdiscount_num = 23;
                layer.msg("一次最多下23小时");
            };
            if (_this.data.special == 'act') {
                if (_this.data.isdiscount_num > 1) {
                    _this.data.isdiscount_num = 1;
                    layer.msg("特价活动只能下一个小时或一次", {
                        time: 1000
                    });
                };
            };
            $(".change_num .inpt").val(_this.data.isdiscount_num);
        },
        /**
         *订单数量减
         *
         */
        changeOrderNum2: function () {
            var _this = item_v3_data;
            _this.data.isdiscount_num = Number(_this.data.isdiscount_num) - 1;
            if (_this.data.isdiscount_num < 1) {
                _this.data.isdiscount_num = 1;
            };
            if (_this.data.special == 'act') {
                if (_this.data.isdiscount_num > 1) {
                    _this.data.isdiscount_num = 1;
                    layer.msg("特价活动只能下一个小时或一次", {
                        time: 1000
                    });
                };
            };
            $(".change_num .inpt").val(_this.data.isdiscount_num);
        },
        /**
         *立即下单按钮
         *
         * @returns
         */
        /**
         *
         *
         * @param {*} status 陪玩状态 1：离线 2 在线
         * @returns
         */
        submit: function (status) {
            var _this = item_v3_data;
            var num = _this.data.game_sever_ind;
            if (!loginstatus) {
                tel_login_v1.bindPopShowFun(1);
                return;
            };
            
            if (_this.data.pw_info.login_status == 1 || status == 1) {
                layer.msg("陪玩处于离线状态，暂时无法接单");
                return;
            };
            var user_uid = document.querySelector('#user-uid').value;
            if (!tab_cont_list[num]) {
                layer.msg("当前用户没有上架服务，无法下单", {
                    time: 1000
                });
                return;
            };
            if (user_uid == tab_cont_list[num].getAttribute('play_uid')) {
                layer.msg("不能给自己下单");
                return;
            };
            
            var setdata = {};
            setdata.play_uid = tab_cont_list[num].getAttribute('play_uid');
            setdata.avatar = tab_cont_list[num].getAttribute('avatar');
            setdata.company = tab_cont_list[num].getAttribute('company'); //单位
            setdata.nickname = encodeURIComponent(tab_cont_list[num].getAttribute('nickname'));
            setdata.name = encodeURIComponent(tab_cont_list[num].getAttribute('name'));
            setdata.server_type = tab_cont_list[num].getAttribute('server_type');
            setdata.pay_money = tab_cont_list[num].getAttribute('pay_money');
            setdata.order_num = _this.data.isdiscount_num;
            var optins = "play_uid=" + setdata.play_uid;
            optins += "&server_type=" + setdata.server_type;
            var optins1 = "play_uid=" + setdata.play_uid;
            optins1 += "&avatar=" + setdata.avatar;
            optins1 += "&company=" + setdata.company;
            optins1 += "&nickname=" + setdata.nickname;
            optins1 += "&name=" + setdata.name;
            optins1 += "&server_type=" + setdata.server_type;
            optins1 += "&pay_money=" + setdata.pay_money;
            optins1 += "&order_num=" + setdata.order_num;
            //从上一个页面获取的数据
            //store.set("place_an_order",setdata);
            if (_this.data.special == 'act') {
                //是8元活动
                location = '/index/placeorder/confirm_order.html?special=act' + "&" + optins1;
            } else {
                //正常跳转过去
                location = '/index/placeorder/confirm_order?' + optins1;
            };
        },
        /**
         *评论切换
         *
         * @param {*} btn
         * @param {*} ind
         */
        changeEvaluagePage:function(btn,ind) {
            var _this = item_v3_data;
            $(btn).addClass("active").siblings().removeClass("active");
            $(".bottom_content_item").eq(ind).addClass("on").siblings().removeClass("on");
            if(ind === 1){//赠礼墙
                _this.methods.getGiftList(1);
                _this.methods.getGMtList(1);
            }else if(ind ===2) {//动态
                _this.methods.getDynamic(1);
            }
        },
        /**
         *获取评论
         *
         * @param {*} page
         */
        getEvaluate: function (page) {
            var _this = item_v3_data;
            var url = '/index/peiwan/appraiseLists';
            var postData = {
                pw_uid: _this.data.pw_info.uid,
                page_size: 10,
                page: page
            };
            common.ajax(url, postData, function (res) {
                if (res.code == 1) {
                    $(".evaluate .loadBox").hide();
                    if(res.data.data.length>0) {
                        $(".evaluate .content_wrap").html("");
                        for (var i in res.data.data) {
                            res.data.data[i]._open = false;//默认是关闭
                            _this.html.createEvaluateHtml(res.data.data[i]);
                        };
                        $(".evaluate .empty").hide();
                    } else {
                        $(".evaluate .empty").show();
                    }
                    _this.data.evaluateCurPage = res.data.current_page;
                    if (res.data.last_page > 1) {
                        common.mypage('pageInfo2', '#FE586B', _this.methods.getEvaluate, res.data.last_page,page,false,false);
                    }
                } else{
                    layer.msg(res.msg);
                }
            });
        },
        /**
         *点赞
         *
         * @param {*} item
         */
        praiseEvaluate: function (item) {
            var _this = item_v3_data;
            if(!loginstatus) {
                tel_login_v1.bindPopShowFun(1);
            }else {
                var url = '/user/order/appraisePraise';
                var postData = {
                    id: item.id,
                };
                common.ajax(url, postData, function (res) {
                    console.log(res);
                    if (res.code == 1) {
                        if (res.data.praise_num===0) {
                            item.dom_praise_num.text(Number(item.dom_praise_num.text()) -1);
                            item.dom_praise_icon.removeClass("ok");
                        }else {
                            item.dom_praise_num.text(Number(item.dom_praise_num.text()) + 1);
                            item.dom_praise_icon.addClass("ok");
                        }
                        layer.msg(res.msg);
                    } else{
                        layer.msg(res.msg);
                    };
                });
            }
        },
        /**
         *获取回复评论
         *
         * @param {*} page
         */
        getReceiveEvaluate: function (page, item) {
            var _this = item_v3_data;
            var url = '/user/order/appraiseReplyLists';
            item.dom_receive_evaluate_list.html("");
            var postData = {
                id: item.id,
                page_size: 10,
                page: page
            };
            common.ajax(url, postData, function (res) {
                if (res.code == 1) {
                    for(var i in res.data.data) {
                        _this.html.createReceiveEvaluateHtml(item, res.data.data[i]);
                    };
                } else {
                    layer.msg(res.msg);
                };
            });
        },
        /**
         *回复评论
         *
         * @param {*} item
         */
        enterReceiveEvaluate: function (item,content) {
            var _this = item_v3_data;
            var url = '/user/order/userReplyAppraise';
            var postData = {
                id: item.id,
                appraise_content: content,
            };
            common.ajax(url, postData, function (res) {
                if (res.code === 1) {
                    item.dom_replay_num.text(Number(item.dom_replay_num.text())+1);
                    _this.methods.getReceiveEvaluate(1, item);
                    layer.msg(res.msg);
                } else {
                    layer.msg(res.msg);
                }
            });
        },
        /**
         *礼物切换
         *
         * @param {*} btn
         * @param {*} ind
         */
        changeGiftTab: function(btn,ind) {
            $(btn).addClass("active").siblings().removeClass("active");
            $(".gift .gift_content_item").eq(ind).addClass("on").siblings().removeClass("on");
        },
        /**
         *获取赠礼墙礼物
         *
         * @param {*} page
         */
        getGiftList: function (page) {
            var _this = item_v3_data;
            var url = '/index/peiwan/giftLog';
            var postData = {
                uid: _this.data.pw_info.uid,
                limit: 7,
                page: page
            };
            common.ajax(url, postData, function (res) {
                if (res.code == 1) {
                    $(".gift .loadBox").hide();
                    if (res.data.data.length > 0) {
                        $(".gift .gift_list_wall").html("");
                        for (var i in res.data.data) {
                            _this.html.createGiftWallHtml(res.data.data[i]);
                        };
                        $(".gift .gift_wall .empty").hide();
                    } else {
                        $(".gift .gift_wall .empty").show();
                    }
                    if (res.data.last_page > 1) {
                        common.mypage('pageInfo', '#FE586B', _this.methods.getGiftList, res.data.last_page, page, false, false);
                    }
                    
                } else {
                    layer.msg(res.msg);
                };
            });
        },
        /**
         *获取赠礼墙 冠名
         *
         * @param {*} page
         */
        getGMtList: function (page) {
            var _this = item_v3_data;
            var url = '/index/peiwan/sponsorLog';
            var postData = {
                uid: _this.data.pw_info.uid,
                limit: 7,
                page: page
            };
            common.ajax(url, postData, function (res) {
                if (res.code == 1) {
                    $(".gift .loadBox").hide();
                    if (res.data.data.length > 0) {
                        $(".gift .gm_list_wall").html("");
                        for (var i in res.data.data) {
                            _this.html.createGMWallHtml(res.data.data[i]);
                        }; 
                        $(".gift .gm_wall .empty").hide();
                    } else {
                        $(".gift .gm_wall .empty").show();
                    }
                    if (res.data.last_page > 1) {
                        common.mypage('pageInfo1', '#FE586B', _this.methods.getGMtList, res.data.last_page, page, false, false);
                    }
                } else {
                    layer.msg(res.msg);
                };
            });
        },
        /**
         *获取动态
         *
         * @param {*} page
         */
        getDynamic: function (page) {
            var _this = item_v3_data;
            var url = '/index/peiwan/getPeiwanMoment';
            var postData = {
                uid: _this.data.pw_info.uid,
                page_size: 8,
                page: page
            };
            common.ajax(url, postData, function (res) {
                if (res.code === 1) {
                    $(".dynamic .loadBox").hide();
                    if (res.data.data.length > 0) {
                        $(".dynamic .content_wrap").html("");
                        for (var i in res.data.data) {
                            res.data.data[i]._open = false;//默认是关闭
                            _this.html.createDynamicHtml(res.data.data[i]);
                        };
                        $(".dynamic .content .empty").hide();
                    } else {
                        $(".dynamic .content .empty").show();
                    }
                    if (res.data.last_page > 1) {
                        common.mypage('pageInfo3', '#FE586B', _this.methods.getDynamic, res.data.last_page, page, false, false);
                    }
                } else if (res.code === 0) {
                    layer.msg(res.msg);
                }
            });
        },
        /**
         *点赞
         *
         * @param {*} item
         */
        praiseDynamic: function (item) {
            var _this = item_v3_data;
            if (!loginstatus) {
                tel_login_v1.bindPopShowFun(1);
            } else {
                var url = '/index/peiwan/praiseMoment';
                var postData = {
                    sns_id: item.id,
                };
                common.ajax(url, postData, function (res) {
                    console.log(res);
                    if (res.code == 1) {
                        var data = res.data
                        // item.dom_praise_num.text(Number(item.dom_praise_num.text()) + 1);
                        item.dom_praise_num.text(data.praise_num);
                        item.dom_praise_icon.addClass("ok");
                        // if (res.data.praise_num === 0) {
                        //     item.dom_praise_num.text(Number(item.dom_praise_num.text()) - 1);
                        //     item.dom_praise_icon.removeClass("ok");
                        // } else {
                        //     item.dom_praise_num.text(Number(item.dom_praise_num.text()) + 1);
                        //     item.dom_praise_icon.addClass("ok");
                        // }
                        layer.msg('点赞成功！');
                    } else {
                        layer.msg(res.msg);
                    };
                });
            }
        },
        /**
         *动态获取回复
         *
         * @param {*} page
         */
        getReceiveDynamic: function (item) {
            var _this = item_v3_data;
            var url = '/index/peiwan/getMomentReply';
            console.log(item);
            
            item.dom_receive_dynamic_list.html("");
            var postData = {
                sns_id: item.id,
            };
            common.ajax(url, postData, function (res) {
                if (res.code == 1) {
                    for (var i in res.data) {
                        _this.html.createReceiveDynamicHtml(item, res.data[i]);
                    };
                } else {
                    layer.msg(res.msg);
                };
            });
        },
       
        /**
         *动态回复
         *
         * @param {*} item
         * @param {*} replay_id 回复的评论的id
         * @param {*} content 回复的内容
         * @param {*} type 1：主节点回复，2：子节点回复
         */
        enterReceiveDynamic: function (item,replay_id, content,uid) {
            var _this = item_v3_data;
            var url = '/index/peiwan/replyMoment';
            var postData = {
                sns_id: item.id,
                reply_id: replay_id,
                reply_content: content,
            };
            if(uid) {
                postData.uid = uid;
            }
            common.ajax(url, postData, function (res) {
                if (res.code === 1) {
                    item.dom_replay_num.text(Number(item.dom_replay_num.text()) + 1);
                    _this.methods.getReceiveDynamic(item);
                    layer.msg(res.msg);
                } else {
                    layer.msg(res.msg);
                }
            });
        },
    }
};