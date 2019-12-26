package com.test;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hqyj.dao.BookInfoDao;
import com.hqyj.dao.entity.BookInfo;

/**
 * Servlet implementation class adSearchBook
 */
@WebServlet("/adSearchBook")
public class adSearchBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adSearchBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int BookId = Integer.parseInt(request.getParameter("id"));
		HttpSession session = request.getSession();	
		BookInfoDao book = new BookInfoDao();
		BookInfo bookinfo=new BookInfo();
		try {
			bookinfo=book.selectBookById(BookId);
			session.setAttribute("bookinfo", bookinfo);
			response.sendRedirect("/html/adSearchBook.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
