package webAction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
//int mainint main
import com.opensymphony.xwork2.ActionSupport;

import db.DbUtils;

public class LoginAction extends ActionSupport {
	private String password;
	private String username;
	private Map session;
	Date now = new Date();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String TeacherLogin() {
		session = ActionContext.getContext().getSession();
		ResultSet rs = null;
		String result = "";
		DbUtils la = DbUtils.getInstance();

		try {
			String sql = "select password,teachername,teacherid,recent from user_teacher where username=\""
					+ username + "\"";
			System.out.println(sql);
			rs = la.Query(sql);
			//la.close();
			String las=null;
			if (rs.next()) {
				las=rs.getString(4);
				String now1=dateFormat.format(now);
				if(las==null){
					las=now1;
				}
				
				String input = String.valueOf(rs.getString(1));
				System.out.println("input: " + input);
				System.out.println("pass: " + password + "  " + input);
				if ((password.equals(input)) == true) {
					System.out.println("SU: " + password + " " + input);
					String teacherName = rs.getString(2);
					int teacherId = rs.getInt(3);
					session.put("teachername", teacherName);
					session.put("teacherId", teacherId);
					session.put("trecent", las);
					String sql1="update user_teacher set recent=\""+now1+"\"where teacherid="+teacherId;
					la.Update(sql1);
					la.close();
					return "SUCCESS";
				} else {
					la.close();
					session.put("tloginerror", "密码错误！");
					return "ERROR";
				}
			} else {
				la.close();
				session.put("tloginerror", "用户名不存在！");
				return "ERROR";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "ERROR";
		}
		// System.out.println(result);
		// return result;
	}

	public String StudentLogin() {
		session = ActionContext.getContext().getSession();
		ResultSet rs = null;
		String result = "";
		DbUtils la = DbUtils.getInstance();
		// Connection connection = DbUtils.getConnection();
		try {
			// Statement state = connection.createStatement();
			String sql = "select password,studentname,stuid,recent from user_student where username=\""
					+ username + "\"";
			System.out.println(sql);
			rs = la.Query(sql);
			// //la.close();
			String las=null;
			System.out.println("25");
			if (rs.next()) {
				System.out.println("53");
				
				String input = String.valueOf(rs.getString(1));
				System.out.println("input: " + input);
				System.out.println("pass: " + password + "  " + input);
				if (password.equals(input) == true) {
					String ssname = rs.getString(2);
					System.out.println(ssname);
					session.put("studentname", ssname);
					int ssid = rs.getInt(3);
					System.out.println(ssid);
					session.put("studentid", ssid);
					String now1 = dateFormat.format(now);
					las=rs.getString(4);
					if(las==null){
						las=now1;
					}
					System.out.println("last login "+las);
					session.put("srecent", las);
					
					String sql1 = "update user_student set recent=\"" + now1
							+ "\" where stuid="+ssid;
					la.Update(sql1);
					la.close();
					return "SUCCESS";
				} else {
					la.close();
					session.put("sloginerror", "密码错误！");
					return "ERROR";
				}
			} else {
				 la.close();
				 session.put("sloginerror", "用户名不存在！");
				 System.out.println("yonghum");
				return "ERROR";
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("67!!");
			e.printStackTrace();
			la.close();
			return "ERROR";
		}
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getCurrentStu(String name) {
		int ans = 0;
		String sql = "select stuid from user_student where username=" + "\""
				+ name + "\"";

		ResultSet rs = null;
		System.out.println(sql);
		DbUtils la = DbUtils.getInstance();
		rs = la.Query(sql);
		try {
			while (rs.next()) {
				int tmp = rs.getInt(1);
				ans = tmp;
				break;
			}
		} catch (Exception e) {
			ans = -1;
		}
		la.close();
		return ans;
	}

	public int getCurrentTea(String name) {
		int ans = 0;
		String sql = "select teacherid from user_teacher where username=\""
				+ name + "\"";
		ResultSet rs = null;
		DbUtils la = DbUtils.getInstance();
		rs = la.Query(sql);
		//la.close();
		// rs = DbUtils.getInstance().Query(sql);
		try {
			while (rs.next()) {
				int tmp = rs.getInt(1);
				ans = tmp;
				break;
			}
		} catch (Exception e) {
			ans = -1;
		}
		la.close();
		return ans;
	}
}
