<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>小型超市进销存管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
	function addArticle() {
		if (document.getElementById("name").value.length <= 0) {
			alert("请填写商品类型名称");
			document.getElementById("name").focus();
			return false;
		}
		
		return true;
	}
</script>
  </head>
  
  <body>
  
  <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form class="form-horizontal" role="form" action="${pageContext.request.contextPath }/goodstype/update" method="post" OnSubmit=" return addArticle()">
				  <input type="hidden" name="id" value="${goodstype.id}"/> 
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="name">商品类型名称</label>
					<div class="col-sm-6">
						<input name="name" class="form-control" id="name" value="${goodstype.name}"  type="text" />
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit" class="btn btn-primary">修改</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


    	<c:if test="${not empty message }">
    	<font color="red">${message }</font>
    	
    	</c:if>

  </body>
</html>
