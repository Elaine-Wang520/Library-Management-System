package com.hqyj.dao.entity;

import java.io.Serializable;

public class BookInfo implements Serializable {
	
	private static final long serialVersionUID = 5215380868902999601L;
	private int BookId;
	private String BookName;
	private String Author;
	private String Translator;
	private int Price;
	private String ISBNCode;
	private String ComeUpTime;
	private String PublishCompany;
	private int State;  //0--借出  1--在库
	private String EnteringMen;
	private String EnteringDate;
	
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
	public void setAuthor(String Author){
		this.Author = Author;
	}
	public String getAuthor(){
		return Author;
	}
	public void setTranslator(String Translator){
		this.Translator = Translator;
	}
	public String getTranslator(){
		return Translator;
	}
	public void setISBNCode(String ISBNCode){
		this.ISBNCode = ISBNCode;
	}
	public String getISBNCode(){
		return ISBNCode;
	}
	public void setComeUpTime(String ComeUpTime){
		this.ComeUpTime = ComeUpTime;
	}
	public String getComeUpTime(){
		return ComeUpTime;
	}
	public void setPublishCompany(String PublishCompany){
		this.PublishCompany = PublishCompany;
	}
	public String getPublishCompany(){
		return PublishCompany;
	}
	public void setEnteringMen(String EnteringMen){
		this.EnteringMen = EnteringMen;
	}
	public String getEnteringMen(){
		return EnteringMen;
	}
	public void setEnteringDate(String EnteringDate){
		this.EnteringDate = EnteringDate;
	}
	public String getEnteringDate(){
		return EnteringDate;
	}
	
	public void setPrice(int Price){
		this.Price=Price;
	}
	public int getPrice(){
		return Price;
	}
	public void setState(int State){
		this.State=State;
	}
	public int getState(){
		return State;
	}
}
