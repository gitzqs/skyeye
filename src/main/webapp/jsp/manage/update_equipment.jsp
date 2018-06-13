<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/jsp/taglibs.jsp"%>
<!doctype html>
<html>
<head>
    <title><%=pageContext.getServletContext().getAttribute("platform")%></title>
    <!-- bootstrap -->
    <link href="/css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet">

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="/css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="/css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="/css/compiled/icons.css">

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="/css/lib/font-awesome.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="/css/compiled/new-user.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
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
    <div id="pad-wrapper" class="new-user">
        <div class="row header">
            <div class="col-md-12">
                <h3>创建设备</h3>
            </div>
        </div>

        <div class="row form-wrapper">
            <!-- left column -->
            <div class="col-md-9 with-sidebar">
                <div class="container">
                    <form class="new_user_form" action="/equipment/save" method="post">
                        <input name="id" type="hidden" value="${equipment.id}">
                        <c:if test="${equipment!= null && equipment.company.id!=null}">
                            <input name="company.id" type="hidden" value="${equipment.company.id}">
                        </c:if>
                        <c:if test="${equipment!= null && equipment.saleDate!=null}">
                            <input name="saleDate" type="hidden" value="${equipment.saleDate}">
                        </c:if>
                        <c:if test="${equipment!= null && equipment.serviceDay!=null}">
                            <input name="serviceDay" type="hidden" value="${equipment.serviceDay}">
                        </c:if>
                        <c:if test="${equipment!= null && equipment.remainDay!=null}">
                            <input name="remainDay" type="hidden" value="${equipment.remainDay}">
                        </c:if>
                        <input name="status" type="hidden" value="${equipment.status}">
                        <div class="col-md-12 field-box">
                            <label>设备名称:</label>
                            <input class="form-control" type="text" name="name" value="${equipment.name}"/>
                        </div>
<!--                         <div class="col-md-12 field-box"> -->
<!--                             <label>设备编码:</label> -->
<%--                             <input class="form-control" type="text" name="equipCode" value="${equipment.equipCode}"/> --%>
<!--                         </div> -->
                        <div class="col-md-12 field-box">
                            <label>绑定SIM卡:</label>
                            <select class="form-control input-sm" name="simCard.id" style="width: 75%">
                                <option value="0">请选择</option>
                                <c:forEach items="${simList}" var="sim" >
                                    <option value="${sim.id}" ${equipment.simCard.id == sim.id ? 'selected="selected"' : ''}>${sim.cardNumber}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-11 field-box actions" style="text-align: center">
                            <input type="submit" class="btn-glow primary" value="保存编辑">
                            <span>或者</span>
                            <input type="reset" value="返回" class="reset"  href="javascript:void(0);" onclick="javascript:history.go(-1);">
                        </div>
                    </form>
                </div>
            </div>

            <!-- side right column -->
            <div class="col-md-3 form-sidebar pull-right">
                <div class="btn-group toggle-inputs hidden-tablet">
                    <button class="glow left active" data-input="normal">NORMAL INPUTS</button>
                    <button class="glow right" data-input="inline">INLINE INPUTS</button>
                </div>
                <div class="alert alert-info hidden-tablet">
                    <i class="icon-lightbulb pull-left"></i>
                    Click above to see difference between inline and normal inputs on a form
                </div>
                <h6>Sidebar text for instructions</h6>
                <p>Add multiple users at once</p>
                <p>Choose one of the following file types:</p>
                <ul>
                    <li><a href="#">Upload a vCard file</a></li>
                    <li><a href="#">Import from a CSV file</a></li>
                    <li><a href="#">Import from an Excel file</a></li>
                </ul>
            </div>
        </div>
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
