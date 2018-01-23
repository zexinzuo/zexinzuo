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
<div class="row">
   <div class="col-md-11">
        <ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">权限管理</a></li>
		  <li class="active">用户管理</li>
		</ol>
   </div>
   <div class="col-md-1">
       <input type="button" class="btn btn-success" value="刷新">
   </div>
     
   <div class="col-md-12"><input id="addUsers" class="btn btn-info" type="button" onclick="addUsers();" value="新增"><input  type="button" class="btn btn-danger" value="删除"/></div>
   <div class="col-md-12">
       <table class="table table-bordered">
	      <tr>
	         <td>编号</td>
	         <td>姓名</td>
	         <td>密码</td>
	         <td>年龄</td>
	         <td>性别</td>
	      </tr>
	      <c:forEach items="${list}" var="u">
	         <tr>
	         <td>${u.id}</td>
	         <td>${u.uname}</td>
	         <td>${u.pwd}</td>
	         <td>${u.age}</td>
	         <td>
	          <c:if test="${u.sex==0}">
	                                                男
	          </c:if>
	           <c:if test="${u.sex==1}">
	                                                女
	          </c:if>
	         </td>
	      </tr>
	      </c:forEach>
	      <tr><td colspan="9">${page}</td></tr>
	   </table>
   </div>

</div>

</body>

</html>