﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.UserInfo" %>
<%@ page import="com.hqyj.service.UserInfoService"%>
<%
	UserInfo user= (UserInfo)session.getAttribute("userinfo");
	UserInfoService service=new UserInfoService();
	UserInfo userinfo=new UserInfo();
	int id=(user.getUserId());
	userinfo=service.getUserInfo(id);
%>
<!DOCTYPE html>
<html>
<head>
	<title>修改密码</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/readerMain.css">
	<link rel="stylesheet" type="text/css" href="../style/readerAlterPaswd.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	  $(function(){
	  	 var Lis=$(".menu ul li").eq(2);
	  	 Lis.css('border-bottom', '7px solid #419EDC');
	  	 Lis.css('margin-top', '-7px');
	  	 Lis.css('color', '#419EDC');
	  	 $('input[type=password]:first').focus();//默认光标位置在input
	  })
	</script>
</head>
<body>
<div class="header">
	<div class="header">
		<div class="home_logo"><a  href="../html/index.jsp"><i class="fa fa-home">首页</i></a></div>
		<div class="page_title">个人中心</div>
		<div class="out_page"><a href="../html/login.html">退出</a></div>
	</div>
</div>
<div class="book_logo">
	<img src="../images/booklogo.png">
</div>
<div class="reader_name">张三</div>
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
<form action="/UserInfo?dispatch=updatePassword" method="post">
<div class="content">
	<input  type="hidden" value=<%=user.getUserId()%> name="UserId" />
	<div class="data"><label>原密码</label><input type="password"  /></div>
    <div class="data"><label>新密码</label><input   type="password"  /></div>
    <div class="data"><label>确认新密码</label><input  type="password" name="Password"/></div>
    <div class="add_btn"><button type="submit">确认修改</button></div>
</div>
</form>
<div class="footer">
	    <br/>   
		<p>@Copyright重庆理工大学中山图书馆</p>
	</div>
</body>
</html>