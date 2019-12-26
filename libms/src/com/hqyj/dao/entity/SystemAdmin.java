package com.hqyj.dao.entity;


import java.io.Serializable;

public class SystemAdmin implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1581222224642729948L;
	private int AdminId;
	private String AdminName;
	private String AdminPassword;
	private String AdminPhone;
	private String AdminEmail;
	public void setAdminId(int AdminId){
		this.AdminId = AdminId;
	}
	public int getAdminId(){
		return AdminId;
	}
	public void setAdminName(String AdminName){
		this.AdminName = AdminName;
	}
	public String getAdminName(){
		return AdminName;
	}
	public void setAdminPassword(String AdminPassword){
		this.AdminPassword = AdminPassword;
	}
	public String getAdminPassword(){
		return AdminPassword;
	}
	public void setAdminPhone(String AdminPhone){
		this.AdminPhone = AdminPhone;
	}
	public String getAdminPhone(){
		return AdminPhone;
	}
	public void setAdminEmail(String AdminEmail){
		this.AdminEmail = AdminEmail;
	}
	public String getAdminEmail(){
		return AdminEmail;
	}
}

