package com.hqyj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import com.hqyj.dao.entity.BookAdmin;
import com.hqyj.service.BookAdminService;


@WebServlet("/BookAdmin")
public class BookAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookAdminService adminService = new BookAdminService();
    public BookAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.addHeader("Access-Control-Allow-Origin", "*");
		PrintWriter pw = response.getWriter();
		ObjectMapper mapper = new ObjectMapper();
		Map<String, String> ret =  new HashMap<String, String>();
		String dispatch = request.getParameter("dispatch");
		if(dispatch==null) {
			dispatch = "";
		}
		List<BookAdmin> admins = null;
		BookAdmin admin= new BookAdmin();
		int id = 0;
		
		try {
			switch (dispatch) {
			case "init":
				adminService.initBook();
				pw.println("init");
				break;
			case "login":
				int AdId=Integer.parseInt(request.getParameter("UserId"));			
				String AdPassword = request.getParameter("Password");
				admin = adminService.getAdmin(AdId,AdPassword);
				if(admin != null) {
					ret.put("result", "1");//登录成功
					request.getSession().setAttribute("admin", admin);
				}else {
					ret.put("result","0");//登录失败
				}
				mapper.writeValue(pw, ret);
				break;
			case "logout":
				request.getSession().invalidate();
				pw.print("logout");
				break;
			case "add":
				admin.setAdId(Integer.parseInt(request.getParameter("AdId")));
				admin.setAdName(request.getParameter("AdName"));			
				admin.setAdPassword(request.getParameter("AdPassword"));	
				admin.setAdPhone(request.getParameter("AdPhone"));	
				admin.setAdEmail(request.getParameter("AdEmail"));
				adminService.addBookAdmin(admin);
				pw.println("add");
				break;
			case "delete":
				id = Integer.parseInt(request.getParameter("AdId"));
				adminService.deleteBookAdmin(id);
				pw.print("delete");
				break;
			case "update":
				admin.setAdId(Integer.parseInt(request.getParameter("AdId")));
				admin.setAdName(request.getParameter("AdName"));			
				admin.setAdPassword(request.getParameter("AdPassword"));	
				admin.setAdPhone(request.getParameter("AdPhone"));	
				admin.setAdEmail(request.getParameter("AdEmail"));
				adminService.updateBookAdmin(admin);				        				
				pw.println("update");
				break;
			case "updatePassWord":
				admin.setAdId(Integer.parseInt(request.getParameter("AdId")));		
//				System.out.println(Integer.parseInt(request.getParameter("AdId")));
				admin.setAdPassword(request.getParameter("AdPassword"));
	//			System.out.println(request.getParameter("AdPassword"));
				admin.setAdPhone(request.getParameter("AdPhone"));	
				admin.setAdEmail(request.getParameter("AdEmail"));
				adminService.updatePassWord(admin);			        				
				pw.println("update");
				break;
			case "getbyid":
				id = Integer.parseInt(request.getParameter("id"));
				admin = adminService.getBookAdmin(id);
				mapper.writeValue(pw,admin);
				break;	
			case "list":
				admins = adminService.getAllBookAdmin();
				mapper.writeValue(pw, admins);
				break;				
			default:
				adminService.initBook();
				pw.println("init");
				break;
			}
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
