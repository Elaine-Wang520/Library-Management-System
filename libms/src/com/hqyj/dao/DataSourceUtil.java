package com.hqyj.dao;

import java.util.ResourceBundle;
import java.sql.*;

public class DataSourceUtil {
	static Connection conn=null;
	static String driverClassName=null;
	static String url=null;
	static String username=null;
	static String password=null;
	
	static{
		ResourceBundle resource = ResourceBundle.getBundle("jdbc");
		driverClassName = resource.getString("driverClassName");
		url = resource.getString("url");
		username = resource.getString("username");
		password = resource.getString("password");
	}
	
	//连接数据库
	public Connection initConn() throws Exception{
		Class.forName(driverClassName);
		conn=DriverManager.getConnection(url,username,password);
		return conn;
	}
	
	//关闭数据库
	public void colseConn() throws Exception{	
		conn.close();
		
	}
}
