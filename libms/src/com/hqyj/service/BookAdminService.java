package com.hqyj.service;

import java.sql.SQLException;
import java.util.List;

import com.hqyj.dao.BookAdminDao;

import com.hqyj.dao.entity.BookAdmin;


public class BookAdminService {
	
	private BookAdminDao adminDao = new BookAdminDao(); 
	
	public void initBook() throws SQLException {
		adminDao.dropBookAdmin();
		adminDao.createBookAdmin();
		BookAdmin admin = new BookAdmin();
		admin.setAdId(1);
		admin.setAdName("wang");
		admin.setAdPassword("123456");
		admin.setAdPhone("123456789");
		admin.setAdEmail("854782383@qq.com");
		adminDao.insertBookAdmin(admin);
	
		admin = new BookAdmin();
		admin.setAdId(2);
		admin.setAdName("li");
		admin.setAdPassword("123456");
		admin.setAdPhone("123456789");
		admin.setAdEmail("854782383@qq.com");
		adminDao.insertBookAdmin(admin);
			
	}

	public void addBookAdmin(BookAdmin admin) throws SQLException {
		adminDao.insertBookAdmin(admin);
	}
	
	public void deleteBookAdmin(int AdId) throws SQLException {
		adminDao.deleteBookAdmin(AdId);
	}
	
	public void updateBookAdmin(BookAdmin admin) throws SQLException {
		adminDao.updateBookAdmin(admin);
	}
	public void updatePassWord(BookAdmin admin) throws SQLException {
		adminDao.updatePassWord(admin);
	}
	public List<BookAdmin> getAllBookAdmin() throws SQLException{
		return adminDao.selectAllBookAdmin();
	}
	
	public BookAdmin getBookAdmin(int AdId) throws SQLException {
		return adminDao.selectAdminsByAdId(AdId);
	}
	public BookAdmin getAdmin(int AdId, String AdPassword) throws SQLException {
		return adminDao.selectAdminByIdAndPwd(AdId, AdPassword);
	}
}

