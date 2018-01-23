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
</head>
<body>
	<table>
			<Tr>
					<td>oid</td>
					<td>oname</td>
					<td>tel</td>
					<td>tid</td>
					<td>aid</td>
					<td>fid</td>
			</Tr>
			<c:forEach items="${list }" var="l">
				<tr>
						<Td>${l.oid }</Td>
				</tr>
			</c:forEach>
	</table>
   
</body>
</html>