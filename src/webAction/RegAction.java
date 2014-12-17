package webAction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import db.DbUtils;

public class RegAction extends ActionSupport {
	private String pass1;
	private String pass2;
	private String tne;
	private String curpass;
	private Map session;
	private String tclass;
	public String getCurpass() {
		return curpass;
	}

	public void setCurpass(String curpass) {
		this.curpass = curpass;
	}

	private String username;
	private String teacherName;
	private String studentname;
	private int studentnumber;

	public int getStuid() {
		return stuid;
	}

	public void setStuid(int stuid) {
		this.stuid = stuid;
	}
	
	public String getTne() {
		return tne;
	}

	public void setTne(String tne) {
		this.tne = tne;
	}

	public int getTtid() {
		return ttid;
	}

	public void setTtid(int ttid) {
		this.ttid = ttid;
	}

	private int stuid;
	private int ttid;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String email;

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	// private int TotStuId=0;
	// private int TotTeaId=0;
	public String getPass1() {
		return pass1;
	}

	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}

	public String getPass2() {
		return pass2;
	}

	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getTclass() {
		return tclass;
	}

	public void setTclass(String tclass) {
		this.tclass = tclass;
	}

	public int getStudentnumber() {
		return studentnumber;
	}

	public void setStudentnumber(int studentnumber) {
		this.studentnumber = studentnumber;
	}

	// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	public String StuChangePass() {
		DbUtils la = DbUtils.getInstance();
		String sql = "select password from user_student where stuid=" + stuid;
		System.out.println(sql);
		ResultSet rs = null;
		rs = la.Query(sql);
		String pass11 = null;
		try {
			while (rs.next()) {
				pass11 = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			la.close();
			return "ERROR";
		}
		if (curpass.compareTo(pass11) != 0) {
			la.close();
			return "WRONG";
		}
		if (pass1.compareTo(pass2) != 0) {
			la.close();
			return "NOEQUAL";
		}
		if (pass1.length() < 6 || pass1.length() > 18) {
			la.close();
			return "TOOLONG";
		}
		sql = "update user_student set password=\"" + pass1 + "\"where stuid="
				+ stuid;
		DbUtils.getInstance().Update(sql);
		la.close();
		return "SUCCESS";

	}

	public String TeaChangePass() {
		session = ActionContext.getContext().getSession();
		String sql = "select password from user_teacher where teacherid="
				+ ttid;
		System.out.println(sql + "changepass");
		DbUtils la = DbUtils.getInstance();
		ResultSet rs = null;
		rs = la.Query(sql);
		String pass11 = null;
		try {
			while (rs.next()) {
				pass11 = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			la.close();
			session.put("tchangeerror", "数据库错误，请稍后重试！");
			return "ERROR";
		}
		if (curpass.compareTo(pass11) != 0) {
			la.close();
			session.put("tchangeerror", "当前密码错误！");
			return "ERROR";
		}
		if (pass1.compareTo(pass2) != 0) {
			la.close();
			session.put("tchangeerror", "两次输入不符！");
			return "ERROR";
		}
		if (pass1.length() < 6 || pass1.length() > 18) {
			la.close();
			session.put("tchangeerror", "密码长度应该在6-18位！");
			return "ERROR";
		}
		sql = "update user_teacher set password=\"" + pass1
				+ "\"where teacherid=" + ttid;
		System.out.println(sql);
		DbUtils.getInstance().Update(sql);
		la.close();
		return "SUCCESS";

	}

	public String StuReg() {
		session = ActionContext.getContext().getSession();
		ResultSet rs = null;
		System.out.println("REG " + username + " " + pass1 + " " + pass2);
		if(username.length()<3||username.length()>18){
			session.put("sregerror","用户名长度应该在3-18位！");
			return "ERROR";
		}
		Connection connection = DbUtils.getConnection();
	
		try {
			Statement state = connection.createStatement();
			String sql = "select username from user_student where username=\""
					+ username + "\"";
			rs = state.executeQuery(sql);
			if (rs.next())
			{
				session.put("sregerror","用户名已存在！");
				return "ERROR";
			}
			sql="select studentnumber from user_student where studentnumber=\""+studentnumber+"\"";
			rs=state.executeQuery(sql);
			if (rs.next())
			{
				session.put("sregerror","这个学号有人注册了！");
				return "ERROR";
			}
			if (!pass1.equals(pass2))
			{
				session.put("sregerror","两次输入的密码不匹配！");
				return "ERROR";		
			}
			//!!!!!!!!!!!!!!!!!!!!
			if(pass1.length()<6||pass1.length()>18)
			{
				session.put("sregerror","密码长度应该在6-18位！");
				return "ERROR";		
			}
			sql = "insert into user_student values(\"" + studentnumber + "\","
					+ "\"" + username + "\"," + "\"" + pass1 + "\"," + "\""
					+ studentname + "\",\""+email + "\",null,null)";
			System.out.println(sql);
			int rss = state.executeUpdate(sql);
			System.out.println("RSS: " + rss);
			return "SUCCESS";
		} catch (Exception e) {
			session.put("sregerror","数据库错误，请稍后再试..");
			return "ERROR";
		}
	}

	public String TeaReg() {
		session = ActionContext.getContext().getSession();
		ResultSet rs = null;
		System.out.println("REG " + username + " " + pass1 + " " + pass2);
		Connection connection = DbUtils.getConnection();
		if (username.length() < 3 || username.length() > 18) {
			session.put("tregerror","用户名长度应该在3-18位！");
			return "ERROR";
		}

		try {
			Statement state = connection.createStatement();
			String sql = "select username from user_teacher where username=\""
					+ username + "\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			if (rs.next())
			{
				session.put("tregerror","用户名已存在！");
				return "ERROR";
			}
			if (!pass1.equals(pass2))
			{
				session.put("tregerror","两次密码不匹配！");
				return "ERROR";
			}
			if (pass1.length() < 6 || pass1.length() > 18)
			{
				session.put("tregerror","密码长度应该在6-18位！");
				return "ERROR";
			}
			sql = "INSERT INTO `user_teacher` (`teachername`, `username`, "
					+ "`password`, `email`, `classname`, `placename`, `introtuction`) VALUES"
					+ " ('"+tne+"', '"+username+"', '"+pass1+"', '"+email+"', '"+tclass+"', '暂未填写', '暂未填写')";
			System.out.println(sql);
			int rss = state.executeUpdate(sql);
			System.out.println("RSS: " + rss);
			return "SUCCESS";
		} catch (Exception e) {
			session.put("tregerror","未知错误，请稍候重试！");
			return "ERROR";
		}
	}
}
