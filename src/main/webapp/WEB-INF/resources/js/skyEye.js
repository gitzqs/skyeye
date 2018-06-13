//显示当前系统时间
setInterval(function() {
	var now = (new Date()).toLocaleString();
	$('#current-time').text(now);
}, 1000);

// 地图demo
function demoMap() {
	$.get('js/map/china.json', function(chinaJson) {
		echarts.registerMap('china', chinaJson); // 注册地图
		var mapChart = echarts.init(document.getElementById('map-wrap'));
		var geoCoordMap = {
			'海门' : [ 121.15, 31.89 ],
			'鄂尔多斯' : [ 109.781327, 39.608266 ],
			'招远' : [ 120.38, 37.35 ],
			'舟山' : [ 122.207216, 29.985295 ],
			'浙江新华新能源有限公司' : [ 123.97, 47.33 ],
			'盐城' : [ 120.13, 33.38 ],
			'赤峰' : [ 118.87, 42.28 ],
			'青岛' : [ 120.33, 36.07 ],
			'乳山' : [ 121.52, 36.89 ],
			'金昌' : [ 102.188043, 38.520089 ],
			'泉州' : [ 118.58, 24.93 ],
			'莱西' : [ 120.53, 36.86 ],
			'日照' : [ 119.46, 35.42 ],
			'胶南' : [ 119.97, 35.88 ],
			'南通' : [ 121.05, 32.08 ],
			'拉萨' : [ 91.11, 29.97 ],
			'云浮' : [ 112.02, 22.93 ],
			'梅州' : [ 116.1, 24.55 ],
			'文登' : [ 122.05, 37.2 ],
		};
		var data = [ {
			name : '海门',
			value : 9
		}, {
			name : '鄂尔多斯',
			value : 12
		}, {
			name : '招远',
			value : 12
		}, {
			name : '舟山',
			value : 12
		}, {
			name : '浙江新华新能源有限公司',
			value : 14
		}, {
			name : '盐城',
			value : 15
		}, {
			name : '赤峰',
			value : 16
		}, {
			name : '青岛',
			value : 18
		}, {
			name : '乳山',
			value : 18
		}, {
			name : '金昌',
			value : 19
		}, {
			name : '泉州',
			value : 21
		}, {
			name : '莱西',
			value : 21
		}, {
			name : '日照',
			value : 21
		}, {
			name : '胶南',
			value : 22
		}, {
			name : '南通',
			value : 23
		}, {
			name : '拉萨',
			value : 24
		}, {
			name : '云浮',
			value : 24
		}, {
			name : '梅州',
			value : 25
		}, {
			name : '文登',
			value : 25
		} ];
		var convertData = function(data) {
			var res = [];
			for (var i = 0; i < data.length; i++) {
				var geoCoord = geoCoordMap[data[i].name];
				if (geoCoord) {
					res.push({
						name : data[i].name,
						value : geoCoord.concat(data[i].value)
					});
				}
			}
			return res;
		};

		var option = {
			backgroundColor : 'transparent', // 地图背景色
			tooltip : {
				trigger : 'item',
				formatter : function(params) {
					if (typeof (params.value)[2] == "undefined") {
						return params.name + ' </br> ' + params.value + "KPa";
					} else {
						return params.name + ' </br> ' + params.value[2]
								+ "KPa";
					}
				}
			},
			legend : {
				orient : 'vertical',
				y : 'bottom',
				x : 'right',
				data : [ 'pm2.5' ],
				textStyle : {
					color : '#fff'
				}
			},
			geo : {
				map : 'china',
				label : {
					emphasis : {
						show : false
					}
				},
				roam : true,
				itemStyle : { // 定义样式
					normal : { // 普通状态下的样式
						areaColor : 'rgba(15, 157, 251, 0.2)',
						borderColor : '#0b182a'
					},
					emphasis : { // 高亮状态下的样式
						areaColor : 'rgba(15, 157, 251, 0.5)'
					}
				}
			},
			series : [ {
				name : '公司分布',
				type : 'effectScatter',
				coordinateSystem : 'geo',
				data : convertData(data),
				showEffectOn : 'render',
				rippleEffect : {
					brushType : 'stroke'
				},
				hoverAnimation : true,
				label : {
					normal : {
						formatter : '{b}',
						position : 'right',
						show : true
					}
				},
				itemStyle : {
					normal : {
						color : '#f4e925',
						shadowBlur : 10,
						shadowColor : '#333'
					}
				},
			} ]
		};
		mapChart.setOption(option);
		var companyName = document.getElementById('company-name');
		var companyvalue = document.getElementById('company-value');
		mapChart.on('click', function eConsole(params) {
			$(this).html("");
			if (params.componentType === 'geo') {
				// 点击到省份模块上
				companyName.innerText = "";
				companyvalue.innerText = "";
			} else if (params.componentType === 'series') {
				// 点击到了标记公司上
				companyName.innerText = params.name;
				companyvalue.innerText = params.value;
			}
		});

	});
}
// 横向柱状图demo
function demoChartBar() {
	var myChart = echarts.init(document.getElementById('chartDemo'));
	// 指定图表的配置项和数据
	$
			.ajax({
				url : '/main/dosagerank',
				type : 'GET',
				data : {
					top : 5
				},
				async : true
			})
			.done(
					function(data) {
						if (data) {
							var appusage_data = [];
							var companyData = [];
							var json = JSON.parse(data);
							json.forEach(function(item) {
								appusage_data.push({
									name : item.custName,
									value : item.dosage
								});
								companyData.push(item.custName);
							});

							var option = {
								title : {
									text : '数据时间：'
											+ (new Date()).toLocaleString(),
									textStyle : {
										color : '#bcbfff',
										fontWeight : 'lighter',
										fontSize : 12
									},
									top : '4%',
									right : '2.2%'
								},
								tooltip : {},
								grid : {
									top : '15%',
									left : '5%',
									right : '10%',
									bottom : '5%',
									containLabel : true
								},
								yAxis : [ {
									type : 'category',
									data : companyData,
									axisLine : {
										show : false
									},
									axisTick : {
										show : false,
										alignWithLabel : true
									},
									axisLabel : {
										textStyle : {
											color : '#ffb069'
										}
									}
								} ],
								xAxis : [ {
									type : 'value',
									axisLine : {
										show : false
									},
									axisTick : {
										show : false
									},
									axisLabel : {
										show : false
									},
									splitLine : {
										show : false
									}
								} ],
								series : [ {
									name : '用量',
									type : 'bar',
									data : appusage_data,
									barCategoryGap : '35%',
									label : {
										normal : {
											show : true,
											position : 'insideRight',
											formatter : function(params) {
												return params.data.value
														+ '平方米';
											},
											textStyle : {
												color : '#000000' // color of
																	// value
											}
										}
									},
									itemStyle : {
										normal : {
											barBorderRadius : 3,
											color : function(params) {
												// build a color map as your
												// need.
												var colorList = [ '#f5096d',
														'#f3af59', '#0fbbfb',
														'#2d67df', '#17f2fa' ];
												return colorList[params.dataIndex]
											}
										}
									}
								} ]
							};
							// 使用刚指定的配置项和数据显示图表。
							myChart.setOption(option);
						}
					});

};

