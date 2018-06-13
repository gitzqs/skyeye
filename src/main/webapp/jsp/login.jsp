<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%application.setAttribute("platform","");%>
<c:set var="resources" value="${pageContext.request.contextPath}/resources" />
<c:set var="application" value="${pageContext.request.contextPath}" />
<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en"><head>
<meta charset="utf-8">
<title><%=pageContext.getServletContext().getAttribute("platform")%></title>
<link rel="stylesheet" href="${resources}/css/layui.css">
<link rel="stylesheet" href="${resources}/css/style.css">
<style>
.outer{
	width: 280px;
	hight: 360px;
	/*background-color:black;*/
	margin:0px;
	padding:0px;
}
.continer{
	width: 150px;	
	width: 100%;
}

.continer a{ color:#Fff} 
.continer a:hover{ color:#Fff} 

.demo{
     text-align:justify;
     text-align-last:justify;     
}

.alignleft { 
	display: inline; 
	float: left; 
	margin-left: 30px;
} 

.aligncenter { 
	clear: both; 
	display: block; 
	margin:auto; 
} 

.txt{
	text-align:right;
	margin-right: 15px;
}
</style>
</head>
<body>

	<div class="login-page">
		<div class="layui-container wrapper">
			
			  <!-- 
			  <div class="layui-row">
				<div class="login-header">
					<div class="header-left">
						<img src="${resources}/images/login-lines.png" />
					</div>
					<img src="${resources}/images/login-logo.png" class="header-logo" />
					<div class="header-right">
						<img src="${resources}/images/login-lines.png" />
					</div>
				</div>
				-->
				<div id="wrapper" class="login-content">
					<div  id="login_form" class="login-block-new">
						<!-- <span class="code-span">
							<a href="javascript:;" id="qrQode">
								<img src="${resources}/images/Qr-code.png" height="60" width="60" />
							</a>
						</span>-->
						
						<div class="login-form">
							<div class="outer">
								<input type="text" id="user_name" class="user" value="" maxlength="15" />
								<input type="password" id="password" class="password" value="" maxlength="15" />
								
								<div class="continer" >
									 <div class="alignleft">
									   <img src="${resources}/images/icon-ad.png" height="20" width="20" />
									   <img src="${resources}/images/icon-ios.png" height="20" width="20" />	
									   <a href="#" id="forgetPassword">下载App</a>							
									 </div>
									<div class="txt"><a href="#" id="forgetPassword">忘记密码？</a></div>
								</div>
																
								
								<div class="aligncenter">
									<!-- <button id="login">登 录</button> -->
									<a name="login" href="#"><img src="${resources}/images/login-btn.png" height="80" width="80" /></a>			
								</div>
							</div>
							<br>
							<span style="color: red" id="errorInfo"></span>
						</div>						
					</div>
				</div>
				<!-- 
				<div class="login-footer">
					<div class="footer-left">
						<img src="${resources}/images/login-lines2.png" />
					</div>
					<img src="${resources}/images/login-logo.png" class="header-logo" />
					<div class="footer-right">
						<img src="${resources}/images/login-lines2.png" />
					</div>
				</div>
				
			</div>-->
			
		</div>
	</div>
	<!--弹窗-->
	<div class="export-panel hide" style="display: none;" id="getPassword">
		<div class="export-panel-title" style="cursor: move;">忘记密码</div>
		<div class="export-panel-content">
			<form class="layui-form" action="">
				<div class="company-name layui-clear"></div>
				<div class="recharge-content">
					<form class="layui-form" action="">
						<div class="form-content recharge-confirm">
							<div class="layui-form-item">
								<label class="layui-form-label">手机号</label>
								<div class="layui-input-inline">
									<input type="text" name="password" required lay-verify="required" placeholder="请输入手机号" autocomplete="off" class="layui-input">
								</div>
								<div class="layui-form-mid error-info">手机号不存在</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">短信验证码</label>
								<div class="layui-input-inline verification-code">
									<input type="text" name="password" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
									<button class="layui-btn layui-btn-normal">发送验证码</button>
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">新密码</label>
								<div class="layui-input-inline">
									<input type="text" name="password" required lay-verify="required" placeholder="请输入新密码" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">确认密码</label>
								<div class="layui-input-inline">
									<input type="text" name="password" required lay-verify="required" placeholder="请再次输入新密码" autocomplete="off" class="layui-input">
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="export-btn">
					<button class="layui-btn layui-btn-warm">确&nbsp;&nbsp;&nbsp;定</button>
				</div>
			</form>
		</div>
	</div>
	<!--end 弹窗-->
	<div id="code" class="hide" style="display: none;">
		<img src="${resources}/images/Qr-code.png">
	</div>
	<script src="${resources}/js/jquery.min.js"></script>
	<script src="${resources}/layui.js"></script>
	<script src="${resources}/js/platform.js"></script>
	<script type="text/javascript">
		$(function() {

			//给A标签绑定event
			$("a[name='login']").click(function() {
				var username = $("#user_name").val();
				var password = $("#password").val();
				if (checkUserInfo(username, password)) {
					$("#login").html("登录中...");
					$.ajax({
						async : true,
						type : "post",
						url : "/user/login",
						dataType : "json",
						contentType : "application/json; charset=utf-8",
						data : JSON.stringify({
							"usname" : username,
							"inpass" : password
						}),
						cache : false,
						success : function(data) {
							$("#login").html("登录");
							if (data.respData.bodyCode == "0000") {
								window.location.href = "/user/index";
							} else {
								$("#errorInfo").html(data.respData.msg);
							}
						},
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							$("#login").html("登录");
							console.log(XMLHttpRequest);
						}
					});
				}
			});
		})

		function checkUserInfo(username, password) {
			if (username == "") {
				$("#errorInfo").html("用户名必填");
				return false;
			}
			if (password == "") {
				$("#errorInfo").html("密码必填");
				return false;
			}
			$("#errorInfo").html("");
			return true;
		}

		function queryUserInfo(contractId, templateId) {
			
		}
		
		$("#login").click(function() {  
		    document.getElementById("a").onclick();  
		})  
	</script>
</body>
</html>
