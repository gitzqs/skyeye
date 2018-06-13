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

    <style type="text/css">
        .search-lists {
            position: absolute;
            top: 44px;
            left: 0;
            width: 100%;
            height: 150px;
            overflow: auto;
            z-index: 2;
            background-color: #fff;
            border: 1px solid #ddd;
        }
        .search-lists > li {
            padding-left: 10px;
            box-sizing: border-box;
            text-align: left;
            line-height: 30px;
            cursor: pointer;
        }
        .search-lists > li:hover {
            background-color: #eee;
        }
        .hid {
            display: none;
        }
    </style>
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
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                	<li><a href="/acctmanage/query">账户管理</a></li>
					<li><a href="/alarmSetting/index" class="layui-this">报警推送</a></li>
					<li><a href="/syssetting/custonline/query">客户上线</a></li>
					<li><a href="javascript:;">规格管理</a></li>
                </ul>
                <div class="layui-tab-content layui-border-box" id="alarmPush">
                    <div class="layui-tab-item layui-show" >
                        <div class="search-bar">
                            <form id="form-companySearch" name="form-companySearch">
                                <div class="typeahead__container">
                                    <div class="typeahead__field">
                                        <span class="typeahead__query">
                                            <input id="custSearch" class="js-typeahead" name="companySearch" type="search"
                                                   placeholder="请输入客户名称"
                                                   autocomplete="off">
                                        </span>
                                        <span class="typeahead__button">
                                            <button type="button" v-on:click="searchReq">
                                                全站搜索
                                            </button>
                                        </span>
                                        <ul id="mySearchList" class="search-lists hid" lay-filter="demo">
                                            <li v-for="(cust,index) in curCusts" v-bind:value="cust.id" v-on:click="selectCust(cust.id, cust.custname)">{{cust.custname}}</li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="layui-form layui-border-box table-box search-results">
                            <div class="layui-table-body tableBox-main layui-table layui-border-box">
                                <table class="layui-table tm-table" lay-size="sm" cellspacing="0" cellpadding="0"
                                       border="0">
                                    <thead>
                                    <tr>
                                        <th>模块名称</th>
                                        <th>最低限</th>
                                        <th>最高限</th>
                                        <th>推送方式</th>
                                        <th>推送人</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr v-for="(module,index) in modules" v-bind:id="module.id">
                                        <td>{{module.moduleName}}</td>
                                        <td>{{module.minlimit}}</td>
                                        <td>{{module.maxlimit}}</td>
                                        <td>{{module.steelphone}}</td>
                                        <td>
                                            <select lay-ignore class="tm-select">
                                                <option v-for="(userName,index) in module.usernameList">{{userName}}</option>
                                            </select>
                                        </td>
                                        <td><a v-on:click.prevent="gotoAlarmSet(module.cusid, module.moduleid)"
                                               class="layui-btn layui-btn-primary layui-btn-small tm-btn">报警设置</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="layui-table-tool tableBox-footer">
                                <div id="page2"></div>
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
<script src="${resources}/js/jquery.typeahead.js"></script>
<script src="${resources}/js/jquery.nicescroll.min.js"></script>
<script src="${resources}/js/skyEye.js"></script>
<script src="${resources}/js/platform.js"></script>
<script>
	var basePath = '${application}';

    layui.use('element', function () {
        var element = layui.element;
        element.render('nav');
    });
    
    $('.checkBtn').on('click', function () {
        layui.use('layer', function () {
            var layer = layui.layer;
            layer.open({
                type: 1,
                title: false,
                closeBtn:1,
                area: '516px',
                shadeClose: true,
                content: $('#checkPanel'),
            });
        });
    });
    /* layui.use(['laypage', 'layer'], function () {
        var laypage = layui.laypage
            , layer = layui.layer;
        //完整功能
        laypage.render({
            elem: 'page2'
            , count: 100
            , layout: ['count', 'prev', 'page', 'next', 'skip']
            , first: '首页'
            , last: '尾页'
            , jump: function (obj) {
                console.log(obj)
            }
        });
    });
    initTypeahead();

    $(".js-typeahead").on("click",function(){
        $(".search-lists").toggleClass("hid");
    }) */
    
    
</script>

<script>
var vmalarmPush = new Vue({
    el: "#alarmPush",
    data: {
    	totalCusts:[],
    	curCusts:[],
    	modules:[],
    	pageIndex: 1,
        pageSize: 20,
        total: 0
    },
    methods: {
        getCusts: function(){
        	var that = this;
        	 $.ajax({
		            url: '/alarmSetting/custList',
		            type: 'GET',
		            data: {}, 
		            async: true
		        }).done(function(data){
		        	if(data !== -1){
		        		var json = JSON.parse(data);
		        		that.totalCusts = json;
		        		that.curCusts = json;
		        	}
		        });
        },
        gotoAlarmSet: function(cusid, moduleid){
        	window.location.href = basePath +'/alarmSetting/queryAlarm?cusid=' + cusid +'&moduleid=' + moduleid;
        },
        search: function(keyword){
	    	var that = this;
	    	that.curCusts = [];
	    	that.totalCusts.forEach(function(item){
	    		if(item.custname.indexOf(keyword) != -1){
	    			that.curCusts.push(item);
	    		}
	    	});
	    },
	    selectCust: function(id, name){
	    	$("#custSearch").val(name);
	    	$("#mySearchList").hide();
	    	var that = this;
	    	$.ajax({
		            url: '/alarmSetting/moduleList',
		            type: 'GET',
		            data: {custid: id, page: that.pageIndex, pageSize: that.pageSize}, 
		            async: true
		        }).done(function(data){
		        	if(data !== -1){
		        		var json = JSON.parse(data);
		        		that.modules = json.pushAlarmList;
		        		that.total = json.count;
		        	}
		        });
	    },
	    searchReq: function(){
	    	if($("#mySearchList li").length > 0){
	    		var $firstEle = $("#mySearchList li:eq(0)");
	    		this.selectCust($firstEle.attr('value'), $firstEle.text());
	    	}
	    }
	    
    },
    mounted: function(){
    	this.getCusts();
    }
    
});

	$(function(){
		$("#custSearch").on('focus', function(){
			$('#mySearchList').show();
		}).on('keyup', function(event){
			console.log($(event.target).val());
			vmalarmPush.search($(event.target).val());
		});

	});
	
</script>
</body>
</html>