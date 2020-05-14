/*
* @Title: 新版富豪推荐js
* @Author: yx
* @Date: 2019-09-24 18:25:06
 * @Last Modified by: yx
 * @Last Modified time: 2019-09-24 18:25:06
*/


var volvo_data = {
	data: {// 页面涉及的数据
		volvo_list:[], //富豪推荐数据
		page:1,  //富豪推荐换一换页码
	},
	watch: function() {// 要监听的数据变化相关

	},
	onload: function() {// 页面加载完成需要执行的js

	},
	html: {// 页面创建HTML结构相关
        volvo_createHtml:function(data){
        	var obj = $("<div></div>");
        	obj.attr('class','l-c');
       		var str ="";
			if(data){
				console.log(data);
				for(var i=0;i<data.length;i++){
					var voList = data[i];
					if(voList){
						if(i == 0){
							str +=    '<div class="l-c-l">';
						}else{
							str +=    '<div class="l-c-r">';
						};
							str +=        '<a href="/item/'+voList.uid+'.html" target="_blank" title="'+voList.nickname+'推荐陪玩">';
							str +=            '<img src="'+voList.avatar+'" alt="'+voList.nickname+'陪玩" class="icon">';
							str +=            '<span class="text">'+voList.nickname+'</span>';
							str +=        '</a>';
							str +=    '</div>';
					};
	       		};
			};
			obj.html(str);
			$("#volvo_dom").append(obj);

        }
    },
    methods: {// 要执行的方法相关
    	/*
         *服务分类切换
         */
    	volvo_data_fun:function(){
    		volvo_data.data.page++;
    		console.log(parseInt(volvo_page)+1);
    		if(volvo_data.data.page > 10 || (parseInt(volvo_page)+1) == volvo_data.data.page){
    			volvo_data.data.page = 1;
    		};
            var _this = this;
            var urls = '/index/index/getSymbolPeiwan';
            var data = {
            	page:volvo_data.data.page
            };
            $.ajax({
                type: "POST",
                url: urls,
                dataType: "json",
                data:data,
                success: function (res) {
                    if(res.code === 1){
                    	document.getElementById('volvo_dom').innerHTML = "";
                    	volvo_data.data.volvo_list = [];
                    	$.each(res.data, function(index, item) {
                    		volvo_data.data.volvo_list.push(item);
                    	});
       
                    	volvo_data.html.volvo_createHtml(volvo_data.data.volvo_list);
                        
                    };
                }
            });
        },

    },

}





