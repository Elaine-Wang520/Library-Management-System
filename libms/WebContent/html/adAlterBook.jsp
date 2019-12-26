<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.BookAdmin" %>
<%
	BookAdmin ad= (BookAdmin)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
	<title>图书管理员-修改图书信息</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/adMain.css">
  <link rel="stylesheet" type="text/css" href="../style/adBook.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
   <script type="text/javascript" src="../layer-v2.0/layer/layer.js"></script>
   <script type="text/javascript" src="../layer-v2.0/layer/extend/layer.ext.js"></script>
	<script type="text/javascript">
	   $(document).ready(function() {
          $(".left ul li:eq(4)").css("color","#FFF");
          $(".left ul li:eq(4)").css("background-color","#BBCAF1");
          $(".left ul").find('li:eq(4)').children(".trig").css('display', 'block');
          $(".data input").attr('disabled', 'true');
          $(".data input").eq(0).removeAttr('disabled');
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
   			<div class="ad_data">
   				<div class="data data_1"><label>图书编号</label><input  value="输入图书编号" onfocus="if(value=='输入图书编号') {value=''}" onblur="if (value=='') {value='输入图书编号'}"/></div>
               <div class="data"><label>图书名称</label><input/></div>
               <div class="data"><label>作者</label><input/></div>
               <div class="data"><label>译者</label><input/></div>
               <div class="data"><label>价格</label><input/></div>
               <div class="data"><label>ISBN编码</label><input/></div>
               <div class="data"><label>出版社</label><input/></div>
               <div class="data"><label>出版日期</label><input/></div>
               <div class="data"><label>借阅状态</label><input/></div>
               <div class="data"><label>入库者</label><input/></div>
               <div class="add_btn">提交修改</div>
                <div class="noadd_btn">取消</div>
   			</div>
   		</div>
   		<div class="clear"></div>
   	</div>
   </div>
</body>
</html>