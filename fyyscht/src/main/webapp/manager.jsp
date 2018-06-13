<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商城后台管理系统</title>
    
  </head>
  
  <frameset rows="15%,*">
  		<frame src="<c:url value='/head.jsp'/>" name="head">
  		<frameset  cols="15%,*">
	  		<frame src="<c:url value='/left.jsp'/>" name="left">
	 		<frame src="<c:url value='/text.jsp'/>" name="right">
 		</frameset>
  </frameset>
</html>
