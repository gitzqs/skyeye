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
            <li class="layui-nav-item layui-this"><a href="/statistics/datalist">报表统计</a></li>
            <li class="layui-nav-item"><a href="/recharge/list/query">远程充值</a></li>
            <li class="layui-nav-item"><a href="/acctmanage/query">系统设置</a></li>
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
    <div class="layui-mainBady layui-border-box" id="reportChart">
        <div class="report-block">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li class="layui-this">柱形统计</li>
                    <li>列表统计</li>
                </ul>
                <div class="layui-tab-content layui-border-box">
                    <div class="layui-tab-item layui-show">
                        <div class="layui-row">
                            <div class="layui-col-md12">
                                <div class="back-icon"><span>返回</span></div>
                            </div>
                        </div>
                        <div class="layui-form layui-border-box table-box recordFrom">
                            <div class="recharge-name icon-user">浙江新华新能源有限公司</div>
                            <div class="tabBox layui-border-box">
                                <div class="layui-tab chart-tab">
                                    <ul class="layui-tab-title" id="k-line">
                                        <li value="cgyw" class="layui-this">储罐液位</li>
                                        <li value="cgyl">储罐压力</li>
                                        <li value="ckwd">出口温度</li>
                                        <li value="ckyl">出口压力</li>
                                        <li value="hjwd">环境温度</li>
                                        <li value="rqbj1">燃气报警1</li>
                                        <li value="rqbj2">燃气报警2</li>
                                        <li value="rqbj3">燃气报警3</li>
                                        <li value="rqbj4">燃气报警4</li>
                                        <li value="lljwd">流量计温度</li>
                                        <li value="lljyl">流量计压力</li>
                                        <li value="lljssll">流量计瞬时流量</li>
                                        <li value="lljljll">流量计累计流量</li>
                                        <li value="icksyl">ic卡剩余量</li>
                                        <li value="ickljcz">ic卡累计充值</li>
                                        <li value="ickczl">ic卡充值量</li>
                                    </ul>
                                    <div class="tab-more" style="z-index: 10;">
                                        <div class="layui-input-inline">
                                            <input type="text" class="layui-input custom-btn" id="date1"
                                                   placeholder="自定义日期">
                                        </div>
                                    </div>
                                    <div class="layui-tab-content">
                                        <div class="layui-tab-item layui-show">
                                            <div class="layui-tab view-tab">
                                                <ul class="layui-tab-title view-tab-title">
                                                    <li class="layui-this">
                                                        <label><i class="icon iconfont icon-tubiaozhexiantu"></i>
                                                            <input lay-ignore class="tabToggle hide-panel" type="radio"
                                                                   name="tabToggle" value="0"/></label></li>
                                                    <li><label><i class="icon iconfont icon-zhuzhuangtu"></i>
                                                        <input lay-ignore class="tabToggle hide-panel" type="radio"
                                                               name="tabToggle" value="1"/></label></li>
                                                </ul>
                                                <div class="layui-tab-content view-tab-content">
                                                    <div class="layui-tab-item layui-show">
                                                        <div id="chartDemoline"
                                                             class="chartDemoline layui-border-box"></div>
                                                    </div>
                                                    <div class="layui-tab-item">
                                                        <div id="chartDemoBar"
                                                             class="chartDemoline layui-border-box"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- <div class="layui-tab-item">内容2</div>
                                        <div class="layui-tab-item">内容3</div>
                                        <div class="layui-tab-item">内容4</div>
                                        <div class="layui-tab-item">内容5</div>
                                        <div class="layui-tab-item">内容6</div>
                                        <div class="layui-tab-item">内容7</div>
                                        <div class="layui-tab-item">内容8</div>
                                        <div class="layui-tab-item">内容9</div>
                                        <div class="layui-tab-item">内容10</div>
                                        <div class="layui-tab-item">内容11</div>
                                        <div class="layui-tab-item">内容12</div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="layui-tab-item">
                        <div class="layui-row">
                            <div class="layui-col-md12">
                                <div class="back-icon"><span>返回</span></div>
                            </div>
                        </div>
                        <div class="layui-form layui-border-box table-box recordFrom">
                            <div class="recharge-name icon-user">浙江新华新能源有限公司</div>
                            <div class="tabBox layui-border-box">
                                <div class="layui-tab chart-tab">
                                    <ul class="layui-tab-title">
                                        <li class="layui-this">储罐液位1</li>
                                        <li>储罐液位2</li>
                                        <li>储罐液位3</li>
                                        <li>储罐液位4</li>
                                        <li>储罐液位5</li>
                                        <li>储罐液位6</li>
                                        <li>储罐液位7</li>
                                        <li>储罐液位8</li>
                                        <li>储罐液位9</li>
                                        <li>储罐液位10</li>
                                        <li>储罐液位11</li>
                                        <li>储罐液位12</li>
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
                                                            <th width="218px">模块名称</th>
                                                            <th width="218px">模块数据</th>
                                                            <th>模块单位</th>
                                                            <th>数据时间</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td><a href="dataMonitoring-chart.html">储罐液化</a>
                                                            </td>
                                                            <td>5555.90</td>
                                                            <td>毫米</td>
                                                            <td>2017-10-22&nbsp;12:12:12</td>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="dataMonitoring-chart.html">储罐液化</a>
                                                            </td>
                                                            <td>5555.90</td>
                                                            <td>毫米</td>
                                                            <td>2017-10-22&nbsp;12:12:12</td>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="dataMonitoring-chart.html">储罐液化</a>
                                                            </td>
                                                            <td>5555.90</td>
                                                            <td>毫米</td>
                                                            <td>2017-10-22&nbsp;12:12:12</td>
                                                        </tr>
                                                        <tr>
                                                            <td><a href="dataMonitoring-chart.html">储罐液化</a>
                                                            </td>
                                                            <td>5555.90</td>
                                                            <td>毫米</td>
                                                            <td>2017-10-22&nbsp;12:12:12</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="layui-table-tool tableBox-footer">
                                                    <div id="page">
                                                        <div class="layui-box layui-laypage layui-laypage-default"
                                                             id="layui-laypage-1"><span class="layui-laypage-count">共 100 条</span><a
                                                                href="javascript:;"
                                                                class="layui-laypage-prev layui-disabled"
                                                                data-page="0">上一页</a><span
                                                                class="layui-laypage-curr"><em
                                                                class="layui-laypage-em"></em><em>1</em></span><a
                                                                href="javascript:;" data-page="2">2</a><a
                                                                href="javascript:;" data-page="3">3</a><a
                                                                href="javascript:;" data-page="4">4</a><a
                                                                href="javascript:;" data-page="5">5</a><span
                                                                class="layui-laypage-spr">…</span><a
                                                                href="javascript:;"
                                                                class="layui-laypage-last"
                                                                title="尾页"
                                                                data-page="10">尾页</a><a
                                                                href="javascript:;" class="layui-laypage-next"
                                                                data-page="2">下一页</a><span
                                                                class="layui-laypage-skip">到第<input
                                                                type="text" min="1" value="1" class="layui-input">页<button
                                                                type="button"
                                                                class="layui-laypage-btn">GO</button></span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-tab-item">内容2</div>
                                        <div class="layui-tab-item">内容3</div>
                                        <div class="layui-tab-item">内容4</div>
                                        <div class="layui-tab-item">内容5</div>
                                        <div class="layui-tab-item">内容6</div>
                                        <div class="layui-tab-item">内容7</div>
                                        <div class="layui-tab-item">内容8</div>
                                        <div class="layui-tab-item">内容9</div>
                                        <div class="layui-tab-item">内容10</div>
                                        <div class="layui-tab-item">内容11</div>
                                        <div class="layui-tab-item">内容12</div>
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
<div class="export-panel hide" style="display: none;" id="export-panel">
    <div class="export-panel-title export-icon" style="cursor: move;">导出数据</div>
    <div class="export-panel-content">
        <form class="layui-form" action="">
            <div class="company-name">浙江华气新能源有限公司</div>
            <div class="export-date">
                <div class="layui-inline">
                    <label class="layui-form-label">日期范围</label>
                    <div class="layui-input-inline">
                        <input type="text" class="layui-input" id="test6" placeholder=" - ">
                    </div>
                </div>
            </div>
            <div class="export-module">
                <label class="layui-form-label">选择模块</label>
                <div class="layui-input-inline">
                    <table>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="写作" lay-skin="primary"
                                       checked></td>
                        </tr>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="发呆" lay-skin="primary">
                            </td>
                        </tr>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="写作" lay-skin="primary"
                                       checked></td>
                        </tr>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="发呆" lay-skin="primary">
                            </td>
                        </tr>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="写作" lay-skin="primary"
                                       checked></td>
                        </tr>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="发呆" lay-skin="primary">
                            </td>
                        </tr>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="写作" lay-skin="primary"
                                       checked></td>
                        </tr>
                        <tr>
                            <td><input class="tm-checkbox" type="checkbox" name="" title="发呆" lay-skin="primary">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="export-btn">
                <button class="layui-btn layui-btn-warm">导&nbsp;&nbsp;&nbsp;出</button>
            </div>
        </form>
    </div>
