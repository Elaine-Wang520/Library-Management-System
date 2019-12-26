<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.SystemAdmin" %>
<%@ page import="com.hqyj.dao.entity.UserInfo" %>
<%@ page import="com.hqyj.service.UserInfoService" %>
<%
	SystemAdmin admin= (SystemAdmin)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
  <title>系统管理员-查看读者信息</title>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="../style/adminMain.css">
  <link rel="stylesheet" type="text/css" href="../style/searchTable.css">
  <script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
  <script type="text/javascript">
     $(document).ready(function() {
          $(".left ul li:eq(6)").css("color","#FFF");
          $(".left ul li:eq(6)").css("background-color","#B78DE7");
          $(".left ul").find('li:eq(6)').children(".trig").css('display', 'block');
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
          <form action="/SearchUser" method="post">
         	<div class="search">
              	<input type="text" value="" name="UserId"/>
              	<div class="btn"><button type="submit">搜索</button></div>
          	</div>
          </form>
                 <div class="table_div">
                     <table class="table">
                       <thead>
                          <tr>
                             <th class="tdOne">借阅号</th>
                             <th class="tdOne">用户名</th>
                             <th>学院</th>
                             <th>专业</th>
                             <th>电话</th>
                             <th class="tdOne">邮箱</th>
                             <th>借阅上限</th>
                             <th>借阅期限</th>
                             <th>在借数量</th>
                          </tr>
                       </thead>
                       <tbody>                        
                        <%
                       		UserInfo user1= (UserInfo)session.getAttribute("Userinfo");  
                       		if(user1!=null){                    	                          
                       %>
                       <tr> 
                            <td><%=user1.getUserId() %></td>
                      		<td><%=user1.getUserName() %></td>
                      		<td><%=user1.getDepartments() %>
                      		<td><%=user1.getMajor() %>                     	
                      		<td><%=user1.getPhone() %></td>
                      		<td><%=user1.getEmail() %></td>
                      		<td><%=user1.getMax() %>
                      		<td><%=user1.getTime() %>
                      		<td><%=user1.getLendedNum() %>
                        </tr>
                       <%
                       }  
                       else{                   	                        
                       UserInfoService service=new UserInfoService();
                       List<UserInfo> users=null;
                       users=service.getAllUser();
                       for(int i=0;i<users.size();i++)
                       {
                    	   UserInfo user=(UserInfo)users.get(i);
                       %>
                       <tr>
                       		<td><%=user.getUserId() %></td>
                      		<td><%=user.getUserName() %></td>
                      		<td><%=user.getDepartments() %>
                      		<td><%=user.getMajor() %>                     	
                      		<td><%=user.getPhone() %></td>
                      		<td><%=user.getEmail() %></td>
                      		<td><%=user.getMax() %>
                      		<td><%=user.getTime() %>
                      		<td><%=user.getLendedNum() %>
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