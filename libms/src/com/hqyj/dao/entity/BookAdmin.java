package com.hqyj.dao.entity;


import java.io.Serializable;

public class BookAdmin implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1581222224642729948L;
	private int AdId;
	private String AdName;
	private String AdPassword;
	private String AdPhone;
	private String AdEmail;
	public void setAdId(int AdId){
		this.AdId = AdId;
	}
	public int getAdId(){
		return AdId;
	}
	public void setAdName(String AdName){
		this.AdName = AdName;
	}
	public String getAdName(){
		return AdName;
	}
	public void setAdPassword(String AdPassword){
		this.AdPassword = AdPassword;
	}
	public String getAdPassword(){
		return AdPassword;
	}
	public void setAdPhone(String AdPhone){
		this.AdPhone = AdPhone;
	}
	public String getAdPhone(){
		return AdPhone;
	}
	public void setAdEmail(String AdEmail){
		this.AdEmail = AdEmail;
	}
	public String getAdEmail(){
		return AdEmail;
	}
}
