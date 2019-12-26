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
import com.hqyj.dao.SystemAdminDao;
import com.hqyj.dao.UserInfoDao;
import com.hqyj.dao.entity.BookAdmin;
import com.hqyj.dao.entity.SystemAdmin;
import com.hqyj.dao.entity.UserInfo;

@WebServlet("/CheckLongin")
public class CheckLongin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLongin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");		
		int res = Integer.parseInt(request.getParameter("result"));
		int userid=Integer.parseInt(request.getParameter("userid"));
		String password=String.valueOf(request.getParameter("password"));
		HttpSession session = request.getSession();	
		int flag=0;		
		if(res==1){
			UserInfoDao ud = new UserInfoDao();
			try {
				flag=ud.checkLogin(userid, password);
				if(flag==1){
						
					UserInfo user = ud.selectUserByUserId(userid);
					session.setAttribute("userinfo", user);
					response.sendRedirect("/html/readerPersonal.jsp");
				}
				else{
					response.sendRedirect("/html/login.html");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		else if(res==2){
			BookAdminDao bookad = new BookAdminDao();
			try {
				flag=bookad.checkLogin(userid, password);
				if(flag==1){
//					BookAdminDao usd = new BookAdminDao();
//					BookAdmin userinfo = usd.selectAdminByIdAndPwd(userid, password);
					BookAdmin user = bookad.selectAdminsByAdId(userid);
					session.setAttribute("userinfo", user);
					response.sendRedirect("/html/adAddBook.jsp");
				}
				else{
					response.sendRedirect("/html/login.html");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		else{
			SystemAdminDao systemad = new SystemAdminDao();
			try {
				flag=systemad.checkLogin(userid, password);
				if(flag==1){
//					SystemAdminDao usd = new SystemAdminDao();
//					SystemAdmin userinfo = usd.selectSystemAdminByIdAndPwd(userid, password);
					SystemAdmin user = systemad.selectSystemAdminsByAdId(userid);
					session.setAttribute("userinfo", user);
					response.sendRedirect("/html/adminAddReader.jsp");
				}
				else{
					response.sendRedirect("/html/login.html");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
