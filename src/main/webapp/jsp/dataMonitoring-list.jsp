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
				<li class="layui-nav-item user-bar-item"><a href="#">超级管理员</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="#" id="password">修改密码</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item user-bar-item"><a href="/user/loginInit">退出</a></li>
			</ul>
		</div>
		<div class="layui-mainBady layui-border-box" id="monitorList">
			<div class="report-block">
				<div class="tm-tab-block">
					<div class="tm-block-title layui-clear">
						<div class="block-title-content">客户列表</div>
					</div>
					<div class="tm-block-content">
						<div class="tableBox-title">
							<form id="form-companySearch" name="form-companySearch">
								<div class="typeahead__container">
									<div class="typeahead__field">
										<span class="typeahead__query">
											<input class="js-typeahead" name="companySearch" type="search" placeholder="请输入客户名称" autocomplete="off">
										</span>
										<span class="typeahead__button">
											<button type="submit">
												<i class="layui-icon"></i>
											</button>
										</span>
									</div>
								</div>
							</form>
						</div>
						<div class="layui-form layui-border-box table-box">

							<div class="layui-table-body tableBox-main layui-table layui-border-box">
								<table class="layui-table tm-table" cellspacing="0" cellpadding="0" border="0" style="table-layout: fixed">
									<thead>
										<tr>
											<th>客户名称</th>
											<th>设备状态</th>
											<th>数据上传时间</th>
											<th>模块1</th>
											<th>模块2</th>
											<th>模块3</th>
											<th>模块4</th>
											<!--<th>模块5</th>
											<th>模块6</th> -->
										</tr>
									</thead>
									<tbody>
										<%-- <c:if test="${monitorListBean != null && fn:length(monitorListBean) > 0}">
											<c:forEach var="monitor" items="${monitorListBean}">
												<tr>
													<td><a href="javascript:;" onclick="rediretMonitorDetail('${monitor.deviceid}')">${monitor.custname}</a></td>
													<td>${monitor.devname}</td>
													<c:if test="${monitor.devstatus != null && monitor.devstatus >= 10}">
														<td>离线</td>
													</c:if>
													<c:if test="${monitor.devstatus != null && monitor.devstatus < 10}">
														<td>在线</td>
													</c:if>
													<td>${monitor.contractor}</td>
													<td>${monitor.contractdetail}</td>
													<fmt:parseDate value="${monitor.reqtime}" pattern="yyyy-MM-dd HH:mm:ss" var="reqtimeNew" />
													<td><fmt:formatDate value="${reqtimeNew}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
													<fmt:parseDate value="${monitor.onlinetime}" pattern="yyyy-MM-dd HH:mm:ss" var="onlinetimeNew" />
													<td><fmt:formatDate value="${onlinetimeNew}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
												</tr>
											</c:forEach>
										</c:if> --%>
										
										<tr v-for="(cust,index) in custsData">
											<td><a href="javascript:;" v-on:click="rediretMonitorDetail(cust.deviceid)">{{cust.custname}}</a></td>	
											<td v-if="cust.devstatus && cust.devstatus >= 10">离线</td>			
											<td v-else>在线</td>	
											<td>{{cust.reqtime}}</td>
											<td>{{cust.module1}}</td>
											<td>{{cust.module2}}</td>
											<td>{{cust.module3}}</td>
											<td>{{cust.module4}}</td>
											<!-- <td>{{cust.module5}}</td>
											<td>{{cust.module6}}</td> -->
										</tr>
									</tbody>
								</table>
							</div>
							<div class="layui-table-tool tableBox-footer">
								<div id="page"></div>
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
	<script src="${resources}/js/vue.min.js"></script>
	<script src="${resources}/layui.js"></script>
	<script src="${resources}/js/jquery.typeahead.min.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
	<script src="${resources}/js/global.js"></script>
	<script src="${resources}/js/platform.js"></script>
	<script>
		layui.use('element', function() {
			var element = layui.element;
			element.render('nav');
		});
		/* layui.use([ 'laypage', 'layer' ], function() {
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
		}); */
	</script>
	<script type="text/javascript">
		/* function rediretMonitorDetail(deviceid) {
			window.location.href = "/monitor/detail/" + deviceid;
		} */
		
		var vmmonitorList = new Vue({
		    el: "#monitorList",
		    data: {
		    	custsData:[],
		    	pageIndex: 1,
		    	pageSize: 10
		    },
		    methods: {
		        getCustsData: function(){
		        	var that = this;
		        	layui.use(['laypage', 'layer'], function () {
				        var laypage = layui.laypage;      
				        $.ajax({
				            url: '/monitor/custscount',
				            type: 'GET',
				            data: {}, 
				            async: true
				        }).done(function(data){
				        	if(data && data.code === 1){
				        		that.total = parseInt(data.count); 
				        		Vue.nextTick(function(){
				        			laypage.render({
							             elem: 'page'
							             , count: that.total
							             , layout: ['count', 'prev', 'page', 'next', 'skip']
							             , first: '首页'
							             , last: '尾页'
							             , jump: function (obj) {
							             	$.ajax({
									            url: '/monitor/custsdata',
									            type: 'GET',
									            data: {'pageIndex': obj.curr, 'pageSize': that.pageSize},
									            async: true
									        }).done(function(data){
									        	if(data && data.code === 1){
									        		that.custsData = data.reportlist;
									        		that.custsData.forEach(function(item){
									        			if(item.reqtime.indexOf('.0') !== -1)
									        			{
									        				item.reqtime = item.reqtime.substring(0, item.reqtime.length - 2);
									        			}
									        		});
								        		}
									        });	
							             }
						         	});
				        		});
				        	}
				        });
		    		});
		    		
		    		setTimeout(that.getCustsData, 30000);
		        },
		        rediretMonitorDetail: function(deviceid) {
					window.location.href = "/monitor/detail/" + deviceid;
				}
		    },
		    mounted: function(){
		    	this.getCustsData();
		    }
		});
	</script>
</body>
</html>