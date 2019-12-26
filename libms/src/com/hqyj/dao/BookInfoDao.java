package com.hqyj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hqyj.dao.entity.BookInfo;
import com.hqyj.util.ConnectionPool;

public class BookInfoDao {
	private CommonDao commonDao = new CommonDao();
	public void createBookTable() throws SQLException {
		commonDao.crateTable("BookInfo","CREATE TABLE BookInfo("
				+ "BookId int NOT NULL AUTO_INCREMENT ,"
				+ "BookName VARCHAR(20),"
				+ "Author VARCHAR(200),"
				+ "Translator VARCHAR(200),"
				+ "Price int,"
				+ "ISBNCode VARCHAR(100),"
				+ "ComeUpTime VARCHAR(100),"
				+ "PublishCompany VARCHAR(100),"
				+ "State int,"
				+"EnteringMen VARCHAR(100),"
				+"EnteringDate VARCHAR(100),"
				+ "PRIMARY KEY(BookId)"
				+ ")");
	}
	public void dropBookTable() throws SQLException {
		commonDao.dropTable("BookInfo");
	}
	
	public void insertBook(BookInfo book) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("insert into BookInfo(BookId,BookName,Author,Translator,Price,ISBNCode,PublishCompany,ComeUpTime,State,EnteringMen,EnteringDate) values(?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1, book.getBookId());
            stmt.setString(2, book.getBookName());
            stmt.setString(3, book.getAuthor());
            stmt.setString(4, book.getTranslator());
            stmt.setInt(5, book.getPrice());
            stmt.setString(6, book.getISBNCode());
            stmt.setString(7, book.getPublishCompany());
            stmt.setString(8, book.getComeUpTime());
            stmt.setInt(9,book.getState());
            stmt.setString(10, book.getEnteringMen());
            stmt.setString(11, book.getEnteringDate());
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public void updateBook(BookInfo book) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("update BookInfo set BookId=?,BookName=?,Author=?,Translator=?,Price=?,ISBNCode=?,ComeUpTime=?,PublishCompany=?,State=?,EnteringMen=? where BookId=?");       
            stmt.setInt(1, book.getBookId());      
            stmt.setString(2, book.getBookName());
            stmt.setString(3, book.getAuthor());
            stmt.setString(4, book.getTranslator());
            stmt.setInt(5, book.getPrice());
            stmt.setString(6, book.getISBNCode());
            stmt.setString(7, book.getComeUpTime());
            stmt.setString(8, book.getPublishCompany());
            stmt.setInt(9,book.getState());
            stmt.setString(10, book.getEnteringMen());  
            stmt.setInt(11, book.getBookId());        
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	public void updateState(BookInfo book) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("update BookInfo set BookId=?,State=? where BookId=?");       
            stmt.setInt(1, book.getBookId());                
            stmt.setInt(2,book.getState());           
            stmt.setInt(3, book.getBookId());        
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public void updateState1(int BookId,int State) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("update BookInfo set BookId=?,State=? where BookId=?");       
            stmt.setInt(1, BookId);                
            stmt.setInt(2,State);           
            stmt.setInt(3,BookId);        
            stmt.execute();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public void deleteBook(int BookId) throws SQLException {
		Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("delete from BookInfo where BookId=?");
            stmt.setInt(1, BookId);
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
	}
	
	public List<BookInfo> selectAllBook() throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<BookInfo> books = new ArrayList<BookInfo>();
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BookInfo");
            rs = stmt.executeQuery();
            while(rs.next()) {
            	BookInfo book = new BookInfo();
            	book.setBookId(rs.getInt("BookId"));
            	book.setBookName(rs.getString("BookName"));
            	book.setAuthor(rs.getString("Author"));
            	book.setTranslator(rs.getString("Translator"));
            	book.setPrice(rs.getInt("Price"));
            	book.setISBNCode(rs.getString("ISBNCode"));
            	book.setComeUpTime(rs.getString("ComeUpTime"));
            	book.setPublishCompany(rs.getString("PublishCompany"));
            	book.setState(rs.getInt("State"));
            	book.setEnteringMen(rs.getString("EnteringMen"));
            	book.setEnteringDate(rs.getString("EnteringDate"));
            	books.add(book);
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return books;
	}
	
	public List<BookInfo> selectBookbyname(String bookname) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<BookInfo> books = new ArrayList<BookInfo>();
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("select * from BookInfo");         
            rs = stmt.executeQuery();
            while(rs.next()) {
            	String name1=rs.getString("BookName");
            	if(name1.contains(bookname)){
            		BookInfo book = new BookInfo();
                	book.setBookId(rs.getInt("BookId"));
                	book.setBookName(name1);
                	book.setAuthor(rs.getString("Author"));
                	book.setTranslator(rs.getString("Translator"));
                	book.setPrice(rs.getInt("Price"));
                	book.setISBNCode(rs.getString("ISBNCode"));
                	book.setComeUpTime(rs.getString("ComeUpTime"));
                	book.setPublishCompany(rs.getString("PublishCompany"));
                	book.setState(rs.getInt("State"));
                	book.setEnteringMen(rs.getString("EnteringMen"));
                	book.setEnteringDate(rs.getString("EnteringDate"));
                	books.add(book);
            	}
            	
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return books;
	}
	public BookInfo selectBookById(int BookId) throws SQLException{
		Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        BookInfo book = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("select * from BookInfo where BookId=?");
            stmt.setInt(1, BookId);
            rs = stmt.executeQuery();
            if(rs.next()) {
            	book = new BookInfo();
            	book.setBookId(rs.getInt("BookId"));
            	book.setBookName(rs.getString("BookName"));
            	book.setAuthor(rs.getString("Author"));
            	book.setTranslator(rs.getString("Translator"));
            	book.setPrice(rs.getInt("Price"));
            	book.setISBNCode(rs.getString("ISBNCode"));
            	book.setComeUpTime(rs.getString("ComeUpTime"));
            	book.setPublishCompany(rs.getString("PublishCompany"));
            	book.setState(rs.getInt("State"));
            	book.setEnteringMen(rs.getString("EnteringMen"));
            	book.setEnteringDate(rs.getString("EnteringDate"));
            }
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }	
        return book;
	}


}
