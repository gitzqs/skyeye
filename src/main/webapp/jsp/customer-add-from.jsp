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
	        <div class="tianMu-logo"><img src="${resources}/images/login-logo.png"><span id="current-time"></span></div>
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
			<div class="report-block">
				<div class="tm-tab-block">
					<div class="tm-block-title layui-clear">
						<div class="block-title-content">新增客户</div>
					</div>
					<div class="tm-block-content">
						<div class="layui-row">
							<div class="layui-col-md12">
								<div class="back-icon">
									<span id="custonlineAddFh">返回</span>
								</div>
							</div>
						</div>
						<div class="layui-form layui-border-box table-box rechargeFrom">
							<div class="layui-table-body tableBox-main layui-table layui-border-box form-box">
								<form class="layui-form" id="fid" method="post" >
									<input name="id" value="${custonline.id}" type="hidden">
									<div class="form-content">
										<div class="layui-form-item">
											<label class="layui-form-label tm-wd-lg">*客户名称</label>
											<div class="layui-input-inline tm-inputBox">
												<input type="text" required lay-verify="required" placeholder="请输入客户名称" autocomplete="off" class="layui-input" name="custname" id="custname" value="${custonline.custname}">
											</div>
										</div>
										<div class="layui-form-item">
											<label class="layui-form-label tm-wd-lg">*设备ID</label>
											<div class="layui-input-inline tm-inputBox">
												<input type="text" required lay-verify="required" placeholder="请输入设备ID" autocomplete="off" class="layui-input" name="deviceid" id="deviceid" value="${custonline.deviceid}">
											</div>
										</div>
										<div class="layui-form-item">
											<label class="layui-form-label tm-wd-lg">*联系人</label>
											<div class="layui-input-inline tm-inputBox">
												<input type="text" required lay-verify="required" placeholder="请输入联系人" autocomplete="off" class="layui-input" name="contractor" id="contractor" value="${custonline.contractor}">
											</div>
										</div>
										<div class="layui-form-item">
											<label class="layui-form-label tm-wd-lg">*联系方式</label>
											<div class="layui-input-inline tm-inputBox">
												<input type="text" required lay-verify="required" placeholder="请输入联系方式" autocomplete="off" class="layui-input" name="contractdetail" id="contractdetail" value="${custonline.contractdetail}">
											</div>
										</div>
                                        <div class="layui-form-item proSelect">
											<label class="layui-form-label tm-wd-lg">*区域</label>
											<div class="layui-input-inline " style="width: 22%" >
												<select id="province" lay-filter="province" lay-verify="required" name="provinceId">
                                                    <option value="">请选择省份</option>
													<c:forEach items="${provinceList}" var="area">
														<option value="${area.areaId}" <c:if test="${area.areaId == custonline.provinceId}">selected</c:if>>${area.areaName}</option>
													</c:forEach>
                                                </select>
											</div>
											<div class="layui-input-inline "  style="width: 22%" >
												<select id="city" lay-filter="city" lay-verify="required" name="cityId">
                                                    <option value="">请选择城市</option>
													<c:forEach items="${cityList}" var="area">
														<option value="${area.areaId}" <c:if test="${area.areaId == custonline.cityId}">selected</c:if>>${area.areaName}</option>
													</c:forEach>
                                                </select>
											</div>
											<div class="layui-input-inline "  style="width: 22%" >
												<select id="area" lay-filter="area" lay-verify="required" name="areaId">
                                                    <option value="">请选择区县</option>
													<c:forEach items="${areaList}" var="area">
														<option value="${area.areaId}" <c:if test="${area.areaId == custonline.areaId}">selected</c:if>>${area.areaName}</option>
													</c:forEach>
                                                </select>
											</div>
										</div>
										<div class="layui-form-item">
											<label class="layui-form-label tm-wd-lg">*客户地址</label>
											<div class="layui-input-inline tm-inputBox">
												<input type="text" required lay-verify="required" placeholder="请输入客户地址" autocomplete="off" class="layui-input" name="custaddress" id="custaddress" value="${custonline.custaddress}">
											</div>
										</div>
									</div>
								</form>
							</div>
							<div class="formBox-footer layui-clear">
								<div class="footer-left">*为必填项</div>
								<div class="footer-right">
									<a href="javascript:;" class="layui-btn layui-btn-warm recharge-btn confirm-btn" id="custonlineAddId">新&nbsp;&nbsp;&nbsp;增</a>
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
	<script src="${resources}/layui.js"></script>
	<script src="${resources}/js/jquery.typeahead.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
	<script src="${resources}/js/platform.js"></script>
	<script type="text/javascript">
        var form;
		$(function() {
            layui.use('form', function(){
                form = layui.form;
                form.render('select');

                form.on('select', function(data){
                    changeSelect(data.value,data.elem.id)
                });

            });

			$("#custonlineAddFh").click(function() {// 返回
				window.location.href = "/syssetting/custonline/query";
			});
			
			$("#custonlineAddId").click(function() {//新增客户上线
				$.ajax({
					type : "post",
					url : "/custonline/add",
					data:$("#fid").serializeArray(),
					success : function(data) {
						if (data.respData.bodyCode == "0000") {
							window.location.href = "/syssetting/custonline/query";
						} else {
							alert(data.respData.msg);
						}
					}, 
					error:function(){
						alert("system busy");
					}
				}); 
			});
		})

        function changeSelect(areaId,selectId) {
            if(areaId == '' && selectId == 'province') {//选择空项
                $("#city").empty();
                $("#city").append("<option value=''>请选择城市</option>");
                $("#area").empty();
                $("#area").append("<option value=''>请选择区县</option>");
            }else {//调后台进行省市县联动
                if (areaId == '') {
                    return;
                }
                $.ajax({
                    type : "post",
                    url : "/area/query",
                    data:{"parentId":areaId},
                    success : function(data) {
                        if( selectId == 'province') {
                            $("#city").empty();
                            $("#city").append("<option value=''>请选择城市</option>");
                            $("#area").empty();
                            $("#area").append("<option value=''>请选择区县</option>");
                            $.each(data,function(i,item){
                                $("#city").append("<option value="+item.areaId+">"+item.areaName+"</option>");
                                form.render();
                            });
                        }else if(selectId == 'city') {
                            $("#area").empty();
                            $.each(data,function(i,item){
                                $("#area").append("<option value="+item.areaId+">"+item.areaName+"</option>");
                                form.render();
                            });
                        }

                    },
                    error:function(){
                        alert("系统异常，请联系管理员");
                    }
                });
            }
        }
	</script>