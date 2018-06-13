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
<link rel="stylesheet" href="${resources}/css/goal-thermometer.css">

</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin container-page">
		<div class="layui-header">
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="/user/index">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
				<li class="layui-nav-item layui-this"><a href="/monitor/list">数据监测</a></li>
				<li class="layui-nav-item"><a href="/service/manage">服务管理</a></li>
			</ul>
			<div class="tianMu-logo">
				<img src="${resources}/images/login-logo.png">
				<span id="current-time"></span>
			</div>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="/statistics/datalist">报表统计</a></li>
				<li class="layui-nav-item"><a href="/recharge/list/query">远程充值</a></li>
				<li class="layui-nav-item"><a href="/acctmanage/query">系统设置</a></li>
			</ul>
			<ul class="layui-nav user-bar">
				<li class="layui-nav-item user-bar-item"><a href="javascript:;">超级管理员</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:;" id="password">修改密码</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item user-bar-item"><a href="/user/loginInit">退出</a></li>
			</ul>
		</div>
		<div class="layui-mainBady layui-border-box">
			<div class="report-block datamonitor-con">
				<div class="tm-tab-block">
					<div class="tm-block-title">
						<div class="block-title-content">实时监测</div>
					</div>
					<div class="tm-block-content">
						<div class="layui-row">
							<div class="layui-col-md12">
								<div class="back-icon">
									<span>
										<a href="/monitor/list">返回</a>
									</span>
								</div>
							</div>
						</div>

						<div class="monitoring">
							<div class="layui-row">
								<div class="layui-col-md6">
									<div class="monitoring-name">客户名称：${monitorDetailBean.custname}</div>
								</div>
								<div class="layui-col-md6">
									<%-- 									<fmt:parseDate value="${monitorDetailBean.monitorDetailInfo.timestamp}" pattern="yyyy-MM-dd HH:mm:ss" var="timestampNew"/> --%>
									<div class="monitoring-time">数据上传时间：${monitorDetailBean.timestamp}</div>
								</div>
							</div>
							<div class="layui-row layui-col-space10">
								<c:forEach var="monitor" items="${monitorDetailBean.monitorDetail}" varStatus="status">
									<c:choose>
										<c:when test="${fn:contains(monitor.monitorname,'液位')}">
											<div class="layui-col-md3">
												<div class="tm-monitoring-lg">
													<span class="monitoring-state">正常</span>
													<div class="monitoring-value">${monitor.monitorvalue}</div>
													<div class="effect-box">
														<div class="chart" name="liquidfill1" style="height: 100%"></div>
													</div>
													<div class="monitoring-info layui-clear">
														<span class="info-left">${monitor.monitorname}</span>
														<span class="info-right">${monitor.monitorunit}</span>
													</div>
												</div>
											</div>
										</c:when>
										<c:when test="${fn:contains(monitor.monitorname,'压力')}">
											<div class="layui-col-md3">
												<div class="tm-monitoring-lg">
													<span class="monitoring-state">正常</span>
													<div class="monitoring-value">${monitor.monitorvalue}</div>
													<div class="effect-box chartGuage">
														<div class="chart chartGuage" name="liquidfill3" style="height: 100%"></div>
													</div>
													<div class="monitoring-info layui-clear">
														<span class="info-left">${monitor.monitorname}</span>
														<span class="info-right">${monitor.monitorunit}</span>
													</div>
												</div>
											</div>
										</c:when>
										<c:when test="${fn:contains(monitor.monitorname,'温度')}">
											<div class="layui-col-md3">
												<div class="tm-monitoring-lg">
													<span class="monitoring-state">正常</span>
													<div class="monitoring-value">${monitor.monitorvalue}</div>
													<input id="lljwd" type="hidden" value="${monitor.monitorvalue}">
													<div class="effect-box chartGuage">
														<div id="goal-thermometer"></div>
													</div>
													<div class="monitoring-info layui-clear">
														<span class="info-left">${monitor.monitorname}</span>
														<span class="info-right">${monitor.monitorunit}</span>
													</div>
												</div>
											</div>
										</c:when>
										<c:when test="${fn:contains(monitor.monitorname,'流量')}">
											<div class="layui-col-md3">
												<div class="tm-monitoring-lg">
													<span class="monitoring-state">正常</span>
													<div class="monitoring-value">${monitor.monitorvalue}</div>
													<div class="effect-box chartGuage">
														<div class="chart chartGuage" name="liquidfill4" style="height: 100%">${monitor.monitorvalue}</div>
													</div>
													<div class="monitoring-info layui-clear">
														<span class="info-left">${monitor.monitorname}</span>
														<span class="info-right">${monitor.monitorunit}</span>
													</div>
												</div>
											</div>
										</c:when>
										<c:otherwise>
											<div class="layui-col-md3">
												<div class="tm-monitoring-lg">
													<span class="monitoring-state">正常</span>
													<div class="monitoring-value">${monitor.monitorvalue}</div>
													<div class="effect-box-new"></div>
													<div class="monitoring-info layui-clear">
														<span class="info-left">${monitor.monitorname}</span>
														<span class="info-right">${monitor.monitorunit}</span>
													</div>
													</div>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</c:forEach>
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
		$(function() {
			barAnimation1();
			barAnimation3();
			barAnimation4();
		})
		
		//定时执行，30秒刷新一次
		window.setTimeout(function(){
			window.location.reload();
		}, 30000);
	</script>

</body>
</html>