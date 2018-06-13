<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/fileinput.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap-fileinput/js/fileinput.min.js"></script>
	
<title>小型超市进销存管理系统</title>
<script type="text/javascript">
	function log1() {
		if (document.getElementById("name").value.length <= 0) {
			alert("请填写商品类型");
			document.getElementById("name").focus();
			return false;
		}
		return true;
	}

</script>
 
</head>
<body>
<br>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
				
				<form class="form-horizontal" action="${pageContext.request.contextPath }/goodstype/add" method="post" OnSubmit=" return log1()">
				<div class="form-group">
					 <label class="col-sm-2 control-label" for="name">商品类型名称</label>
					<div class="col-sm-6">
						<input name="name" class="form-control" id="name" type="text" />
					</div>
				</div>
				
				
				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-8">
						<button type="submit" class="btn btn-primary">添加</button>
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