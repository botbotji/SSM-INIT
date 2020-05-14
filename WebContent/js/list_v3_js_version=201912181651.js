
"use strict";
var $loading = $('.loading');
var $empty = $('.empty');
var $person_data = $('#person_data');
var $meili_day = $("#meili_day");
var $meili_week = $("#meili_week");

var autopm3list1 = [];
var autopm3list2 = [];
var list_has_more = true;//是否有更多数据
var ajax_state = false;//ajax_state请求状态true为在请求过程中
var sex = 0;            //性别        0不限，1男，2女
var level = '';          //等级
var order = 'price';         //接单参数     默认：price 评分：scoring
var current_page = 1;   //当前页数
var is_new = 0;     //新人        0不是新人，1新人
var is_compensation = 0;        //超时赔       1:超时赔，0:不是超时赔
var is_taiwan=0;        //台湾风情      1：是，0：不是
var sort='';        //排序     综合排序为空，默认是asc
var near = false;      //附近的人
var map_point = {               //地图经纬度
    x:113.64964385,// 经度
    y:34.75661006,// 纬度
};
var client_status = false;  //是否关闭热聊提示
if (common.GetQueryString("type") === "new") {
    is_new = 1;
    $(".sort_wrap .nav_content .nav_content_list.new_wrap").addClass("active").siblings().removeClass("active");
}
// 选择的服务 在隐藏范围内的，则展示所有
$(".items_box").each(function(){
    $(this).find(".game_item").each(function (i) {
        if ($(this).hasClass("active") && i > 6) {
            $(this).parent().find(".item_handle").trigger("click");
            return false;
        }
    });
});

//滚动加载
window.addEventListener('scroll', function () {
    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    var scrllHeight = document.documentElement.scrollHeight  || document.body.scrollHeight ;
    img_lazy_load(scrollTop);//懒加载
    // console.log((scrllHeight - scrollTop) <= (document.body.clientHeight+200));
    if((scrllHeight - scrollTop) <= (document.body.clientHeight+400)){

    // if (scrollTop + window.innerHeight >= (document.body.clientHeight-700)){
        if(list_has_more && !ajax_state){
            current_page ++;
            get_data()

        };
    }
})

/**
 * 侧边栏列表触发筛选条件隐藏或收起
 * @param _this     触发动作按钮本身
 */
function item_show(_this) {
    var id = _this.id;
    //是否包含unfold，判断时展开还是收起状态
    var has_unfold = $('#'+id).hasClass('unfold');
    var li_array = $('#'+id).parent().find('.game_item')

    //获取全部元素，遍历，根据条件显示或隐藏
    for(var i = 0 ; i < li_array.length; i++){
        if(has_unfold){
            $(li_array[i]).removeClass('hide');
        }else{
            //触发收起动作，下标大于8的隐藏（数量大于8）
            if(i > 6){
                $(li_array[i]).addClass('hide')
            }
        }
    }
    //根据展开或收起状态，改变样式和文字
    if(has_unfold){
        $('#'+id).removeClass('unfold').addClass('pack_up').find('span').html('收起');
    }else{
        $('#'+id).removeClass('pack_up').addClass('unfold').find('span').html('全部');
    }
}

/**
 * 筛选选项鼠标划上去展示
 * @param _this         元素本身
 */
function show_option(_this) {
    $(_this).find('.option_content').show();
}

/**
 * 条件筛选选项鼠标离开时收起
 * @param _this     元素本身
 */
function hide_option(_this) {
    $(_this).find('.option_content').hide();
}

/**
 * 图片懒加载
 */
function img_load() {
    $("img[data-path]").each(function(index, el) {
        $(this).attr("src",$(this).attr("data-path"));
        $(this).removeAttr('data-path');
    });
}
img_load();


//懒加载
var img_lazy_load_status = false;
var img_lazy_load = function(scrollTop){
    if(img_lazy_load_status){return;};
    img_lazy_load_status = true;
    var clientHeight =  document.documentElement.clientHeight;
    //var scrollHeight = document.body.scrollHeight;
    $("img[data-path]").each(function(index, el) {
        var _top = $(this).offset().top;
        if((scrollTop + clientHeight) > _top){
            $(this).attr("src",_P_H($(this).attr("data-path"),232));
            $(this).removeAttr('data-path');
        };
    });
    img_lazy_load_status = false;
};
//img_lazy_load();
/**
 * 新窗口打开陪玩详情页面
 * @param uid       陪玩ID
 * @param game_id   当前游戏ID
 */
function open_detail(uid,game_id) {
    window.open('/item/'+uid+'.html?classid='+game_id)
}

