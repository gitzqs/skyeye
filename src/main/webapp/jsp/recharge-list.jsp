<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="resources" value="${pageContext.request.contextPath}/resources" />
<c:set var="application" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title><%=pageContext.getServletContext().getAttribute("platform")%></title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="${resources}/css/layui.css">
<link rel="stylesheet" href="${resources}/css/style.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin container-page">
		<div class="layui-header">
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="/user/index">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
				<li class="layui-nav-item"><a href="/monitor/list">数据监测</a></li>
				<li class="layui-nav-item"><a href="/service/manage">服务管理</a></li>

			</ul>
			<div class="tianMu-logo"><img src="${resources}/images/login-logo.png"> <span id="current-time"></span></div>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="/statistics/datalist">报表统计</a></li>
				<li class="layui-nav-item layui-this"><a href="/recharge/list/query">远程充值</a></li>
				<li class="layui-nav-item"><a href="/acctmanage/query">系统设置</a></li>

			</ul>
			<ul class="layui-nav user-bar">
				<li class="layui-nav-item user-bar-item"><a href="#">超级管理员</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="#" id="password">修改密码</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item user-bar-item"><a href="/user/loginInit">退出</a></li>
			</ul>
	</div>
		<div class="layui-mainBady layui-border-box">
			<div class="report-block">
				<div class="tm-tab-block">
					<div class="tm-block-title layui-clear">
						<div class="block-title-content">充值列表</div>
				</div>
					<div class="tm-block-content">
						<div class="tableBox-title">
							<form id="form-companySearch" name="form-companySearch">
								<div class="typeahead__container">
									<div class="typeahead__field"><span class="typeahead__query">
											<input class="js-typeahead" name="companySearch" type="search" placeholder="请输入客户名称" autocomplete="off">
										</span> <span class="typeahead__button">
											<button type="submit">
												<i class="layui-icon"></i>
											</button>
										</span></div>
								</div>
							</form>
					</div>
						<div class="layui-form layui-border-box table-box">
							<div class="layui-table-body tableBox-main layui-table layui-border-box">

								<table class="layui-table tm-table" cellspacing="0" cellpadding="0" border="0" style="table-layout: fixed">
									<thead>
										<tr>
											<th>客户名称</th>
											<th>联系人</th>
											<th>联系方式</th>
											<th>剩余流量</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="5">暂时未查询到充值记录！</td>
										</tr>
									</tbody>
								</table>
						</div>
							<div class="layui-table-tool tableBox-footer">
								<div class="layui-inline layui-table-page">
									<div id="page"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!--弹窗-->
<%@include file="/jsp/common/updateLPwd.jsp"%>
<!--end 弹窗-->
	<script src="${resources}/js/jquery.min.js"></script>
	<script src="${resources}/layui.js"></script>
	<script src="${resources}/js/echarts.min.js"></script>
	<script src="${resources}/js/echarts-liquidfill.js"></script>
	<script src="${resources}/js/goal-thermometer.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
    <script src="${resources}/js/platform.js"></script>
	<script type="text/javascript">
		
	</script>

</body>
</html>