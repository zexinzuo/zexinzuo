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
  }
  //ztree初始化方法
  $.post('./listMenue','',function(data){
	  $.fn.zTree.init($('#tree'),setting,data);
  });
  
  //单击树节点调用的方法
  function changePage(treeId,event,treeNode){
	  $.post('./'+treeNode.murl,'',function(data){
		  $("#content").html(data);
		 // addTabs(treeNode,data,true,true);
	  });
  }
  
  //分页用
  function oClick(url){
	  $.post(url,'',function(data){
		  $("#content").html(data);
	  });
  }
//弹出
  var layWin;
  function addUsers(){
	  $.post('./toAdd','',function(data){
		  layWin=layer.open({
			  type:1,
			  title:"新增用户",
			  area:['550px','300px'],
			  content:data
		  }); 
	  });
  };
  //关闭弹出窗口
  function closeWindow(){
	  layer.close(layWin);
  }
  