/**
 * 获取本地存储的游戏等级，如不存在则请求网络资源，然后填充选项
 */
function get_local_game_level(cur_game_id) {
    var game_level = localStorage.getItem('Get_checkEgame_data');
    if(game_level != null && game_level != undefined){
        game_level = JSON.parse(game_level);
        var no_restrict = [{id:0,name:'不限'}];
        append_string_for_game_level(no_restrict.concat(game_level[cur_game_id]),'game_level_option')
    }else{
        get_game_level(cur_game_id)
    }
}

/**
 * 获取游戏等级
 * @param game_id       游戏ID
 */
function get_game_level(game_id) {
    var url = '/index/peiwan/gradeLists';
    var data = {
        id:game_id
    }
    var game_level;
    $.get(url,data,function (rst) {
        var code = rst.code;
        var data = rst.data;
        if(code){
            game_level = data[game_id]
            //本地存储游戏等级
            localStorage.setItem('Get_checkEgame_data',JSON.stringify(data))
        }
        var no_restrict = [{id:0,name:'不限'}];
        game_level = no_restrict.concat(game_level);
        append_string_for_game_level(game_level,'game_level_option')
    })
}

/**
 * 游戏等级选项处理
 * @param array         等级数组
 * @param element_id    需要填充的ID
 */
function append_string_for_game_level(array,element_id) {
   // console.log('等级',array)
    var str = '';
    var type = "'level'"
    array.forEach(function (item,index) {
        str += '<span onclick="choose_sex('+item.id+',this,'+type+')">'+item.name+'</span>'
    })
    //console.log(str);
    $('#'+element_id).html(str)
}

get_local_game_level(game_id);

/**
 * 根据性别筛选
 * @param id                当前选项ID
 * @param _this             元素本身
 * @param type              类型，根据类型判断是性别选择还是等级选择，sex:性别，level:等级
 */
function choose_sex(id,_this,type) {
    list_has_more = true;
    var parent_node = $(_this).parent();
    var grandpa_node =  $(_this).parent().parent();
    var grand_grandpa_node = $(_this).parent().parent().parent();
    current_page = 1;
    if(type == 'sex'){
        sex = id;
    }else if(type == 'level'){
        level = id;
        // console.log('level',level)
    }else if(type == 'order'){
        var  order_text = $(_this).text();
        if(order_text == '接单7日榜'){
            order = 'orders7'
        }else{
            order = 'orders30'
        }

        is_new = 0;
        is_compensation = 0;
        is_taiwan = 0;
        near = false;
        sort = '';
    }

    var str = $(_this).text();
    grandpa_node.find('.nav_content_list_box').find('.text').text(str);
    grand_grandpa_node.find('.nav_content_list').removeClass('active');
    grandpa_node.addClass('active');
    parent_node.hide();

    // console.log('bbbbb');

    get_data();
}

/**
 * 点击价格排序
 * @param _this
 */
function click_price(_this) {
    list_has_more = true;
    var parent_node = $(_this).parent();
    var grandpa_node =  $(_this).parent().parent();
    order = 'price';
    if(sort == ''){
        sort = 'asc'
        $(_this).find('.arrow_down').addClass('arrow_down_white')
        $(_this).find('.arrow_up').removeClass('arrow_up_white')
    }else if(sort == 'asc'){
        sort = 'desc'
        $(_this).find('.arrow_down').removeClass('arrow_down_white')
        $(_this).find('.arrow_up').addClass('arrow_up_white')
    }else if(sort == 'desc'){
        sort = 'asc'
        $(_this).find('.arrow_down').addClass('arrow_down_white')
        $(_this).find('.arrow_up').removeClass('arrow_up_white')
    }
    grandpa_node.find('.nav_content_list').removeClass('active');
    parent_node.addClass('active');

    current_page = 1;
    is_new = 0;
    is_compensation = 0;
    is_taiwan = 0;
    near = false;

    get_data();
}

/**
 * 点击其他选项
 * @param _this     元素本身
 * @param type      选项类别
 */
