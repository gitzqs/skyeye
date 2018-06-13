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
    <div class="layui-mainBady layui-border-box" id="reportChart">
        <div class="report-block">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li class="layui-this">柱形统计</li>
                    <a href="/statistics/queryGraphList?custid=${map.custid}"><li>列表统计</li></a>
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
                                    <ul class="layui-tab-title" id="k-line">
                                    	<c:forEach var="bgmodule" items="${map.list}"  varStatus="i">
											<li <c:if test="${i.count==1}">class="layui-this" id="exportid" exportlevel="${bgmodule.id}"</c:if> value="${bgmodule.fieldname}"  onclick="funcShowData('${bgmodule.fieldname}',this);">${bgmodule.moduleName}</li>
										</c:forEach>
										<div class="tab-more" style="z-index: 10;">
	                                        <div class="layui-input-inline">
	                                            <input type="text" class="layui-input custom-btn" id="date1"
	                                                   placeholder="自定义日期">
	                                        </div>
	                                    </div>
                                    </ul>
                                    
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
                                                             class="chartDemoline layui-border-box" style="margin: 30px 30px 0;width: auto"></div>
                                                    </div>
                                                    <div class="layui-tab-item">
                                                        <div id="chartDemoBar"
                                                             class="chartDemoline layui-border-box"></div>
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
	var custid = '${map.custid}';
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
    var starttime = "";
	var endtime = "";
   	window.deviceData = [];
    window.date = [];
    window.mydata = [];
    window.mycount = 10000;

    window.type = '';
    var name = '';
    layui.use('laydate', function () {
        var laydate = layui.laydate;
        //日期范围
        laydate.render({
            elem: '#date1'
            , range: true
            , theme: '#5a7bf4'
            , done: function(value, date, endDate){
            	var time = value.split(" - ")
   				if(value!=""){
   					starttime = time[0] + ' 00:00:00';
   					endtime = time[1]  + ' 23:59:59';
   				}else{
   					starttime = "";
   					endtime = "";
   				}
            	window.deviceData = [];
            	window.date = [];
            	window.mydata = [];
            	getDeviceData();
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
    var status = 0;
    $(".tabToggle").click(function () {
        if ($(this).val() == 1) {
        	status = 1;
            ChartDemoBar1();//第二个tab图表初始化
        }else{
        	status = 0;
        	ChartDemoline1();
        }
    });
    
    function getKlineChart(){
    	window.date = [];   //先清空
   		window.mydata = [];
   		window.ymin = 0;
   		window.ymax = 0;
    	window.deviceData.forEach(function(item, index){
   				window.date.push(item.reqTime.substring(0, item.reqTime.length - 2));
   				window.mydata.push(item["data"]=="null"?0:item["data"]);
   				var tmp = (item["data"]=="null" ? 0 : parseFloat(item["data"]));
   				if(index === 0){  //先赋值为第一个
   					window.ymin = tmp;
   					window.ymax = tmp;
   				}
   				if(tmp > window.ymax){
   					window.ymax = tmp;
   				}
   				if(tmp < window.ymin){
   					window.ymin = tmp;
   				}
	   		});
    	
    	if(window.date.length === 0 || window.mydata.length === 0) {
    		window.myChart && window.myChart.clear();
    		layer.msg('对不起，无数据');
    		return;
    	}
    	if(status==0){
    		ChartDemoline1( );
    	}else{
    		 ChartDemoBar1();//第二个tab图表初始化
    	}
    }
    
    function getDeviceData(){
	    layui.use('layer', function () {
	        var layer = layui.layer;
	        window.index = layer.load(1);
		       	$.ajax({
			            url: '/statistics/queryModuleData',
			            type: 'POST',
			            data: {"fieldname": window.type,"custid":custid,"starttime":starttime,"endtime":endtime, "top":window.mycount},
			            async: true
			        }).done(function(data){
			        	layer.close(window.index); 
			        	if(data && data.code === 1){
			        		var json = data.reportlist;
			        		window.deviceData = json;
		        			getKlineChart();
			        }
			    });
	    });
    }
    $(function(){
    	if($("#exportid").length>0){
			type = $("#exportid").attr("value");
			name = $("#exportid").text();
			getDeviceData();
		}
    });
    function funcShowData(type,obj){
    	window.type = type;
		name = $(obj).text();
		getDeviceData();
    }
    function ChartDemoline1() {
    	window.myChart && window.myChart.clear();
    	window.myChart = echarts.init(document.getElementById('chartDemoline'));

    	var option = {
    	    tooltip: {
    	        trigger: 'axis',
    	        position: function (pt) {
    	            return [pt[0], '10%'];
    	        }
    	    },
    	    title: {
    	        left: 'center',
    	        text: name,
    	    },
    	    legend: {
    	        top: 'bottom',
    	        data:['意向']
    	    },
    	    toolbox: {
    	        feature: {
    	            dataZoom: {
    	                yAxisIndex: 'none'
    	            },
    	            restore: {},
    	            saveAsImage: {}
    	        }
    	    },
    	    xAxis: {
    	        type: 'category',
    	        boundaryGap: false,
    	        data: window.date
    	    },
    	    yAxis: {
    	        type: 'value',
    	        boundaryGap: [0, '100%'],
    	        min: window.ymin,
    	        max: window.ymax
    	    },
    	    dataZoom: [{
    	        type: 'inside',
    	        start: 0,
    	        end: 100
    	    }, {
    	        start: 0,
    	        end: 10,
    	        handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
    	        handleSize: '80%',
    	        handleStyle: {
    	            color: '#fff',
    	            shadowBlur: 3,
    	            shadowColor: 'rgba(0, 0, 0, 0.6)',
    	            shadowOffsetX: 2,
    	            shadowOffsetY: 2
    	        }
    	    }],
    	    series: [
    	        {
    	            name:name,
    	            type:'line',
    	            smooth:true,
    	            symbol: 'none',
    	            sampling: 'average',
    	            itemStyle: {
    	                normal: {
    	                    color: 'rgb(255, 70, 131)'
    	                }
    	            },
    	            areaStyle: {
    	                normal: {
    	                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
    	                        offset: 0,
    	                        color: 'rgb(255, 158, 68)'
    	                    }, {
    	                        offset: 1,
    	                        color: 'rgb(255, 70, 131)'
    	                    }])
    	                }
    	            },
    	            data: window.mydata
    	        }
    	    ]
    	};
    	
    	// 使用刚指定的配置项和数据显示图表。
    	myChart.setOption(option, true);
    }

    //柱状图
    function ChartDemoBar1() {
    	window.myChart && window.myChart.clear();
    	window.myChart = echarts.init(document.getElementById('chartDemoBar'));
        var option = {
        	    backgroundColor: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{

    	                        // 0% 处的颜色
    	                        offset: 0, color: '#71cbf5'  },
    	                        {

    	                            // 100% 处的颜色
    	                            offset: 1, color: '#38b3ec'
    	                        }], false),
    							backgroundColor:'rgba(128, 128, 128, 0)', //rgba设置透明度0.1
        	    tooltip: {
        	        trigger: 'axis',
        	        axisPointer: {
        	            type: 'shadow'
        	        }
        	    },
        	    title: {
        	        left: 'center',
        	        text: name,
        	    },
        	    xAxis: {
        	        type: 'category',
        	        data: window.date,
        	        axisLine: {
        	            show: false
        	        },
        	        axisTick: {
        	            show: false
        	        },
        	        axisLabel: {
        	            textStyle: {
        	                color: '#000'
        	            }
        	        },
        	        z: 10
        	    },
        	    yAxis: {
        	        show:false,
        	        splitLine: {show: false},
        	        axisLine: {
        	            show: false
        	        },
        	        axisTick: {
        	            show: false
        	        },
        	        offset: 10,
        	        min: window.ymin,
    	       		max: window.ymax
        	    },
        		dataZoom: [
        		{
        			show: true,
        			realtime: true,
        			start: 0,
        			end: 100
        		},
        		{
        			type: 'inside',
        			realtime: true,
        			start: 0,
        			end: 100
        		}
        		],
        	    series: [
        	        {
        				name:name,
        	            show:false,
        	            type: 'bar',
        	            data: window.mydata,
        	            barGap: '10%',
        	            smooth: true,
        	            label: {
        	                normal: {
        	                    
        	                    barBorderRadius:0,
        	                    barWidth:10,
        	                    borderWidth:0,

        	                }

        	            },
        	            itemStyle: {
        	                emphasis: {
        	                    barBorderRadius: 0
        	                },
        	                normal: {
        	                    barBorderRadius: 0,

        	                }
        	            }
        	        }
        	    ]
        	};
        	myChart.setOption(option);
    };
  
</script>
</body>
</html>