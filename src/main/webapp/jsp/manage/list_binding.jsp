<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/taglibs.jsp"%>
<!doctype html>
<html>
<head>
    <title><%=pageContext.getServletContext().getAttribute("platform")%></title>
    <!-- bootstrap -->
    <link href="/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="/css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="/css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="/css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="/css/compiled/icons.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="/css/compiled/index.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- lato font -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap/select2.css">
</head>
<body>
<!-- navbar -->
<%@include file="header.jsp"%>
<!-- end navbar -->

<!-- sidebar -->
<%@include file="menu.jsp"%>
<!-- end sidebar -->

<!-- main container -->
<div class="content">

    <!-- upper main stats -->
    <%--<%@include file="top.jsp"%>--%>
    <!-- end upper main stats -->

    <div id="pad-wrapper" style="margin-top: -100px">
        <!-- table sample -->
        <!-- the script for the toggle all checkboxes from header is located in js/theme.js -->
        <div class="table-products section">
            <div class="row head">
                <div class="col-md-12">
                    <h4>设备绑定</h4>
                </div>
            </div>

            <div class="row filter-block">
                <div class="col-md-8 col-md-offset-5" style="text-align: right">
                    <div class="ui-select">
                        <select>
                            <option>客户名称</option>
                        </select>
                    </div>
                    <input type="text" class="search">
                </div>
            </div>

            <div class="row">
                <table class="table table-hover" style="text-align: left">
                    <thead>
                    <tr >
                        <th class="col-md-1">
                            <input type="checkbox">
                            序号
                        </th>
                        <th class="col-md-3">
                            <span class="line"></span>公司名称
                        </th>
                        <th class="col-md-3">
                            <span class="line"></span>地址
                        </th>
                        <th class="col-md-2">
                            <span class="line"></span>联系人
                        </th>
                        <th class="col-md-2">
                            <span class="line"></span>电话号码
                        </th>
                        <th class="col-md-1" >
                            <span class="line"></span>操作
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- row -->
                    <c:forEach items="${companyList}" var="company" varStatus="status">
                        <tr class="first">
                            <td>
                                <input type="checkbox">
                                <div >
                                        ${status.count}
                                </div>
                            </td>
                            <td class="description">
                                    ${company.companyName}
                            </td>
                            <td class="description">
                                    ${company.address}
                            </td>
                            <td class="description">
                                    ${company.personName}
                            </td>
                            <td class="description">
                                    ${company.mobile}
                            </td>
                            <td class="description">
                                <a href="#" onclick="ajaxBind('${company.id}')">设备绑定</a>
                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
            <ul class="pagination">
                <li><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
        <!-- end table sample -->
    </div>
</div>


<!-- scripts -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui-1.10.2.custom.min.js"></script>
<script src="/js/theme.js"></script>
<script src="/js/select2.js"></script>
<script src="/layer/layer.js"></script>
<script src="/js/platform.js"></script>
<script type="text/javascript">
    var ind;
    $(function () {
		
		
    });
    function ajaxBind(id) {
        var content = makeContent(id);
        if(content == ''){
            layer.alert('暂无可绑定的设备');
        }else{
            //页面层
            ind =layer.open({
                type: 1,
                closeBtn:0,
                title:'绑定设备',
                skin: 'layui-layer-rim', //加上边框
                area: ['420px', '240px'], //宽高
                content: content,
                success: function(layero, index){
                    $("#select2").select2({

                    });
                }
            });
        }
    }
    //获得设备列表，遍历拼接成整个内容用于layer显示
    function makeContent(id) {
        var content = '';
        $.ajax({
            type: "POST",
            url: "getEquipList",
            async:false,
            data: {},
            dataType: "json",
            success: function(data){
                if(data.length>0){
                    var select = '<select class="js-example-basic-single col-md-12"  id="select2">\n<option value="0">请选择</option>\n' ;
                    for(var i = 0;i < data.length; i++) {
                        select = select +'  <option value="'+data[i].id+'">'+data[i].name+' : '+data[i].equipCode+'</option>\n'
                    }
                    select = select + '</select>\n';
                    content = '<div class="col-md-12 " style="text-align: center">\n' +
                    '              <div class="col-md-12" style="margin-top: 15px;margin-bottom: 15px"><font size="5px" color="red">设备编码:</font></div>\n'
                                   +select+
                        '          <button class="btn btn-primary btn-sm" type="button" onclick="doBlind('+id+')" style="margin-top: 15px"><span class="icon-ok-sign"></span>绑定</button>' +
                        '          &nbsp;&nbsp;&nbsp;<button class="btn btn-success btn-sm" type="button" onclick="closeLayer()" style="margin-top: 15px"><span class="icon-remove-sign"></span>关闭</button>' +
                        '       </div>';
                }
            }
        });
        return content;
    }
    function closeLayer() {
        layer.close(ind);
    }
    function doBlind(id) {
        $.ajax({
            type: "POST",
            url: "doBind",
            async:false,
            data: {companyId:id,equipId:$('#select2').val()},
            dataType: "text",
            success: function(data){
                if(data=='success') {
                    layer.close(ind);
                    layer.msg("绑定成功", {shade:[0.1, '#fff'],time: 2000});
                }else {
                    layer.msg("绑定失败，请联系管理员", {shade:[0.1, '#fff'],time: 1200});
                }

            }
        });
    }
</script>
</body>
</html>
