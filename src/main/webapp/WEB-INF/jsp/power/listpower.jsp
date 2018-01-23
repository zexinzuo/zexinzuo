<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String path=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
</head>
<body>
<!--新增菜单--> 
<div id="pdlg" class="easyui-dialog" closed="true" style="width:350px;height:300px;padding:30px 60px;" data-options="iconCls:'icon-save',minimizable:true,maximizable:true,resizable:true,modal:true">
  <form id="pfrm" method="post" >   
    <div style="margin-bottom:20px">   
        <label for="name">菜单:</label>   
        <input class="easyui-textbox" type="text" name="mname" data-options="required:true" />   
    </div>   
    <div style="margin-bottom:20px">   
        <label for="pwd">密码:</label>   
        <input class="easyui-textbox" type="text" name="pwd" data-options="required:true" />   
    </div>
    <div style="margin-bottom:20px">   
        <label for="age">年龄:</label>   
        <input class="easyui-textbox" type="text" name="age" data-options="required:true" />   
    </div>
    <div style="margin-bottom:20px">   
        <label for="sex">性别:</label>   
        <input class="easyui-radio" value="0" type="radio" name="sex" data-options="required:true" />男
        <input class="easyui-radio" value="1" type="radio" name="sex" data-options="required:true" />女     
    </div>
   <div align="center">
       <a id="savebtn" href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">提交</a>
       <a id="resetbtn" href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-no'">关闭</a>           
   </div>
</form>  
</div>
<!--分配按钮-->  
<div id="pbdlg" class="easyui-dialog" closed="true" style="width:400px;height:300px;padding:30px 60px;" data-options="iconCls:'icon-save',minimizable:true,maximizable:true,resizable:true,modal:true">
  <form id="pbfrm" method="post" >   
    <div style="margin-bottom:20px">   
        <label for="name">菜单:</label>   
         <input type="hidden" name="id"/>   
        <input class="easyui-textbox" type="text" name="mname" readonly="readonly"/>   
    </div>
    <div style="margin-bottom:20px">   
        <label for="name">按钮:</label>   
        <span id="rs"></span>
    </div>    
   <div align="center">
       <a id="pbaddbtn" href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">提交</a>
       <a id="pbrestbtn" href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'icon-no'">关闭</a>           
   </div>
</form>  
</div>
<div id="tools">
   <c:forEach items="${btnlist}" var="b">
       <a href="javascript:;" class="easyui-linkbutton" data-options="iconCls:'${b.icon}',plain:true,toggle:true" onclick="${fnName}">${b.title}</a>
   </c:forEach>
</div>       
<table id=btnbdg></table> 
<script type="text/javascript">
$(function(){
	 $("#btnbdg").treegrid({
		  url:'<%=path%>/listMenueGridTree',
		  fit:true,
		  idField:'id',
		  treeField:'mname', 
		  columns:[[
			  {field:'id',title:'编号',width:'20%'},
			  {field:'mname',title:'名称',width:'20%'},
			  {field:'_parentId',title:'父节点',width:'20%'},
			  {field:'btns',title:'按钮',width:'30%'}
		  ]],
		  toolbar:"#tools"
	  });
});
 
  //新增用户
  $("#savebtn").click(function(){
	  $.post('<%=path%>/addUsers',$("#ufrm").serialize(),function(data){
		  if(data>0){
			  $.messager.alert("信息","新增成功！");
			  //弹出窗口关闭
			  $("#pdlg").dialog("close");
			  //列表刷新
			  $("#pbdg").datagrid("load");
		  }
	  });
  });
  //得到所有角色数据
  function getRoles(id){
	  
	  $.post('<%=path%>/listRoles',{id:id},function(data){
		  //清空
		  $("#rs").empty();
		  //追加
		  for(var i in data.all){
			  $("#rs").append("<input name='btnids' type='checkbox' value='"+data.all[i].id+"'>"+data.all[i].title);
		  }
		  //回显
		  for(var i in data.ur){
			  $("[name='btnids'][value='"+data.ur[i].id+"']").attr("checked",true);
		  }
		  
	  });
  }
  //分配按钮
  $("#pbaddbtn").click(function(){
	  $.post('<%=path%>/addUR',$("#urfrm").serialize(),function(data){
		  if(data>0){
			  $.messager.alert("信息","角色分配成功！");
			  $("#urdlg").dialog("close");
			  $("#udg").datagrid("load");
		  }
	  });
  });
</script>
</body>

</html>