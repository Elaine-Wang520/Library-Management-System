package com.hqyj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.hqyj.dao.entity.UserInfo;
import com.hqyj.util.ConnectionPool;

public class UserInfoDao {
	private CommonDao commonDao = new CommonDao();
	
	public void createUserInfoTable() throws SQLException {
		commonDao.crateTable("UserInfo","CREATE TABLE UserInfo("
				+ "UserId int NOT NULL AUTO_INCREMENT ,"
				+ "UserName VARCHAR(100),"
				+ "Password VARCHAR(100),"
				+ "Departments VARCHAR(100),"
				+ "Major VARCHAR(100),"
				+ "Phone VARCHAR(100),"
				+ "Email VARCHAR(100),"
				+ "Max int,"
				+ "Time int,"
				+ "LendedNum int,"
				+ "PRIMARY KEY(UserId)"
				+ ")");
	}
	
	public void dropUserInfoTable() throws SQLException {
		commonDao.dropTable("UserInfo");
	}
	
	public void insertUserInfo(UserInfo user) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("insert into UserInfo(UserId,UserName,Password,Departments,Major,Phone,Email,Max,Time,LendedNum) values(?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, user.getUserId());
            stmt.setString(2, user.getUserName());
            stmt.setString(3, user.getPassword());
            stmt.setString(4,user.getDepartments());
            stmt.setString(5,user.getMajor());
            stmt.setString(6,user.getPhone());
            stmt.setString(7,user.getEmail());
            stmt.setInt(8,user.getMax());
            stmt.setInt(9,user.getTime());
            stmt.setInt(10,user.getLendedNum());
            stmt.execute();             
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public void deleteUserInfo(int UserId) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("delete from UserInfo where UserId=?");
            stmt.setInt(1, UserId);
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public List<UserInfo> selectAllUser() throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<UserInfo> users = new ArrayList<UserInfo>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from UserInfo");
            rs = stmt.executeQuery();
            while(rs.next()) {           	
            	UserInfo user = new UserInfo();
            	user.setUserId(rs.getInt("UserId"));
            	user.setUserName(rs.getString("UserName"));
            	user.setPassword(rs.getString("Password"));
            	user.setDepartments(rs.getString("Departments"));
            	user.setMajor(rs.getString("Major"));
            	user.setPhone(rs.getString("Phone"));
            	user.setEmail(rs.getString("Email"));
            	user.setMax(rs.getInt("Max"));
            	user.setTime(rs.getInt("Time"));
            	user.setLendedNum(rs.getInt("LendedNum"));
            	users.add(user);
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return users;
	}
	
	public UserInfo selectUserByUserId(int UserId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        UserInfo user = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from UserInfo where UserId=?");
            stmt.setInt(1, UserId);          
            rs = stmt.executeQuery();
            if(rs.next()) {
            	user= new UserInfo();
            	user.setUserId(rs.getInt("UserId"));
            	user.setUserName(rs.getString("UserName"));
            	user.setPassword(rs.getString("Password"));
            	user.setDepartments(rs.getString("Departments"));
            	user.setMajor(rs.getString("Major"));
            	user.setPhone(rs.getString("Phone"));
            	user.setEmail(rs.getString("Email"));
            	user.setMax(rs.getInt("Max"));
            	user.setTime(rs.getInt("Time"));
            	user.setLendedNum(rs.getInt("LendedNum"));
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return user;
}	
	public UserInfo selectUserByIdAndPwd(int UserId, String Password) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        UserInfo user = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from UserInfo where UserId=? and Password=?");
            stmt.setInt(1, UserId);
            stmt.setString(2, Password);
            rs = stmt.executeQuery();
            if(rs.next()) {
            	user = new UserInfo();
            	user.setUserId(rs.getInt("UserId"));
            	user.setUserName(rs.getString("UserName"));
            	user.setPassword(rs.getString("Password"));
            	
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return user;
	}	
	public void updateUserInfo(UserInfo user) throws SQLException {
		Connection conn = null;
	    PreparedStatement stmt = null;
	    try {
	        conn = ConnectionPool.getInstance().getConnection();
	        stmt = conn
	                .prepareStatement("update UserInfo set UserId=?,Phone=?,Email=? where UserId=?");    	     
	        stmt.setInt(1, user.getUserId());
	        stmt.setString(2,user.getPhone());
	        stmt.setString(3,user.getEmail());
	        stmt.setInt(4, user.getUserId());
	        stmt.execute();

	    } finally {
	    	ConnectionPool.releaseConnection(conn, stmt, null);
	    }
		}
	public void update(UserInfo user) throws SQLException {
		Connection conn = null;
	    PreparedStatement stmt = null;
	    try {
	        conn = ConnectionPool.getInstance().getConnection();
	        stmt = conn
	                .prepareStatement("update UserInfo set UserId=?,UserName=?,Departments=?,Major=?,Phone=?,Email=?,Max=?,Time=? where UserId=?");    	     
	        stmt.setInt(1, user.getUserId());
	        stmt.setString(2, user.getUserName());
	        stmt.setString(3, user.getDepartments());
	        stmt.setString(4, user.getMajor());	    
	        stmt.setString(5,user.getPhone());
	        stmt.setString(6,user.getEmail());
	        stmt.setInt(7, user.getMax());
	        stmt.setInt(8, user.getTime());
	        stmt.setInt(9, user.getUserId());
	        stmt.execute();

	    } finally {
	    	ConnectionPool.releaseConnection(conn, stmt, null);
	    }
	}
public void updatePassword(UserInfo user) throws SQLException {
	Connection conn = null;
    PreparedStatement stmt = null;
    try {
        conn = ConnectionPool.getInstance().getConnection();
        stmt = conn
                .prepareStatement("update UserInfo set Password=? where UserId=?");       
        stmt.setString(1, user.getPassword());
        stmt.setInt(2, user.getUserId());
    
        stmt.execute();

    } finally {
    	ConnectionPool.releaseConnection(conn, stmt, null);
    }
 }
public void updateLendedNum(UserInfo user) throws SQLException {
	Connection conn = null;
    PreparedStatement stmt = null;
    try {
        conn = ConnectionPool.getInstance().getConnection();
        stmt = conn
                .prepareStatement("update UserInfo set LendedNum=? where UserId=?");       
        stmt.setInt(1, user.getLendedNum());
        stmt.setInt(2, user.getUserId()); 
        stmt.execute();

    } finally {
    	ConnectionPool.releaseConnection(conn, stmt, null);
    }
 }
public void updateLendedNum1(int UserId,int len) throws SQLException {
	Connection conn = null;
    PreparedStatement stmt = null;
    try {
        conn = ConnectionPool.getInstance().getConnection();
        stmt = conn
                .prepareStatement("update UserInfo set LendedNum=? where UserId=?");       
        stmt.setInt(1, len);
        stmt.setInt(2, UserId); 
        stmt.execute();
    } finally {
    	ConnectionPool.releaseConnection(conn, stmt, null);
    }
 }
public int checkLogin(int UserId,String Password) throws SQLException {
	int flag=0;
	Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String pw=null;
    UserInfo user = null;
    try {
        conn = ConnectionPool.getInstance().getConnection();

        stmt = conn
                .prepareStatement("select * from UserInfo where UserId=?");
        stmt.setInt(1, UserId);
        rs = stmt.executeQuery();
        if(rs.next()) {
        	user = new UserInfo();
        	user.setUserId(rs.getInt("UserId"));
        	user.setUserName(rs.getString("UserName"));
        	user.setPassword(rs.getString("Password"));
        	pw=rs.getString("Password");
        	if(pw.equals(Password)){
        		flag=1;
        	}
        }
    } finally {
    	ConnectionPool.releaseConnection(conn, stmt, rs);
    }	
    return flag;
}
}
