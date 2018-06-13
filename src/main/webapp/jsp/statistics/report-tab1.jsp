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
                    <a href="/statistics/datalist"><li class="layui-this">数据统计</li></a>
                     <a href="/statistics/hisreportlist"><li>历史报警</li></a>
                </ul>
                <div class="layui-tab-content layui-border-box">
                    <div class="layui-tab-item layui-show">
                        <div class="tableBox-title">
                            <form action="/statistics/datalist" method="get" id="form-companySearch" name="form-companySearch">
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
                                            <th style="width: 50%">客户名称</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody >
                                    <c:forEach items="${datamap.custonlineList}" var="custonline">
		                                    <tr>
	                                            <td id="companyname${custonline.id}">${custonline.custname}</td>
	                                            <td>
	                                                <a href="/statistics/queryGraph?custid=${custonline.id}" >
	                                                	<button class="layui-btn layui-btn-primary layui-btn-small tm-btn">查看</button>
	                                                </a>
	                                                <button exportid="${custonline.id}" class="layui-btn layui-btn-primary layui-btn-small tm-btn download-btn">
	                                                   	 导出
	                                                </button>
	                                            </td>
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
<div class="export-panel hide" style="display: none;" id="export-panel">
    <div class="export-panel-title export-icon" style="cursor: move;">导出数据</div>
    <div class="export-panel-content">
        <form class="layui-form" >
        	<input type="hidden" name="cid" id="cid">
            <div class="company-name"></div>
            <div class="export-date">
                <div class="layui-inline">
                    <label class="layui-form-label">日期范围</label>
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input" lay-verify="exporttime" name="exporttime"  id="test6" placeholder=" - ">
                    </div>
                </div>
            </div>
            <div class="export-module">
                <label class="layui-form-label">选择模块</label>
                <div class="layui-input-inline">
                    <table id="tblExport">
                       <%-- <c:forEach  items="${datamap.bgModuleList}" var="module">
                        	<tr><td><input class="tm-checkbox" type="checkbox" value="${module.fieldname}" name="moduleid" title="${module.moduleName}" lay-skin="primary" ></td></tr>
                        </c:forEach> --%>
                    </table>
                </div>
            </div>
            <div style="text-align: right;margin-top: 20px;margin-bottom: 10px;padding: 0 20px;">
                <button type="button" class="layui-btn layui-btn-warm" onclick="exportfile();">导&nbsp;&nbsp;&nbsp;出</button>
            </div>
        </form>
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
		
	    layui.use('laydate', function () {
	        var laydate = layui.laydate;
	        //日期范围
	        laydate.render({
	            elem: '#test6'
	            , range: true
	            , theme: '#5a7bf4'
	        });
	    });
	    layui.use('form', function () {
	        var form = layui.form;
	        form.verify({
	        	exporttime: function(value, item){
	        		if(value==''){
	                	return '请选择日期';
	        		}
	        	}
	        })
	      
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
	   	
	    function exportfile(){
	    	var cid = $("#cid").val();
			var id = document.getElementsByName('moduleid');
	        var value = new Array();
	        var moduleids = "";
	        for(var i = 0; i < id.length; i++){
	         	if(id[i].checked)
	        	 	moduleids+= id[i].value +",";
	        }
	        var time = $("#test6").val();
			if(!id){
				return;
			}
			if(!time){
				return;
			}
			var starttime = time.split(" - ")[0];
			var endtime = time.split(" - ")[1];
			window.open("/statistics/exportdata?comid="+cid+"&moduleids="+moduleids+"&starttime="+starttime+"&endtime="+endtime);
			
		}
	    
	</script>
	<script type="text/javascript">
	
	function search(){
		$("#form-companySearch").submit();
	}
	
	function mycbxClick(ele){
		var $this = $(ele);
		$this.toggleClass('layui-form-checked');
		$this.prev()[0].checked = !$this.prev()[0].checked;
	}
	
	
	$(document).on("click",'.download-btn',function(){
				$.ajax({
			            url: '/statistics/queryCustModules',
			            type: 'POST',
			            data: {"custid":$(".download-btn").attr("exportid")},
			            async: true
			        }).done(function(data){
			        	if(data && data.code === 1){
			        		var json = data.modules;
							$('#tblExport').html('');   //先清空table
			        		var tpl = '<tr><td><input class="tm-checkbox" type="checkbox" value="[[filedName]]" name="moduleid" title="[[moduleName]]" lay-skin="primary"><div onclick="mycbxClick(this)"  class="layui-unselect layui-form-checkbox" lay-skin="primary"><span>[[moduleName]]</span><i class="layui-icon"></i></div></td></tr>';
			        		json.forEach(function(item){
			        			$('#tblExport').append(tpl.replace(/\[\[filedName\]\]/g, item.fieldname).replace(/\[\[moduleName\]\]/g, item.moduleName));
			        		});
			        		
			        		layui.use('layer', function () {
				            var layer = layui.layer;
				            layer.open({
				                type: 1,
				                title: false,
				                closeBtn:1,
				                area: '516px',
				                shadeClose: true,
				                content: $('#export-panel')
					            });
					        });
					        var companyid = $(".download-btn").attr("exportid");
					        $("#cid").val(companyid);
					        $(".company-name").html($("#companyname"+companyid).html());
			        }
			    });
				
		        
		    });
	
	function formatDateTime(timeStamp) { 
	    var date = new Date();
	    date.setTime(timeStamp);
	    var y = date.getFullYear();    
	    var m = date.getMonth() + 1;    
	    m = m < 10 ? ('0' + m) : m;    
	    var d = date.getDate();    
	    d = d < 10 ? ('0' + d) : d;    
	    var h = date.getHours();  
	    h = h < 10 ? ('0' + h) : h;  
	    var minute = date.getMinutes();  
	    var second = date.getSeconds();  
	    minute = minute < 10 ? ('0' + minute) : minute;    
	    second = second < 10 ? ('0' + second) : second;   
	    return y + '-' + m + '-' + d+' '+h+':'+minute+':'+second;    
	};  
	
	
	</script>
</body>
</html>