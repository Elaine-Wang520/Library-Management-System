<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.BookAdmin" %>
<%
	BookAdmin ad= (BookAdmin)session.getAttribute("userinfo");
	String phone=ad.getAdPhone();
	String email=ad.getAdEmail();
%>
<!DOCTYPE html>
<html>
<head>
	<title>图书管理员-管理管中心</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/adMain.css">
  <link rel="stylesheet" type="text/css" href="../style/adBook.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
   <script type="text/javascript" src="../layer-v2.0/layer/layer.js"></script>
   <script type="text/javascript" src="../layer-v2.0/layer/extend/layer.ext.js"></script>
	<script type="text/javascript">
	   $(document).ready(function() {
          $(".left ul li:eq(7)").css("color","#FFF");
          $(".left ul li:eq(7)").css("background-color","#BBCAF1");
          $(".left ul").find('li:eq(7)').children(".trig").css('display', 'block');
          $(".data input").attr('disabled', 'true');
         
          $(".inputBtn").click(function() {
             $(".data input").removeAttr('disabled');
          });
          $(".noadd_btn").click(function() {
            $(".data input").attr('disabled', 'true');
          });
	   });
	</script>
</head>
<body>
   <div class="ad_page">
   	<div class="header">
   		<img src="../images/logo.png">
   		<div class="state">
   			<div class="ad_name"><div class="fa_i"><i class="fa fa-user"></i></div><a href="../html/adPersonal.html"><%=ad.getAdName() %></a></div>
   			<div class="out"><a href="../html/index.jsp">退出</a></div>
   		</div>
   		<div class="clear"></div>
   	</div>
   	<div class="content">
   		<div class="left">
   			<ul>
   			 <a href="../html/adBorrowBook.jsp"><li>读者借书<div class="trig"></div></li></a>
               <a href="../html/adReturnBook.jsp"><li>读者还书<div class="trig"></div></li></a>
               <a href="../html/adAddBook.jsp"><li>新书入库<div class="trig"></div></li></a>
               <a href="../html/adOutBook.jsp"><li>图书出库<div class="trig"></div></li></a>
               <a href="../html/adAlterBook.jsp"><li>修改图书信息<div class="trig"></div></li></a>
               <a href="../html/adCheckBook.jsp"><li>查阅借阅记录<div class="trig"></div></li></a>
               <a href="../html/adSearchBook.jsp"><li>查阅图书信息<div class="trig"></div></li></a>
               <a href="../html/adPersonal.jsp"><li>管理员中心<div class="trig"></div></li></a>
   			</ul>
   		</div>
   		<div class="right">
      <!-- class="ad_data"的div中是图书管理员系统的切换部分 -->
      <form action="/BookAdmin?dispatch=updatePassWord" method="post">
   			<div class="ad_data">
               <input class="inputBtn" style="width:100px;height:34px;margin:0px 0px 20px 150px;font-size:16px"
                type="button" value="修改资料" />
                <input type="hidden" value=<%=ad.getAdId()%> name="AdId">
   				<div class="data data_1"><label style="color:red">原密码必填。不修改密码时，新密码、确认密码留空</label></div>
               <div class="data"><label>原密码</label><input type="password" /></div>
               <div class="data"><label>新密码</label><input type="password"/></div>
               <div class="data"><label>确认新密码</label><input type="password" name="AdPassword"/></div>
               <div class="data"><label>电话</label><input value=<%=phone %> name="AdPhone"/></div>
               <div class="data"><label>邮箱</label><input type="email" value=<%=email %> name="AdEmail"/></div>
               <div class="add_btn"><button type="submit">提交修改</button></div>
                <div class="noadd_btn">取消</div>
   			</div>
   		</form>
   		</div>
   		<div class="clear"></div>
   	</div>
   </div>
</body>
</html>