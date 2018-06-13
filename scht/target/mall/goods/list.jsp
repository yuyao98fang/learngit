<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>小型超市进销存管理系统</title>
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
    		<th>商品编号</th>
    		<th>商品名称</th>
    		<th>商品类型</th>
    		<th>商品价格</th>
    		<th>商品库存</th>
    		<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="goods" items="${list}">
   			<tr>
   				<td>${goods.id }</td>
   				<td>${goods.name}</td>
   					<td>${goods.typename}</td>
   				<td>${goods.price}</td>
   				<td>${goods.count}</td>
   			
   				<td>
                     <a href="${pageContext.request.contextPath }/goods/delete?id=${goods.id }">删除</a>
                     <a href="${pageContext.request.contextPath }/goods/findById?id=${goods.id }">修改</a>
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