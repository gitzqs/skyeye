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
        <div class="tianMu-logo"><img src="${resources}/images/login-logo.png"> <span id="current-time"></span></div>
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
    <div class="layui-mainBady layui-border-box">
        <div class="report-block">
            <div class="tm-tab-block">
                <div class="tm-block-title layui-clear">
                    <div class="block-title-content">制定巡检计划</div>
                </div>
                <div class="tm-block-content">
                    <div class="layui-row">
                        <div class="layui-col-md12">
                            <div class="back-icon"><a href="/service/manage">返回</a></div>
                        </div>
                    </div>
                    <div class="layui-form layui-border-box table-box rechargeFrom" id="patrolPlan">
                        <div class="layui-table-body tableBox-main layui-table layui-border-box form-box">
                            <!-- <form class="layui-form" action=""> -->
                                <div class="form-content">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*任务名称</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="text" id="txtTask" name="title" required lay-verify="required"
                                                   placeholder="请输入任务名称" autocomplete="off" class="layui-input">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*巡检人员</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <select name="city" style="display:block;width:100%;height:38px;line-height:38px" lay-verify="required">
                                                <option value=""></option>
                                                <option v-for="(user,index) in users" v-bind:value="user.id">{{user.realName}}</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                           <!--  </form> -->
                        </div>
                        <div class="formBox-footer layui-clear">
                            <div class="footer-left">*为必填项</div>
                            <div class="footer-right"><a href="#" v-on:click.prevent="addPatrol" class="layui-btn layui-btn-warm recharge-btn">确&nbsp;&nbsp;&nbsp;定</a></div>
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
<script src="${resources}/js/jquery.typeahead.js"></script>
<script src="${resources}/js/skyEye.js"></script>
<script src="${resources}/js/platform.js"></script>
<script>
    layui.use('element', function () {
        var element = layui.element;
        element.render('nav');
    });
    /* layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    }); */
    
    var vmpatrolPlan = new Vue({
    el: "#patrolPlan",
    data: {
    	users:[],
    	selectedUid: ''
    },
    methods: {
        getPatrolUser: function(){
        	var that = this;
        	$.ajax({
		            url: '/patrol/userlist',
		            type: 'GET',
		            data: {},
		            async: true
		        }).done(function(data){
		        	if(data){
		        		that.users = JSON.parse(data);
		        	}
		        });
        },
        addPatrol: function(){
        	var taskName = $("#txtTask").val();
        	var uid = $('[name="city"]').val();   //$('dd.layui-this').attr('lay-value');
        	$.ajax({
		            url: '/patrol/add',
		            type: 'POST',
		            data: {'taskName':taskName, 'uid':uid},
		            async: true
		        }).done(function(data){
		        layui.use('layer', function () {
			        var layer = layui.layer;
			        if(data === '1'){
		        		layer.msg('制定成功');
		        	}
		        	else{
		        		layer.msg('制定失败');
		        	}
			    });
		    });
        }
    },
    mounted: function(){
    	this.getPatrolUser();
    }
});
    
</script>
</body>
</html>