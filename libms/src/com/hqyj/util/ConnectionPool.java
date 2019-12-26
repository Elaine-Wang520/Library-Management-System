package com.hqyj.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.h2.jdbcx.JdbcConnectionPool;

public class ConnectionPool {
	 private static ConnectionPool cp = null;
	    private JdbcConnectionPool jdbcCP = null;

	    private ConnectionPool() {
	        String dbPath ="./db/test";
	        jdbcCP = JdbcConnectionPool.create("jdbc:h2:" + dbPath, "sa", "");
	        jdbcCP.setMaxConnections(50);
	    }

	    public static ConnectionPool getInstance() {
	        if (cp == null) {
	            cp = new ConnectionPool();
	        }
	        return cp;
	    }

	    public Connection getConnection() throws SQLException {
	        return jdbcCP.getConnection();
	    }
	    
	    public static void releaseConnection(Connection conn, Statement stmt,
	            ResultSet rs) throws SQLException {
	        if (rs != null) {
	            rs.close();
	        }
	        if (stmt != null) {
	            stmt.close();
	        }
	        if (conn != null) {
	            conn.close();
	        }
	    }
}
