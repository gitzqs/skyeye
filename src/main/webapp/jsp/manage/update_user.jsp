<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/jsp/taglibs.jsp"%>
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
					<h3>创建账户</h3>
				</div>
			</div>

			<div class="row form-wrapper">
				<form class="form-horizontal" action="/user/save" method="post" role="form">
					<div class="form-group">
						<label class="col-sm-2 control-label">用户名:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="userName" name="userName" value="${user.userName}" placeholder="请输入用户名"  style="width:600px">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">密码:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="password" name="password" value="${user.password}" placeholder="请输入密码" style="width:600px">
						</div>
					</div>
<!-- 					<div class="form-group"> -->
<!-- 						<label class="col-sm-2 control-label">是否可用:</label> -->
<!-- 						<div class="col-sm-10"> -->
<%-- 							<input type="text" class="form-control" id="status" name="status" value="${user.status}" placeholder="0 可用， 1可用，其他无效" style="width:600px"> --%>
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="form-group">
						<label class="col-sm-2 control-label">所属公司:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="company" name="company" value="${user.company}" placeholder="非必填，要绑定的客户名称" style="width:600px">
						</div>
					</div>
					<div class="field-box actions" style="text-align: center">
						<input type="submit" class="btn-glow primary" value="保存编辑">
						&nbsp; &nbsp; &nbsp;
						<input type="reset" value="返回" class="reset" href="javascript:void(0);" onclick="javascript:history.go(-1);">
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery-ui-1.10.2.custom.min.js"></script>
	<script src="/js/platform.js"></script>
	<script type="text/javascript">
		$(function() {

		});
	</script>
</body>
</html>
