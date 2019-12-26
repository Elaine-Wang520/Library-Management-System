package com.hqyj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.hqyj.util.ConnectionPool;
import com.hqyj.dao.entity.BookAdmin;

public class BookAdminDao{
private CommonDao commonDao = new CommonDao();
	
	public void createBookAdmin() throws SQLException {
		commonDao.crateTable("BookAdmin","CREATE TABLE BookAdmin("
				+ "AdId int NOT NULL AUTO_INCREMENT ,"
				+ "AdName VARCHAR(50),"
				+ "AdPassword VARCHAR(20),"
				+ "AdPhone VARCHAR(20),"
				+ "AdEmail VARCHAR(30),"
				+ "PRIMARY KEY(AdId)"
				+ ")");
	}
	
	public void dropBookAdmin() throws SQLException {
		commonDao.dropTable("BookAdmin");
	}
	
	public void insertBookAdmin(BookAdmin admin) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("insert into BookAdmin(AdId,AdName,AdPassword,AdPhone,AdEmail) values(?,?,?,?,?)");
            stmt.setInt(1, admin.getAdId());
            stmt.setString(2, admin.getAdName());
            stmt.setString(3, admin.getAdPassword());
            stmt.setString(4, admin.getAdPhone());
            stmt.setString(5, admin.getAdEmail());     
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public List<BookAdmin> selectAllBookAdmin() throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<BookAdmin> admins = new ArrayList<BookAdmin>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BookAdmin");
            rs = stmt.executeQuery();
            while(rs.next()) {
            	BookAdmin admin= new BookAdmin();
            	admin.setAdId(rs.getInt("AdId"));
            	admin.setAdName(rs.getString("AdName"));
            	admin.setAdPassword(rs.getString("AdPassword"));
            	admin.setAdPhone(rs.getString("AdPhone"));
            	admin.setAdEmail(rs.getString("AdEmail"));
            	admins.add(admin);
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return admins;
	}
	public void updateBookAdmin(BookAdmin admin) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("update BookAdmin set AdId=?,AdName=?,AdPassword=?,AdPhone=?,AdEmail=? where AdId=?");
            stmt.setInt(1, admin.getAdId());
            stmt.setString(2, admin.getAdName());
            stmt.setString(3, admin.getAdPassword());
            stmt.setString(4, admin.getAdPhone());
            stmt.setString(5, admin.getAdEmail());
            stmt.setInt(6, admin.getAdId());
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public void updatePassWord(BookAdmin admin) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("update BookAdmin set AdId=?,AdPassword=?,AdPhone=?,AdEmail=? where AdId=?");
            stmt.setInt(1, admin.getAdId());       
            stmt.setString(2, admin.getAdPassword());
            stmt.setString(3, admin.getAdPhone());
            stmt.setString(4, admin.getAdEmail());
            stmt.setInt(5, admin.getAdId());
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public void deleteBookAdmin(int AdId) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("delete from BookAdmin where AdId=?");
            stmt.setInt(1, AdId);
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public BookAdmin selectAdminsByAdId(int AdId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        BookAdmin admin = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("select * from BookAdmin where AdId=?");
            stmt.setInt(1,AdId);          
            rs = stmt.executeQuery();
            if(rs.next()) {
            	admin = new BookAdmin();          	
            	admin.setAdId(rs.getInt("AdId"));               	
            	admin.setAdName(rs.getString("AdName"));
            	admin.setAdPhone(rs.getString("AdPhone"));
            	admin.setAdEmail(rs.getString("AdEmail"));
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return admin;
	}
	public BookAdmin selectAdminByIdAndPwd(int AdId, String AdPassword) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        BookAdmin admin = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BookAdmin where AdId=? and AdPassword=?");
            stmt.setInt(1, AdId);
            stmt.setString(2, AdPassword);
            rs = stmt.executeQuery();
            if(rs.next()) {
            	admin = new BookAdmin();
            	admin.setAdId(rs.getInt("AdId"));
            	admin.setAdName(rs.getString("AdName"));
            	admin.setAdPassword(rs.getString("AdPassword"));
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
	    BookAdmin admin = null;
	    try {
	        conn = ConnectionPool.getInstance().getConnection();
	        stmt = conn
	                .prepareStatement("select * from BookAdmin where AdId=?");
	        stmt.setInt(1, UserId);
	        rs = stmt.executeQuery();
	        if(rs.next()) {
	        	admin = new BookAdmin();
	        	admin.setAdId(rs.getInt("AdId"));
	        	admin.setAdName(rs.getString("AdName"));
	        	admin.setAdPassword(rs.getString("AdPassword"));
	        	pw=rs.getString("AdPassword");
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

