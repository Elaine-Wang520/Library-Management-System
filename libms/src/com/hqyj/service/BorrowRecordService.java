package com.hqyj.service;

import java.sql.SQLException;
import java.util.List;

import com.hqyj.dao.BorrowRecordDao;
import com.hqyj.dao.entity.BorrowRecord;

public class BorrowRecordService {
private BorrowRecordDao recordDao = new BorrowRecordDao(); 
	
	public void initBorrowRecord() throws SQLException {
		recordDao.dropBorrowRecord();
		recordDao.createBorrowRecord();
		BorrowRecord record = new BorrowRecord();
		record.setBorrowId(1);
		record.setUserId(1);
		record.setBookId(1);
		record.setBookName("小王子");
		record.setBorrowTime("2017-5-15");
		record.setShouldTime("2017-6-20");
		record.setReturnTime("2017-6-11");
		record.setState(0);
		recordDao.insertBorrowRecord(record);
	
		record = new BorrowRecord();
		record.setBorrowId(2);
		record.setUserId(2);
		record.setBookId(2);
		record.setBookName("格林童话");
		record.setBorrowTime("2018-9-12");
		record.setShouldTime("2018-12-23");
		record.setReturnTime("2018-10-7");
		record.setState(1);
		recordDao.insertBorrowRecord(record);
		
		record = new BorrowRecord();
		record.setBorrowId(3);
		record.setUserId(1);
		record.setBookId(2);
		record.setBookName("格林童话");
		record.setBorrowTime("2018-9-12");
		record.setShouldTime("2018-12-23");
		record.setReturnTime("2018-10-7");
		record.setState(0);
		recordDao.insertBorrowRecord(record);
	}

	public void addBorrowRecord(BorrowRecord record) throws SQLException {
		recordDao.insertBorrowRecord(record);
	}
	
	public void deleteBorrowRecordbybowidandbookid(int UserId,int BookId) throws SQLException {
		
		recordDao.deleteBorrowRecordbybowidandbookid(UserId, BookId);
	}
	public void deleteBorrowRecordbybowid(int BorrowId) throws SQLException {
		recordDao.deleteBorrowRecordbybowid(BorrowId);	
	}
	public void updateBorrowRecordbyid(BorrowRecord record) throws SQLException {
		recordDao.updateBorrowRecordbyid(record);
	}	
	public void updateBorrowRecord(BorrowRecord record) throws SQLException {
		recordDao.updateBorrowRecord(record);
	}	
	public List<BorrowRecord> getAllBorrowRecord() throws SQLException{
		return recordDao.selectAllBorrowRecord();
	}
	public List<BorrowRecord> getBorrowbyUserId(int UserId) throws SQLException{
		return recordDao.selectBorrowbyUserId(UserId);
	}
	public List<BorrowRecord> getBorrowOntime(int UserId) throws SQLException{
		return recordDao.selectBorrowOntime(UserId);
	}
	public List<BorrowRecord> getbyBookName(String BookName) throws SQLException{
		return recordDao.selectBorrowName(BookName);
	}
	public BorrowRecord getBorrowRecordByBookId(int BookId) throws SQLException {
		return recordDao.selectBorrowRecordByBookId(BookId);
	}
	public BorrowRecord getBorrowRecordByUserId(int UserId) throws SQLException {
		return recordDao.selectBorrowRecordbyUserId(UserId);
	}
}