// 储罐液位1
function barAnimation1() {
	if (document.getElementsByName('liquidfill1') == null) {
		return;
	}
	
	var xxx = document.getElementsByName('liquidfill1');
	for (i = 0; i < xxx.length; i++) {
		var yyy = xxx[i];
		var chartLiquidfill = echarts.init(yyy);
		var option = {
			series : [ {
				type : 'liquidFill',
				data : [ 0.7, 0.6, 0.5 ],
				radius : '60%',
				outline : {
					show : false
				},
				backgroundStyle : {
					borderColor : '#dcdcdc',
					borderWidth : 1,
				},
				shape : 'path://M113.5,55h-85c-5,0-9,4-9,9v80.7c0,4.9,4,9,9,9h85c5,0,9-4.1,9-9V64C122.5,59,118.5,55,113.5,55z',
				label : {
					normal : {
						textStyle : {
							fontSize : 10,
							color : '#D94854',
							align : 'center',
							baseline : 'middle',
							position : 'inside'
						}
					}
				}
			} ]
		};
		chartLiquidfill.setOption(option);
	}
}
// 储罐液位2
// function barAnimation2() {
// var chartLiquidfill = echarts.init(document.getElementById('liquidfill2'));
// var option = {
// series: [{
// type: 'liquidFill',
// data: [0.3, 0.2, 0.1],
// radius: '60%',
// outline: {
// show: false
// },
// backgroundStyle: {
// borderColor: '#dcdcdc',
// borderWidth: 1,
// },
// shape:
// 'path://M113.5,55h-85c-5,0-9,4-9,9v80.7c0,4.9,4,9,9,9h85c5,0,9-4.1,9-9V64C122.5,59,118.5,55,113.5,55z',
// label: {
// normal: {
// textStyle: {
// fontSize: 10,
// color: '#D94854',
// align: 'center',
// baseline: 'middle',
// position: 'inside'
// }
// }
// }
// }]
// };
// chartLiquidfill.setOption(option);
// }
// 压力大小指针表
function barAnimation3() {
	if (document.getElementsByName('liquidfill3') == null) {
		return;
	}
	var xxx = document.getElementsByName('liquidfill3');
	for (i = 0; i < xxx.length; i++) {
		var yyy = xxx[i];
		var chartLiquidfill = echarts.init(yyy);
		var angle = [ 210, -30 ], splitNum = 8, alertVal = 70, curVal = 1670;
		var option = {
			tooltip : {
				show : false,
				formatter : "{a} <br/>{b} : {c}%"
			},
			series : [
					{
						name : '最外层环仪表盘',
						z : 3,
						type : "gauge",
						radius : '85%',
						center : [ '50%', '60%' ],
						min : 0,
						max : 4000,
						startAngle : angle[0],
						endAngle : angle[1],
						splitNumber : splitNum,
						axisLine : {
							lineStyle : {
								color : [ [ 1, "#e8e8e8" ] ],
								width : 20
							}
						},
						axisTick : {
							show : true,
							length : 8,
							splitNumber : 5,
							lineStyle : {
								color : "#128bd7",
								width : 0.5
							}
						},
						axisLabel : {
							distance : -52,
							textStyle : {
								color : "#bbb"
							}
						},
						splitLine : {
							show : true,
							length : 20,
							lineStyle : {
								color : '#128bd7',
								width : 2
							}
						},
						itemStyle : {
							normal : {
								color : "#818488",
								shadowColor : 'rgba(0, 0, 0, 0.5)',
								shadowBlur : 10
							}
						},
						detail : {
							formatter : function(param) {
								var level = '';
								if (param < 1700) {
									level = '正常'
								} else if (param < 2700) {
									level = '警惕'
								} else if (param < 3700) {
									level = '过高'
								} else if (param <= 4000) {
									level = '危险'
								} else {
									level = '暂无';
								}
								return level;
							},
							offsetCenter : [ 0, "60%" ],
							textStyle : {
								fontSize : 20,
								color : "#0fb2fb"
							}
						},
						title : {
							show : false
						},
						pointer : {
							length : '95%'
						},
						data : [ {
							name : "",
							value : curVal
						} ]
					},
					{
						name : "内环仪表盘四段颜色",
						type : "gauge",
						center : [ '50%', '60%' ],
						min : 0,
						max : 4000,
						radius : '60%',
						startAngle : angle[0],
						endAngle : angle[1],
						splitNumber : splitNum,
						axisLine : {
							lineStyle : {
								color : [ [ 0.4, '#17f2fa' ], [ 0.6, '#0fbbfb' ],
										[ 0.8, '#f3af59' ], [ 1, "#f5096d" ] ],
								width : 10
							}
						},
						axisTick : {
							show : false
						},
						axisLabel : {
							show : false
						},
						splitLine : {
							show : false,
						},
						itemStyle : {
							normal : {
								color : "transparent"
							}
						},
						pointer : {
							length : 0
						},
						detail : {
							show : false
						},
						title : {
							show : false
						},
						data : [ {
							name : "",
							value : ''
						} ]
					} ]
		};
		chartLiquidfill.setOption(option);
	}

}
// 储罐液位4
function barAnimation4() {
	if (document.getElementsByName('liquidfill4') == null) {
		return;
	}
	
	var xxx = document.getElementsByName('liquidfill4');
	for (i = 0; i < xxx.length; i++) {
		var yyy = xxx[i];
		var zzz = yyy.innerText;
		var maxzzz = "";
		var gauge_value = zzz;
		if (zzz < 10000) {
			maxzzz = 5000;//默认20%显示
		} else if (zzz >= 10000) {
			maxzzz = 11806447*100/80;//默认80%显示
		}
		
		var myRate1 = 98;
		var chartLiquidfill = echarts.init(yyy);
		option = {
			title : {
				x : "center",
				bottom : 10,
				text : '',
				textStyle : {
					fontWeight : 'normal',
					fontSize : 14,
					color : "#323232"
				},
			},
			tooltip : {
				show : true,
			},
			series : [
					{
	
						type : 'gauge',
						center : [ '50%', '60%' ], // 默认全局居中
						radius : '110%',
						splitNumber : 8, // 刻度数量
						min : 0,
						max : 80,
						startAngle : 200,
						endAngle : -20,
						axisLine : {
							show : true,
							lineStyle : {
								width : 1,
								shadowBlur : 0,
								color : [ [ 1, '#8f8f8f' ] ]
							}
						},
						axisTick : {
							show : true,
							lineStyle : {
								color : '#8f8f8f',
								width : 1
							},
							length : 8,
							splitNumber : 8
						},
						splitLine : {
							show : true,
							length : 12,
							lineStyle : {
								color : '#8f8f8f',
							}
						},
						axisLabel : {
							distance : 2,
							textStyle : {
								color : "#8f8f8f",
								fontSize : "8",
								fontWeight : "bold"
							},
							formatter : function(e) {
								switch (e + "") {
								case "10":
									return "D";
	
								case "20":
									return "C";
	
								case "30":
									return "B";
	
								case "40":
									return "BB";
	
								case "50":
									return "BBB";
	
								case "60":
									return "A";
	
								case "70":
									return "AA";
	
								case "80":
									return "AAA";
								default:
									return e;
								}
							},
							textStyle : {
								fontSize : 8,
								fontWeight : ""
							}
	
						},
						pointer : { // 仪表盘指针
							show : 0
						},
						detail : {
							show : false
						},
						data : [ {
							name : "",
							value : myRate1
						} ]
					},
					{
						startAngle : 200,
						endAngle : -20,
						name : '实际完成',
						type : 'gauge',
						center : [ '50%', '60%' ], // 默认全局居中
						radius : '35%',
						min : 0,
						max : 100,
						splitNumber : 0,
						axisLine : { // 坐标轴线
							lineStyle : {
								color : [ [ 0.66, '#dddddd' ], [ 1, '#dddddd' ] ], // 属性lineStyle控制线条样式
								width : 2
							}
						},
	
						axisLabel : { // 坐标轴小标记
							textStyle : { // 属性lineStyle控制线条样式
								fontWeight : 'bolder',
								fontSize : 16,
								color : 'rgba(30,144,255,0)',
							}
						},
						splitLine : { // 分隔线
							length : 10, // 属性length控制线长
							lineStyle : { // 属性lineStyle（详见lineStyle）控制线条样式
								width : 0,
								color : '#444'
							}
						},
						pointer : { // 分隔线 指针
							color : '#666666',
							width : 0,
							length : 230
						},
						detail : {
							show : false
						},
	
					},
					{
						name : '',
						type : 'gauge',
						startAngle : 200,
						endAngle : -20,
						radius : '75%',
						center : [ '50%', '60%' ], // 默认全局居中
	
						min : 0,
						max : maxzzz,
	
						axisLine : {
							show : false,
							lineStyle : {
								width : 10,
								shadowBlur : 0,
								color : [ [ 0.2, '#E43F3D' ], [ 0.4, '#E98E2C' ],
										[ 0.6, '#DDBD4D' ], [ 0.8, '#7CBB55' ],
										[ 1, '#9CD6CE' ] ]
							}
						},
						axisTick : {
							show : false,
	
						},
						splitLine : {
							show : false,
							length : 20,
	
						},
	
						axisLabel : {
							show : false
						},
						pointer : {
							show : true,
						},
						detail : {
							show : false,
							offsetCenter : [ 0, 0 ],
							textStyle : {
								fontSize : 30
							}
						},
						itemStyle : {
							normal : {
								color : "#323232",
	
							}
						},
						data : [ {
							name : "",
							value : Math.floor(gauge_value)
						} ]
					} ]
		};
		chartLiquidfill.setOption(option);
	}
}

