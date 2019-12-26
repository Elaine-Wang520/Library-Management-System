package com.hqyj.service;

import java.sql.SQLException;
import java.util.List;


import com.hqyj.dao.BookInfoDao;
import com.hqyj.dao.entity.BookInfo;

public class BookInfoService {
	private BookInfoDao bookDao = new BookInfoDao(); 
	
	public void initBook() throws SQLException {
		bookDao.dropBookTable();
		bookDao.createBookTable();
		BookInfo book = new BookInfo();
		book.setBookId(1);
		book.setBookName("西游记");
		book.setAuthor("吴中");
		book.setTranslator("吴中");;
		book.setPrice(2);
		book.setISBNCode("123456");
		book.setPublishCompany("西游记公司");
		book.setComeUpTime("1998-05-15");
		book.setState(1);
		book.setEnteringMen("王镜");
		book.setEnteringDate("2016-5-2");
		bookDao.insertBook(book);
		
		
		book = new BookInfo();
		book.setBookId(2);
		book.setBookName("水专");
		book.setAuthor("吴中");
		book.setTranslator("吴中");;
		book.setPrice(2);
		book.setISBNCode("456789");
		book.setPublishCompany("公司");
		book.setComeUpTime("1928-05-15");
		book.setState(1);
		book.setEnteringMen("王镜");
		book.setEnteringDate("201-5-2");
		bookDao.insertBook(book);	
		
		
		book = new BookInfo();
		book.setBookId(3);
		book.setBookName("水专");
		book.setAuthor("吴中");
		book.setTranslator("吴中");;
		book.setPrice(2);
		book.setISBNCode("456789");
		book.setPublishCompany("公司");
		book.setComeUpTime("1928-05-15");
		book.setState(1);
		book.setEnteringMen("王镜");
		book.setEnteringDate("201-5-2");
		bookDao.insertBook(book);	
		
		book = new BookInfo();
		book.setBookId(4);
		book.setBookName("水专");
		book.setAuthor("吴中");
		book.setTranslator("吴中");;
		book.setPrice(2);
		book.setISBNCode("456789");
		book.setPublishCompany("公司");
		book.setComeUpTime("1928-05-15");
		book.setState(1);
		book.setEnteringMen("王镜");
		book.setEnteringDate("201-5-2");
		bookDao.insertBook(book);
	}

	public void addBook(BookInfo book) throws SQLException {
		bookDao.insertBook(book);
	}
	
	public void deleteBook(int BookId) throws SQLException {
		bookDao.deleteBook(BookId);
	}
	
	public void  updateBook(BookInfo book) throws SQLException {
		bookDao.updateBook(book);
	}
	public void  updateState(BookInfo book) throws SQLException {
		bookDao.updateState(book);
	}
	public List<BookInfo> getAllBook() throws SQLException{
		return bookDao.selectAllBook();
	}
	public List<BookInfo> getBookbyname(String bookname) throws SQLException {
		return bookDao.selectBookbyname(bookname);
	}
	public BookInfo getBookById(int id) throws SQLException {
		return bookDao.selectBookById(id);
	}
}

