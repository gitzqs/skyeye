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
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <a href="/statistics/datalist"><li >数据统计</li></a>
                     <a href="/statistics/hisreportlist"><li class="layui-this">历史报警</li></a>
                </ul>
                <div class="layui-tab-content layui-border-box">
                    <div class="layui-tab-item layui-show">
                        <div class="tableBox-title">
                            <form action="/statistics/hisreportlist" method="get" id="form-companySearch" name="form-companySearch">
                            	<input type="hidden" name="page" id="currpage" >
                                <div class="typeahead__container">
                                    <div class="typeahead__field">
                                        <span class="typeahead__query">
                                            <input class="js-typeahead" id="cusname" value="${datamap.cusname}" name="cusname" type="search" placeholder="请输入客户名称"
                                                   autocomplete="off">
                                        </span>
                                        <span class="typeahead__button">
                                            <button type="button" onclick="search();">
                                                <i class="layui-icon"></i>
                                            </button>
                                        </span>
                                    </div>
                                </div>
                            </form>
                        </div>
                           <div class="layui-form layui-border-box table-box">
                            <div class="layui-table-body tableBox-main layui-table layui-border-box">
                                <table class="layui-table tm-table" lay-size="sm" cellspacing="0" cellpadding="0" border="0">
                                    <thead>
                                        <tr>
                                            <th>客户名称</th>
                                            <th>报警模块</th>
                                            <th>报警数据</th>
                                            <th>报警描述</th>
                                            <th>报警时间</th>
                                        </tr>
                                    </thead>
                                    <tbody >
                                    	<c:forEach var="hisreport" items="${datamap.hisreportlist}">
                                    		 <tr>
                                            	<td>${hisreport.custname}</td>
                                            	<td>${hisreport.modulName}</td>
                                            	<td>${hisreport.datainfor}</td>
                                            	<td>${hisreport.description}</td>
                                           	 	<td>${hisreport.creattime}</td>
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
	<script src="${resources}/js/jquery.typeahead.min.js"></script>
	<script src="${resources}/js/skyEye.js"></script>
	<script src="${resources}/js/platform.js"></script>
	<script>
	 layui.use('element', function () {
	        var element = layui.element;
	        element.render('nav');
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
	   	
	   
	</script>
	<script type="text/javascript">
	
	function search(){
		$("#form-companySearch").submit();
	}
	
	
	</script>
</body>
</html>