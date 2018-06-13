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
			<div class="tianMu-logo">
				<img src="${resources}/images/login-logo.png">
				<span id="current-time"></span>
			</div>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="/statistics/datalist">报表统计</a></li>
				<li class="layui-nav-item"><a href="/recharge/list/query">远程充值</a></li>
				<li class="layui-nav-item layui-this"><a href="/acctmanage/query">系统设置</a></li>
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
			<div class="report-block">
				<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
					<ul class="layui-tab-title">
						<li><a href="/acctmanage/query">账户管理</a></li>
						<li><a href="/alarmSetting/index">报警推送</a></li>
						<li class="layui-this"><a href="/syssetting/custonline/query">客户上线</a></li>
						<li><a href="javascript:;">规格管理</a></li>
					</ul>
					<div class="layui-tab-content layui-border-box">
						<div class="layui-tab-item layui-show" id="d3">
							<div class="layui-form layui-border-box table-box onlyTable">
								<div class="layui-table-body tableBox-main layui-table layui-border-box">
									<table class="layui-table tm-table" lay-size="sm" cellspacing="0" cellpadding="0" border="0">
										<thead>
											<tr>
												<th>客户名称</th>
												<th>设备ID</th>
												<th>客户地址</th>
												<th>联系人</th>
												<th>联系方式</th>
												<th>上线时间</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											
											<c:if test="${custonlineList != null && fn:length(custonlineList) > 0}">
												<c:forEach var="custonline" items="${custonlineList}">
													<tr>
														<td>${custonline.custname}</td>
														<td>${custonline.deviceid}</td>
														<td>${custonline.custaddress}</td>
														<td>${custonline.contractor}</td>
														<td>${custonline.contractdetail}</td>
														<fmt:parseDate value="${custonline.onlinetime}" pattern="yyyy-MM-dd HH:mm:ss" var="onlinetimeNew" />
														<td>
															<fmt:formatDate value="${onlinetimeNew}" pattern="yyyy-MM-dd HH:mm:ss" />
														</td>

														<td>
															<a href="/custonline/addInit?id=${custonline.id}" class="layui-btn layui-btn-primary layui-btn-small tm-btn">维护 </a>
															<!-- <a href="javascript:;" class="layui-btn layui-btn-primary layui-btn-small tm-btn-warm"> 新增规格 </a> -->
														</td>
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${custonlineList == null || fn:length(custonlineList) <= 0}">
												<tr><td colspan="7">暂无设备绑定，无数据！</td></tr>
											</c:if>
										</tbody>
									</table>
								</div>
								<div class="layui-table-tool tableBox-footer">
									<div id="page3"></div>
								</div>
							</div>
							<div class="formBoxFooter-setting layui-clear">
								<div class="footer-left"></div>
								<div class="footer-right">
									<a href="javascript:;" class="layui-btn layui-btn-warm recharge-btn" id="custonlineAddInitId">新增客户</a>
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
	<script src="${resources}/js/jquery.typeahead.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
	<script src="${resources}/js/platform.js"></script>
	<script>
		layui.use('element', function() {//控制table页是否显示以及整个页面table标签的样式
			var element = layui.element;
			element.render('nav');
		});

		$('.checkBtn').on('click', function() {
			layui.use('layer', function() {
				var layer = layui.layer;
				layer.open({
					type : 1,
					title : false,
					closeBtn : 1,
					area : '516px',
					shadeClose : true,
					content : $('#checkPanel'),
				});
			});
		});
		layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;
			//完整功能
			laypage.render({
				elem : 'page',
				count : 100,
				layout : [ 'count', 'prev', 'page', 'next', 'skip' ],
				first : '首页',
				last : '尾页',
				jump : function(obj) {
					console.log(obj)
				}
			});
			laypage.render({
				elem : 'page2',
				count : 100,
				layout : [ 'count', 'prev', 'page', 'next', 'skip' ],
				first : '首页',
				last : '尾页',
				jump : function(obj) {
					console.log(obj)
				}
			});
			laypage.render({
				elem : 'page3',
				count : 100,
				layout : [ 'count', 'prev', 'page', 'next', 'skip' ],
				first : '首页',
				last : '尾页',
				jump : function(obj) {
					console.log(obj)
				}
			});
			laypage.render({
				elem : 'page4',
				count : 100,
				layout : [ 'count', 'prev', 'page', 'next', 'skip' ],
				first : '首页',
				last : '尾页',
				jump : function(obj) {
					console.log(obj)
				}
			});
		});
		initTypeahead();
	</script>

	<script type="text/javascript">
		$(function() {

			$("#custonlineId").click(function() {//账户管理
				window.location.href = "/syssetting/custonline/query";
			});

			$("#custonlineAddInitId").click(function() {//账户管理
				window.location.href = "/custonline/addInit";
			});

		})
	</script>

</body>
</html>