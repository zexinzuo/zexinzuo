//ztree配置
var setting={
		  data:{
			  key:{
				  name:'mname'
			  },
			  simpleData:{
				  enable:true,
				  idKey:'id',
				  pIdKey:'pid'
			  }
		  },
		  callback:{
			  onClick:changePage
		  }
}; 
//ztree初始化方法
$.post('./listMenue',function(data){
		$.fn.zTree.init($("#tree"),setting,data);
});

//切换面板的方法
function changePage(event,treeId,node){
	$.post('./'+node.murl,function(data){
		  //$("#content").html(data);
		  //tab.add(data);
		  addTabs(node,data,true,true);
	});
	
	
}
//分页/或其他方法调用
function oClick(url){
	$.post('./'+url,function(data){
		  $("#content").html(data);
	});
}
//弹出页面方法
var laywin;
function openWind(url,w,h,title){
	if(w==null){
		w='500px';
	}
	if(h==null){
		h='400px';
	}
	$.post(url,function(data){
		laywin=layer.open({
			type:1,
			title:title,
			area:[w,h],
			content:data
		});
	});
}
//关闭窗口
function closeWin(){
	layer.close(laywin);
}