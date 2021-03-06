<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% application.setAttribute("platform","");%>
<%@include file="/jsp/taglibs.jsp" %>
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
    <div id="main-stats">
<!--         <div class="row stats-row"> -->
<!--             <div class="col-md-3 col-sm-3 stat"> -->
<!--                 <div class="data"> -->
<!--                     <span class="number">2457</span> -->
<!--                     访问 -->
<!--                 </div> -->
<!--                 <span class="date">今天</span> -->
<!--             </div> -->
<!--             <div class="col-md-3 col-sm-3 stat"> -->
<!--                 <div class="data"> -->
<!--                     <span class="number">3240</span> -->
<!--                     用户 -->
<!--                 </div> -->
<!--                 <span class="date">2013年11月</span> -->
<!--             </div> -->
<!--             <div class="col-md-3 col-sm-3 stat"> -->
<!--                 <div class="data"> -->
<!--                     <span class="number">322</span> -->
<!--                     订单 -->
<!--                 </div> -->
<!--                 <span class="date">本周</span> -->
<!--             </div> -->
<!--             <div class="col-md-3 col-sm-3 stat last"> -->
<!--                 <div class="data"> -->
<!--                     <span class="number">$2,340</span> -->
<!--                     销售金额 -->
<!--                 </div> -->
<!--                 <span class="date">最近30天</span> -->
<!--             </div> -->
<!--         </div> -->
    </div>
    <!-- end upper main stats -->

    <div id="pad-wrapper">
        空白区域，日后再作打算
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
