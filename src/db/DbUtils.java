package db;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbUtils {
	private static DbUtils instance = null;
	private Connection connection;
	private Statement statement;
	private ResultSet resultset;
	private DbPool pool;
	public  DbUtils() {}

	public static DbUtils getInstance() {
		if (instance == null)
			instance = new DbUtils();
		return instance;
	}

	public ResultSet Query(String sql) {
		resultset = null;
		connection = getConnection();
		try {
			statement = connection.createStatement();
			resultset = statement.executeQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		close();
		return resultset;
	}
	public int Add(String sql) {
		int result = 0;
		connection = getConnection();
		try {
			statement = connection.createStatement();
			result = statement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		close();
		return result;
	}
	public int Update(String sql) {
		int result = 0;
		connection = getConnection();
		try {
			statement = connection.createStatement();
			result = statement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		close();
		return result;
	}
	
	public void close() {
		if (statement != null) {
			try {
				statement.close();
				statement = null;
			} catch (Exception e) {
				e.printStackTrace();
			}
			statement = null;
		}
		if (connection != null) {
			try {
				connection.close();
				connection = null;
			} catch (Exception e) {
				e.printStackTrace();
			}
			connection = null;
		}
		if(connection==null&&statement==null)
		System.out.println("SUCCESS CLOSED");
	}

	public static Connection getConnection() {
		DbPool db = new DbPool();
		db.getConn();
		Connection connt = db.getConne();
		return connt;
	}
	
	public static PreparedStatement prepare(Connection conn, String sql) {
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}
	public static void close(Statement stmt) {
		try {
			stmt.close();
			stmt = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			rs.close();
			rs = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(Connection conn) {
		
		try {
			conn.close();
			conn = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
