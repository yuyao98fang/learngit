<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>校园卡管理系统</title>
    
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/fileinput.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap-fileinput/js/fileinput.min.js"></script>
    
     <script type="text/javascript">

	function log1() {
      
      
		if (document.getElementById("scid").value.length <= 0) {
			alert("请填写卡号");
			document.getElementById("scid").focus();
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
			<h1 class="text-center">
				<font color="red">校园卡管理系统</font>
			</h1>
		</div>
	</div>
	<br>
	<br>
	 <nav class = "navbar navbar-default  navbar-inverse" role = "navigation">  
        <div class="navbar-header">             
            <a class="navbar-brand">功能列表</a>  
        </div>  
        <div>  
            <ul class="nav navbar-nav">  
                 <li class="active"><a href="${pageContext.request.contextPath }/jsp/manager/main.jsp">网站首页</a></li> 
                 <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">管理员管理
            <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li>
                <a href="<c:url value='/jsp/manager/manage/add.jsp'/>">添加管理员</a></li> 
            <li>
                <a href="<c:url value='/manager/findAll'/>">查询管理员</a></li>
              
           
            <li class="divider"></li>
           
        </ul>
    </li>
    
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">学生管理
            <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li>
                <a href="<c:url value='/jsp/manager/student/add.jsp'/>">添加学生</a></li> 
            <li>
                <a href="<c:url value='/student/findAll?pageIndex=1&pageSize=15'/>">查询学生</a></li>
              
           
            <li class="divider"></li>
           
        </ul>
    </li>
    
     <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">校园卡管理
            <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li>
                <a href="<c:url value='/jsp/manager/cardjsp/add.jsp'/>">校园卡开户</a></li> 
            <li>
                <a href="<c:url value='/jsp/manager/cardjsp/delete.jsp'/>">校园卡注销</a></li>
              
           
            <li class="divider"></li>
           
        </ul>
    </li>
                 
     <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <c:if test="${not empty manager }">
            ${manager.mname }
         </c:if>
         
         <c:if test="${empty manager }">
                                          请先登录
         </c:if>
            <span class="caret"></span></a>
        <ul class="dropdown-menu">
             <c:if test="${empty manager }">
    	  <li>
                <a href="<c:url value='/login.jsp'/>">登录</a></li>
            <li>
                <a href="<c:url value='/register.jsp'/>">注册</a></li>
    	</c:if>
          
               <c:if test="${not empty manager }">
               
                <li>
               <a href="<c:url value='/jsp/manager/modifyPassword.jsp'/>">修改密码</a></li>
                
    	  <li>
                <a href="<c:url value='/manager/close'/>">退出</a></li>
           
    	</c:if>
            <li class="divider"></li>
           
        </ul>
    </li> 
            </ul>  
             
             
        </div>  
    </nav>  
</div>

<div class="container-fluid">
	<form class="form-search" action="<c:url value='/card/delete'/>" method="post" OnSubmit=" return log1()">
				<p>
					<strong>卡号：</strong><input class="input-medium search-query" type="text" id="scid" name="scid"/> <button class="btn" type="submit">注销</button>
				</p>
			</form>
</div>
</body>
</html>