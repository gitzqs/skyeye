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
            <li class="layui-nav-item layui-this"><a href="/service/manage">服务管理</a></li>
        </ul>
        <div class="tianMu-logo"><img src="${resources}/images/login-logo.png"><span id="current-time"></span></div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="/statistics/datalist">报表统计</a></li>
            <li class="layui-nav-item"><a href="/recharge/list/query">远程充值</a></li>
            <li class="layui-nav-item"><a href="/acctmanage/query">系统设置</a></li>
        </ul>
        <ul class="layui-nav user-bar">
            <li class="layui-nav-item user-bar-item">
                <a href="javascript:;">超级管理员</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;">修改密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item user-bar-item">
                <a href="/user/loginInit">退出</a>
            </li>
        </ul>
    </div>
    <div class="layui-mainBady layui-border-box" id="seService">
        <div class="report-block">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li v-on:click="getEquipments" class="layui-this">远控服务</li>
                    <li v-on:click="getPatrols">巡检服务</li>
                </ul>
                <div class="layui-tab-content layui-border-box">
                    <div class="layui-tab-item layui-show">
                        <div class="layui-form layui-border-box table-box tableNoBar">
                            <div class="layui-table-body tableBox-main layui-table layui-border-box">
                                <table class="layui-table tm-table" lay-size="sm" cellspacing="0" cellpadding="0"
                                       border="0" id="control_service">
                                    <thead>
                                    <tr>
                                        <th>客户名称</th>
                                        <th>设备ID</th>
                                        <th>服务周期/天</th>
                                        <th>剩余时间</th>
                                        <th>阀门状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(equip,index) in equitments">
                                        <td v-if="equip.company !== null">{{equip.company.companyName}}</td>
                                        <td v-else></td>
                                        <td>{{equip.equipCode}}</td>
                                        <td>{{equip.serviceDay}}</td>
                                        <td>{{equip.remainDay}}</td>
                                        <td v-if="equip.status === '1'">开启</td>
                                        <td v-else>关闭</td>
                                        <td v-if="equip.status === '1'"><button v-on:click="setEquipStatus(equip.id, equip.status)" class="layui-btn layui-btn-primary layui-btn-small tm-btn tm-btn-danger">
                                            关闭阀门
                                        </button></td>
                                        <td v-else><button v-on:click="setEquipStatus(equip.id, equip.status)" class="layui-btn layui-btn-primary layui-btn-small tm-btn checkBtn">
                                            开启阀门
                                        </button></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="layui-table-tool tableBox-footer">
                                <div id="page"></div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-tab-item">
                        <div class="layui-form layui-border-box table-box onlyTable">
                            <div class="layui-table-body tableBox-main layui-table layui-border-box">
                                <table class="layui-table tm-table" lay-size="sm" cellspacing="0" cellpadding="0"
                                       border="0">
                                    <thead>
                                    <tr>
                                        <th>发起时间</th>
                                        <th>巡检人员</th>
                                        <th>任务名称</th>
                                        <th>巡检状态</th>
                                        <th>结束日期</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(patrol,index) in patrols">
                                        <td>{{patrol.postTime}}</td>
                                        <td>{{patrol.realName}}</td>
                                        <td>{{patrol.taskName}}</td>
                                        <td v-if="patrol.status === 0">待处理</td>
                                        <td v-else-if="patrol.status === 1">进行中</td>
                                        <td v-else>已完成</td>
                                        <td>{{patrol.endTime}}</td>
                                        <td v-if="patrol.status === 0">
                                            <button v-on:click="getPatrolPosList(patrol.id, patrol.realName)" class="layui-btn layui-btn-primary layui-btn-small tm-btn layui-btn-disabled">
                                                巡检路线
                                            </button>
                                        </td>
                                        <td v-else>
                                            <button v-on:click="getPatrolPosList(patrol.id, patrol.realName)" class="layui-btn layui-btn-primary layui-btn-small tm-btn check-btn">
                                                巡检路线
                                            </button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="layui-table-tool tableBox-footer">
                                <div id="page2"></div>
                            </div>
                        </div>
                        <div class="formBoxFooter-setting layui-clear">
                            <div class="footer-left"></div>
                            <div class="footer-right"><a href="/patrolplan/enact" class="layui-btn layui-btn-warm recharge-btn">制定巡检计划</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!--弹窗-->
