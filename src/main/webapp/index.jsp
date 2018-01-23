<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
  String path=request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/zTree/css/zTreeStyle/zTreeStyle.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/tab/css/tab.css" >
	
	<script type="text/javascript" src="<%=path%>/easyui/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="<%=path%>/zTree/js/jquery.ztree.all.min.js"></script>
	<script type="text/javascript" src="<%=path%>/layer/layer.js"></script>
	<script type="text/javascript" src="<%=path%>/tab/js/tab.js"></script>
	<script type="text/javascript" src="<%=path%>/layer/my.js"></script>
</head>
<body>
   <div class="container-fluid">
       <div class="row" style="border:1px">
           <div class="col-md-12"><h1>快乐购后台管理系统</h1></div>
       </div>
       <div class="row">
           <div class="col-md-2">
              <ul id="tree" class="ztree"></ul>
           </div>
           <div class="col-md-10">
	        <!-- <ul class="nav nav-tabs" role="tablist">
	                 <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">首页</a></li>                    
	             </ul>
	
	             <div id="content" class="tab-content">
	                 <div  id="home" role="tabpanel" class="tab-pane active" align="center"><font color=""><h1>欢迎使用</h1></font></div>                    
	             </div> -->
	         <div id="content"></div>
           </div>
       </div>
       
   </div>
   
</body>
</html>