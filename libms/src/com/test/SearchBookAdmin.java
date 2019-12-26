package com.test;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hqyj.dao.BookAdminDao;
import com.hqyj.dao.entity.BookAdmin;

/**
 * Servlet implementation class SearchBookAdmin
 */
@WebServlet("/SearchBookAdmin")
public class SearchBookAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchBookAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int AdId = Integer.parseInt(request.getParameter("AdId"));
		HttpSession session = request.getSession();	
		BookAdminDao admin = new BookAdminDao();
		BookAdmin admininfo=new BookAdmin();
		try {
			admininfo=admin.selectAdminsByAdId(AdId);
			session.setAttribute("admininfo", admininfo);
			response.sendRedirect("/html/adminSearchAd.jsp");
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
