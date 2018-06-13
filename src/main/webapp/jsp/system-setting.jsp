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
			<div class="report-block" id="systemSetting">
				<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
					<ul class="layui-tab-title">
						<li><a href="/acctmanage/query" class="layui-this">账户管理</a></li>
						<li><a href="/alarmSetting/index">报警推送</a></li>
						<li><a href="/syssetting/custonline/query">客户上线</a></li>
						<li><a href="javascript:;">规格管理</a></li>
					</ul>
					<div class="layui-tab-content layui-border-box">
						<div class="layui-tab-item layui-show" id="d1">
							<div class="layui-form layui-border-box table-box onlyTable">
								<div class="layui-table-body tableBox-main layui-table layui-border-box">
									<table class="layui-table tm-table" lay-size="sm" cellspacing="0" cellpadding="0" border="0">
										<thead>
											<tr>
												<th>手机号</th>
												<th>联系人</th>
												<th>角色</th>
												<th>权限</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr v-for="(acc,index) in accounts">
												<td>{{acc.userName}}</td>
												<td>{{acc.realName}}</td>
												<td v-if="acc.roleId === '3'">员工</td>
												<td v-else>客户</td>
												<td v-if="acc.auth === 0">全部客户</td>
												<td v-else>部分客户</td>   <!-- v-bind:href="/account/maintain?uid=acc.id" -->
												<td><a v-on:click.prevent="gotoUpdateAccount(acc.id)" class="layui-btn layui-btn-primary layui-btn-small tm-btn"> 维护 </a>
													<button v-on:click="deleteAccout(acc.id)" class="layui-btn layui-btn-primary layui-btn-small tm-btn-danger">删除</button></td>
											</tr>

										</tbody>
									</table>
								</div>
								<div class="layui-table-tool tableBox-footer">
									<div id="page"></div>
								</div>
							</div>
							<div class="formBoxFooter-setting layui-clear">
								<div class="footer-left"></div>
								<div class="footer-right">
									<a href="/account/add" class="layui-btn layui-btn-warm recharge-btn">新增账户</a>
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
		layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;
			//完整功能
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

	<script>
		var vmsystemSetting = new Vue({
    el: "#systemSetting",
    data: {
    	accounts:[],
    	pageIndex: 1,
        pageSize: 10,
        total: 0
    },
    methods: {
        getAccountList: function(){
        	var that = this;
        	layui.use(['laypage', 'layer'], function () {
		        var laypage = layui.laypage;      
		        $.ajax({
		            url: '/account/count',
		            type: 'GET',
		            data: {}, 
		            async: true
		        }).done(function(data){
		        	if(data){
		        		that.total = parseInt(data); 
		        		Vue.nextTick(function(){
		        			laypage.render({
					             elem: 'page'
					             , count: that.total
					             , layout: ['count', 'prev', 'page', 'next', 'skip']
					             , first: '首页'
					             , last: '尾页'
					             , jump: function (obj) {
					             	$.ajax({
							            url: '/account/list',
							            type: 'GET',
							            data: {'pageIndex': obj.curr, 'pageSize': that.pageSize},
							            async: true
							        }).done(function(data){
							        	if(data){
							        		var json = JSON.parse(data);
							        		that.accounts = json;
						        		}
							        });	
					             }
				         	});
		        		});
		        	}
		        });
    		});
        },
        deleteAccout: function(id){
        	var that = this;
        	$.ajax({
		            url: '/account/delete',
		            type: 'POST',
		            data: {'uid': id},
		            async: true
		        }).done(function(data){
		        	if(data === '1'){
		        		that.getAccountList();
		        		layer.msg('删除成功');
		        	}
		        	else{
		        		layer.msg('删除失败');
		        	}
		        });
        },
        gotoUpdateAccount: function(id){
        	window.location.href = basePath +'/account/maintain?uid=' + id;
        }
    },
    mounted: function(){
    	this.getAccountList();
    }
});
	</script>

</body>
</html>