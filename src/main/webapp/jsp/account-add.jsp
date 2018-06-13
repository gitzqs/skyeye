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
        <div class="tianMu-logo"><img src="${resources}/images/login-logo.png"> <span id="current-time"></span></div>
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
                    <div class="block-title-content">新增账户</div>
                </div>
                <div class="tm-block-content">
                    <div class="layui-row">
                        <div class="layui-col-md12">
                            <div class="back-icon"><a href="/acctmanage/query">返回</a></div>
                        </div>
                    </div>
                    <div class="layui-form layui-border-box table-box" id="accountAdd">
                        <div class="layui-table-body tableBox-main layui-table layui-border-box form-box">
                            <form class="layui-form" action="">
                                <div class="form-content">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*手机号</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="text" name="title" required lay-verify="required"
                                                   placeholder="请输入手机号" autocomplete="off"
                                                   class="layui-input">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*密码</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="password" name="password" required lay-verify="required"
                                                   placeholder="请输入密码" autocomplete="off" class="layui-input">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*联系人</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="text" name="realname" required lay-verify="required"
                                                   placeholder="请输入联系人" autocomplete="off"
                                                   class="layui-input">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*角色</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <select name="city" lay-filter="test" multiple lay-verify="required">
                                                <option value=""></option>
                                                <option value="3">员工</option>
                                                <option value="4">客户</option>
                                            </select>
                                        </div>
                                    </div>
                                   <!--  <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*权限</label>
                                        <div class="layui-input-inline tm-inputBox selectpickerBox">
                                            <select id="done" class="selectpicker layui-input" lay-verify="required" lay-filer="customer" multiple>
                                                <option value="0">全部客户</option>
                                            </select>
                                        </div>
                                    </div> -->
                                    <!-- <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*权限</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <select id="done" name="done" lay-filter="customer" multiple lay-verify="required">
                                                <option value=""></option>
                                                
                                            </select>
                                        </div>
                                    </div> -->
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*权限</label>
                                        <div class="layui-input-inline tm-inputBox selectpickerBox">
                                            <!-- <select id="done" class="selectpicker layui-input" multiple data-done-button="true" lay-ignore>
                                                <option>全部客户</option>
                                                <option>浙江华气新能源</option>
                                                <option>浙江华气新能源2</option>
                                            </select> -->
                                            <c:if test="${empty custs}"></c:if>
	                                        <c:if test="${not empty custs}">
	                                        	<select id="done" class="selectpicker layui-input" multiple data-done-button="true" lay-ignore>
		                                        <c:forEach var="cust" items="${custs}">
					                        		<option value="${cust.id}">${cust.custname}</option>
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
                            <div class="footer-right"><a href="#" onclick="addAccount()" class="layui-btn layui-btn-warm recharge-btn confirm-btn">确&nbsp;&nbsp;&nbsp;定</a>
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
<%-- <script src="${resources}/js/vue.min.js"></script> --%>
<script src="${resources}/layui.js"></script>
<script src="${resources}/js/bootstrap.min.js"></script>
<script src="${resources}/js/bootstrap-select.js"></script>
<script src="${resources}/js/jquery.typeahead.js"></script>
<script src="${resources}/js/skyEye.js"></script>
<script src="${resources}/js/platform.js"></script>
<script src="/js/platform.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
         form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        }); 
    });
    
    function addAccount(){
        	var username = $('input[name="title"]').val();
        	var pass = $('input[name="password"]').val();
        	var realname = $('input[name="realname"]').val();
        	var roleId = $('select[name="city"]').val().toString();
        	var cust = $('#done').val().join(',');
        	var auth = (cust.indexOf('0') != -1 ? 0: 1);
        	$.ajax({
		            url: '/acc/add',
		            type: 'POST',
		            data: {uname:username, pass:pass, rname:realname, roleId: roleId,
		            		auth: auth, custids: cust},
		            async: true
		        }).done(function(data){
		        	if(data === '1'){
		        		layer.msg('创建账户成功');
		        	}
		        	else{
		        		layer.msg('创建账户失败');
		        	}
		        });
        
    }
    
    /* $(function(){
    	$.ajax({
		            url: '/cust/all',
		            type: 'GET',
		            data: {},
		            async: true
		        }).done(function(data){
		        	if(data){
		        		debugger
		        		var json = JSON.parse(data);
		        		$('#done').append('<option value="0">全部客户</option>');
		        		json.forEach(function(item){
		        			$('#done').append('<option value="'+item.id +'">'+ item.custname + '</option>');
		        		});
		        		setTimeout(function(){
		        			layui.use('form', function(){
					        var form = layui.form;						        
					        form.render('select');
					    });
		        		}, 800);
						
		        }
		    });
    }); */
    
    
    /* var vmaccountAdd = new Vue({
    el: "#accountAdd",
    data: {
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
		        		Vue.nextTick(function(){    //vue绑定完数据layui再渲染
		        			setTimeout(function(){
		        				layui.use('form', function(){
							        var form = layui.form;
							        //监听提交
							        form.render();
							          form.on('submit(formDemo)', function(data){
							            layer.msg(JSON.stringify(data.field));
							            return false;
							        });  
							    });
							    
		        				 layui.use('element', function() {
							        var element = layui.element;
							        element.render('nav');
							    }); 
		        			}, 500);
			        	});
		        }
		    });
        },
        addAccount: function(){
        	var username = $('input[name="title"]').val();
        	var pass = $('input[name="password"]').val();
        	var realname = $('input[name="realname"]').val();
        	var roleId = $('select[name="city"]').val().toString();
        	var cust = $('#done').val().join(',');
        	var auth = (cust.indexOf('0') != -1 ? 0: 1);
        	$.ajax({
		            url: '/acc/add',
		            type: 'POST',
		            data: {uname:username, pass:pass, rname:realname, roleId: roleId,
		            		auth: auth, custids: cust},
		            async: true
		        }).done(function(data){
		        	if(data === '1'){
		        		layer.msg('创建账户成功');
		        	}
		        	else{
		        		layer.msg('创建账户失败');
		        	}
		        });
        }
    },
    mounted: function(){
    	//测试
    	setTimeout(this.getCustList, 3000);
    	//this.getCustList();
    }
}); */
</script>
</body>
</html>