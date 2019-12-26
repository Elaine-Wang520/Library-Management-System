<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.BookAdmin" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	BookAdmin ad= (BookAdmin)session.getAttribute("userinfo");
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	String date=df.format(new Date());
%>
<!DOCTYPE html>
<html>
<head>
	<title>图书管理员-读者还书</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/adMain.css">
   <link rel="stylesheet" type="text/css" href="../style/adReturnBook.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	   $(document).ready(function() {
	   	 $(".left ul li:eq(1)").css("color","#FFF");
          $(".left ul li:eq(1)").css("background-color","#BBCAF1");
          $(".left ul").find('li:eq(1)').children(".trig").css('display', 'block');
          $('input[type=text]:first').focus();//默认光标位置在input
	   });
	</script>
</head>
<body>
   <div class="ad_page">
   	<div class="header">
   		<img src="../images/logo.png">
   		<div class="state">
   			<div class="ad_name"><div class="fa_i"><i class="fa fa-user"></i></div><a href="../html/adPersonal.html"><%=ad.getAdName()%></a></div>
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
          <form action="/ReturnBook" method="post">      
   			<div class="ad_data">
   				<div class="data"><label>借阅号</label><input type="text" value="" name="UserId"/></div>
               <div class="data"><label>图书编号</label><input type="text" value="" name="BookId"/></div>
               <input type="hidden" value=date name="ReturnTime">
               <input type="hidden" value=1 name="State">
               <div class="add_btn"><button type="submit">确认归还</button></div>
   			</div>
   			</form>
   		</div>
   		<div class="clear"></div>
   	</div>
   </div>
</body>
</html>