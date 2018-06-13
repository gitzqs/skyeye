(function() {
	var myCompOverlayCache = [];
	// 百度地图API功能
	var map = new BMap.Map("map", {
		enableMapClick : false
	}); // 创建Map实例
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 11); // 初始化地图,设置中心点坐标和地图级别

	map.enableScrollWheelZoom(true); // 开启鼠标滚轮缩放

	map.setMapStyle({
		styleJson : baiduMapStyle
	});

	var top_left_navigation = new BMap.NavigationControl({
		anchor : BMAP_ANCHOR_TOP_LEFT
	}); // 左上角，添加默认缩放平移控件
	// 添加控件和比例尺
	map.addControl(top_left_navigation);

	var drawingManagerCache = [];
	// 依赖http://api.map.baidu.com/library/DrawingManager/1.4/src/DrawingManager.js
	var myDrawingManagerObject = new BMapLib.DrawingManager(map, {
		isOpen : false,
		polylineOptions : {
			strokeColor : "#D67F31",
			strokeWeight : 2
		}
	});
	myDrawingManagerObject.addEventListener('polylinecomplete', function(e) {
		// 全局变量数据保存划线
		drawingManagerCache.push(e);

		var ia = e.ia;
		var polylineDatas = [];

		for ( var o in ia) {
			polylineDatas.push([ ia[o].lng, ia[o].lat ])
		}

		var storageKey = 'gxDatas' + Math.floor(Math.random() * 100);
		layui.use([ 'layer' ], function() {
			var layer = layui.layer;

			layer.open({
				title : [ '新增管线', "background:#5A7BF4;color:#fff;" ],
				area : '400px',
				content : '<div>管线名称：<input id="gxmc" class="layui-input" /></div>' + '<div>管线备注：<textarea id="gxbeiz" class="layui-textarea"></textarea></div>',
				closeBtn : 2,
				// 按钮
				btn : [ '取消', '保存' ],
				btn1 : function(index, layero) {
					// 清除划线
					removeSomeOverlays(drawingManagerCache);
					layer.closeAll();
				},
				btn2 : function(index, layero) {
					// console.log(polylineDatas)
					// polylineDatas的数据格式
					// [[116.67536,40.006141],[116.623618,39.861852],[116.432746,39.840581]]
					var gxDatas = {
						"user" : "superadmin",
						"gxmc" : $("#gxmc").val(),
						"gxbz" : $("#gxbeiz").val(),
						"geometry" : polylineDatas
					};
					// 进行存库操作，此处暂时存到localStorage，后续需要开发人员进行相应的存库ajax操作
					sessionStorage.setItem(storageKey, JSON.stringify(gxDatas));

					// 后续代码【需要】写在保存的ajax回调中
					layer.msg('保存成功！');
				},
				cancel : function() {
					// 清除划线
					removeSomeOverlays(drawingManagerCache);
				}
			});
		});
	});
	// 标线
	$("#gxbz").click(function() {
		// 绘制管线前先清空之前绘制
		removeSomeOverlays(drawingManagerCache);

		myDrawingManagerObject.open();
		myDrawingManagerObject.setDrawingMode(BMAP_DRAWING_POLYLINE);
	})

	var polylineCache = [];
	$("#shoucang").click(
			function() {
				var str = '';
				if ($('#shoucangUl').html().trim() == "") {
					for (var i = 0; i < sessionStorage.length; i++) {
						var seVal = JSON.parse(sessionStorage.getItem(sessionStorage.key(i)));
						str += "<li style=\"text-align:left;padding-left:10px\">" + "<input type=\"radio\" name=\"radio\" title=\"" + seVal.gxmc + "\" value='" + seVal.geometry + "'/>" + (i + 1)
								+ "." + seVal.gxmc + "," + seVal.gxbz + "</li>";
					}
					$('#shoucangUl').html(str);

					$('#shoucangUl').on('click', 'input', function() {
						// 用clearoverlays()移除相关自定义覆盖物
						removeSomeOverlays(myCompOverlayCache);
						removeSomeOverlays(drawingManagerCache);

						var polyline;
						var polylineDatas = [];
						var _this = $(this).context;
						if (_this.checked) {
							removeSomeOverlays(polylineCache);

							var pointers = _this.value.split(",");
							var len = _this.value.split(",").length;

							for (var o = 0; o < len; o = o + 2) {
								polylineDatas.push(new BMap.Point(pointers[o], pointers[o + 1]))
							}

							polyline = new BMap.Polyline(polylineDatas, {
								strokeColor : '#D67F31',
								strokeWeight : 2
							});
							polyline.addEventListener('mouseover', function(e) {
								// 将备注显示在最后一个点处
								var myCompOverlay = new ComplexCustomOverlay(new BMap.Point(pointers[len - 2], pointers[len - 1]), _this.title);

								map.addOverlay(myCompOverlay);
								myCompOverlayCache.push(myCompOverlay);
							})
							map.addOverlay(polyline);
							polylineCache.push(polyline);
						}
					})
				} else {
					removeSomeOverlays(polylineCache);
					removeSomeOverlays(myCompOverlayCache);
					$('#shoucangUl').html('');
					$('#shoucangUl').off('click', 'input');
				}
			})

	var centerPointsCache = [];
	// 仅用来控制单词点击显示，双次点击隐藏
	var sxtj_clickTimes = 0;
	// 缓存中国省会以及各个城市的数据
	var BaiduMap_cityCenter;

	//上线统计，显示各地区设备数量
	$("#sxtj").click(function() {
		sxtj_clickTimes++;
		if (sxtj_clickTimes % 2 == 1) {
			map.centerAndZoom(new BMap.Point(116.404, 39.915), 5);
			if (!BaiduMap_cityCenter) {
                $.ajax({
                    type : "post",
                    url : "/map/sxtj",
                    data: {"type": "province"},
                    success : function(data) {
                        BaiduMap_cityCenter = data;
                        addSXTJ(BaiduMap_cityCenter)
                    },
                    error:function(){
                        alert("系统异常，请联系管理员");
                    }
                });
			} else {
				addSXTJ(BaiduMap_cityCenter);
			}
		} else {
			removeSomeOverlays(centerPointsCache);
			if (xxCache) {
				removeSomeOverlays(xxCache);
			}
		}
		if (sxtj_clickTimes == 100000) {
			sxtj_clickTimes = 0;
		}
	});


	function addSXTJ(data) {
		var centerPoints = [];
		for ( var o in data) {
			centerPoints.push([ data[o].areaname, new BMap.Point(data[o].marker.split(",")[0], data[o].marker.split(",")[1]),data[o].num,data[o].areaid ])
		}
		for ( var o in centerPoints) {
			centerPointsCache.push(new cutsomOv(centerPoints[o][1], centerPoints[o][0] + "," + centerPoints[o][2],centerPoints[o][3],'province'));
		}
        for ( var o in centerPointsCache) {
			map.addOverlay(centerPointsCache[o]);
		}
	}
    var xxCache = [];
    // 复杂的自定义覆盖物
    function cutsomOv(point, text, id,type) {
        this._point = point;
        this._text = text;
        this._id = id;
        this._type = type;
    }
	cutsomOv.prototype = new BMap.Overlay();
	cutsomOv.prototype.initialize = function(map) {
	    var areaId = this._id;
        var type = this._type;
		this._map = map;
		var div = this._div = document.createElement("div");
		div.id = "talkbubble";
		div.lng = this._point.lng;
		div.lat = this._point.lat;
		div.title = this._text.split(",")[0];
		div.style.position = "absolute";
		div.style.cursor = "pointer";
		div.style.width = 12 * this._text.length + "px";
		div.style.zIndex = BMap.Overlay.getZIndex(this._point.lat);

        div.appendChild(document.createTextNode(this._text));
        div.onclick = function(e) {
            map.centerAndZoom(new BMap.Point(this.lng, this.lat), 7);
            var xx;
            removeSomeOverlays(xxCache);
            //从省级点击进入市级
            if (type == 'province') {
                $.ajax({
                    type : "post",
                    async: false,
                    url : "/map/sxtj",
                    data: {"type": "city","areaId":areaId},
                    success : function(data) {xx = data;},
                    error:function(){ alert("系统异常，请联系管理员");}
                });
                if (xx) {
                    for ( var o in xx) {
                        xxCache.push(new cutsomOv(new BMap.Point(xx[o].marker.split(",")[0], xx[o].marker.split(",")[1]), xx[o].areaname + "," + xx[o].num, xx[o].areaid,'city'));
                    }
                    removeSomeOverlays(centerPointsCache);
                    for ( var o in xxCache) {
                        map.addOverlay(xxCache[o]);
                    }
                }
            }else if (type == 'city') {
                //从市级点击进入下一级设备分布
                $.ajax({
                    type : "post",
                    url : "/map/sxtj",
                    async: false,
                    data: {"type": "area","areaId":areaId},
                    success : function(data) {xx = data;},
                    error:function(){alert("系统异常，请联系管理员");}
                });
                if (xx) {
                    for ( var o in xx) {
                        xxCache.push(new cutsomOv(new BMap.Point(xx[o].marker.split(",")[0], xx[o].marker.split(",")[1]), xx[o].custname, xx[o].deviceid,'area'));
                    }
                    removeSomeOverlays(centerPointsCache);
                    for ( var o in xxCache) {
                        map.addOverlay(xxCache[o]);
                    }
                }
            } else if (type == 'area') {
                //点击设备，直接跳转监控列表
                window.location.href = '../monitor/detail/'+areaId;
                return;
            }
        }
		map.getPanes().labelPane.appendChild(div);
		return div;
	}
	cutsomOv.prototype.draw = function() {
		var map = this._map;
		var pixel = map.pointToOverlayPixel(this._point);
		this._div.style.left = pixel.x + "px";
		this._div.style.top = pixel.y - 20 + "px";
	}

	// 复杂的自定义覆盖物
	function ComplexCustomOverlay(point, text, mouseoverText) {
		this._point = point;
		this._text = text;
		this._overText = mouseoverText;
	}
	ComplexCustomOverlay.prototype = new BMap.Overlay();
	ComplexCustomOverlay.prototype.initialize = function(map) {
		this._map = map;
		var div = this._div = document.createElement("div");
		div.style.position = "absolute";
		div.style.zIndex = BMap.Overlay.getZIndex(this._point.lat);
		div.style.backgroundColor = "#fff";
		div.style.border = "1px solid #fff";
		div.style.color = "#D67F31";
		div.style.height = "18px";
		div.style.padding = "2px";
		div.style.borderRadius = "2px";
		div.style.whiteSpace = "nowrap";
		div.style.MozUserSelect = "none";
		div.style.fontSize = "12px"
		var span = this._span = document.createElement("span");
		div.appendChild(span);
		span.appendChild(document.createTextNode(this._text));
		var that = this;

		map.getPanes().labelPane.appendChild(div);

		return div;
	}
	ComplexCustomOverlay.prototype.draw = function() {
		var map = this._map;
		var pixel = map.pointToOverlayPixel(this._point);
		this._div.style.left = pixel.x + "px";
		this._div.style.top = pixel.y - 20 + "px";
	}
	// 删除自定义覆盖物(myCompOverlayCache)
	function removeSomeOverlays(a) {
		for ( var c in a) {
			map.removeOverlay(a[c]);
		}
		a.length = 0;
	}
})();