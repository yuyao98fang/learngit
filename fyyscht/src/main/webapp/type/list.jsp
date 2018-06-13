<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商城后台管理系统</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</head>
<body>

<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<table class="table table-striped">
				<thead>
					<tr>
    		<th>商品类型编号</th>
    		<th>商品类型名称</th>
    		<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="goodstype" items="${list}">
   			<tr>
   				<td>${goodstype.id }</td>
   				<td>${goodstype.name}</td>
   				
   				<td>
                     <a href="${pageContext.request.contextPath }/goodstype/delete?id=${goodstype.id }">删除</a>
                     <a href="${pageContext.request.contextPath }/goodstype/findById?id=${goodstype.id }">修改</a>
   				</td>
   			</tr>
   		</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

</body>
</html>