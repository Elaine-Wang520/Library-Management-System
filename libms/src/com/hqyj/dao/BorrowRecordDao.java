package com.hqyj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hqyj.dao.entity.BorrowRecord;
import com.hqyj.util.ConnectionPool;

public class BorrowRecordDao {

private CommonDao commonDao = new CommonDao();
	
	public void createBorrowRecord() throws SQLException {
		commonDao.crateTable("BorrowRecord","CREATE TABLE BorrowRecord("
				+ "BorrowID int NOT NULL,"
				+ "UserId int,"
				+ "BookId int,"
				+ "BookName VARCHAR(50),"
				+ "BorrowTime VARCHAR(50),"
				+ "ShouldTime VARCHAR(50),"
				+ "ReturnTime VARCHAR(50),"
				+ "State int,"		
				+ "PRIMARY KEY(BorrowID)"
				+ ")");
	}
	
	public void dropBorrowRecord() throws SQLException {
		commonDao.dropTable("BorrowRecord");
	}
	
	public void insertBorrowRecord(BorrowRecord record) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("insert into BorrowRecord(BorrowID,UserId,BookId,BookName,BorrowTime,ShouldTime,ReturnTime,State) values(?,?,?,?,?,?,?,?)");
            stmt.setInt(1, record.getBorrowId());
            stmt.setInt(2, record.getUserId());
            stmt.setInt(3, record.getBookId());
            stmt.setString(4, record.getBookName());
            stmt.setString(5,record.getBorrowTime());
            stmt.setString(6,record.getShouldTime());
            stmt.setString(7,record.getReturnTime());   
            stmt.setInt(8, record.getState());
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public List<BorrowRecord> selectAllBorrowRecord() throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<BorrowRecord> records = new ArrayList<BorrowRecord>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BorrowRecord");
            rs = stmt.executeQuery();
            while(rs.next()) {
            	BorrowRecord record= new BorrowRecord();
            	record.setBorrowId(rs.getInt("BorrowId"));
            	record.setUserId(rs.getInt("UserId"));
            	record.setBookId(rs.getInt("BookId"));
            	record.setBookName(rs.getString("BookName"));
            	record.setBorrowTime(rs.getString("BorrowTime"));
            	record.setShouldTime(rs.getString("ShouldTime"));
            	record.setReturnTime(rs.getString("ReturnTime"));
            	record.setState(rs.getInt("State"));
            	records.add(record);
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return records;
	}
	public List<BorrowRecord> selectBorrowbyUserId(int UserId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<BorrowRecord> records = new ArrayList<BorrowRecord>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BorrowRecord where UserId=?");
            stmt.setInt(1,UserId);
            rs = stmt.executeQuery();
            while(rs.next()) {
            	BorrowRecord record= new BorrowRecord();
            	record.setBorrowId(rs.getInt("BorrowId"));
            	record.setUserId(rs.getInt("UserId"));
            	record.setBookId(rs.getInt("BookId"));
            	record.setBookName(rs.getString("BookName"));
            	record.setBorrowTime(rs.getString("BorrowTime"));
            	record.setShouldTime(rs.getString("ShouldTime"));
            	record.setReturnTime(rs.getString("ReturnTime"));
            	record.setState(rs.getInt("State"));
            	records.add(record);
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return records;
	}
	
	public List<BorrowRecord> selectBorrowName(String bookname) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<BorrowRecord> records = new ArrayList<BorrowRecord>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BorrowRecord");                   
            rs = stmt.executeQuery();
            while(rs.next()) {
            	String name=rs.getString("BookName");            	
            	if(name.contains(bookname)){
            		BorrowRecord record= new BorrowRecord();
                	record.setBorrowId(rs.getInt("BorrowId"));
                	record.setUserId(rs.getInt("UserId"));
                	record.setBookId(rs.getInt("BookId"));
                	record.setBookName(name);
                	record.setBorrowTime(rs.getString("BorrowTime"));
                	record.setShouldTime(rs.getString("ShouldTime"));
                	record.setReturnTime(rs.getString("ReturnTime"));
                	record.setState(rs.getInt("State"));
                	records.add(record);
            	}          	
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return records;
	}
	public List<BorrowRecord> selectBorrowOntime(int UserId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<BorrowRecord> records = new ArrayList<BorrowRecord>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BorrowRecord where UserId=? and State=0");
            stmt.setInt(1,UserId);            
            rs = stmt.executeQuery();
            while(rs.next()) {
            	BorrowRecord record= new BorrowRecord();
            	record.setBorrowId(rs.getInt("BorrowId"));
            	record.setUserId(rs.getInt("UserId"));
            	record.setBookId(rs.getInt("BookId"));
            	record.setBookName(rs.getString("BookName"));
            	record.setBorrowTime(rs.getString("BorrowTime"));
            	record.setShouldTime(rs.getString("ShouldTime"));
            	record.setReturnTime(rs.getString("ReturnTime"));
            	record.setState(rs.getInt("State"));
            	records.add(record);
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return records;
	}
	public void updateBorrowRecord(BorrowRecord record) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("update BorrowRecord set BorrowId=?,UserId=?,BookId=?,BookName=?,BorrowTime=?,ShouldTime=?,ReturnTime=?,State=?  where BorrowID=?");
            stmt.setInt(1, record.getBorrowId());
            stmt.setInt(2, record.getUserId());
            stmt.setInt(3, record.getBookId());
            stmt.setString(4, record.getBookName());
            stmt.setString(5,record.getBorrowTime());
            stmt.setString(6,record.getShouldTime());
            stmt.setString(7,record.getReturnTime());   
            stmt.setInt(8, record.getState());
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public void updateBorrowRecordbyid(BorrowRecord record) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("update BorrowRecord set UserId=?,BookId=?,ReturnTime=?,State=? where UserId=?");           
            stmt.setInt(1, record.getUserId());
            stmt.setInt(2, record.getBookId());           
            stmt.setString(3,record.getReturnTime());   
            stmt.setInt(4, record.getState());
            stmt.setInt(5, record.getUserId());
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public void updateBorrowRecordbyid1(int UserId,int BookId,String ReturnTime,int State) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("update BorrowRecord set UserId=?,BookId=?,ReturnTime=?,State=? where UserId=?");           
            stmt.setInt(1, UserId);
            stmt.setInt(2, BookId);           
            stmt.setString(3,ReturnTime);   
            stmt.setInt(4, State);
            stmt.setInt(5, UserId);
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public void deleteBorrowRecordbybowidandbookid(int UserId,int BookId) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("delete from BorrowRecord where UserId=? and BookId=?");
            stmt.setInt(1, UserId);
            stmt.setInt(2, BookId);
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public void deleteBorrowRecordbybowid(int BorrowId) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("delete from BorrowRecord where BorrowId=?");
            stmt.setInt(1, BorrowId);         
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public BorrowRecord selectBorrowRecordByBookId(int BookId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        BorrowRecord record = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("select * from BorrowRecord where BookId=?");
            stmt.setInt(1,BookId);          
            rs = stmt.executeQuery();
            if(rs.next()) {
            	record = new BorrowRecord();          	
            	record.setBorrowId(rs.getInt("BorrowId"));
            	record.setUserId(rs.getInt("UserId"));
            	record.setBookId(rs.getInt("BookId"));
            	record.setBookName(rs.getString("BookName"));
            	record.setBorrowTime(rs.getString("BorrowTime"));
            	record.setShouldTime(rs.getString("ShouldTime"));
            	record.setReturnTime(rs.getString("ReturnTime"));
            	record.setState(rs.getInt("State"));
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return record;
	}
	public BorrowRecord selectBorrowRecordbyUserId(int UserId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        BorrowRecord record = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("select * from BorrowRecord where UserId=?");
            stmt.setInt(1,UserId);          
            rs = stmt.executeQuery();
            if(rs.next()) {
            	record = new BorrowRecord();          	
            	record.setBorrowId(rs.getInt("BorrowId"));
            	record.setUserId(rs.getInt("UserId"));
            	record.setBookId(rs.getInt("BookId"));
            	record.setBookName(rs.getString("BookName"));
            	record.setBorrowTime(rs.getString("BorrowTime"));
            	record.setShouldTime(rs.getString("ShouldTime"));
            	record.setReturnTime(rs.getString("ReturnTime"));
            	record.setState(rs.getInt("State"));
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return record;
	}
}

