package action;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;



import bean.Reserve;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import db.DbUtils;


public class ReserveAction extends ActionSupport  implements ModelDriven {
	private List<Reserve> list;
	Map<String, Object> map;
	

	private String teachername;
	private String studentsname;

	private Reserve reserve = new Reserve();
	private int reserveid;
	public void setRequest(Map<String, Object> map) {
	  this.map = map;
	}

	public void setTeachername(String rmp){
		this.teachername=rmp;
	}
	public String getTeachername(){
		return this.teachername;
	}
	public void setStudentsname(String tmp){
		this.studentsname=tmp;
	}
	public String getStudentsname(){
		return this.studentsname;
	}
	public List<Reserve> getList(){
		return this.list;
	}
	public void setList(List<Reserve> list){
		this.list=list;
	}
	public Object getModel() {
		return this.reserve;
	}
	public String All() {
		//System.out.println("!!");
		String sql = "select * from reserve";
		ResultSet rs = null;
		rs = DbUtils.getInstance().Query(sql);
		try {
			list = new ArrayList<Reserve>();
			while (rs.next()) {
				Reserve reserve = new Reserve();
				reserve.setTeacherName(rs.getString(1));
				reserve.setClassName(rs.getString(2));
				reserve.setPlace(rs.getString(3));
				reserve.setStartTime(rs.getLong(4));
				reserve.setEndTime(rs.getLong(5));
				reserve.setReserveid(rs.getInt(6));
				list.add(reserve);
				reserve.Print();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		return "SUCCESS";
	}
	
	// here need jsp's reserveid 
	//follow the id to delete
	public String DeleteReserve(){
		reserveid=this.reserve.getReserveid();
		String sql = "delete from reserve where reserveid="+ reserveid;
		int rs=0;
		System.out.println(sql+"here!!!!");
		rs = DbUtils.getInstance().delete(sql);
		try {
			return "SUCCESS";
		}
		catch(Exception e){
			return "ERROR";
		}

	}
	// here need jsp 's teacher name 
	public String QueryByTeachername(){
		String sql = "select * from reserve where teachename="+ teachername;
		ResultSet rs = null;
		rs = DbUtils.getInstance().Query(sql);
		try{
			list = new ArrayList<Reserve>();
			while(rs.next()){
				Reserve reserve = new Reserve();
				reserve.setTeacherName(rs.getString(1));
				reserve.setClassName(rs.getString(2));
				reserve.setPlace(rs.getString(3));
				reserve.setStartTime(rs.getLong(4));
				reserve.setEndTime(rs.getLong(5));
				list.add(reserve);
				reserve.Print();
			}
		}catch(Exception e){
			e.printStackTrace();
			return "ERROR";
		}
		return "SUCCESS";
	}
}
