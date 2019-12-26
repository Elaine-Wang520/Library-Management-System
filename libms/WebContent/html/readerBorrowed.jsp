﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.UserInfo" %>
<%@ page import="com.hqyj.dao.entity.BorrowRecord" %>
<%@ page import="com.hqyj.service.BorrowRecordService" %>
<%
	UserInfo user= (UserInfo)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
	<title>借阅记录</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/readerMain.css">
	<link rel="stylesheet" type="text/css" href="../style/readerBorrowed.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	  $(function(){
	  	 var Lis=$(".menu ul li").eq(4);
	  	 Lis.css('border-bottom', '7px solid #419EDC');
	  	 Lis.css('margin-top', '-7px');
	  	 Lis.css('color', '#419EDC');
	  	 $(".table tbody tr:odd").css("backgroundColor","#F2F2D6");
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
<div class="content">
	<div class="table_div">
          <table class="table">
            <thead>
             <th>序号</th>
              <th>借阅号</th>
              <th>图书名</th>
              <th>借书日期</th>
              <th>还书日期</th>
            </thead>
            <%
            BorrowRecordService service=new BorrowRecordService();
            List<BorrowRecord> records=null;
            records=service.getBorrowbyUserId(user.getUserId());
            for(int i=0;i<records.size();i++)
            {
            	BorrowRecord record=(BorrowRecord)records.get(i);
            %>
            <tr>
            <td><%=i+1 %></td>
            <td><%=record.getBookId() %></td>
            <td><%=record.getBookName() %></td>
            <td><%=record.getBorrowTime() %></td>
            <td><%=record.getReturnTime() %></td>
            </tr>
        <%    }
            %>
        <!--   <tbody>
              <tr>
                <td>1</td>
                <td>11223344</td>
                <td>小王子</td>
                <td>2015-11-11</td>
                <td>2015-11-15</td>
              </tr>
              <tr>
                <td>2</td>
                <td>11223344</td>
                <td>小王子</td>
                <td>2015-11-11</td>
                <td>2015-11-14</td>
              </tr>
              <tr>
              	<td>3</td>
                <td>11223344</td>
                <td>小王子</td>
                <td>2015-11-11</td>
                <td>2015-11-13</td>
              </tr>
              <tr>
              	<td>4</td>
                <td>11223344</td>
                <td>小王子</td>
                <td>2015-11-11</td>
                <td>2015-11-12</td>
              </tr>
            </tbody> -->  
           </table>
        </div>
</div>
<div class="footer">
	    <br/>   
		<p>@Copyright重庆理工大学中山图书馆</p>
	</div>
</body>
</html>