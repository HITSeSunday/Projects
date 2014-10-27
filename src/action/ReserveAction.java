package action;
import java.sql.ResultSet;
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
	
	private int reserveid;
	private String teachername;
	private String studentsname;

	private Reserve reserve = new Reserve();
	public void setRequest(Map<String, Object> map) {
	  this.map = map;
	}
	public void setReserveid(int _Reserveid){
		this.reserveid = _Reserveid;
	}
	public int getReserveid(){
		return this.reserveid;
	}
	public void setTeachername(String rmp){
		this.teachername=rmp;
	}
	public String getTeachername(){
		return this.teachername;
	}
	public void setStudentsname(String tmp){
		this.stutendsname=tmp;
	}
	public String getStudentsname(){
		return this.stutendsname;
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
	public String Delete(){
		String sql = "delete * from reserve where reserveid is "+ reserveid;
		int rs=0;
		rs = DbUtils.getInstance().delete(Sql);
		try {
			return "SUCCESS";
		}
		catch(Exception e){
			return "ERROR";
		}
		return "SUCCESS";
	}
	// here need jsp 's teacher name 
	public String QueryByTeachername(){
		String sql = "select * from reserve where teachename = "+ teachername;
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
