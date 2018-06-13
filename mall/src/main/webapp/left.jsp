<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商城后台管理系统</title>
 
 
 <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body>
  
    <ul class="nav nav-pills nav-stacked">
  <li>
  
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid"> 
    <div class="navbar-header">
        
        <a class="navbar-brand" href="#">商品管理</a>
    </div>
 
       
            <li class="active"><a href="<c:url value='/goodstype/addV'/>"  target="right">增加商品</a></li>
            <li class="active"><a href="<c:url value='/goods/findAll'/>"  target="right">查询商品</a></li>
        
   
    </div>
</nav>
  
  </li>
  <li>
  <nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid"> 
    <div class="navbar-header">
        
        <a class="navbar-brand" href="#">商品类型管理</a>
    </div>
    
        
            <li ><a href="<c:url value='/type/add.jsp'/>"  target="right">添加商品类型</a></li>
            <li ><a href="<c:url value='/goodstype/findAll'/>"  target="right">查询商品类型</a></li>
    
   
    </div>
</nav>
  </li>
 <li ><a href="<c:url value='/admin/close'/>"  target="_top">退出</a></li>
</ul>
  </body>
</html>
