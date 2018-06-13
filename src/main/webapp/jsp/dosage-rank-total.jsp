<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item layui-this"><a href="/user/index">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
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
			<div class="report-block" id="dosageRankTotal">
				<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
					<div class="layui-tab-content layui-border-box">
						<div class="layui-tab-item layui-show" id="d1">
							<div class="layui-form layui-border-box table-box onlyTable">
								<div class="layui-table-body tableBox-main layui-table layui-border-box">
									<table class="layui-table tm-table" lay-size="sm" cellspacing="0" cellpadding="0" border="0">
										<thead>
											<tr>
												<th>排名</th>
												<th>客户名称</th>
												<th>昨日用量</th>
												<th>今日用量</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr v-for="(dosage,index) in dosages">
												<td>{{index + 1}}</td>
												<td>{{dosage.custName}}</td>
												<td>{{dosage.yesterdayDosage}}</td>
												<td>{{dosage.todayDosage}}</td>
												<td><a v-on:click.prevent="gotoDevMonitor(dosage.devId)" class="layui-btn layui-btn-primary layui-btn-small tm-btn"> 查看实时监测 </a>
													</td>
											</tr>

										</tbody>
									</table>
								</div>
								<div class="layui-table-tool tableBox-footer">
									<div id="page"></div>
								</div>
							</div>
						</div>
						<div class="layui-tab-item" id="d2"></div>
						<div class="layui-tab-item" id="d3"></div>
						<div class="layui-tab-item" id="d4"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--弹窗-->
<%@include file="/jsp/common/updateLPwd.jsp"%>
<!--end 弹窗-->
	<script src="${resources}/js/jquery.min.js"></script>
	<script src="${resources}/js/common.js"></script>
	<script src="${resources}/js/vue.min.js"></script>
	<script src="${resources}/layui.js"></script>
	<script src="${resources}/js/jquery.typeahead.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
	<script src="${resources}/js/platform.js"></script>
	<script>
		var basePath = '${application}';
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
		
	</script>

	<script>
		var vmdosageRankTotal = new Vue({
    el: "#dosageRankTotal",
    data: {
    	dosages:[],
    	pageIndex: 1,
        pageSize: 10,
        total: 0
    },
    methods: {
        getDosages: function(){
        	var that = this;
        	layui.use(['laypage', 'layer'], function () {
		        var laypage = layui.laypage;      
		        $.ajax({
		            url: '/main/custdosagecount',
		            type: 'POST',
		            data: {}, 
		            async: true
		        }).done(function(data){
		        	if(data){
		        		that.total = data.reportlist; 
		        		Vue.nextTick(function(){
		        			laypage.render({
					             elem: 'page'
					             , count: that.total
					             , layout: ['count', 'prev', 'page', 'next', 'skip']
					             , first: '首页'
					             , last: '尾页'
					             , jump: function (obj) {
					               var yest = new Date(new Date().getTime() - 24 * 60 * 60 * 1000);
					               var yestDate = getFormatDate(yest);
					               var yestStartTime = yestDate +" 06:00:00";
					               var yestEndTime = yestDate +" 17:59:59";
					               var todayStartTime = getFormatDate(new Date()) +" 06:00:00";
					               var todayEndTime = getFormatDateTime(new Date());
					             	$.ajax({
							            url: '/main/dosagerank',
							            type: 'POST',
							            data: {
							            	'pageIndex': obj.curr, 'pageSize': that.pageSize,
							            	yestStartTime: yestStartTime, yestEndTime: yestEndTime,
							            	todayStartTime: todayStartTime, todayEndTime: todayEndTime
							            },
							            async: true
							        }).done(function(data){
							        	if(data){
							        		that.dosages = data.reportlist;
							        		that.dosages.forEach(function(item){
							        			 item.yesterdayDosage = parseInt(item.yesterdayDosage);
							        			 item.todayDosage = parseInt(item.todayDosage);
							        		});
						        		}
							        });	
					             }
				         	});
		        		});
		        	}
		        });
    		});
        },
        gotoDevMonitor: function(devid){
        	window.location.href = basePath +'/monitor/detail/' + devid;
        }
    },
    mounted: function(){
    	this.getDosages();
    }
});
	</script>

</body>
</html>