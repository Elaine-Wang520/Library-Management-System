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

import com.hqyj.dao.entity.UserInfo;
import com.hqyj.service.UserInfoService;


/**
 * Servlet implementation class UserInfoController
 */
@WebServlet("/UserInfo")
public class UserInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UserInfoService userService = new UserInfoService();
    public UserInfoController() {
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
		String dispatch = request.getParameter("dispatch");
		if(dispatch==null) {
			dispatch = "";
		}
		List<UserInfo> users = null;
		UserInfo user= new UserInfo();
		Map<String, String> ret =  new HashMap<String, String>();
		int id = 0;
		// TODO Auto-generated method stub
		try {
			switch (dispatch) {
			case "init":
				userService.initUser();
				pw.println("init");
				break;
			case "login":
				int UserId=Integer.parseInt(request.getParameter("UserId"));			
				String Password = request.getParameter("Password");
				user = userService.getUser(UserId,Password);
				if(user != null) {
					ret.put("result", "1");//登录成功
					request.getSession().setAttribute("user", user);
				}else {
					ret.put("result","0");//登录失败
				}
				mapper.writeValue(pw, ret);
				break;
			case "logout":
				request.getSession().invalidate();
				pw.print("logout");
				break;
			case "list":
				users = userService.getAllUser();
				mapper.writeValue(pw, users);
				break;
			case "add":
				user.setUserId(Integer.parseInt(request.getParameter("UserId")));
				user.setUserName(request.getParameter("UserName"));
				user.setPassword(request.getParameter("Password"));
				user.setDepartments(request.getParameter("Departments"));
				user.setMajor(request.getParameter("Major"));
				user.setPhone(request.getParameter("Phone"));
				user.setEmail(request.getParameter("Email"));
				user.setMax(Integer.parseInt(request.getParameter("Max")));
				user.setTime(Integer.parseInt(request.getParameter("Time")));
				user.setLendedNum(Integer.parseInt(request.getParameter("LendedNum")));
				userService.addUserInfo(user);
				pw.println("add");
				break;
			case "delete":
				id = Integer.parseInt(request.getParameter("UserId"));
				userService.deleteUserInfo(id);
				pw.print("delete");
				break;
			case "updatePassword":			
				user.setUserId(Integer.parseInt(request.getParameter("UserId")));				
				user.setPassword(request.getParameter("Password"));		
				userService.updatePassword(user);							        				
				pw.println("updatePassword");
				break;
			case "updateLendedNum":			
				user.setUserId(Integer.parseInt(request.getParameter("UserId")));				
				user.setLendedNum(Integer.parseInt(request.getParameter("LendedNum")));	
				userService.updateLendedNum(user);							        				
				pw.println("updateLendedNum");
				break;
			case "update":
				user.setUserId(Integer.parseInt(request.getParameter("UserId")));
				user.setUserName(request.getParameter("UserName"));
				user.setPassword(request.getParameter("Password"));
				user.setDepartments(request.getParameter("Departments"));
				user.setMajor(request.getParameter("Major"));
				user.setPhone(request.getParameter("Phone"));
				user.setEmail(request.getParameter("Email"));
				user.setMax(Integer.parseInt(request.getParameter("Max")));
				user.setTime(Integer.parseInt(request.getParameter("Time")));
				userService.update(user);
				pw.println("update");
				break;
			case "updateUserInfo":
				user.setUserId(Integer.parseInt(request.getParameter("UserId")));				
				user.setPhone(request.getParameter("Phone"));
				user.setEmail(request.getParameter("Email"));					
				userService.updateUserInfo(user);
				pw.println("updateUserInfo");
				break;
			case "getUserInfo":
				id = Integer.parseInt(request.getParameter("id"));
				user = userService.getUserInfo(id);
				mapper.writeValue(pw,user);
				break;	
			default:
				userService.initUser();
				pw.println("default");
				break;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
