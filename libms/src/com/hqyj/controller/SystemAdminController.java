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


import com.hqyj.dao.entity.SystemAdmin;

import com.hqyj.service.SystemAdminService;

/**
 * Servlet implementation class SystemAdminController
 */
@WebServlet("/SystemAdmin")
public class SystemAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SystemAdminService adminService = new SystemAdminService();
    public SystemAdminController() {
        super();
       
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
		List<SystemAdmin> admins = null;
		SystemAdmin admin= new SystemAdmin();
		int id = 0;
		
		try {
			switch (dispatch) {
			case "init":
				adminService.initSystemAdmin();;
				pw.println("init");
				break;
			case "login":
				int AdminId=Integer.parseInt(request.getParameter("UserId"));			
				String AdminPassword = request.getParameter("Password");
				admin = adminService.getAdmin(AdminId,AdminPassword);
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
				admin.setAdminId(Integer.parseInt(request.getParameter("AdminId")));
				admin.setAdminName(request.getParameter("AdminName"));			
				admin.setAdminPassword(request.getParameter("AdminPassword"));	
				admin.setAdminName(request.getParameter("AdminPhone"));	
				admin.setAdminEmail(request.getParameter("AdminEmail"));
				adminService.addSystemAdmin(admin);
				pw.println("add");
				break;
			case "delete":
				id = Integer.parseInt(request.getParameter("AdminId"));
				adminService.deleteSystemAdmin(id);
				pw.print("delete");
				break;
			case "update":
				admin.setAdminId(Integer.parseInt(request.getParameter("AdminId")));						
				admin.setAdminPassword(request.getParameter("AdminPassword"));	
				admin.setAdminPhone(request.getParameter("AdminPhone"));	
				//System.out.println(request.getParameter("AdminPhone"));
				admin.setAdminEmail(request.getParameter("AdminEmail"));
				adminService.updateSystemAdmin(admin);			        				
				pw.println("update");
				break;
			case "getbyid":
				id = Integer.parseInt(request.getParameter("id"));
				admin = adminService.getSystemAdmin(id);
				mapper.writeValue(pw,admin);
				break;	
			case "list":
				admins = adminService.getAllSystemAdmin();
				mapper.writeValue(pw, admins);
				break;				
			default:
				adminService.initSystemAdmin();
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
