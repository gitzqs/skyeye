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
    <link rel="stylesheet" href="${resources}/css/bootstrap.min.css">
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
        <div class="tianMu-logo"><img src="${resources}/images/login-logo.png"><span id="current-time"></span></div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item"><a href="/statistics/datalist">报表统计</a></li>
            <li class="layui-nav-item"><a href="/recharge/list/query">远程充值</a></li>
            <li class="layui-nav-item layui-this"><a href="/acctmanage/query">系统设置</a></li>
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
                    <div class="block-title-content">报警设置</div>
                </div>
                <div class="tm-block-content">
                    <div class="layui-row">
                        <div class="layui-col-md12">
                            <div class="back-icon"><a href="/alarmSetting/index">返回</a></div>
                        </div>
                    </div>
                    <div class="layui-form layui-border-box table-box rechargeFrom">
                        <div class="layui-table-body tableBox-main layui-table layui-border-box form-box">
                            <form class="layui-form" action="">
                                <div class="form-content">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*客户名称</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="text" name="title" required lay-verify="required"
                                                   placeholder="请输入手机号" autocomplete="off"
                                                   class="layui-input" value="${datamap.bgMovement.custname}" disabled>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*模块名称</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="text" name="title" required lay-verify="required"
                                                   placeholder="请输入密码" autocomplete="off" class="layui-input" value="${datamap.bgMovement.moduleName}" disabled>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*最低限</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="number" required lay-verify="required"
                                                   placeholder="请输入数值" autocomplete="off"
                                                   class="layui-input" id="minLimit" value="${datamap.bgMovement.minlimit}">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*最高限</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="number" required lay-verify="required"
                                                   placeholder="请输入数值" autocomplete="off"
                                                   class="layui-input" id="maxLimit" value="${datamap.bgMovement.maxlimit}">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*推送方式</label>
                                        <div class="layui-input-inline tm-inputBox selectpickerBox">
                                            <select id="doneStyle" class="selectpicker layui-input" multiple data-done-button="true" lay-ignore>
                                                <option>无</option>
                                                <option>短信</option>
                                                <option>APP</option>
                                                <option>网页弹窗</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*推送人</label>
                                        <div class="layui-input-inline tm-inputBox selectpickerBox">
	                                        <c:if test="${empty datamap.userlist}"></c:if>
	                                        <c:if test="${not empty datamap.userlist}">
	                                        	<select id="done" class="selectpicker layui-input" multiple data-done-button="true" lay-ignore>
		                                        <c:forEach var="user" items="${datamap.userlist}">
					                        		<option value="${user.id}">${user.realName}</option>
					                        	</c:forEach>
					                        	</select>
					                        </c:if>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="formBox-footer layui-clear">
                            <div class="footer-left">*为必填项</div>
                            <div class="footer-right"><a href="#" class="js-updateAlarm layui-btn layui-btn-warm recharge-btn">确&nbsp;&nbsp;&nbsp;定</a>
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
<script src="${resources}/js/vue.min.js"></script>
<script src="${resources}/layui.js"></script>
<script src="${resources}/js/bootstrap.min.js"></script>
<script src="${resources}/js/bootstrap-select.js"></script>
<script src="${resources}/js/jquery.typeahead.js"></script>
<script src="${resources}/js/skyEye.js"></script>
<script src="${resources}/js/platform.js"></script>
<script>
	var steelPhone = '${datamap.bgMovement.steelphone}';
	var realNames = '${datamap.bgMovement.username}';

	var moduleId = '${requestScope.moduleid}';
	var alarmId = '${datamap.bgMovement.id}';
	var cusid = '${datamap.bgMovement.cusid}';
	var fieldName = '${datamap.bgMovement.moduleid}';
	
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
    
    function bindSteelPhone(){
    	if(steelPhone){
    		var steelPhoneList = steelPhone.split(', ');
    		var $mydiv = $('[data-id="doneStyle"]').next();
    		steelPhoneList.forEach(function(item){
    			$mydiv.find('span:contains("'+ item +'")').click();
    		});
    	}
    }
    
    function bindPushName(){
    	if(realNames)
    	{
    		var realNameList = realNames.split(', ');
    		var $mydiv = $('[data-id="done"]').next();
    		realNameList.forEach(function(item){
    			$mydiv.find('span:contains("'+ item +'")').click();
    		});
    	}
    }
    
    $(function(){
	    layui.use('element', function () {
	        var element = layui.element;
	        element.render('nav');
	        
	        setTimeout(function(){
		        bindSteelPhone();
	    		bindPushName();
	    	}, 800);
	    }); 
    	
    });
    
    $('.js-updateAlarm').on('click', function(){
    	var param = {
    		alarmid: alarmId,
    		custonlineid: cusid,
    		fieldname: fieldName,
    		maxlimit: $('#maxLimit').val(),
    		minlimit: $('#minLimit').val(),
    		steelphone: $('[data-id="doneStyle"]').find('span.filter-option').text(),
    		username: $('[data-id="done"]').find('span.filter-option').text()
    	};
    	$.ajax({
	            url: '/alarmSetting/setAlarmData',
	            type: 'POST',
	            data: param, 
	            async: true
	        }).done(function(data){
	        	if(data && data.code){
	        		layui.use('layer', function () {
				        var layer = layui.layer;
				        if(data.code == 1){
				        	layer.msg('更新成功');
				      	}else {
				      		layer.msg('更新失败');
				      	}
				    });
	        	}
	        });
    });
</script>
</body>
</html>