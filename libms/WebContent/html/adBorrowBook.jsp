<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.BookAdmin" %>
<%
	BookAdmin ad= (BookAdmin)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html>
<head>
	<title>图书管理员-读者借书</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../style/adMain.css">
   <link rel="stylesheet" type="text/css" href="../style/adBorrowBook.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
   <script type="text/javascript" src="../layer-v2.0/layer/layer.js"></script>
	<script type="text/javascript">
	   $(document).ready(function() {
	   	 $(".left ul li:eq(0)").css("color","#FFF");
          $(".left ul li:eq(0)").css("background-color","#BBCAF1");
          $(".left ul").find('li:eq(0)').children(".trig").css('display', 'block');
          $(".A_btn").click(function() {
                var index = layer.load(1, {
                shade: [0.1,'#fff'] //0.1透明度的白色背景
                 // layer.close(index);   //关闭验证
            });
          });
          $(".B_btn").click(function() {
            $(".data input").val("");
          });
          $('input[type=text]:first').focus();//默认光标位置在input
          $(".table tbody tr:odd").css("backgroundColor","#FCF8E3");//表格奇数行背景
	   });
	</script>
</head>
<body>
   <div class="ad_page">
   	<div class="header">
   		<img src="../images/logo.png">
   		<div class="state">
   			<div class="ad_name"><div class="fa_i"><i class="fa fa-user"></i></div><a href="../html/adPersonal.jsp"><%=ad.getAdName()%></a></div>
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
   			<form action="/BorrowBook" method="post"> 
   				<div class="data data_1"><label>借阅号</label><input type="text" value="" name="UserId"/></div>
               <div class="data"><label>图书编号</label><input type="text" value="" name="BookId"/></div>
               <div class="btn A_btn"><button type="submit">验证</button></div>               
               <div class="btn B_btn">清空</div>
             </form>
               <div class="table_div">            
                  <table class="table"> 
                   <thead>
                          <th>借阅号</th>
                          <th>图书名</th>
                          <th>应还日期</th>
                        </thead>                     
                        <%
                        String message = String.valueOf(session.getAttribute("message"));                          						
						List records=(List)session.getAttribute("record");						
                       	if(records!=null){                                                   	
                        %>                       
                          <tbody>
                          <tr>
                            <td><%=records.get(0)%></td>
                          	<td><%=records.get(1)%></td>
                            <td><%=records.get(2)%></td>
                          </tr>
                          </tbody>
                       </table>
                     <form action="/BorrowRecord?dispatch=add" method="post">                    
                     <input type="hidden" value=<%=records.get(0) %> name="BorrowId"/>
                     <input type="hidden" value=<%=records.get(3) %> name="UserId"/>
                     <input type="hidden" value=<%=records.get(4) %> name="BookId"/>
                     <input type="hidden" value=<%=records.get(1) %> name="BookName"/>
                     <input type="hidden" value=<%=records.get(5) %> name="BorrowTime"/>
                     <input type="hidden" value=<%=records.get(2) %> name="ShouldTime"/>
                     <input type="hidden" value="null" name="ReturnTime"/>
                     <input type="hidden" value=0 name="State"/>
                     <div class="add_btn"><button type="submit">确认借阅</button></div>
                     </form>
                     <div class="clear"></div>                                             
                     <% 
                     }
                     %>                                                                                	                                                    
               </div>
   			</div>
   		</div>
   		<div class="clear"></div>
   	</div>
   </div>
</body>
</html>