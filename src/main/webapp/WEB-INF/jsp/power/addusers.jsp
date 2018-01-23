<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <form class="form-horizontal" id="ufrm">
	  <div class="form-group">
	    <label  class="col-sm-2 control-label">用户</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="uname" placeholder="输入用户">
	    </div>
	  </div>
	  <div class="form-group">
	    <label  class="col-sm-2 control-label">密码</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" name="pwd" placeholder="输入密码">
	    </div>
	  </div>
	  <div class="form-group">
	    <label  class="col-sm-2 control-label">年龄</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" name="age" placeholder="输入年龄">
	    </div>
	  </div>
	  <div class="form-group">
	      <label  class="col-sm-2 control-label">性别</label>
		  <div class="radio col-sm-10">
			  <label>
			    <input type="radio" name="sex" value="0" checked>
			            男
			  </label>
			  <label>
			    <input type="radio" name="sex"  value="1">
			            女
			  </label>
		 </div>
	  </div>
	  <div class="form-group">
	    <div class="col-sm-offset-4 col-sm-8">
	      <input id="useraddbtn" type="button" class="btn btn-info" value="保存"/> <input type="button" class="btn btn-danger" value="取消"/>
	    </div>
	  </div>
	</form>
	<script type="text/javascript">
	  $("#useraddbtn").click(function(){
		  $.post('<%=path%>/addUsers',$("#ufrm").serialize(),function(data){
			  if(data>0){
				  layer.msg("操作成功！");
				  closeWindow();
				  oClick('<%=path%>/toListUsers');
			  }else{
				  layer.msg("操作成功！");
			  }
		  });
	  }); 
    </script>
</body>

</html>