</div>
<!--end 弹窗-->
<!--弹窗-->
<%@include file="/jsp/common/updateLPwd.jsp"%>
<!--end 弹窗-->
<script src="${resources}/js/jquery.min.js"></script>
<script src="${resources}/js/vue.min.js"></script>
<script src="${resources}/layui.js"></script>
<script src="${resources}/js/echarts.min.js"></script>
<script src="${resources}/js/jquery.typeahead.js"></script>
<script src="${resources}/js/skyEye.js"></script>
<script src="${resources}/js/platform.js"></script>
<script>
	var devId = '${requestScope.deviceid}';
	window.startDate = '';
	window.endDate = '';
	
    layui.use('element', function () {
        var element = layui.element;
        element.render('nav');
    });
    
    function getDateString(date)
    {
    	var month = (date.month < 10 ? '0'+date.month : date.month);
    	var day = (date.date < 10 ? '0' + date.date : date.date);
    	return [date.year, month, day].join('-');
    }
    
    layui.use('laydate', function () {
        var laydate = layui.laydate;
        //日期范围
        laydate.render({
            elem: '#date1'
            , range: true
            , theme: '#5a7bf4'
            , done: function(value, date, endDate){
		        window.startDate = getDateString(date) +' 00:00:00';
		        window.endDate = getDateString(endDate) +' 23:59:59';
		        var $cur = $('#k-line li.layui-this');
		        getDeviceData($cur.attr('value'), $cur.text(), window.startDate, window.endDate);
	      }
        });
        laydate.render({
            elem: '#date2'
            , range: true
            , theme: '#5a7bf4'
            , done: function(value, date, endDate){
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
    //ChartDemoline();
    $(".tabToggle").click(function () {
        if ($(this).val() == 1) {
            ChartDemoBar();//第二个tab图表初始化
        }
    });
    
    window.deviceData = [];
    window.date = [];
    window.mydata = [];
    
    function getKlineChart(type, name ){
    	window.date = [];   //先清空
   		window.mydata = [];
    	if(window.startDate && window.endDate){
    		var startTime = new Date(window.startDate).getTime();
	    	var endTime = new Date(window.endDate).getTime(); 
	   		window.deviceData.forEach(function(item){
	   			var reqTime = new Date(item.reqTime).getTime();
	   			if(reqTime >= startTime && reqTime <= endTime){
	   				window.date.push(item.reqTime);
	   				window.mydata.push(item[type]);
	   			}
	   		});
    	}
    	else{
    		window.deviceData.forEach(function(item){
   				window.date.push(item.reqTime);
   				window.mydata.push(item[type]);
	   		});
    	}
    	
    	if(window.date.length === 0 || window.mydata.length === 0) {
    		window.myChart && window.myChart.clear();
    		layer.msg('对不起，您选择的时间范围无数据');
    		return;
    	}
  		ChartDemoline(window.date, window.mydata, name);
    }
    
    function getDeviceData(type, name, startTime, endTime){
	    layui.use('layer', function () {
	        var layer = layui.layer;
	        if(window.deviceData.length == 0){  //首次
	    		window.index = layer.load(1);
		       	$.ajax({
			            url: '/main/devdetail',
			            type: 'GET',
			            data: {devId: devId},
			            async: true
			        }).done(function(data){
			        	layer.close(window.index); 
			        	if(data){
			        		var json = JSON.parse(data);
			        		window.deviceData = json;
		        			getKlineChart(type, name);
			        }
			    });
	    	}
	    	else{
	    		getKlineChart(type, name);
	    	}
	    });
    }
    
    $(function(){
    	getDeviceData('cgyw', '储罐液位');
    	
    	$('#k-line').on('click', 'li', function(e){
    		var target = e.target || e.srcElement;
    		var type = $(target).attr('value');
    		var name = $(target).text();
    		getDeviceData(type, name);
    	});
    });
    
    
     /* var vmreportChart = new Vue({
    el: "#reportChart",
    data: {
    	deviceData:[]
    },
    methods: {
        getDeviceData: function(){
        	var that = this;
        	$.ajax({
		            url: '/main/devdetail',
		            type: 'GET',
		            data: {devId: devId},
		            async: true
		        }).done(function(data){
		        	if(data){
		        		var json = JSON.parse(data);
		        		that.deviceData = json;
		        		Vue.nextTick(function(){    //vue绑定完数据layui再渲染
		        			setTimout(function(){
		        				layui.use('element', function() {
							        var element = layui.element;
							        element.render('nav');
							    });
							    ChartDemoline();
		        			}, 500);
			        	});
		        }
		    });
        }
    },
    mounted: function(){
    	this.getDeviceData();
    }
}); */
</script>
</body>
</html>