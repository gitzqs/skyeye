<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
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
			<div class="tianMu-logo">
				<img src="${resources}/images/login-logo.png">
				<span id="current-time"></span>
			</div>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item layui-this"><a href="/statistics/datalist">报表统计</a></li>
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
		<div class="layui-mainBady layui-border-box">
        <div class="report-block">
            <div class="tm-tab-block">
                <div class="tm-block-title layui-clear">
                    <div class="block-title-content">报警设置</div>
                </div>
                <div class="tm-block-content">
                    <div class="layui-row">
                        <div class="layui-col-md12">
                            <div class="back-icon"><span><a href="/statistics/pushAlarmList">返回</a></span></div>
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
                                            <input id="minlimit" name="minlimit" type="number" required lay-verify="required"
                                                   placeholder="请输入数值" autocomplete="off"
                                                   class="layui-input">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*最高限</label>
                                        <div class="layui-input-inline tm-inputBox">
                                            <input type="number" id="maxlimit" name="maxlimit" required lay-verify="required"
                                                   placeholder="请输入数值" autocomplete="off"
                                                   class="layui-input">
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*推送方式</label>
                                        <div class="layui-input-inline tm-inputBox selectpickerBox">
                                            <select id="steelphone" name="steelphone" class="selectpicker layui-input" multiple data-done-button="true" lay-ignore>
                                                <option value="0">短信</option>
                                                <option value="1">APP</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <label class="layui-form-label tm-wd-lg">*推送人</label>
                                        <div class="layui-input-inline tm-inputBox selectpickerBox">
                                            <select id="userid" name="userid" class="selectpicker layui-input" multiple data-done-button="true" lay-ignore>
                                            	<c:forEach var="user" items="${datamap.userlist}">
	                                                <option value="${user.id}">${user.username}</option>
                                            	</c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <form id="dataform">
                        	<input type="hidden" id="fieldname" name="fieldname" value="${datamap.bgMovement.moduleid}">
                        	<input type="hidden" id="custonlineid" name="custonlineid" value="${datamap.bgMovement.cusid}">
                        	<input type="hidden" id="alarmid" name="alarmid" value="${datamap.bgMovement.id}">
                        	
                        </form>
                        <div class="formBox-footer layui-clear">
                            <div class="footer-left">*为必填项</div>
                            <div class="footer-right"><a href="javascript:void(0);" onclick="setAlarm();" class="layui-btn layui-btn-warm recharge-btn">确&nbsp;&nbsp;&nbsp;定</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="tanchukangtj" style="display:none; width:150px;z-index:100001; position: fixed;border-radius:25px;
top: 40%;left:0;right: 0px;margin: 0px auto;padding:50px 20px; text-align: center; font-size:16px; background:rgba(0,0,0,0.6); color:#fff;">
	<span class="close"></span>
    <div class="txtnote" id="tanchukangmsgtj"></div>
    <div class="btn" id="tsdenglu" style="display:none;" ></div>
</div>

<!--弹窗-->
<%@include file="/jsp/common/updateLPwd.jsp"%>
<!--end 弹窗-->
	<script src="${resources}/js/jquery.min.js"></script>
	<script src="${resources}/layui.js"></script>
	<script src="${resources}/js/echarts.min.js"></script>
	<script src="${resources}/js/jquery.typeahead.min.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
	<script src="${resources}/js/bootstrap.min.js"></script>
    <script src="${resources}/js/bootstrap-select.js"></script>
    <script src="${resources}/js/platform.js"></script>
	<script>
    layui.use('element', function () {
        var element = layui.element;
        element.render('nav');
    });
    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
    function tanchukangshowtj(msg,dlf){
    	$('#tanchukangmsgtj').html(msg);
    	if(dlf){
    		$('#tanchukangtj').show();
    	}else{
    		$('#tanchukangtj').hide();
    	}
    	$('#tanchukangtj').fadeIn(500).delay(2000).fadeOut(100);
    }
   
    var flage= true;
    function setAlarm(){
    	var minlimit = $.trim($("#minlimit").val());
    	var maxlimit = $.trim($("#maxlimit").val());
    	var steelphone = $.trim($("#steelphone").val());
    	var userid = $.trim($("#userid").val());
    	var fieldname = $.trim($("#fieldname").val());
    	var custonlineid = $.trim($("#custonlineid").val());
    	var alarmid = $.trim($("#alarmid").val());
    	if(!minlimit){
    		tanchukangshowtj("最底限必填",true);
    		return;
    	}
    	if(!maxlimit){
    		tanchukangshowtj("最高限必填",true);
    		return;
    	}
    	if(!steelphone){
    		tanchukangshowtj("推送方式必填",true);
    		return;
    	}
    	if(!userid){
    		tanchukangshowtj("推送人必填",true);
    		return;
    	}
    	if(!flage){
    		return;
    	}
    	flage = false;
    	$.ajax({
		      url:"/statistics/setAlarmData",
		      type:"post",
		      dataType:"json",
		      data: {"minlimit":minlimit,"maxlimit":maxlimit,"steelphone":steelphone,"userid":userid,"fieldname":fieldname,"custonlineid":custonlineid,"alarmid":alarmid},
		      success: function(data){
		    	  flage= true;
		    	  var status = data.code;
		    	  if(status==1){
		    		  tanchukangshowtj("成功",true);
		    	  }else{
		    		  tanchukangshowtj("失败",true);
		    	  }
		      },
		      error:function(){
		    	  tanchukangshowtj("失败",true);
		    	  flage= true;
		      }
    	});
    }
</script>
</body>
</html>