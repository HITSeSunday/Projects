package webAction;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

import model.Reserve;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import db.DbUtils;

public class ReserveAction extends ActionSupport implements ModelDriven {
	private List<Reserve> list;
	private List<Reserve> lists;
	private Map session;
	Date now = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public List<Reserve> getLists() {
		return lists;
	}

	public void setLists(List<Reserve> lists) {
		this.lists = lists;
	}

	Map<String, Object> map;
	private int stuid;
	private int reserveid;

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

	public int tranInt2(String s) {
		String tmp[] = s.split(":");
		int ans = Integer.parseInt(tmp[0]) * 3600;
		ans += Integer.parseInt(tmp[1]) * 60;
		return ans;
	}

	public String ReserveReserve() {
		ResultSet rs = null;
		String thename =null;
		session = ActionContext.getContext().getSession();
		System.out.println("YYJ");
		String sql1 = "select * from reserve where reserveid="
				+ this.reserve.getReserveId();
		System.out.println(sql1);
		rs = DbUtils.getInstance().Query(sql1);
		String starttime = "", endtime = "";
		String thedat = null;
		try {
			Reserve res = new Reserve();
			res = this.reserve;
			while (rs.next()) {
				thename = rs.getString(2);
				thedat = rs.getString(6);
				starttime = rs.getString(3);
				endtime = rs.getString(4);
				int t = rs.getInt(7);
				if (t != 0) {
					if(t== (int)session.get("studentid"))
					{
						session.put("reserveerror", "你已经预约了哦");
						return "ERROR";
					}
					session.put("reserveerror", "已经有人预约了哦");
					return "ERROR";
				}
			}
			String Now[] = dateFormat.format(now).split(" ");
			if (thedat.compareTo(Now[0]) < 0) {
				session.put("reserveerror", "这个时间已经过去了..");
				return "ERROR";
			}
			int st = tranInt2(starttime);
			int ed = tranInt2(endtime);
			System.out.println(thedat.compareTo(Now[0]));
			if (thedat.compareTo(Now[0]) == 0) {
				int now = tranInt2(Now[1]);
				if (now >= st)
					{
						session.put("reserveerror", "这个时间已经过去了..");
						return "ERROR";
					}
			}
			System.out.println(res.getStartTime());
			System.out.println(res.getEndTime());
			int nest = tranInt2(res.getStartTime());
			int need = tranInt2(res.getEndTime());
			System.out.println(nest);
			System.out.println(need);
			boolean canbe = (nest >= st && need <= ed);
			// note here!!!!!!!!!
			// need two result name
			if (!canbe) {
				session.put("reserveerror", "你想要的时间和老师的不符哦。。");
				return "ERROR";
			}
			if (need - nest < 15 * 60) {
				session.put("reserveerror", "你想要的时间段太短了。。");
				return "ERROR";
			}

			String del = "delete from reserve where reserveid="
					+ this.reserve.getReserveId();// reserveid;
			System.out.println(del);
			DbUtils.getInstance().Update(del);
			System.out.println(nest);
			System.out.println(st);
			if (nest - st >0) {
				sql1 = "INSERT INTO reserve VALUES ("
						+ this.reserve.getTeacherId() + ", '"
						+ thename + "', '" + starttime.substring(0,5)
						+ "','" + this.reserve.getStartTime() + "',null, '"
						+ this.reserve.getDate() + "',0," + "\"无人预约\")";
				System.out.println("diyitiao" + sql1);
				DbUtils.getInstance().Add(sql1);
			}
			if (ed - need >0) {
				sql1 = "INSERT INTO reserve VALUES ("
						+ this.reserve.getTeacherId() + ", '"
						+ thename + "', '"
						+ this.reserve.getEndTime() + "','" + endtime.substring(0,5)
						+ "',null, '" + this.reserve.getDate() + "',0," + "\"无人预约\")";
				System.out.println("diertiao" + sql1);
				DbUtils.getInstance().Add(sql1);
			}
			sql1 = "INSERT INTO reserve VALUES (" + this.reserve.getTeacherId()
					+ ", '" + thename + "', '"
					+ this.reserve.getStartTime() + "','"
					+ this.reserve.getEndTime() + "',null, '"
					+ this.reserve.getDate() + "'," + session.get("studentid")
					+ ",\"" + session.get("studentname") + "\")";
			DbUtils.getInstance().Add(sql1);
			System.out.println("3 " + sql1);
			return "SUCCESS";
		} catch (Exception e) {
			System.out.println("error hjwsae");
			return "ERROR";
		}
	}

