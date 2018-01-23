<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
      String path = request.getContextPath();
      String basePath = request.getScheme() + "://"
                  + request.getServerName() + ":" + request.getServerPort()
                  + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/index1.css"></link>
<title>Insert title here</title>
</head>
<body>
<form action="add" method="post">
	接受人:<input type="text" name="oname"/><br><br>
	电话:<input type="text" name="tel"/><br><br>
	送餐时间:<select name="tid">
				<option value="1">12：00-13：00</option>
				<option value="2">8：00-9：00</option>
				<option value="3">17：00-18：00</option>
				<option value="4">22：00-23：45</option>
			</select>
	<br><br>
	送餐地点:<select name="aid">
				<option value="1">东城</option>
				<option value="2">西城</option>
				<option value="3">南城</option>
				<option value="4">北城</option>
			</select>
	
	<br><br>
	精品菜:<input type="checkbox" name="fid" value="1"/>鱼香肉丝
		    <input type="checkbox" name="fid" value="2"/>宫保鸡丁
			<input type="checkbox" name="fid" value="3"/>红烧茄子
			<input type="checkbox" name="fid" value="4"/>干煸豆角
	<br><br>
	<input type="submit" value="下单"/>
</form>
</body>
</html>