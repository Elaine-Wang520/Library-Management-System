package com.hqyj.service;

import java.sql.SQLException;
import java.util.List;

import com.hqyj.dao.UserInfoDao;

import com.hqyj.dao.entity.UserInfo;

public class UserInfoService {
	private UserInfoDao userDao = new UserInfoDao(); 
	
	public void initUser() throws SQLException {
		userDao.dropUserInfoTable();
		userDao.createUserInfoTable();
				
		UserInfo user = new UserInfo();
		user.setUserId(1);
		user.setUserName("bob");
		user.setPassword("123456");
		user.setDepartments("计算机学院");
		user.setMajor("计科");
		user.setPhone("13985633466");
		user.setEmail("8548235@qq.com");
		user.setMax(5);
		user.setTime(20);
		user.setLendedNum(10);
		userDao.insertUserInfo(user);
		
		user = new UserInfo();
		user.setUserId(2);
		user.setUserName("小明");
		user.setPassword("123456");
		user.setDepartments("化学学院");
		user.setMajor("化学");
		user.setPhone("123456789");
		user.setEmail("4568236@qq.com");
		user.setMax(5);
		user.setTime(20);
		user.setLendedNum(10);
		userDao.insertUserInfo(user);
	}

	public List<UserInfo> getAllUser() throws SQLException {
		return userDao.selectAllUser();
	}	
	public UserInfo getUserInfo(int UserId) throws SQLException {
		return userDao.selectUserByUserId(UserId);
	}
	public void addUserInfo(UserInfo user) throws SQLException {
		userDao.insertUserInfo(user);
	}
	public void deleteUserInfo(int UserId) throws SQLException {
		userDao.deleteUserInfo(UserId);
	}	
	public void updatePassword(UserInfo user) throws SQLException {
		userDao.updatePassword(user);
	}
	public void updateLendedNum(UserInfo user) throws SQLException {
		userDao.updateLendedNum(user);
	}
	public void updateUserInfo(UserInfo user) throws SQLException {
		System.out.println(user);
		userDao.updateUserInfo(user);
	}
	public void update(UserInfo user) throws SQLException {
		userDao.update(user);
	}
	public UserInfo getUser(int UserId, String Password) throws SQLException {
		return userDao.selectUserByIdAndPwd(UserId, Password);
	}
}