	public String CancelReserve() {
		session = ActionContext.getContext().getSession();
		// 先将这段置为未预约状态
//		String sql = "UPDATE `reserve` SET `ss`='0',`ssname`='无人预约'  WHERE (`ReserveId`='"
//				+ this.reserve.getReserveId() + "')";

		// get current time
		String get = "select *  from reserve where ReserveId=" +this.reserve.getReserveId();//reserveid;
		ResultSet rs = null;
		System.out.println("190 "+get);
		rs = DbUtils.getInstance().Query(get);
		String thedat = null;
		String starttime = null;
		String endtime = null;
		int teid=0;
		try {
			while (rs.next()) {
				teid=(int)rs.getInt(1);
				thedat = (String) rs.getString(6);
				starttime = (String) rs.getString(3).substring(0,5);
				endtime = (String) rs.getString(4).substring(0,5);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		System.out.println("start time "+starttime+" "+endtime);
		String sql="delete from reserve where reserveid="+this.reserve.getReserveId();
		// String sql = "update reserve set sss=0";
		DbUtils.getInstance().Update(sql);
		String today[] = dateFormat.format(now).split(" ");
		if (today[0].compareTo(thedat) > 0) {
			return "TIMEERROR";
		} else if (today[0].compareTo(thedat) == 0) {
			int cur = tranInt2(today[1]);
			int st = tranInt2(starttime);
			if (cur <= st + 15 * 60) {
				return "TIMEERROR";
			}
		}
		Reserve T=new Reserve();
		String tmp="select * from reserve where ss=0 and endTime=\""+starttime+"\"";
		rs=DbUtils.getInstance().Query(tmp);
		System.out.println("tmp "+tmp);
		tmp="delete from reserve where ss=0 and endtime=\""+starttime+"\"";
		DbUtils.getInstance().Update(tmp);
		try{
			if(rs.next()){
				T.setTeacherId(rs.getInt(1));
				//T.setTeacherId(rs.getInt(1));
				T.setTeacherName(rs.getString(2));
				String s = rs.getString(3);
				s = s.substring(0, s.length() - 3);
				T.setStartTime(s);
				s = rs.getString(4);
				s = s.substring(0, s.length() - 3);
				T.setEndTime(endtime);
				T.setReserveId(rs.getInt(5));
				T.setDate(rs.getString(6));
				T.setSs(rs.getInt(7));
				T.setSsname(rs.getString(8));
			}else{
				T.setStartTime(starttime);
			}
		}catch(Exception e){
			e.printStackTrace();return "EEE";
		}
		
		tmp="select * from reserve where ss=0 and starttime=\""+endtime+"\"";
		rs=DbUtils.getInstance().Query(tmp);
		System.out.println("tmp "+tmp);
		tmp="delete from reserve where ss=0 and starttime=\""+endtime+"\"";
		DbUtils.getInstance().Update(tmp);
		try{
			if(rs.next()){
				T.setTeacherId(rs.getInt(1));
				//T.setTeacherId(rs.getInt(1));
				T.setTeacherName(rs.getString(2));
				String s = rs.getString(3);
				s = s.substring(0, s.length() - 3);
				//T.setStartTime(starttime);
				s = rs.getString(4);
				s = s.substring(0, s.length() - 3);
				T.setEndTime(s);
				T.setReserveId(rs.getInt(5));
				T.setDate(rs.getString(6));
				T.setSs(rs.getInt(7));
				T.setSsname(rs.getString(8));
			}else{
				T.setEndTime(endtime);
			}
			T.Print();
		}catch(Exception e){
			e.printStackTrace();return "EEE";
		}
		String sql2 = "INSERT INTO reserve VALUES ("
				+ T.getTeacherId() + ", '"
				+ T.getTeacherName() + "', '"
				+ T.getStartTime() + "','"
				+ T.getEndTime() + "',null, '"
				+ T.getDate() + "',0,\"无人预约\")";
		System.out.println(sql2);
		DbUtils.getInstance().Add(sql2);
		
		
		return "SUCCESS";
	}

	// here need jsp's reserveid
	// follow the id to delete
	public String DeleteReserve() {
		String sql = "delete from reserve where reserveid=" + reserveid;
		DbUtils.getInstance().Update(sql);
		System.out.println(sql);
		// RserverService.DeleteReserveById(reserveid);
		return "SUCCESS";
	}

	// !!need change here
	public String AddReserve() {
		// System.out.println(username);
		session = ActionContext.getContext().getSession();
		System.out.println(this.reserve.getTeacherName() + "  name");
		System.out.println(this.reserve.getStartTime() + "  "
				+ this.reserve.getEndTime());
		int stt = tranInt2(this.reserve.getStartTime());
		int edd = tranInt2(this.reserve.getEndTime());
		System.out.println(stt + " " + edd);
		if (edd - stt > 0 && edd - stt <= 15 * 60) {
			session.put("adderror", "您的空闲时间有点短啊...");
			return "ERROR";
		} else if (edd - stt <= 0) {
			session.put("adderror", "还没开始就已经结束了？");
			return "ERROR";
		}
		String time[] = dateFormat.format(now).split(" ");
		if (time[0].compareTo(this.reserve.getDate()) > 0) {
			session.put("adderror", "这一天已经过去了...");
			return "ERROR";
		}
		// System.out.println("301@!#$"+time[1]);
		else if (time[0].compareTo(this.reserve.getDate()) == 0) {

			int cur = tranInt2(time[1]);
			if (stt < cur || edd < cur) {
				session.put("adderror", "这个时间已经过去了吧..");
				return "ERROR";
			}
			if (stt <= cur + 15 * 60) {
				session.put("adderror", "这个时间有点近，学生准备不及啊");
				return "ERROR";
			}
		}
		System.out.println("YYY");
		// 判断有没有重合
		String dou = "select starttime,endtime from reserve where TeacherId="
				+ this.reserve.getTeacherId() + " and Date=\""
				+ this.reserve.getDate() + "\"";
		ResultSet rs = DbUtils.getInstance().Query(dou);
		try {
			while (rs.next()) {
				Reserve reserve = new Reserve();
				reserve.setStartTime(rs.getString(1));
				reserve.setEndTime(rs.getString(2));
				int stt1 = tranInt2(reserve.getStartTime());
				int edd1 = tranInt2(reserve.getEndTime());
				if (stt >= stt1 && stt <= edd1)
					{
					session.put("adderror", "好像和发布过的空闲时间有重叠哦~");
					return "ERROR";
					}
				if (edd >= stt1 && edd <= edd1)
					{
					session.put("adderror", "好像和发布过的空闲时间有重叠哦~");
					return "ERROR";
					}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		String sql = "INSERT INTO reserve VALUES ("
				+ this.reserve.getTeacherId() + ", '"
				+ session.get("teachername") + "', '"
				+ this.reserve.getStartTime() + "','"
				+ this.reserve.getEndTime() + "',null, '"
				+ this.reserve.getDate() + "',0,\"无人预约\")";
		System.out.println(sql);
		DbUtils.getInstance().Add(sql);
		// RserverService.AddReserve(this.reserve);
		return "SUCCESS";
	}

	public String Tea() {
		String sql = "select * from reserve where TeacherId="
				+ this.reserve.getTeacherId() + " and date=\""
				+ this.reserve.getDate() + "\"";
		ResultSet rs = null;
		rs = DbUtils.getInstance().Query(sql);
		System.out.println("351"+sql);
		try {
			list = new ArrayList<Reserve>();
			while (rs.next()) {
				Reserve reserve = new Reserve();
				reserve.setTeacherId(rs.getInt(1));
				reserve.setTeacherName(rs.getString(2));
				String s = rs.getString(3);
				s = s.substring(0, s.length() - 3);
				reserve.setStartTime(s);
				s = rs.getString(4);
				s = s.substring(0, s.length() - 3);
				reserve.setEndTime(s);
				reserve.setReserveId(rs.getInt(5));
				reserve.setDate(rs.getString(6));
				reserve.setSs(rs.getInt(7));
				reserve.setSsname(rs.getString(8));
				int st=tranInt2(reserve.getStartTime());
				int ed=tranInt2(reserve.getEndTime());
				if(ed-st>=15*60)list.add(reserve);
				//reserve.Print();
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("ERRORHERE");
			return "ERROR";
		}
		return "SUCCESS";
	}

	public String Stu() {
		String sql = "select * from reserve where ss=\"" + this.reserve.getSs()
				+ "\"";
		ResultSet rs = null;
		rs = DbUtils.getInstance().Query(sql);
		System.out.println(sql);
		try {
			lists = new ArrayList<Reserve>();
			while (rs.next()) {
				Reserve reserve = new Reserve();
				reserve.setTeacherId(rs.getInt(1));
				reserve.setTeacherName(rs.getString(2));
				String s = rs.getString(3);
				s = s.substring(0, s.length() - 3);
				reserve.setStartTime(rs.getString(3));
				s = rs.getString(4);
				s = s.substring(0, s.length() - 3);
				reserve.setEndTime(rs.getString(4));
				reserve.setReserveId(rs.getInt(5));
				reserve.setDate(rs.getString(6));
				reserve.setSs(rs.getInt(7));
				reserve.setSsname(rs.getString(8));
				lists.add(reserve);
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

	public String tRecent() {
		session = ActionContext.getContext().getSession();
		int tid = (int) session.get("teacherid");
		String sql = "select * from reserve where TeacherId=" + tid
				+ " and ss>0";
		ResultSet rs = null;
		rs = DbUtils.getInstance().Query(sql);
		try {
			list = new ArrayList<Reserve>();
			while (rs.next()) {
				Reserve tmp = new Reserve();
				tmp.setTeacherId(rs.getInt(1));
				tmp.setTeacherName(rs.getString(2));
				tmp.setStartTime(rs.getString(3));
				tmp.setEndTime(rs.getString(4));
				tmp.setReserveId(rs.getInt(5));
				tmp.setDate(rs.getString(6));
				tmp.setSs(rs.getInt(7));
				tmp.setSsname(rs.getString(8));
				if (isLegal(dateFormat.format(now), tmp.getDate()) == true)
					list.add(tmp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		return "SUCCESS";
	}

	public boolean isLegal(String cur, String l) {
		if (cur.compareTo(l) < 0)
			return true;
		else
			return false;
	}

	public String sRecent() {
		session = ActionContext.getContext().getSession();
		int tid = (int) session.get("studentid");
		String sql = "select * from reserve where StudentId=" + tid
				+ " and ss>0";
		ResultSet rs = null;
		rs = DbUtils.getInstance().Query(sql);
		try {
			list = new ArrayList<Reserve>();
			while (rs.next()) {
				Reserve tmp = new Reserve();
				tmp.setTeacherId(rs.getInt(1));
				tmp.setTeacherName(rs.getString(2));
				tmp.setStartTime(rs.getString(3));
				tmp.setEndTime(rs.getString(4));
				tmp.setReserveId(rs.getInt(5));
				tmp.setDate(rs.getString(6));
				tmp.setSs(rs.getInt(7));
				tmp.setSsname(rs.getString(8));
				if (isLegal(dateFormat.format(now), tmp.getDate()) == true)
					list.add(tmp);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "ERROR";
		}
		return "SUCCESS";
	}
}
