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
                    <a href="/statistics/queryGraph?custid=${map.custid}"><li >柱形统计</li></a>
                    <li class="layui-this">列表统计</li>
                </ul>
                <div class="layui-tab-content layui-border-box">
                    <div class="layui-tab-item layui-show">
                        <div class="layui-row">
                            <div class="layui-col-md12">
                                <div class="back-icon"><span><a href="/statistics/datalist">返回</a></span></div>
                            </div>
                        </div>
                        <div class="layui-form layui-border-box table-box recordFrom">
                            <div class="recharge-name icon-user">${map.custonline.custname}</div>
                            <div class="tabBox layui-border-box">
                                <div class="layui-tab chart-tab">
                                    <ul class="layui-tab-title">
                                      <c:forEach var="bgmodule" items="${map.list}"  varStatus="i">
											<li <c:if test="${i.count==1}">class="layui-this" id="exportid" exportfieldname="${bgmodule.fieldname}" exportlevel="${bgmodule.id}"</c:if> value="${bgmodule.nuitname}"  onclick="funcShowData('${bgmodule.fieldname}',this);">${bgmodule.moduleName}</li>
										</c:forEach>
                                    </ul>
                                    <div class="tab-more layui-clear" style="position: relative;top: 0;">
                                        <div class="layui-input-inline">
                                            <input type="text" class="layui-input custom-btn" id="date2"
                                                   placeholder="自定义日期">
                                        </div>
                                    </div>
                                    <div class="layui-tab-content">
                                        <div class="layui-tab-item layui-show">
                                            <div class="layui-form layui-border-box table-box tableBoxSm">
                                                <div class="layui-table-body tableBox-main layui-table layui-border-box">
                                                    <table class="layui-table tm-table" cellspacing="0"
                                                           cellpadding="0"
                                                           border="0" style="table-layout: fixed">
                                                        <thead>
                                                        <tr>
                                                            <th width="218px">数据</th>
                                                            <th>单位</th>
                                                            <th>上传时间</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody id="lbtbodytr">
                                                        
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
	var custid = '${map.custid}';
	layui.use('element', function () {
        var element = layui.element;
        element.render('nav');
    });
	var starttime2 = "";
	var endtime2 = "";
    layui.use('laydate', function () {
        var laydate = layui.laydate;
        //日期范围
        
        laydate.render({
            elem: '#date2'
            , range: true
            , theme: '#5a7bf4'
           	,done: function(value, date){
   				var time = value.split(" - ")
   				if(value!=""){
   					starttime2 = time[0];
   					endtime2 = time[1];
   				}else{
   					starttime2 = "";
   					endtime2 = "";
   				}
   			    getEnterprise(1);
      		}
        });
    });
    layui.use('form', function () {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
   
 
 	window.page = 1;
    var id2 = "";
    var unitname = "";
	function funcShowData(id,obj){
		 id2 = id;
		 unitname = $(obj).attr("value");
		 getEnterprise(1);
	}
	$(document).ready(function(){
		if($("#exportid").length>0){
			id2 = $("#exportid").attr("exportfieldname"); //$("#exportid").attr("exportlevel");
			unitname = $("#exportid").attr("value");
			getEnterprise(1);
		}
		
	});
	 
	function getEnterprise(page){    
	    //初始化的时候直接为1,GetEnterprise(1)(之后数据变更,影响数据结构如:减少或者更改状态等直接直接调取GetEnterprise(dataObj.page_enterprise):刷新当前页数据) 
	    
	    $.ajax({
		      url: "/statistics/queryGraphListDataByWhere",
		      type:"post",
		      dataType:"json",
		      data: {"page":page,"custid":custid,"moduleid":id2,"starttime":starttime2,"endtime":endtime2},
		      success: function(data){
		    	  
		    	 var  sum = 0;
		    	  if (data.code == 1) {
		    		  var html = "";
		    		  sum = data.count;
		    		  for(var i = 0 ;i<data.list.length;i++){
		    			  var obj = data.list[i];
		    			  //var time = formatDateTime(obj.moduletime);
		    			  if(obj.moduletime.indexOf('.0') !== -1)
		        		  {
		        				obj.moduletime = obj.moduletime.substring(0, obj.moduletime.length - 2);
		        		  }
		    			  var moduledata = obj.moduledata;
		    			  if(moduledata==null || moduledata=="" ||moduledata=="null"){
		    				  moduledata="0";
		    			  }
		    			  html += '<tr><td>'+moduledata+'</td><td>'+unitname+'</td><td>'+obj.moduletime+'</td></tr>';
		    		  }
		    		  $("#lbtbodytr").html(html);
                     
			        }else{
			        	 $("#lbtbodytr").html("网络异常");
				        return;
			        }
		    	  
	    		  layui.use(['laypage', 'layer'], function () {
			  	        var laypage = layui.laypage
			  	            , layer = layui.layer;
			  	        //完整功能
			  	        laypage.render({
			  	            elem: 'page'
			  	            , count:sum
			  	            , layout: ['count', 'prev', 'page', 'next', 'skip']
			  	            , first: '首页'
			  	            , last: '尾页'
			  	            , curr:page
			  	            , jump: function (obj,first) {
			  	            	 window.page = obj.curr;
			  	            	 if(!first) {
			  	         			 //***第一次不执行,一定要记住,这个必须有,要不然就是死循环,哈哈
			  	                     var curr = obj.curr;
			  	   					//回调该展示数据的方法,数据展示
			  	                     getEnterprise(curr)
			  	                 }
			  	            }
			  	        });
			    	  });
		           
			       
		      },
		      error:function(error){
		    	  $("#lbtbodytr").html("网络异常");
		      }
	    });
	    
	    setTimeout(function(){getEnterprise(window.page);}, 30000);
	}

	
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