package com.hqyj.dao.entity;

import java.io.Serializable;

public class UserInfo implements Serializable {

	
	private static final long serialVersionUID = -1581222224642729948L;
	private int UserId;
	private String UserName;
	private String Password;
	private String Departments;
	private String Major;
	private String Phone;
	private String Email;
	private int Max;
	private int Time;
	private int LendedNum;
	
	
	public void setUserId(int UserId){
		this.UserId = UserId;
	}
	public int getUserId(){
		return UserId;
	}
	public void setUserName(String UserName){
		this.UserName = UserName;
	}
	public String getUserName(){
		return UserName;
	}
	public void setPassword(String Password){
		this.Password = Password;
	}
	public String getPassword(){
		return Password;
	}
	public void setPhone(String Phone){
		this.Phone = Phone;
	}
	public String getPhone(){
		return Phone;
	}
	public void setDepartments(String Departments){
		this.Departments = Departments;
	}
	public String getDepartments(){
		return Departments;
	}
	public void setMajor(String Major){
		this.Major = Major;
	}
	public String getMajor(){
		return Major;
	}
	public void setEmail(String Email){
		this.Email = Email;
	}
	public String getEmail(){
		return Email;
	}
	public void setMax(int Max){
		this.Max = Max;
	}
	public int getMax(){
		return Max;
	}
	public void setTime(int Time){
		this.Time = Time;
	}
	public int getTime(){
		return Time;
	}
	public void setLendedNum(int LendedNum){
		this.LendedNum = LendedNum;
	}
	public int getLendedNum(){
		return LendedNum;
	}
}