function click_option(_this,type) {
    list_has_more = true;
    var parent_node = $(_this).parent();
    var grandpa_node = $(_this).parent().parent();
    grandpa_node.find('.nav_content_list').removeClass('active');
    parent_node.addClass('active');
    current_page = 1;
    switch (type) {
        case "zonghe":      //综合排序
            is_new = 0
            order = 'price';
            sort = '';
            is_compensation = 0;
            is_taiwan = 0;
            near = false;
            break;
        case "scoring":     //评价
            is_new = 0
            order = 'scoring';
            sort = 'desc';
            is_compensation = 0;
            is_taiwan = 0;
            near = false;
            break;
        case "new_person":     //新人
            is_new = 1
            order = '';
            sort = '';
            is_compensation = 0;
            is_taiwan = 0;
            near = false;
            break;
        case "compensation":     //超时赔
            is_new = 0
            order = '';
           // sort = '';
            is_compensation = 1;
            is_taiwan = 0;
            near = false;
            break;
        case "taiwan":     //台湾风情
            is_new = 0
            order = '';
            // sort = '';
            is_compensation = 0;
            is_taiwan = 1;
            near = false;
            break;
        case "near":     //附近的人
            is_new = 0
            order = '';
            // sort = '';
            is_compensation = 0;
            is_taiwan = 0;
            near = true;

            // 百度地图API功能
            var map = new BMap.Map("allmap");
            // 郑州经纬度
            var point = new BMap.Point(113.64964385,34.75661006);
            map.centerAndZoom(point,12);
            var myCity = new BMap.LocalCity();
            myCity.get(function(result){
                map_point.x = result.center.lng;
                map_point.y = result.center.lat;
            });
            break;
    }
    get_data();
}

/**
 * 数据请求
 */
function get_data() {
    //判断是否有更多，如果没有更多则不请求
    if(ajax_state){return;};
    ajax_state = true;
    //开启加载中
    $loading.show()
    var data ={
        classid:cur_game_id,//游戏id
        attribute:level,//等级
        sex:sex,//性别
        order:order,//排序字段。订单order,评分scoring。默认价格:price
        sort:sort,//排
        page_size:15,
        page:current_page,
        newer:is_new,//是否是新人
        bondmoney:is_compensation,//超时赔
        taiwan:is_taiwan,//台湾
    };
    //附近的人,坐标使用百度地图定位
    if(near){
        data.isNear = near;
        data.long = map_point.x;
        data.lat = map_point.y;
    }
    var url = "/index/peiwan/newSeek";
    $.get(url,data,function (rst) {
        //隐藏加载中

        if(rst.code == 1){
            var json = rst.data;
            var data = json.data;
             // console.log('=======',json.has_more);
            // has_more = data.has_more;
                if(!client_status){
                    $('.peiwan_tip').addClass('active');
                };               

                var str = ''
                for(var i = 0 ; i < data.length ; i++){
                    var item = data[i];
                    var avatar = item.avatar || 'https://img1.daofengdj.com/static/public/img/avatar_big.png'
                    var price = item.price || 0
                    var unit = item.unit || '小时'
                    str += '<li>'+
                        '<a class="u_avatar frame_logo_wrapper" href="/item/' + item.uid + '.html?classid=' + cur_game_id +'" target="_blank">'
                    /*if(item.login_status == 1){
                        str += '<div class="avatar_cover_box"></div>'
                    }*/
                    // 边框
                    if (item.tags.frame){
                        str += '<img class="img_frame" src="' + item.tags.frame.path + '" alt="' + item.nickname + '陪玩">';
                    }
                    // 角标
                    if (item.tags.mark) {
                        str +='<div class="mark_wrapper">';
                        str +=    '<img src="' + item.tags.mark.path+'" alt="' + item.nickname + '陪玩角标" class="icon">';
                        str +=    '<div class="span text">' + item.tags.mark.explain+'</div>';
                        str +='</div>';
                    }
                    str += '<img class="avatar" data-path="' + avatar + '" src="' + public_img_str +'/lazy_load.png" alt="'+item.nickname+'陪玩">' ;
                    str +=    '<div class="tag">';
                        //折扣
                        if(item.discount){
                            str+='<div class="discount">'+item.discount+'折</div>';
                        }
                        //超时赔
                        if(item.compensation){
                            str+='<div class="over_time"></div>';
                        }
                        str +='</div>'
                        //在线状态
                        if(item.login_status != 1){
                            str += '<div class="work_status online">';
                        }else{
                            str += '<div class="work_status outline">';
                        }
                        str +='<i></i>'
                        if(item.login_status != 1){
                            str += '在线';
                        }else{
                            str += '离线';
                        }

                        var mp3_path = item.mp3_path || '';

                        str +='</div>' +
                        '                    </a>' +
                        '                    <div class="u_info">' +
                        '                        <div class="u_info_title_and_grade clear_fixed" onclick="open_detail('+item.uid+','+cur_game_id+')">' +
                        '<div class="u_title">';
                                if (item.sponser && item.sponser.sp_nickname){
                                    str +=  item['sponser']['sp_nickname'];
                                    str +='<img src="'+item['sponser']['icon_path']+'" alt="'+item['sponser']['ps_name']+'">'
                                }


                    str +=item.nickname+'</div>' +
                        '                            <div class="u_grade">'+item.grade+'</div>' +
                        '                        </div>' +
                        '                        <div class="u_auto_and_price clear_fixed">' +
                        '                            <div class="u_auto" onclick="play_mp3v2('+item.uid+',this)"><i class="auto_stop"></i>' +
                                                        '<audio class="auto_mp3" onended="stop_mp3v2(this)" id="auto_'+item.uid+'" >'+
                                                            '<source src="'+mp3_path+'" type="audio/mpeg">'+
                                                        '</audio>' +
                                                    '</div>' +
                        '                            <div class="u_price" onclick="open_detail('+item.uid+','+cur_game_id+')">￥'+price+'/'+unit+'</div>' +
                        '                        </div>' +
                        '                    </div>' +
                        '                </li>'
                };

                list_has_more = json.has_more;//是否有更多数据
            if(current_page == 1){
                if(data.length == 0){
                    $empty.show()
                    $person_data.html('');
                }else{
                    $empty.hide()
                    $person_data.html(str);
                }
            }else{
                $person_data.append(str);
            }

            //动态显示方法 以后再写
            setTimeout(function(){
                img_lazy_load(document.documentElement.scrollTop || document.body.scrollTop);//懒加载
            },100);

            $loading.hide();
            ajax_state = false;
        }else{
            layer.msg(rst.msg);
            ajax_state = false;
        }


    })
    
}

