package com.hqyj.dao.entity;

import java.io.Serializable;

public class BorrowRecord implements Serializable {

	
	private static final long serialVersionUID = -1581222224642729948L;
	private int BorrowId;
	private int UserId;
	private int BookId;
	private String BookName;
	private String BorrowTime;
	private String ShouldTime;
	private String ReturnTime;
	private int State;
	public void setBorrowId(int BorrowId){
		this.BorrowId = BorrowId;
	}
	public int getBorrowId(){
		return BorrowId;
	}
	public void setUserId(int UserId){
		this.UserId = UserId;
	}
	public int getUserId(){
		return UserId;
	}
	public void setBookId(int BookId){
		this.BookId = BookId;
	}
	public int getBookId(){
		return BookId;
	}
	public void setBookName(String BookName){
		this.BookName = BookName;
	}
	public String getBookName(){
		return BookName;
	}
	public void setBorrowTime(String BorrowTime){
		this.BorrowTime = BorrowTime;
	}
	public String getBorrowTime(){
		return BorrowTime;
	}
	public void setShouldTime(String ShouldTime){
		this.ShouldTime = ShouldTime;
	}
	public String getShouldTime(){
		return ShouldTime;
	}
	public void setReturnTime(String ReturnTime){
		this.ReturnTime = ReturnTime;
	}
	public String getReturnTime(){
		return ReturnTime;
	}
	public void setState(int State){
		this.State = State;
	}
	public int getState(){
		return State;
	}
}

