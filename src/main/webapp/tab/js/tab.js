/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var addTabs = function (obj,data,close,content) {
    id = "tab_" + obj.id;
 
    $(".active").removeClass("active");
     
    //如果TAB不存在，创建一个新的TAB
    if (!$("#" + id)[0]) {
        //固定TAB中IFRAME高度,根据需要自己修改
        mainHeight = $(document.body).height();
        //创建新TAB的title
        title = '<li role="presentation" id="tab_' + id + '"><a href="#' + id + '" aria-controls="' + id + '" role="tab" data-toggle="tab">' + obj.mname+'</a>';
        //是否允许关闭
        if (close) {
            title += ' <i class="close-tab glyphicon glyphicon-remove"></i>';
        }
        title += '</li>';
        //是否指定TAB内容
        if (content) {
            content = '<div role="tabpanel" class="tab-pane" id="' + id + '">' + data + '</div>';
        } else {//没有内容，使用IFRAME打开链接
            content = '<div role="tabpanel" class="tab-pane" id="' + id + '">"没有数据！！"</div>';
        }
        //加入TABS
        $(".nav-tabs").append(title);
        $(".tab-content").append(content);
    }
     
    //激活TAB
    $("#tab_" + id).addClass('active');
    $("#" + id).addClass("active");
};

var closeTab = function (id) {
    //如果关闭的是当前激活的TAB，激活他的前一个TAB
    if ($("li.active").attr('id') == "tab_" + id) {
        $("#tab_" + id).prev().addClass('active');
        $("#" + id).prev().addClass('active');
    }
    //关闭TAB
    $("#tab_" + id).remove();
    $("#" + id).remove();
};

$(function () {

    $("[addtabs]").click(function () {
        addTabs({id: $(this).attr("addtabs"), title: $(this).attr('title'), url: $(this).attr('url'), close: true});
    });
    
    $(".nav-tabs").on("click", ".close-tab", function () {
        id = $(this).prev("a").attr("aria-controls");
        closeTab(id);
    });
    
});