function ChartDemoline(date, mydata, name) {
	window.myChart = echarts.init(document.getElementById('chartDemoline'));

	var option = {
		tooltip : {
			trigger : 'axis',
			position : function(pt) {
				return [ pt[0], '10%' ];
			}
		},
		title : {
			left : 'center',
			text : name,
		},
		legend : {
			top : 'bottom',
			data : [ '意向' ]
		},
		toolbox : {
			feature : {
				dataZoom : {
					yAxisIndex : 'none'
				},
				restore : {},
				saveAsImage : {}
			}
		},
		xAxis : {
			type : 'category',
			boundaryGap : false,
			data : date
		},
		yAxis : {
			type : 'value',
			boundaryGap : [ 0, '100%' ]
		},
		dataZoom : [
				{
					type : 'inside',
					start : 0,
					end : 10
				},
				{
					start : 0,
					end : 10,
					handleIcon : 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
					handleSize : '80%',
					handleStyle : {
						color : '#fff',
						shadowBlur : 3,
						shadowColor : 'rgba(0, 0, 0, 0.6)',
						shadowOffsetX : 2,
						shadowOffsetY : 2
					}
				} ],
		series : [ {
			name : '模拟数据',
			type : 'line',
			smooth : true,
			symbol : 'none',
			sampling : 'average',
			itemStyle : {
				normal : {
					color : 'rgb(255, 70, 131)'
				}
			},
			areaStyle : {
				normal : {
					color : new echarts.graphic.LinearGradient(0, 0, 0, 1, [ {
						offset : 0,
						color : 'rgb(255, 158, 68)'
					}, {
						offset : 1,
						color : 'rgb(255, 70, 131)'
					} ])
				}
			},
			data : mydata
		} ]
	};

	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option, true);
}

