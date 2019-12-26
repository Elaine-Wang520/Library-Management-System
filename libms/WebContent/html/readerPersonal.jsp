<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.UserInfo" %>
<%
	UserInfo user= (UserInfo)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
	<title>基本资料</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/readerMain.css">
	<link rel="stylesheet" type="text/css" href="../style/readerPersonal.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	  $(function(){
	  	 var Lis=$(".menu ul li").eq(0);
	  	 Lis.css('border-bottom', '7px solid #419EDC');
	  	 Lis.css('margin-top', '-7px');
	  	 Lis.css('color', '#419EDC');
	  })
	</script>
</head>
<body>
<div class="header">
	<div class="header">
		<div class="home_logo"><a  href="../html/index.html"><i class="fa fa-home">首页</i></a></div>
		<div class="page_title">个人中心</div>
		<div class="out_page"><a href="../html/login.html">退出</a></div>
	</div>
</div>
<div class="book_logo">
	<img src="../images/booklogo.png">
</div>
<div class="reader_name"><%=user.getUserName() %></div>
<div class="menu">
	<ul>
		<a href="../html/readerPersonal.jsp"><li class="first_li">基本资料</li></a>
		<a href="../html/readerAlterData.jsp"><li class="other_li">修改资料</li></a>
		<a href="../html/readerAlterPaswd.jsp"><li class="other_li">修改密码</li></a>
		<a href="../html/readerBorrowing.jsp"><li class="other_li">在借图书</li></a>
		<a href="../html/readerBorrowed.jsp"><li class="last_li">借阅记录</li></a>
	</ul>
	<div class="clear"></div>
</div>
<!-- class="content"的div中是个人中心的切换部分 -->
<div class="content">
	<div class="data"><label>借阅号</label><div><%=user.getUserId() %></div></div>
	<div class="data"><label>用户名</label><div><%=user.getUserName() %></div></div>
    <div class="data"><label>学院</label><div><%=user.getDepartments() %></div></div>
    <div class="data"><label>专业</label><div><%=user.getMajor()%></div></div>
	<div class="data"><label>电话</label><div><%=user.getPhone()%></div></div>
    <div class="data"><label>邮箱</label><div><%=user.getEmail() %></div></div>
    <div class="data"><label>借阅上限</label><div><%=user.getMax() %></div></div>
    <div class="data"><label>借阅期限</label><div><%=user.getTime() %></div></div>
    <div class="data"><label>已借数量</label><div><%=user.getLendedNum() %></div></div>
</div>
<div class="footer">
	    <br/>   
		<p>@Copyright重庆理工大学中山图书馆</p>
	</div>
</body>
</html>