<div class="export-panel hide" style="display: none;" id="export-panel">
    <div class="export-panel-title" style="cursor: move;">巡检路线</div>
    <div class="export-panel-content">
        <form class="layui-form" action="">
            <div class="check-bar layui-clear">巡检人<span class="check-name">{{name}}</span></div>
            <div class="recharge-content">
                <table class="layui-table tm-table checkPanel-table" lay-size="sm" cellspacing="0" cellpadding="0" border="0">
                    <thead>
                    <tr>
                        <th>时间</th>
                        <th>位置</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr v-for="(patrolPos,index) in patrolPosList">
                        <td>{{patrolPos.postTime}}</td>
                        <td>{{patrolPos.position}}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="export-btn">
                <button class="layui-btn layui-btn-warm">确&nbsp;&nbsp;&nbsp;定</button>
            </div>
        </form>
    </div>
</div>
<!--end 弹窗-->
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
    layui.use('element', function () {
        var element = layui.element;
        element.render('nav');
    });
    
    var vmexportPanel = new Vue({
    el: "#export-panel",
    data: {
    	patrolPosList:[],
    	name:''
    }
});
    
    
    var vmseService = new Vue({
    el: "#seService",
    data: {
        patrols:[],
        equitments:[],
        pageSize: 10,
        total1: 0,
        total2: 0
    },
    methods: {
        getPatrols: function(){
        	var that = this;
        	layui.use(['laypage', 'layer'], function () {
		        var laypage = layui.laypage;      
		        $.ajax({
		            url: '/patrol/count',
		            type: 'GET',
		            data: {},
		            async: true
		        }).done(function(data){
		        	if(data){
		        		that.total2 = parseInt(data); 
		        		Vue.nextTick(function(){
		        			laypage.render({
					             elem: 'page2'
					             , count: that.total2
					             , layout: ['count', 'prev', 'page', 'next', 'skip']
					             , first: '首页'
					             , last: '尾页'
					             , jump: function (obj) {
					                  $.ajax({
							            url: '/patrol/list',
							            type: 'GET',
							            data: {'pageIndex': obj.curr, 'pageSize': that.pageSize},
							            async: true
							        }).done(function(data){
							        	if(data){
							        		var json = JSON.parse(data);
							        		that.patrols = json;
						        		}
							        });	
					             }
				         	});
		        		});
				        
		        	}
		        });
    		});
        },
        getEquipments: function(){
        	var that = this;
        	layui.use(['laypage', 'layer'], function () {
		        var laypage = layui.laypage;   
		        $.ajax({
		            url: '/equipment/count',
		            type: 'GET',
		            data: {},
		            async: true
		        }).done(function(data){
		        	if(data){
		        		that.total1 = parseInt(data); 
		        		Vue.nextTick(function(){
		        			laypage.render({
					            elem: 'page'
					            , count: that.total1
					            , layout: ['count', 'prev', 'page', 'next', 'skip']
					            , first: '首页'
					            , last: '尾页'
					            , jump: function (obj) {
					                $.ajax({
							            url: '/equipment/list',
							            type: 'GET',
							            data: {'pageIndex': obj.curr, 'pageSize': that.pageSize},
							            async: true
							        }).done(function(data){
							        	if(data){
							        		var json = JSON.parse(data);
							        		that.equitments = json;
						        		}
							        });	
					            }
					        });
		        		});
		        	}
		        });
    		});
        },
        setEquipStatus: function(id, cur){
        	var that = this;
        	var status = (cur === "0" ? 1 : 0);
        	 $.ajax({
		            url: '/equipment/setStatus',
		            type: 'POST',
		            data: {"id": id, "status": status},
		            async: true
		        }).done(function(data){
		        	var message = '';
		        	if(data === "1"){
		        		message = (status === 1? '开启成功' : '关闭成功');
		        		layer.msg(message);
		        		that.getEquipments();
		        	}
		        	else{
		        		message = (status === 1? '开启失败' : '关闭失败');
		        		layer.msg(message);
		        	}
		        });
        },
        getPatrolPosList: function(id, name){
        	vmexportPanel.name = name;
        	$.ajax({
		            url: '/patrolpos/list',
		            type: 'GET',
		            data: {'taskId': id},
		            async: true
		        }).done(function(data){
		        	if(data){
		        		var json = JSON.parse(data);
		        		vmexportPanel.patrolPosList = json;
		        		layui.use('layer', function () {
				            var layer = layui.layer;
				            layer.open({
				                type: 1,
				                title: false,
				                closeBtn:1,
				                area: '516px',
				                shadeClose: true,
				                content: $('#export-panel')
				            });
				        });
		        	}
		        });
        }
    },
    mounted: function(){
    	this.getEquipments();
    }
});
</script>
</body>
</html>