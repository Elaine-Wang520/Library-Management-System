package com.hqyj.service;

import java.sql.SQLException;
import java.util.List;


import com.hqyj.dao.SystemAdminDao;

import com.hqyj.dao.entity.SystemAdmin;


public class SystemAdminService {
	
	private SystemAdminDao adminDao = new SystemAdminDao(); 
	
	public void initSystemAdmin() throws SQLException {
		adminDao.dropSystemAdmin();
		adminDao.createSystemAdmin();
		SystemAdmin systemadmin = new SystemAdmin();
		systemadmin.setAdminId(1);
		systemadmin.setAdminName("wang");
		systemadmin.setAdminPassword("123456");
		systemadmin.setAdminPhone("123456789");
		systemadmin.setAdminEmail("854782383@qq.com");
		adminDao.insertSystemAdmin(systemadmin);
	
		systemadmin = new SystemAdmin();
		systemadmin.setAdminId(2);
		systemadmin.setAdminName("anne");
		systemadmin.setAdminPassword("123456");
		systemadmin.setAdminPhone("123456789");
		systemadmin.setAdminEmail("1234567@qq.com");
		adminDao.insertSystemAdmin(systemadmin);
			
	}

	public void addSystemAdmin(SystemAdmin admin) throws SQLException {
		adminDao.insertSystemAdmin(admin);
	}
	
	public void deleteSystemAdmin(int AdminId) throws SQLException {
		adminDao.deleteSystemAdmin(AdminId);
	}
	
	public void updateSystemAdmin(SystemAdmin admin) throws SQLException {
		adminDao.updateSystemAdmin(admin);
	}
	
	public List<SystemAdmin> getAllSystemAdmin() throws SQLException{
		return adminDao.selectAllSystemAdmin();
	}
	
	public SystemAdmin getAdmin(int AdminId, String AdminPassword) throws SQLException {
		return adminDao.selectSystemAdminByIdAndPwd(AdminId, AdminPassword);
	}
	public SystemAdmin getSystemAdmin(int AdminId) throws SQLException {
		return adminDao.selectSystemAdminsByAdId(AdminId);
	}
}