//声音播放
function play_mp3v2(id,_this){
    var DOMi = _this.querySelector("i");
    var DOMaudio = _this.querySelector("audio");
    var i_class_name = DOMi.className;

    if(i_class_name == 'auto_stop'){
        //开始播放已经在播放的关闭
        for(var i=0,len=autopm3list1.length;i<len;i++){
            autopm3list1[i].pause();
            autopm3list2[i].className = "auto_stop";
        };
        DOMaudio.play();
        autopm3list1.push(DOMaudio);
        autopm3list2.push(DOMi);
        DOMi.className = "auto_start";
    }else{
        DOMi.className = "auto_stop";
        DOMaudio.pause();
    };

    var i_class_name = $(_this).find('i').attr('class');
};
//声音播放完毕自动暂停
function stop_mp3v2(_this){
    $(_this).parent(".u_auto").find("i").attr("class","auto_stop");
};


/**
 * 排行榜查看日榜和周榜
 * @param id        1:日榜    2周榜
 * @param _this     元素本身
 * @param type      用于区分人气榜和魅力榜  人气：renqi   魅力：meili
 */
function choose_data(id,_this,type) {
    var parent_node = $(_this).parent();
    parent_node.find('span').removeClass('active');
    $(_this).addClass('active')
    if(id == 1 && type == 'renqi'){
        $('#'+type+'_day').show()
        $('#'+type+'_week').hide()
    }
    if(id == 2 && type == 'renqi'){
        $('#'+type+'_day').hide()
        $('#'+type+'_week').show()
    }

    if(id == 1 && type == 'meili'){
        $('#'+type+'_day').show()
        $('#'+type+'_week').hide()
    }
    if(id == 2 && type == 'meili'){
        $('#'+type+'_day').hide()
        $('#'+type+'_week').show()
    }
}

/**
 *显示排行榜
 *
 * @param {*} _this
 */
function show_bang_pop(_this) {
    $("#renqi_day,#renqi_week").html('');
    $meili_day.html('');
    $meili_week.html('');
    getPopuList();
    setTimeout(getCharmList, 300);
    var x = $(_this).offset().top;
    var y = $(_this).offset().left;
    var body_width = document.body.offsetWidth;

    document.body.style.overflowY = 'hidden';

    $('.bang_list_box_bg').show();
    $('.bang_list_box').css({
        'top':(x+42)+'px',
        'right':(body_width-y-112)+'px',
    }).show();
}

/**
 *隐藏排行榜
 *
 */
function hide_bang_pop() {
    document.body.style.overflowY = 'auto';
    $('.bang_list_box_bg').hide();
    $('.bang_list_box').hide();
}

/**
 * 音频文件播放
 * @param id        UID
 * @param _this     元素本身
 * 【废弃】
 */
function play_mp3(id,_this) {


    var item_id = $(_this).find('audio').attr('id');
    var i_class_name = $(_this).find('i').attr('class');

    if(i_class_name == 'auto_stop'){
        var audios = document.getElementsByTagName("audio");
        for(var i = 0; i <audios.length; i++ ){
            var item = audios[i];
            item.pause()
        }

        $('.u_auto').find('i').attr('class','auto_stop');
        $(_this).find('i').attr('class','auto_start');
        document.getElementById(item_id).play();
    }else{
        $(_this).find('i').attr('class','auto_stop');
        document.getElementById(item_id).pause();
    }


    document.getElementById(item_id).addEventListener('ended', function () {
        $(_this).find('i').attr('class','auto_stop')
    }, false);
}

