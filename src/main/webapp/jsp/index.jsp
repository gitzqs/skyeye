<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="resources" value="${pageContext.request.contextPath}/resources" />
<c:set var="application" value="${pageContext.request.contextPath}" />
<%@page isELIgnored="false"%>
<!DOCTYPE html>
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
<style type="text/css">
	/* 隐藏百度地图logo */
	.anchorBL {
		display: none;
	}
    #talkbubble {
        height: 20px;
        background: #F30D6D;
        position: relative;
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
        color: #fff;
        line-height: 20px;
        text-align: center;
        font-size: 8px;
    }

    #talkbubble:before {
        content: "";
        position: absolute;
        top: 100%;
        left: 17px;
        width: 0;
        height: 0;
        border-right: 3px solid transparent;
        border-top: 6px solid #F30D6D;
        border-left: 3px solid transparent;
    }
</style>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin container-page">
	<div class="layui-header">
		<ul class="layui-nav layui-layout-left">
			<li class="layui-nav-item  layui-this"><a href="/user/index">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></li>
			<li class="layui-nav-item"><a href="/monitor/list">数据监测</a></li>
			<li class="layui-nav-item"><a href="/service/manage">服务管理</a></li>

		</ul>		
		<div class="tianMu-logo">
			<img src="${resources}/images/login-logo.png"><span id="current-time"></span>
		</div>
		<div class="tianMu-logo">
			<span id="current-time"></span>
		</div>
		<ul class="layui-nav layui-layout-right">
			<li class="layui-nav-item"><a href="/statistics/datalist">报表统计</a></li>
			<li class="layui-nav-item"><a href="/recharge/list/query">远程充值</a></li>
			<li class="layui-nav-item"><a href="/acctmanage/query">系统设置</a></li>
		</ul>
		<ul class="layui-nav user-bar">
			<li class="layui-nav-item user-bar-item"><a href="#">超级管理员</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="javascript:;" id="password" >修改密码</a>
					</dd>
				</dl></li>
			<li class="layui-nav-item user-bar-item"><a href="/user/loginInit">退出</a>
			</li>
		</ul>
	</div>

	<div class="layui-side">
		<div class="layui-panel">
			<!-- <div class="block-title">客户统计</div> -->
			<div id="sxtj"
				 style="border-radius: 4px; position: absolute; right: 185px; top: 5px; color: #F9AA73; z-index: 10000; background: #fff; cursor: pointer; width: 70px; text-align: center; height: 30px; line-height: 30px;">上线统计</div>
			<div id="shoucang"
				 style="border-radius: 4px; position: absolute; right: 5px; top: 5px; color: #F9AA73; z-index: 10000; background: #fff; cursor: pointer; width: 70px; text-align: center; height: 30px; line-height: 30px;">线路列表</div>
			<div id="gxbz"
				 style="border-radius: 4px; position: absolute; right: 95px; top: 5px; color: #F9AA73; z-index: 10000; background: #fff; cursor: pointer; width: 70px; text-align: center; height: 30px; line-height: 30px;">管线标注</div>
			<ul id="shoucangUl"
				style="background: #666666; opacity: 0.8; border-radius: 4px; position: absolute; right: 185px; top: -30px; z-index: 10000; color: #ffff;">
			</ul>
			<div id="map" class="chartBlock layui-border-box">
				<!-- <div class="map-top layui-clear">
                    <div class="map-top-left">
                        <a href="" id="company-name">浙江华气新能源有限公司</a>
                    </div>
                    <div class="map-top-right" id="">
                        <span class="num">0</span> <span class="num">3</span> <span
                            class="num">3</span> <span class="num">3</span>
                    </div>
                </div> -->
				<div id="map-wrap" class="mapBlock"></div>
			</div>
			<span class="title-line"></span> <span class="radius-leftTop"></span>
			<span class="radius-rightTop"></span> <span
				class="radius-leftBottom"></span> <span class="radius-rightBottom"></span>
		</div>
	</div>

	<div class="layui-body">
		<!-- 内容主体区域 -->
		<div class="panelMin-layout">
				<div class="layui-panel panelMin">
					<div class="block-title">用量排名</div>
					<div class="chartBlock-min layui-border-box">
						<div id="chartDemo" class="charts layui-border-box"></div>
						<a href="/main/viewDosageTotal" style="position: absolute;right:20px;top: 20px;color: #fff">全部排名&gt;&gt;</a>
					</div>
					<span class="title-line"></span> <span class="radius-leftTop"></span>
					<span class="radius-rightTop"></span> <span
						class="radius-leftBottom"></span> <span class="radius-rightBottom"></span>
				</div>
			</div>

		<div class="panelMin-layout" id="alarmNotify">
			<div class="layui-panel panelTable">
				<div class="block-title">报警通知</div>
				<div class="table-block layui-border-box" id="table-cont">
					<table class="layui-table table-warning indexTable"
						   style="border-collapse: separate; border-spacing: 0px 10px;">
                        <thead>
                            <tr>
                                <th>客户名称</th>
                                <th>模块名称</th>
                                <th>报警描述</th>
                                <th>报警时间</th>
                            </tr>
                        </thead>
                        <tbody>
						<tr v-for="(alarm,index) in alarms">
							<td>{{alarm.custname}}</td>
							<td>{{alarm.modulName}}</td>
							<td>{{alarm.description}}</td>
							<td>{{alarm.creattime}}</td>
						</tr>
                        </tbody>
					</table>
				</div>
				<span class="title-line"></span> <span class="radius-leftTop"></span>
				<span class="radius-rightTop"></span> <span
					class="radius-leftBottom"></span> <span class="radius-rightBottom"></span>
			</div>
		</div>
	</div>
