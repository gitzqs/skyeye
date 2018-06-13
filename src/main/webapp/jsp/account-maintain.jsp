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
                <a href="login.html">退出</a>
            </li>
        </ul>
    </div>
    <div class="layui-mainBady layui-border-box">
        <div class="report-block">
            <div class="tm-tab-block">
                <div class="tm-block-title layui-clear">
                    <div class="block-title-content">维护账户</div>
                </div>
                <div class="tm-block-content">
                    <div class="layui-row">
                        <div class="layui-col-md12">
                            <div class="back-icon"><a href="/acctmanage/query">返回</a></div>
                        </div>
                    </div>
                    <div class="layui-form layui-border-box table-box rechargeFrom" id="maintainAccount">
                        <div class="layui-table-body tableBox-main layui-table layui-border-box form-box">
                            <form class="layui-form" action="">
                                <div class="form-content">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*手机号</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="text" name="title" required lay-verify="required"
                                                   placeholder="请输入客户名称" autocomplete="off" v-bind:value="user.userName"
                                                   class="layui-input" disabled>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*联系人</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="text" name="realname" required lay-verify="required"
                                                   placeholder="请输入联系人" autocomplete="off" class="layui-input"
                                                   v-bind:value="user.realName">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*角色</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <select name="city" >
                                                <option value="">请选择</option>
                                                <option value="3" v-if="user.roleId === '3'" selected="">员工</option>
                                                <option value="3" v-else>员工</option>
                                                <option value="4"v-if="user.roleId === '4'" selected="">客户</option>
                                                <option value="4" v-else>客户</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*权限</label>
                                        <div class="layui-input-inline tm-inputBox selectpickerBox">
                                            <select id="done" class="selectpicker layui-input" multiple data-done-button="true" lay-ignore>
                                                <option value="0">全部客户</option>
                                                <option v-for="(cust,index) in custs" v-bind:value="cust.id">{{cust.custname}}</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="formBox-footer layui-clear">
                            <div class="footer-left">*为必填项</div>
                            <div class="footer-right"><a href="#" v-on:click="updateAccount" class="layui-btn layui-btn-warm recharge-btn">确&nbsp;&nbsp;&nbsp;定</a>
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
    /* layui.use('element', function () {
        var element = layui.element;
        element.render('nav');
    }); */
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
    
    var uid = ${requestScope.uid};
    
    var vmmaintainAccount = new Vue({
    el: "#maintainAccount",
    data: {
    	user:'',
    	custs:[]
    },
    methods: {
        getCustList: function(){
        	var that = this;
        	$.ajax({
		            url: '/cust/all',
		            type: 'GET',
		            data: {},
		            async: true
		        }).done(function(data){
		        	if(data){
		        		var json = JSON.parse(data);
		        		that.custs = json;
		        		/* Vue.nextTick(function(){
		        			layui.use('form', function(){
			       				 var form = layui.form;
						        //监听提交
						        form.on('submit(formDemo)', function(data){
						            layer.msg(JSON.stringify(data.field));
						            return false;
						        });
						    });
		        		}); */
		        		$.ajax({
				            url: '/account/detail',
				            type: 'GET',
				            data: {uid: uid},
				            async: true
				        }).done(function(data){
				        	if(data){
				        		var json = JSON.parse(data);
				        		that.user = json;
				        		Vue.nextTick(function(){
				        			layui.use('element', function () {
								        var element = layui.element;
								        element.render('nav');
								        
								        setTimeout(function(){
								        	if(that.user.custIds)
									        {
										        that.user.custIds.forEach(function(item){
										        	$('li[data-original-index="'+ item +'"]>a').click();
										        });
									        }
									        if(that.user.roleId){
								        		$('select[name="city"]').next().find('dd[lay-value="'+ that.user.roleId +'"]').click();
								        	}
								        }, 800);
								       
								    });
				        		});
				        	}
				    	});
	        		}
        		});
        },
        updateAccount: function(){
        	var realname = $('input[name="realname"]').val();
        	var roleId = $('select[name="city"]').val();
        	var cust = $('#done').val().join(',');
        	var auth = (cust.indexOf('0') != -1 ? 0: 1);
  		    var curUid = uid;
  		    if(auth == 1 && cust.indexOf('0') !== -1)  //部分客户，将0从列表中去掉（0为全部客户）
  		    {
  		    	cust = cust.substring(2, cust.length);
  		    }
        	$.ajax({
		            url: '/account/update',
		            type: 'POST',
		            data: { rname:realname, roleId: roleId,
		            		auth: auth, custids: cust, id:curUid},
		            async: true
		        }).done(function(data){
		        	if(data === '1'){
		        		layer.msg('更新账户成功');
		        	}
		        	else{
		        		layer.msg('更新账户失败');
		        	}
		        });
        }
    },
    mounted: function(){
    	this.getCustList();
    }
});
</script>
</body>
</html>