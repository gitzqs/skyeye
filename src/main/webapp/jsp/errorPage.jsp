<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<style type="text/css">
body {
	text-align: center
}
</style>
</head>
<title>错误页面</title>
<body>
		<h1>${uperror}</h1>
		<img src="<%=request.getContextPath()%>/image/500.jpg" width="800" height="500"/>
		<h1><a href="<%=request.getContextPath()%>/user/loginInit">返回登录</a></h1>
		<script src="${resources}/js/platform.js"></script>
</body>
</html>