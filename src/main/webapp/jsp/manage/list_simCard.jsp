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
                    <h4>SIM卡管理</h4>
                </div>
            </div>

            <div class="row filter-block">
                <div class="col-md-8 col-md-offset-5">
                    <div class="ui-select">
                        <select>
                            <option>sim卡号</option>
                        </select>
                    </div>
                    <input type="text" class="search">
                    <a class="btn-flat new-product" href="/simCard/update">新增SIM卡</a>
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
                        <th class="col-md-5">
                            <span class="line"></span>SIM卡卡号
                        </th>
                        <th class="col-md-2">
                            <span class="line"></span>状态
                        </th>
                        <th class="col-md-1" style="text-align: center">
                            <span class="line"></span>操作
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <!-- row -->
                    <c:forEach items="${simList}" var="sim" varStatus="status">
                        <tr class="first">
                            <td>
                                <input type="checkbox">
                                <div >
                                    ${status.count}
                                </div>
                            </td>
                            <td class="description">
                                ${sim.cardNumber}
                            </td>
                            <td class="description">
                                <c:if test="${sim.status == 0 }">${equipment.company.companyName}
                                    <span class="label label-success">未绑定设备</span>
                                </c:if>
                                <c:if test="${sim.status == 1 }">${equipment.company.companyName}
                                    <span class="label label-danger">已绑定设备</span>
                                </c:if>
                            </td>
                            <td class="description">
                                <a href="/simCard/update?id=${sim.id}">编辑</a>
                                <span style="margin-right: 50%"></span>
                                <a href="" style="color: red">删除</a>
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
<script src="/js/platform.js"></script>
<script type="text/javascript">
    $(function () {

    });
</script>
</body>
</html>
