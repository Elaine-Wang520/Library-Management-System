package com.hqyj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.hqyj.util.ConnectionPool;
import com.hqyj.dao.entity.SystemAdmin;




public class SystemAdminDao{
private CommonDao commonDao = new CommonDao();
	
	public void createSystemAdmin() throws SQLException {
		commonDao.crateTable("SystemAdmin","CREATE TABLE SystemAdmin("
				+ "AdminId int NOT NULL AUTO_INCREMENT ,"
				+ "AdminName VARCHAR(50),"
				+ "AdminPassword VARCHAR(20),"
				+ "AdminPhone VARCHAR(20),"
				+ "AdminEmail VARCHAR(30),"
				+ "PRIMARY KEY(AdminId)"
				+ ")");
	}
	
	public void dropSystemAdmin() throws SQLException {
		commonDao.dropTable("SystemAdmin");
	}
	
	public void insertSystemAdmin(SystemAdmin systemadmin) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("insert into SystemAdmin(AdminId,AdminName,AdminPassword,AdminPhone,AdminEmail) values(?,?,?,?,?)");
            stmt.setInt(1, systemadmin.getAdminId());
            stmt.setString(2, systemadmin.getAdminName());
            stmt.setString(3, systemadmin.getAdminPassword());
            stmt.setString(4, systemadmin.getAdminPhone());
            stmt.setString(5, systemadmin.getAdminEmail());     
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public List<SystemAdmin> selectAllSystemAdmin() throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<SystemAdmin> systemadmins = new ArrayList<SystemAdmin>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from SystemAdmin");
            rs = stmt.executeQuery();
            while(rs.next()) {
            	SystemAdmin systemadmin= new SystemAdmin();
            	systemadmin.setAdminId(rs.getInt("AdminId"));
            	systemadmin.setAdminName(rs.getString("AdminName"));
            	systemadmin.setAdminPassword(rs.getString("AdminPassword"));
            	systemadmin.setAdminPhone(rs.getString("AdminPhone"));
            	systemadmin.setAdminEmail(rs.getString("AdminEmail"));
            	systemadmins.add(systemadmin);
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return systemadmins;
	}
	public void updateSystemAdmin(SystemAdmin systemadmin) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("update SystemAdmin set AdminId=?,AdminPassword=?,AdminPhone=?,AdminEmail=? where AdminId=?");
            stmt.setInt(1, systemadmin.getAdminId());           
            stmt.setString(2, systemadmin.getAdminPassword());       
            stmt.setString(3, systemadmin.getAdminPhone());
            System.out.println(systemadmin.getAdminPhone());
            stmt.setString(4, systemadmin.getAdminEmail());
            stmt.setInt(5, systemadmin.getAdminId());
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public void deleteSystemAdmin(int AdminId) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("delete from SystemAdmin where AdminId=?");
            stmt.setInt(1, AdminId);
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public SystemAdmin selectSystemAdminsByAdId(int AdminId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        SystemAdmin systemadmin = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("select * from SystemAdmin where AdminId=?");
            stmt.setInt(1,AdminId);          
            rs = stmt.executeQuery();
            if(rs.next()) {
            	systemadmin = new SystemAdmin();          	
            	systemadmin.setAdminId(rs.getInt("AdminId"));               	
            	systemadmin.setAdminName(rs.getString("AdminName"));
            	systemadmin.setAdminPhone(rs.getString("AdminPhone"));
            	systemadmin.setAdminEmail(rs.getString("AdminEmail"));
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return systemadmin;
	}	
	public SystemAdmin selectSystemAdminByIdAndPwd(int AdminId, String AdminPassword) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        SystemAdmin admin = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from SystemAdmin where AdminId=? and AdminPassword=?");
            stmt.setInt(1, AdminId);
            stmt.setString(2, AdminPassword);
            rs = stmt.executeQuery();
            if(rs.next()) {
            	admin = new SystemAdmin();
            	admin.setAdminId(rs.getInt("AdminId"));
            	admin.setAdminName(rs.getString("AdminName"));
            	admin.setAdminPassword(rs.getString("AdminPassword"));
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return admin;
	}	
	public int checkLogin(int UserId,String Password) throws SQLException {
		int flag=0;
		Connection conn = null;
	    PreparedStatement stmt = null;
	    ResultSet rs = null;
	    String pw=null;
	    SystemAdmin admin = null;
	    try {
	        conn = ConnectionPool.getInstance().getConnection();

	        stmt = conn
	                .prepareStatement("select * from SystemAdmin where AdminId=?");
	        stmt.setInt(1, UserId);
	        rs = stmt.executeQuery();
	        if(rs.next()) {
	        	admin = new SystemAdmin();
	        	admin.setAdminId(rs.getInt("AdminId"));
	        	admin.setAdminName(rs.getString("AdminName"));
	        	admin.setAdminPassword(rs.getString("AdminPassword"));
	        	pw=rs.getString("AdminPassword");
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

