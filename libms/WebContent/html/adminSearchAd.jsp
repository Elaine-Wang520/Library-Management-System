﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.SystemAdmin" %>
<%@ page import="com.hqyj.dao.entity.BookAdmin" %>
<%@ page import="com.hqyj.service.BookAdminService" %>
<%
	SystemAdmin admin= (SystemAdmin)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
  <title>系统管理员-查看管理员信息</title>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../style/adminMain.css">
  <link rel="stylesheet" type="text/css" href="../style/searchTable.css">
  <script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
  <script type="text/javascript">
     $(document).ready(function() {
          $(".left ul li:eq(7)").css("color","#FFF");
          $(".left ul li:eq(7)").css("background-color","#B78DE7");
          $(".left ul").find('li:eq(7)').children(".trig").css('display', 'block');
          $(".table tbody tr:odd").css("backgroundColor","#DFF0D8");
     });
  </script>
</head>
<body>
   <div class="ad_page">
    <div class="header">
      <img src="../images/logo.png">
      <div class="state">
       <div class="ad_name"><div class="fa_i"><i class="fa fa-user"></i></div><a href="../html/adminPersonal.html"><%=admin.getAdminName() %></a></div>
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
        <div class="ad_data">
        <form action="/SearchBookAdmin" method="post">
         <div class="search">
              <input type="text" value="" name="AdId"/>
              <div class="btn"><button type="submit">搜索</button></div>
          </div>
          </form>
          <div>
                 <div class="table_div">
                     <table class="table">
                       <thead>
                          <tr>
                             <th>编号</th>
                             <th>用户名</th>
                             <th>电话</th>
                             <th>邮箱</th>
                          </tr>
                       </thead>
                       <tbody>
                       <%
                       BookAdmin admin1= (BookAdmin)session.getAttribute("admininfo");  
                       if(admin1!=null){                    	                          
                       %>
                       <tr> 
                            <td><%=admin1.getAdId() %></td>
                      		<td><%=admin1.getAdName() %></td>
                      		<td><%=admin1.getAdPhone() %></td>
                      		<td><%=admin1.getAdEmail() %></td>
                        </tr>
                       <%
                       }  
                       else{                   	                        
                       BookAdminService service=new BookAdminService();
                       List<BookAdmin> admins=null;
                       admins=service.getAllBookAdmin();
                       for(int i=0;i<admins.size();i++)
                       {
                    	   BookAdmin ad=(BookAdmin)admins.get(i);
                       %>
                       <tr>
                       <td><%=ad.getAdId() %></td>
                      <td><%=ad.getAdName() %></td>
                      <td><%=ad.getAdPhone() %></td>
                      <td><%=ad.getAdEmail() %></td>
                      <%
                       }
                      }%>
                       </tr>                       
                          </tbody>
                     </table>
                  </div>
                  
        </div>
      </div>
      <div class="clear"></div>
    </div>
   </div>
</body>
</html>