/**
 * 跳转到详情页面
 * @param id
 */
function jump_detail(id) {
    window.location.href = '/item/'+id+'.html?class='+cur_game_id
}
/**
 *======================================
 *              排行榜相关
 * =====================================
 */
/**
 *创建排行榜dom
 *
 * @param {*} item
 * @param {*} i
 */
function createRankDom(item, i, type) {
    var obj = $("<li></li>");
    var str = "";
    str += '<div class="u_avatar float_left">';
    str += '<img src="' + item.avatar + '">';
    if (i == 0) {
        str += '<i><img src="' + home_img_str + '/searchPlayer/list_v3/001.png" alt=""></i>';
    } else if (i == 1) {
        str += '<i><img src="' + home_img_str + '/searchPlayer/list_v3/002.png" alt=""></i>';
    } else if (i == 2) {
        str += '<i><img src="' + home_img_str + '/searchPlayer/list_v3/003.png" alt=""></i>';
    }
    str += '</div>';
    str += '<div class="u_info float_right">';
    str += '<div class="u_name">' + item.nickname + '</div>';
    if (type === 1) {
        str += '<div class="u_online_time">时长：<span>' + item.value + '</span></div>';
    } else if (type === 2) {
        str += '<div class="u_online_time">魅力：<span>' + item.value + '</span></div>';
    }

    str += '</div>';
    obj.html(str);
    item.dom = obj;
    if (type === 1) {
        obj.on('click', function () {
            jump_detail(item.uid);
        });
    }

}
// 排行榜空 dom
var emptyRunkStr ='<div class="rank_no_data">'
                +   '<img class="rank_no_data_for_img" src="' + home_img_str + '/searchPlayer/list_v3/default.png" alt="">'
                +    '<div class="rank_no_data_text">榜单还没有更新，请稍后查看～</div>'
                +'</div>';

/**
 *人气榜
 *
 */
function getPopuList() {
    var url = '/index/peiwan/pop';
    var postData = {
        class_id: cur_game_id
    };
    common.ajax(url,postData,function(res){
        if (res.code === 1) {
            var json = res.data;
            var day_popu = json.day;
            var seven_popu = json.seven;
            if (day_popu.length>0){
                for (var i in day_popu) {
                    createRankDom(day_popu[i],i,1);
                    $("#renqi_day").append(day_popu[i].dom);
                }
            }else {
                $("#renqi_day").html(emptyRunkStr);
            }
            if (seven_popu.length > 0) {
                for (var i in seven_popu) {
                    createRankDom(seven_popu[i], i,1);
                    $("#renqi_week").append(seven_popu[i].dom);
                }
            } else {
                $("#renqi_week").html(emptyRunkStr);
            }

        };
    });
}

/**
 *魅力榜
 *
 */
function getCharmList() {
    var url = '/index/peiwan/charm';
    var postData = {
        class_id: cur_game_id
    };
    common.ajax(url, postData, function (res) {

        if (res.code === 1) {
            var json = res.data;
            var seven_popu = json.seven;
            var day_popu = json.day;
            console.log(seven_popu);
            console.log(day_popu);
            if (day_popu.length > 0) {
                for (var i in day_popu) {
                    createRankDom(day_popu[i], i, 2);
                    $meili_day.append(day_popu[i].dom);
                }
            } else {
                $meili_day.html(emptyRunkStr);
            }
            if (seven_popu.length > 0) {
                for (var i in seven_popu) {
                    createRankDom(seven_popu[i], i, 2);
                    $meili_week.append(seven_popu[i].dom);
                }
            } else {
                $meili_week.html(emptyRunkStr);
            }
        };
    });
}

/**
 *热聊关闭
 *
 */
function client_close(){
    client_status = true;
    $('.peiwan_tip').removeClass('active');
}
/*
 *跳转固定聊天室
 */
function go_room() {
    if(loginstatus != 1){
        tel_login_v1.bindPopShowFun(1);
        return;
    };
    $.ajax({
        url:'/index/index/getMorePaiDanRoom',
        type:'POST',
        dataType:"json",
        success:function(res){
            if(res.data.room_id){
               common.jump_chat_room(res.data.room_id); 
            }else{
                window.open('/client/index/web_room');
            };            
        },
        error:function(res){
            
        },
    });
    
}