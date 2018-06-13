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
<div class="export-panel hide" style="display: none;" id="changePassword">
	<div class="export-panel-title" style="cursor: move;">修改密码</div>
	<div class="export-panel-content">
		<form class="layui-form" action="">
			<div class="company-name layui-clear"></div>
			<div class="recharge-content">
				<form class="layui-form" action="">
					<div class="form-content recharge-confirm">
						<div class="layui-form-item">
							<label class="layui-form-label">旧密码</label>
							<input type="hidden" id="sopwd" value="${password}" >
							<div class="layui-input-inline">
								<input type="hidden" id="opwd" name="password" required lay-verify="required" placeholder="请输入旧密码" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">新密码</label>
							<div class="layui-input-inline">
								<input type="hidden" id="npwd" name="password" required lay-verify="required" placeholder="请输入新密码" autocomplete="off" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">确认密码</label>
							<div class="layui-input-inline">
								<input type="hidden" id="npwdc" name="password" required lay-verify="required" placeholder="请再次输入新密码" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="export-btn">
				<button class="layui-btn layui-btn-warm" id="culp">确&nbsp;&nbsp;&nbsp;定</button>
			</div>
		</form>
	</div>
</div>
</html>

<script src="${resources}/js/jquery.min.js"></script>
<script src="${resources}/js/common.js"></script>
<script src="${resources}/layui.js"></script>
<script src="${resources}/js/skyEye.js"></script>
<script src="${resources}/js/global.js"></script>

<script>
    $('#password').on('click', function() {
        layui.use('layer', function() {
            var layer = layui.layer;
            layer.open({
                type : 1,
                title : false,
                closeBtn : 1,
                area : '516px',
                shadeClose : true,
                content : $('#changePassword'),
            });
        });
    });
    
    $('#culp').on('click', function() {
    	layui.use('layer', function() {
	    	var opwd = $("#opwd").val();
	    	var npwd = $("#npwd").val();
	    	var npwdc = $("#npwdc").val();
	    	
	    	if (opwd == "" || opwd == null) {
	    		layer.msg('旧密码不能为空');
	    		return;
	    	}
	    	
	    	if (npwd == "" || npwd == null) {
	    		layer.msg('新密码不能为空');
	    		return;
	    	}
	    	
	    	if (npwdc == "" || npwdc == null) {
	    		layer.msg('确认密码不能为空');
	    		return;
	    	}
	    	
	    	if (npwd != npwdc) {
	    		layer.msg('新密码两次输入不一致');
	    		return;
	    	}
	    	
	    	if (opwd != sopwd) {
	    		layer.msg('旧密码输入错误');
	    		return;
	    	}
	    	
	    	updateLPwd(opwd, npwd, npwdc);
// 	    	layer.open({
// 	    		 title: '修改登录密码',content: '密码修改成功',shade: false
// 	    	}); 

			layer.closeAll();// 疯狂模式，关闭所有层
			//去调用后台，修改密码
			layer.alert('密码修改成功', {icon: 1});
	    	
    	});
    	
    });
    
    function updateLPwd(opwd, npwd, npwdc) {
		$("#culp").html("修改中");
		$.ajax({
			async : false,
			type : "post",
			url : "/user/lpwd/update",
			dataType : "json",
			contentType : "application/json; charset=utf-8",
			data : JSON.stringify({
				"opwd" : opwd,
				"npwd" : npwd,
				"ncpwd" : npwdc
			}),
			cache : false,
			success : function(data) {
				$("#culp").html("修改中");
				if (data.respData.bodyCode == "0000") {
					window.location.href = "/user/index";
				} else {
					$("#errorInfo").html(data.respData.msg);
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				$("#culp").html("确定");
				console.log(XMLHttpRequest);
			}
		});
    }
    
</script>