</div>
<!--弹窗-->
<%@include file="/jsp/common/updateLPwd.jsp"%>
<!--end 弹窗-->
<script src="${resources}/js/jquery.min.js"></script>
<script src="${resources}/js/common.js"></script>
<script src="${resources}/js/vue.min.js"></script>
<script src="${resources}/layui.js"></script>
<script src="${resources}/js/echarts.min.js"></script>
<script src="${resources}/js/skyEye.js"></script>
<script src="${resources}/js/platform.js"></script>
<script>
    layui.use('element', function() {
        var element = layui.element;
        element.render('nav');
    });
</script>
	<script type="text/javascript">
		function rediretMonitorDetail(deviceid){
			window.location.href = "/monitor/detail/" + deviceid;
		}
	</script>
	<script type="text/javascript">
	window.IsFirst = true;
	
	var vmalarmNotify = new Vue({
    el: "#alarmNotify",
    data: {
    	alarms:[],
    	pageIndex: 1,
    	pageSize: 6
    },
    methods: {
        getAlarms: function(){
        	var that = this;
        	$.ajax({
		            url: '/main/alarmList',
		            type: 'POST',
		            data: {pageIndex: that.pageIndex, pageSize: that.pageSize},
		            async: true
		        }).done(function(data){
		        	if(data && data.code === 1){
		        		data.reportlist.forEach(function(item){
		        			if(item.creattime.indexOf('.0') !== -1)
		        			{
		        				item.creattime = item.creattime.substring(0, item.creattime.length - 2);
		        			}
		        		});
		        		if(data.reportlist.length > 0 && !window.IsFirst)
		        		{
		        			if(that.alarms.length > 0)
		        			{
		        				if(new Date(data.reportlist[0].creattime).getTime() > new Date(that.alarms[0].creattime).getTime()){
		        					alarm_pop(data.reportlist[0]);
		        				}
		        			}else {
		        				alarm_pop(data.reportlist[0]);
		        			}
		        		}
		        		
		        		that.alarms = data.reportlist;
		        		window.IsFirst = false;
		        	}
		        });
		    setTimeout(that.getAlarms, 30000);
        }
    },
    mounted: function(){
    	this.getAlarms();
    }
});
	</script>
	<script>
        function pop_init(title, content) {
            //取当前浏览器窗口大小  
            var windowWidth = $(document).width();
            var windowHeight = $(document).height();
            //弹窗的大小  
            var weight = 320;
            var height = 240;
            $("body").append(
                "<div id='pop_div'style='display:none;color:#f00;position:absolute;background:#ffffff;border:1px solid #e0e0e0;z-index:9999;width:" + weight + "px;height:" + height + "px;top:" + (windowHeight - height - 10) + "px;left:" + (windowWidth - weight - 10) + "px'>" +
                "<div style='line-height:32px;background:#ffffff;border-bottom:1px solid #e0e0e0;font-size:14px;padding:0 0 0 10px;'>" +
                "<div style='float:left;'><b>" + title + "</b></div><div style='float:right;cursor:pointer;'><b onclick='pop_close()' style='font-size:20px'>×</b></div>" +
                "<div style='clear:both'></div>" +
                "</div>" +
                "<div id='popContent'>" +
                content +
                "</div>" +
                "</div>"
            );
        }

        function pop_close() {
            $('#pop_div').fadeOut(400);
        }
        
        $(document).ready(function() {
            pop_init("报警信息提示", "");   //<ul><li>sss</li><li>sss</li></ul>
            //$('#pop_div').fadeIn(400);
        });
        
        function alarm_pop(alarm){
        	if(alarm.steelPhone.indexOf('网页弹窗') === -1){  //没设置网页弹窗
        		return;
        	}
        	if($('#pop_div')[0].style.display !== 'none'){
        		$('#pop_div').fadeOut(0);
        	}
        	var msg ='<ul><li>客户名称：'+ alarm.custname +'</li><li>模块名称：'+ alarm.modulName +'</li><li>报警描述：'+ alarm.description +'</li><li>报警时间：'+ alarm.creattime +'</li></ul>';
        	$("#popContent").html(msg);
        	$('#pop_div').fadeIn(400);
        }
    </script>
    <script type="text/javascript">
    window.custNames = [];
    window.yestDosages = [];
    window.todayDosages = [];
    $(function() {
	var chartOption;
	var chartDemo;

	function getRank() {
		chartOption = {
			tooltip: {
				trigger: 'axis',
				axisPointer: {
					type: 'shadow'
				}
			},
			color: ['#F5096d', '#0fbbfb'],
			legend: {
				textStyle: {
					color: '#fff'
				},
				data: ['昨日用量', '今日用量']
			},
			grid: {
				left: '70',
				right: '60',
				top: '20',
				bottom: '10'
			},
			xAxis: {
				type: 'value',
				name: '',
				axisLabel: {
					show: false
				},
				axisLine: {
					show: false
				},
				axisTick: {
					show: false
				},
				splitLine: {
					show: false
				},
			},
			yAxis: {
				type: 'category',
				inverse: true,
				axisLine: {
					show: false
				},
				axisTick: {
					show: false
				},
				splitLine: {
					show: false
				},
				data: window.custNames,
				axisLabel: {
					color: '#fff',
					interval: 0,
					formatter: function(e) {
						if (e.length > 4) {
							/* var myArray = e.split("");
							myArray.splice(5, 0, "\n");
							myArray.splice(11, 0, "\n");
							return myArray.join(""); */
							return e.substring(0, 5) +'\n'+'...';
						} else {
							return e;
						}
					}
				}
			},
			series: [{
				name: '昨日用量',
				type: 'bar',
				barWidth: 16,
				label: {
					normal: {
						show: true,
						position: 'right',
						formatter: "{c}立方",
						textStyle: {
							color: '#fff'
						}
					}
				},
				itemStyle: {
                    normal: {
                        barBorderRadius: 6
                    }
                },
				data: window.yestDosages,
			}, {
				name: '今日用量',
				type: 'bar',
				barWidth: 16,
				label: {
					normal: {
						show: true,
						position: 'right',
						formatter: "{c}立方",
						textStyle: {
							color: '#fff'
						}
					}
				},
				itemStyle: {
                    normal: {
                        barBorderRadius: 6
                    }
                },
				data: window.todayDosages
			}]
		};
		chartDemo = echarts.init(document.getElementById("chartDemo"));
		chartDemo.setOption(chartOption);
	}
	
	var yest = new Date(new Date().getTime() - 24 * 60 * 60 * 1000);
    var yestDate = getFormatDate(yest);
    var yestStartTime = yestDate +" 06:00:00";
    var yestEndTime = yestDate +" 17:59:59";
    var todayStartTime = getFormatDate(new Date()) +" 06:00:00";
    var todayEndTime = getFormatDateTime(new Date());
   	$.ajax({
	    url: '/main/dosagerank',
	    type: 'POST',
	    data: {
	    	'pageIndex': 1, 'pageSize': 5,
	    	yestStartTime: yestStartTime, yestEndTime: yestEndTime,
	    	todayStartTime: todayStartTime, todayEndTime: todayEndTime
	    },
	    async: true
	}).done(function(data){
		if(data){
			data.reportlist.forEach(function(item){
				window.custNames.push(item.custName);
				window.yestDosages.push(parseInt(item.yesterdayDosage));
				window.todayDosages.push(parseInt(item.todayDosage));
			});
			
			getRank();
		}
	});	
	
});
    </script>
    

<script type="text/javascript" src="${resources}/js/map/baidu/getscript.js"></script>
<!-- baiduMapStyle.js在baidu.js之前调用 -->
<script type="text/javascript" src="${resources}/js/map/baidu/baiduMapStyle.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager.js"></script>
<script type="text/javascript" src="${resources}/js/map/baidu/baidu.js"></script>

</body>
</html>