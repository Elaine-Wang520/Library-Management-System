﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.BookAdmin" %>
<%@ page import="com.hqyj.service.BorrowRecordService" %>
<%@ page import="com.hqyj.dao.entity.BorrowRecord" %>
<%
	BookAdmin ad= (BookAdmin)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
	<title>图书管理员-借阅查询</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/adMain.css">
   <link rel="stylesheet" type="text/css" href="../style/adCheckBook.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
	<script type="text/javascript">
	   $(document).ready(function() {
         var left_li= $(".left ul li:eq(5)");
	   	    left_li.css("color","#FFF");
          left_li.css("background-color","#BBCAF1");
          $(".left ul").find('li:eq(5)').children(".trig").css('display', 'block');
          $(".table tbody tr:odd").css("backgroundColor","#E3F2F5");
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
   			<form action="/SearchRecord" method="post">
   				 <div class="search">
                    <input type="text" value="借阅号" value="" name="UserId"/>
                    <div class="btn"><button type="submit">搜索</button></div>
                </div>
              </form>
                      <div class="table_div">
                     <table class="table">
                        <thead>
                          <th>借阅号</th>
                          <th>图书名</th>
                          <th>应还日期</th>
                          <th>实还日期</th>
                        </thead>
                   <!--<thead>
                      <tr>
                      
                         <th class="tdOne">图书编号</th>
                           <th>图书名称</th>
                           <th class="tdTwo">作者</th>
                           <th class="tdTwo">译者</th>
                           <th class="tdTwo">价格</th>
                           <th>出版社</th>
                           <th class="tdOne">出版日期</th>
                           <th>ISBN编码</th>
                           <th class="tdTwo">入库者</th>
                           <th class="tdOne">借阅号</th>
                           <th class="tdOne">应还日期</th>
                           <th class="tdOne">实还日期</th>
                        </tr>
                     </thead> --> 
                     <%
                     	BorrowRecord re= (BorrowRecord)session.getAttribute("recordinfo"); 
                     if(re!=null){
                    	 int userid=re.getUserId();                    
                     	 BorrowRecordService service=new BorrowRecordService();
                          List<BorrowRecord> records=null;
                          records=service.getBorrowbyUserId(userid);
                         if(records!=null)
                         {                      	                    
                          for(int i=0;i<records.size();i++)
                          {
                          	BorrowRecord record=(BorrowRecord)records.get(i);                                  
                     %>
                      <tr>				           
				            <td><%=record.getUserId() %></td>
				            <td><%=record.getBookName() %></td>
				            <td><%=record.getShouldTime() %></td>
				            <td><%=record.getReturnTime() %></td>
				       </tr>
                      <%}
                          }
                          }%>
          <!--            <tbody>
                         <tr>
                           <td>20151111</td>
                           <td>C#入门经典</td>
                           <td>张三</td>
                           <td>王五</td>
                           <td>23</td>
                           <td>人民教育出版社</td>
                           <td>2015-1-1</td>
                           <td>isbn</td>
                           <td>李斯</td>
                           <td>1122334455</td>
                           <td>2015-1-1</td>
                           <td>2015-2-1</td>
                        </tr>
                         <tr>
                           <td>20151111</td>
                           <td>C#入门经典</td>
                           <td>张三</td>
                           <td>王五</td>
                           <td>23</td>
                           <td>人民教育出版社</td>
                           <td>2015-1-1</td>
                           <td>isbn</td>
                           <td>李斯</td>
                           <td>1122334455</td>
                           <td>2015-1-1</td>
                           <td>2015-2-1</td>
                        </tr>
                            <tr>
                              <td>20151111</td>
                              <td>C#入门经典</td>
                              <td>张三</td>
                              <td>王五</td>
                              <td>23</td>
                              <td>人民教育出版社</td>
                              <td>2015-1-1</td>
                              <td>isbn</td>
                              <td>李斯</td>
                              <td>1122334455</td>
                              <td>2015-1-1</td>
                              <td>2015-2-1</td>
                           </tr>
                            <tr>
                              <td>20151111</td>
                              <td>C#入门经典</td>
                              <td>张三</td>
                              <td>无</td>
                              <td>23</td>
                              <td>人民教育出版社</td>
                              <td>2015-1-1</td>
                              <td>isbn</td>
                              <td>李斯</td>
                              <td>1122334455</td>
                              <td>2015-1-1</td>
                              <td>2015-2-1</td>
                           </tr>
                            <tr>
                              <td>20151111</td>
                              <td>C#入门经典</td>
                              <td>张三</td>
                              <td>无</td>
                              <td>23</td>
                              <td>人民教育出版社</td>
                              <td>2015-1-1</td>
                              <td>isbn</td>
                              <td>李斯</td>
                              <td>1122334455</td>
                              <td>2015-1-1</td>
                              <td>2015-2-1</td>
                           </tr>
                            <tr>
                              <td>20151111</td>
                              <td>C#入门经典</td>
                              <td>张三</td>
                              <td>无</td>
                              <td>23</td>
                              <td>人民教育出版社</td>
                              <td>2015-1-1</td>
                              <td>isbn</td>
                              <td>李斯</td>
                              <td>1122334455</td>
                              <td>2015-1-1</td>
                              <td>2015-2-1</td>
                           </tr>
                        </tbody>
                     </table>
                     <table class="table">
                        <thead>
                          <th>借阅号</th>
                          <th>图书名</th>
                          <th>应还日期</th>
                          <th>实还日期</th>
                        </thead>
                        <tbody>
                          <tr>
                            <td>11223344</td>
                            <td>小王子</td>
                            <td>2015-11-11</td>
                            <td>2015-12-11</td>
                          </tr>
                          <tr>
                            <td>11223344</td>
                            <td>小王子</td>
                            <td>2015-11-11</td>
                            <td>2015-12-11</td>
                          </tr>
                          <tr>
                            <td>11223344</td>
                            <td>小王子</td>
                            <td>2015-11-11</td>
                            <td>2015-12-11</td>
                          </tr>
                          <tr>
                            <td>11223344</td>
                            <td>小王子</td>
                            <td>2015-11-11</td>
                            <td>2015-12-11</td>
                          </tr>
                        </tbody>--> 
                     </table>
                  </div>
                 
   			</div>
   		</div>
   		<div class="clear"></div>
   	</div>
   </div>
</body>
</html>