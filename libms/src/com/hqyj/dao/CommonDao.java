package com.hqyj.dao;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hqyj.util.ConnectionPool;

public class CommonDao {

    public void crateTable(String tableName, String sql) throws SQLException {
        Connection conn = null;
        Statement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            DatabaseMetaData meta = conn.getMetaData();
            meta.getCatalogs();
            meta.getSchemas();
            ResultSet rsTables = meta.getTables(null, null, tableName.toUpperCase(),
                    new String[] { "TABLE" });
            if (!rsTables.next()) {
                stmt = conn.createStatement();
                stmt.execute(sql);
            }
            rsTables.close();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
    }
    
    public void dropTable(String tableName) throws SQLException {
        Connection conn = null;
        Statement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            DatabaseMetaData meta = conn.getMetaData();

            ResultSet rsTables = meta.getTables(null, null, tableName.toUpperCase(),
                    new String[] { "TABLE" });
            if (rsTables.next()) {
                stmt = conn.createStatement();
                stmt.execute("drop table " + tableName);
            }
            rsTables.close();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
    }

    public void addInfo(String str, long lastModifyTime,
            String status) throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();

            stmt = conn
                    .prepareStatement("INSERT INTO WEATHERINFO VALUES(?,?,?)");
            stmt.setString(1, str);
            stmt.setString(2, String.valueOf(lastModifyTime));
            stmt.setString(3, status);
            stmt.execute();

        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, null);
        }
    }

    public boolean isInfoExits(String filePath, long lastModifyTime)
            throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = ConnectionPool.getInstance().getConnection();
            stmt = conn
                    .prepareStatement("SELECT WEATHERSTR FROM WEATHERINFO WHERE STATUS=? AND LASTMODIFYTIME=?");
            stmt.setString(1, filePath);
            stmt.setString(2, String.valueOf(lastModifyTime));
            rs = stmt.executeQuery();
            return rs.next();
        } finally {
        	ConnectionPool.releaseConnection(conn, stmt, rs);
        }
    }



}
