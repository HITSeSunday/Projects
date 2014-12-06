package webAction;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.*;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import service.RserverService;
import db.DbUtils;

public class ReserveAction extends ActionSupport implements ModelDriven {
	private List<Reserve> list;
	Map<String, Object> map;
	private int stuid;
	private int reserveid;
	String date2;
//	private String teacherName;
//	private int teacherId;
//	private String startTime;
//	private String endTime;
//	private String Date;

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public int getStuid() {
		return stuid;
	}

	public int getReserveid() {
		return reserveid;
	}

	public void setReserveid(int reserveid) {
		this.reserveid = reserveid;
	}

	public void setStuid(int stuid) {
		this.stuid = stuid;
	}

	private Reserve reserve = new Reserve();

	public void setRequest(Map<String, Object> map) {
		this.map = map;
	}

	public List<Reserve> getList() {
		return this.list;
	}

	public void setList(List<Reserve> list) {
		this.list = list;
	}

	public Object getModel() {
		return this.reserve;
	}

	public String All() {
		// System.out.println("!!");
		String sql = "select * from reserve";
		ResultSet rs = null;

		rs = DbUtils.getInstance().Query(sql);
		try {
			list = new ArrayList<Reserve>();
			while (rs.next()) {
				Reserve reserve = new Reserve();
				reserve.setTeacherName(rs.getString(2));
				reserve.setStartTime(rs.getString(3));
				reserve.setEndTime(rs.getString(4));
				reserve.setReserveId(rs.getInt(5));

				list.add(reserve);
				reserve.Print();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		return "SUCCESS";
	}

	public String ReserveReserve() {
		ResultSet rs = null;
		String sql1 = "select * from reserve where reserveid=" + reserveid;
		System.out.println(sql1);
		rs = DbUtils.getInstance().Query(sql1);
		try {
			while (rs.next()) {
				int t = rs.getInt(7);
				if (t != 0) {
					return "HAS";
				}
			}
			System.out.println("ADSFADSA");
			String sql = "UPDATE `reserve` SET `ss`='" + stuid
					+ "' WHERE (`ReserveId`='" + reserveid + "')";
			System.out.println(sql + "      AAAAAA");
			DbUtils.getInstance().Update(sql);
			return "SUCCESS";
		} catch (Exception e) {
			System.out.println("error hjwsae");
			return "ERROR";
		}
	}

	public String CancelReserve() {
		String sql = "UPDATE `reserve` SET `ss`='0' WHERE (`ReserveId`='"
				+ reserveid + "')";
		// String sql = "update reserve set sss=0";
		DbUtils.getInstance().Update(sql);
		return "SUCCESS";
	}

	// here need jsp's reserveid
	// follow the id to delete
	public String DeleteReserve() {
		String sql = "delete from reserve where reserveid=" + reserveid;
		DbUtils.getInstance().Update(sql);
		System.out.println(sql);
		 //RserverService.DeleteReserveById(reserveid);
		return "SUCCESS";
	}

	public String AddReserve() {
		// System.out.println(username);
		System.out.println(this.reserve.getTeacherName() + "  name");
		String sql = "INSERT INTO reserve VALUES ("
				+ this.reserve.getTeacherId() + ", '"
				+ this.reserve.getTeacherName() + "', '"
				+ this.reserve.getStartTime() + "','"
				+ this.reserve.getEndTime() + "',null, '"
				+ this.reserve.getDate() + "',0)";
		System.out.println(sql);
		DbUtils.getInstance().Add(sql);
		// RserverService.AddReserve(this.reserve);
		return "SUCCESS";
	}
	public String Tea(){
		String sql="select * from reserve where TeacherId=\""+this.reserve.getTeacherId()+"\" and date=\""+date2+"\"";
		ResultSet rs=null;
		rs=DbUtils.getInstance().Query(sql);
			 System.out.println(sql);
			try {
				list = new ArrayList<Reserve>();
				while (rs.next()) {
					Reserve reserve = new Reserve();
					reserve.setTeacherName(rs.getString(2));
					reserve.setStartTime(rs.getString(3));
					reserve.setEndTime(rs.getString(4));
					reserve.setReserveId(rs.getInt(5));
					reserve.setSs(rs.getInt(7));
					list.add(reserve);
					reserve.Print();
				}
			} catch (Exception e) {
				e.printStackTrace();
				return "ERROR";
			}
			return "SUCCESS";
	}
	public String day(){
		System.out.println(date2);
		String sql="select * from reserve where Date=\""+date2+"\"";
		ResultSet rs=null;
		rs=DbUtils.getInstance().Query(sql);
			// System.out.println("!!")
			try {
				list = new ArrayList<Reserve>();
				while (rs.next()) {
					Reserve reserve = new Reserve();
					reserve.setTeacherName(rs.getString(2));
					reserve.setStartTime(rs.getString(3));
					reserve.setEndTime(rs.getString(4));
					reserve.setReserveId(rs.getInt(5));
					reserve.setSs(rs.getInt(7));
					list.add(reserve);
					reserve.Print();
				}
			} catch (Exception e) {
				e.printStackTrace();
				return "ERROR";
			}
			return "SUCCESS";
		}

	public Reserve getReserve() {
		return reserve;
	}

	public void setReserve(Reserve reserve) {
		this.reserve = reserve;
	}

	// here need jsp 's teacher name
	/*
	 * public String QueryByTeachername(){ String sql =
	 * "select * from reserve where teachename="+ teachername; ResultSet rs =
	 * null; rs = DbUtils.getInstance().Query(sql); try{ list = new
	 * ArrayList<Reserve>(); while(rs.next()){ Reserve reserve = new Reserve();
	 * reserve.setTeacherName(rs.getString(1));
	 * reserve.setClassName(rs.getString(2)); reserve.setPlace(rs.getString(3));
	 * reserve.setStartTime(rs.getLong(4)); reserve.setEndTime(rs.getLong(5));
	 * list.add(reserve); reserve.Print(); } }catch(Exception e){
	 * e.printStackTrace(); return "ERROR"; } return "SUCCESS"; }
	 */
}
