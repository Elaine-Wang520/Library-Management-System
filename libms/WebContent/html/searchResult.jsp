<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.hqyj.dao.entity.BookInfo" %>
<%@ page import="com.hqyj.service.BookInfoService" %>


<!DOCTYPE html>
<html>
<head>
	<title>搜索结果</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<link rel="stylesheet" type="text/css" href="../style/searchResult.css">
	<link rel="stylesheet" type="text/css" href="../font-awesome/css/font-awesome.min.css">
	<script type="text/javascript" src="../script/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
        	$(".login").click(function() {
        		window.open("../html/login.html");
        	});
        	
        	$(".bor_btn").click(function() {
        		var num=$(this).find("span").html();
        		if (num<=0) {
        			alert("该书被借光了~~");
        		}
        		else{
        			alert("请到图书管理员处借阅~~");
        		}
        	});
        	var btns=$(".bor_btn");
        	for (var i = 0; i < btns.length; i++) {
        		var num=$(btns[i]).find("span").html();
        		if (num==0) {
                    $(".bor_btn").eq(i).css('backgroundColor', '#BCBCBC');
        		}
        		else{
        			$(".bor_btn").eq(i).css('backgroundColor', '#28B138');
        		}
        	};
        });
    </script>
</head>
<body>
<div class="search_page">
	<div class="header">
		<div class="home"><a href="../html/index.jsp"><i class="fa fa-home"></i>首页</a></div>
		<div class="login"><a href="../html/login.html"><i class="fa fa-home">登录</i></a></div>
		<div class="clear"></div>
	</div>
	<div class="content">
	<form action="/Searchbyid" method="post">
		<div class="search">
		    <input value=""  name="id"/>
			<div class="sch_btn"><button type="submit">搜索</button></div>
		</div>
	</form>
	<%
		    String name = String.valueOf(session.getAttribute("book"));			
	 		BookInfoService service=new BookInfoService();
			if(name!=null){
				List<BookInfo> books=null;
	           	books=service.getBookbyname(name);
	            for(int i=0;i<books.size();i++)
	            {
	            	BookInfo book=(BookInfo)books.get(i);
			
	%>
	<div class="result">
			<div class="book_result">
				<div class="bk_name"><%=book.getBookName() %></div>
				<ul>
					<li>作者：<%=book.getAuthor() %></li>
					<li>出版社：<%=book.getPublishCompany() %></li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>1</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	<% }
	}%>
	<!--  	<div class="result">
			<div class="book_result">
				<div class="bk_name">/div>
				<ul>
					<li>作者：</li>
					<li>出版社：</li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>1</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>-->
		<!--  <div class="result">
			<div class="book_result">
				<div class="bk_name">C语言基础教程</div>
				<ul>
					<li>作者：张三</li>
					<li>出版社：人民教育出版社</li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>5</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="book_result">
				<div class="bk_name">C语言基础教程</div>
				<ul>
					<li>作者：张三</li>
					<li>出版社：人民教育出版社</li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>5</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="book_result">
				<div class="bk_name">C语言基础教程</div>
				<ul>
					<li>作者：张三</li>
					<li>出版社：人民教育出版社</li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>5</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="book_result">
				<div class="bk_name">C语言基础教程</div>
				<ul>
					<li>作者：张三</li>
					<li>出版社：人民教育出版社</li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>0</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="book_result">
				<div class="bk_name">C语言基础教程</div>
				<ul>
					<li>作者：张三</li>
					<li>出版社：人民教育出版社</li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>5</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="book_result">
				<div class="bk_name">C语言基础教程</div>
				<ul>
					<li>作者：张三</li>
					<li>出版社：人民教育出版社</li>
				</ul>
				
				<div class="bor_btn">
					<div class="btn_name">借阅</div>
					<div class="bk_num">在库数量：<span>0</span>本</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>-->

	</div>
</div>
</body>
</html>