// 柱状图
function ChartDemoBar() {
	var myChart = echarts.init(document.getElementById('chartDemoBar'));
	// 指定图表的配置项和数据
	var option = {
		color : [ '#5a7bf4' ],
		tooltip : {
			trigger : 'axis',
			axisPointer : { // 坐标轴指示器，坐标轴触发有效
				type : 'shadow' // 默认为直线，可选为：'line' | 'shadow'
			}
		},
		grid : {
			left : '3%',
			right : '4%',
			bottom : '3%',
			containLabel : true
		},
		xAxis : [ {
			type : 'category',
			data : [ 'xin', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
			axisTick : {
				alignWithLabel : true
			},
			splitLine : {
				lineStyle : {
					// 使用深浅的间隔色
					type : 'dotted'
				}
			}
		} ],
		yAxis : [ {
			type : 'value'
		} ],
		series : [ {
			name : '储罐液位',
			type : 'bar',
			barWidth : '60px',
			data : [ 10, 52, 200, 334, 390, 330, 220 ],
			markPoint : {
				data : [ {
					name : '',
					value : 10,
					xAxis : 0,
					yAxis : 10
				}, {
					name : '',
					value : 52,
					xAxis : 1,
					yAxis : 52
				}, {
					name : '',
					value : 200,
					xAxis : 2,
					yAxis : 200
				}, {
					name : '',
					value : 334,
					xAxis : 3,
					yAxis : 334
				}, {
					name : '',
					value : 390,
					xAxis : 4,
					yAxis : 390
				}, {
					name : '',
					value : 330,
					xAxis : 5,
					yAxis : 330
				}, {
					name : '',
					value : 220,
					xAxis : 6,
					yAxis : 220
				}, ]
			}
		} ]
	};
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
};

// 关键词联动搜索
function initTypeahead() {
	$.typeahead({
		input : '.js-typeahead',
		order : "desc",
		source : {
			data : [ "浙江华气新能源有限公司1", "浙江华气新能源有限公司12", "浙江华气新能源有限公司3",
					"浙江华气新能源有限公司14", "浙江华气新能源有限公司5", "浙江华气新能源有限公司6",
					"浙江华气新能源有限公司7", "浙江华气新能源有限公司8", "浙江华气新能源有限公司9",
					"浙江华气新能源有限公司10", "浙江华气新能源有限公司11", "浙江华气新能源有限公司12",
					"浙江华气新能源有限公司13" ]
		},
		callback : {
			onInit : function(node) {
				// console.log('Typeahead Initiated on ' + node.selector);
			}
		}
	});
}
