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
<link rel="stylesheet" href="${resources}/css/style.css">
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin container-page">
		<div class="layui-header">
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item  layui-this">
					<a href="/user/index">首&nbsp;&nbsp;&nbsp;&nbsp;页</a>
				</li>
				<li class="layui-nav-item">
					<a href="javascript:;" id="monitListId">数据监测</a>
				</li>
				<li class="layui-nav-item">
					<a href="javascript:;">服务管理</a>
				</li>

			</ul>
			<div class="tianMu-logo">
				<img src="${resources}/images/login-logo.png">
				<span id="current-time"></span>
			</div>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item">
					<a href="/statistics/datalist">报表统计</a>
				</li>
				<li class="layui-nav-item"><a href="/recharge/list/query">远程充值</a></li>
				<li class="layui-nav-item">
					<a href="javascript:;" id="sysSettingId">系统设置</a>
				</li>

			</ul>
			<ul class="layui-nav user-bar">
				<li class="layui-nav-item user-bar-item">
					<a href="#">超级管理员</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="#" id="password">修改密码</a>
						</dd>
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
                    <li >账户管理</li>
                    <li class="layui-this">报警推送</li>
                    <li>客户上线</li>
                    <li>规格管理</li>
                </ul>
                <div class="layui-tab-content layui-border-box">
                 
                    <div class="layui-tab-item layui-show">
                        <div class="search-bar">
                            <form id="form-companySearch" name="form-companySearch">
                            	<input type="hidden" name="page" id="currpage" >
                                <div class="typeahead__container">
                                    <div class="typeahead__field">
                                        <span class="typeahead__query">
                                            <select style="width: 100%;border: 1px solid #5a7bf4;display: block;line-height: 1.25;background: #fff;border-radius: 2px 0 0 2px;-webkit-appearance: none;min-height: calc(0.7rem * 2 + 1.25rem + 2px);" class="js-typeahead"  id="cusname" data-options="editable:false"  name="cusid" type="text"
                                                   placeholder="请输入客户名称"
                                                   autocomplete="off">
                                                   <option value=""></option>
												   <c:forEach items="${datamap.custonlineList}" var="custonline">
                                                   		<option value="${custonline.id}" <c:if test="${custonline.id == datamap.cusid}">selected</c:if>>${custonline.custname}</option>
                                                   </c:forEach>
											</select> 
                                        </span>
                                        <span class="typeahead__button">
                                            <button type="button" onclick="search();">
                                                全站搜索
                                            </button>
                                        </span>
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
                                    <tbody id="lbtbodytr">
                                    <c:forEach var="alarm" items="${datamap.pushAlarmList}">
                                    	<tr>
	                                        <td>${alarm.moduleName}</td>
	                                        <td>${alarm.minlimit}</td>
	                                        <td>${alarm.maxlimit}</td>
	                                        <td>${alarm.steelphone}</td>
	                                        <td>
	                                        <c:if test="${empty alarm.username}"></c:if>
	                                        <c:if test="${not empty alarm.username}">
	                                        	<select lay-ignore class="tm-select">
		                                        <c:forEach var="name" items="${alarm.username}">
					                        		<option>${name}</option>
					                        	</c:forEach>
					                        	</select>
					                        </c:if>
	                                        </td>
	                                        <td><a href="/statistics/querypushAlarm?cusid=${alarm.cusid}&moduleid=${alarm.moduleid}"
	                                               class="layui-btn layui-btn-primary layui-btn-small tm-btn">报警设置</a></td>
                                    	</tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="layui-table-tool tableBox-footer">
                                <div id="page"></div>
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
	<script src="${resources}/js/echarts.min.js"></script>
	<script src="${resources}/js/jquery.typeahead.min.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
	<script src="${resources}/js/platform.js"></script>
	<script>
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
    layui.use(['laypage', 'layer'], function () {
	        var laypage = layui.laypage
	            , layer = layui.layer;
	        laypage.render({
	            elem: 'page'
	            , count: '${datamap.count}'
	            , layout: ['count', 'prev', 'page', 'next', 'skip']
	            , first: '首页'
	            , last: '尾页'
	            , curr:'${datamap.page}'
	            , jump: function (obj,first) {
	            	 if(!first) {
	         			 //***第一次不执行,一定要记住,这个必须有,要不然就是死循环,哈哈
	                     var curr = obj.curr;
	         			 $("#currpage").val(curr);
	         			 $("#form-companySearch").submit();        		
	                 }
	            }
	        });
	    });
	
    function search(){
		$("#form-companySearch").submit();
	}
	
	</script>
</body>
</html>