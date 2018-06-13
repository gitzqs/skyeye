<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
    $(function () {
        var url = location.pathname.split("/");
        path = url[1];
        $('#' + path).attr('class', 'active');
        switch (path)
        {
            case 'role':
            case 'user':
                $('#li1').attr('class', 'active');
                $('#u1').addClass('active');
                break;
            case 'simCard':
            case 'equipment':
                $('#li2').attr('class', 'active');
                $('#u2').addClass('active');
                break;
            case 'company':
            case 'bind':
                $('#li3').attr('class', 'active');
                $('#u3').addClass('active');
                break;
            case 'recharge':
                $('#li4').attr('class', 'active');
                $('#u4').addClass('active');
                break;
            case 'platform':
            	$('#li5').attr('class', 'active');
            	 $('#u5').addClass('active');
            default:
                $('#li0').attr('class', 'active');
        }
    });
</script>
<div id="sidebar-nav">
    <ul id="dashboard-menu">
        <li id="li0" >
            <div class="pointer">
                <div class="arrow"></div>
                <div class="arrow_border"></div>
            </div>
            <a href="/manage/doLogin">
                <i class="icon-home"></i>
                <span>首页</span>
            </a>
        </li>
        <li id="li1" >
            <a class="dropdown-toggle" href="#" >
                <i class="icon-star" ></i>
                <span>账户管理</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul id="u1" class="submenu ">
                <li><a id="role" href="/role/list" >角色管理</a></li>
                <li><a id="user" href="/user/list">账户管理</a></li>
            </ul>
        </li>
        <li id="li2">
            <a class="dropdown-toggle" href="#">
                <i class="icon-dashboard"></i>
                <span>设备管理</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul id="u2" class="submenu">
                <li><a id="simCard" href="/simCard/list">SIM卡管理</a></li>
                <li><a id="equipment" href="/equipment/list">设备管理</a></li>
            </ul>
        </li>
        <li id="li3">
            <a class="dropdown-toggle" href="#">
                <i class="icon-user"></i>
                <span>客户管理</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul id="u3" class="submenu">
                <li><a id="company" href="/company/list">客户管理</a></li>
<!--                 <li><a id="bind" href="/bind/list">设备绑定</a></li> -->
            </ul>
        </li>
        <li id="li4">
            <a class="dropdown-toggle" href="tables.html">
                <i class="icon-heart"></i>
                <span>服务管理</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul id="u4" class="submenu">
                <li><a id="recharge" href="/recharge/list">服务充值</a></li>
            </ul>
        </li>
        <li id="li5">
        	<a class="dropdown-toggle" href="tables.html">
                <i class="icon-dashboard"></i>
                <span>平台管理</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul id="u5" class="submenu">
                <li><a id="recharge" href="/platform/list">参数设置</a></li>
            </ul>
        </li>
    </ul>
</div>
<script src="/js/platform.js"></script>
</body>

</html>
