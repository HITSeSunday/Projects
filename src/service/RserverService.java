package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.DbUtils;
import model.Reserve;

public class RserverService {
	
	
	
	public static void AddReserve(Reserve reserveToAdd){
		Connection connection = DbUtils.getConnection();
		Reserve newrs = reserveToAdd;
		String sql = "insert into reserve values (?,?,?,?,?,?)";
		PreparedStatement statement =  DbUtils.prepare(connection, sql);
		try {
			statement.setString(1, reserveToAdd.getTeacherName());
			//System.out.print(reserveToAdd.getTeacherName()+"!!!!!!!!!!");
			statement.setString(2, reserveToAdd.getClassName());
			statement.setString(3, reserveToAdd.getPlaceName());
			statement.setLong(4, reserveToAdd.getStartTime());
			statement.setLong(5, reserveToAdd.getEndTime());
			statement.setInt(6, reserveToAdd.getReserveId());
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DbUtils.close(statement);
		DbUtils.close(connection);
	}
	
	public static void DeleteReserveById(int id){
		Connection connection = DbUtils.getConnection();
		String sql = "delete from reserve where reserveid=?";
		PreparedStatement statement =  DbUtils.prepare(connection, sql);
		try {
			statement.setInt(1, id);
			System.out.print(id+"!!!!!!!!!!");
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DbUtils.close(statement);
		DbUtils.close(connection);
	}
	/*public Reserve  All() {
		//System.out.println("!!");
		String sql = "select * from reserve";
		ResultSet rs = null;
		rs = DbUtils.getInstance().Query(sql);
		try {
				Reserve reserve = new Reserve();
				reserve.setTeacherName(rs.getString(1));
				reserve.setClassName(rs.getString(2));
				reserve.setPlace(rs.getString(3));
				reserve.setStartTime(rs.getLong(4));
				reserve.setEndTime(rs.getLong(5));
				reserve.setReserveid(rs.getInt(6));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}*/

}
