<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.SystemAdmin" %>
<%
	SystemAdmin admin= (SystemAdmin)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
  <title>系统管理员-录入管理员</title>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../style/adminMain.css">
  <link rel="stylesheet" type="text/css" href="../style/adminReader.css">
  <script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
  <script type="text/javascript">
     $(document).ready(function() {
          $(".left ul li:eq(3)").css("color","#FFF");
          $(".left ul li:eq(3)").css("background-color","#B78DE7");
          $(".left ul").find('li:eq(3)').children(".trig").css('display', 'block');
     });
  </script>
</head>
<body>
   <div class="ad_page">
    <div class="header">
      <img src="../images/logo.png">
      <div class="state">
        <div class="ad_name"><div class="fa_i"><i class="fa fa-user"></i></div><a href="../html/adPersonal.html"><%=admin.getAdminName() %></a></div>
        <div class="out"><a href="../html/index.jsp">退出</a></div>
      </div>
      <div class="clear"></div>
    </div>
    <div class="content">
      <div class="left">
        <ul>
          <a href="../html/adminAddReader.jsp"><li>录入新读者<div class="trig"></div></li></a>
          <a href="../html/adminOutReader.jsp"><li>删除读者<div class="trig"></div></li></a>
          <a href="../html/adminAlterReader.jsp"><li>修改读者信息<div class="trig"></div></li></a>
          <a href="../html/adminAddAd.jsp"><li>录入图书管理员<div class="trig"></div></li></a>
          <a href="../html/adminOutAd.jsp"><li>删除图书管理员<div class="trig"></div></li></a>
          <a href="../html/adminAlterAd.jsp"><li>修改管理员信息<div class="trig"></div></li></a>
          <a href="../html/adminSearchReader.jsp"><li>查看读者信息<div class="trig"></div></li></a>
          <a href="../html/adminSearchAd.jsp"><li>查看管理员信息<div class="trig"></div></li></a>
          <a href="../html/adminPersonal.jsp"><li>管理员中心<div class="trig"></div></li></a>
        </ul>
      </div>
      <div class="right">
      <!-- class="ad_data"的div中是系统管理员系统的切换部分 -->
      <form action="/BookAdmin?dispatch=add" method="post">
        <div class="ad_data">
                <div class="data"><label>编号</label><input value="" name="AdId"></div>
                <div class="data"><label>用户名</label><input value="" name="AdName"></div>
                <div class="data"><label>初始密码</label><input type="password" value="" name="AdPassword"></div>
                <div class="data"><label>电话</label><input value="" name="AdPhone"></div>
                <div class="data"><label>邮箱</label><input value="" name="AdEmail"></div>
                <div class="add_btn"><button type="submit">确认添加</button></div>
                <div class="noadd_btn">取消</div>
        </div>
        </form>
      </div>
      <div class="clear"></div>
    </div>
   </div>
</body>
</html>