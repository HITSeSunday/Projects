package webAction;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import model.Reserve;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import service.RserverService;
import db.DbUtils;


public class ReserveAction extends ActionSupport  implements ModelDriven {
	private List<Reserve> list;
	Map<String, Object> map;
	
	private Reserve reserve = new Reserve();
	public void setRequest(Map<String, Object> map) {
	  this.map = map;
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
				reserve.setPlaceName(rs.getString(3));
				reserve.setStartTime(rs.getLong(4));
				reserve.setEndTime(rs.getLong(5));
				reserve.setReserveId(rs.getInt(6));
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
		RserverService.DeleteReserveById(this.reserve.getReserveId());
		return "SUCCESS";
	}
	
	public String AddReserve(){
		RserverService.AddReserve(this.reserve);
		return "SUCCESS";
	}
	

	// here need jsp 's teacher name 
	/*public String QueryByTeachername(){
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
	}*/
}
