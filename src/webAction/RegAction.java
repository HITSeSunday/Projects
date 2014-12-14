package webAction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

import db.DbUtils;


public class RegAction extends ActionSupport {
	private String pass1;
	private String pass2;
	private String curpass;
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

	public int getTeaid() {
		return teaid;
	}

	public void setTeaid(int teaid) {
		this.teaid = teaid;
	}

	private int stuid;
	private int teaid;
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

	public int getStudentnumber() {
		return studentnumber;
	}

	public void setStudentnumber(int studentnumber) {
		this.studentnumber = studentnumber;
	}


//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	public String StuChangePass(){
		String sql="select password from user_student where stuid="+stuid;
		ResultSet rs=null;
		rs=DbUtils.getInstance().Query(sql);
		String pass11=null;
		try{
			while(rs.next()){
				pass11=rs.getString(1);
			}
		}catch(Exception e){
			e.printStackTrace();
			return "ERROR";
		}
		if(curpass.compareTo(pass11)!=0){
			return "WRONG";
		}
		if(pass1.compareTo(pass2)!=0){
			return "NOEQUAL";
		}
		if(pass1.length()<6||pass1.length()>18){
			return "TOOLONG";
		}
		sql="update user_student set password=\""+pass1+"\"where stuid="+stuid;
		DbUtils.getInstance().Update(sql);
		return "SUCCESS";
		
	}
	public String TeaChangePass(){
		String sql="select password from user_teacher where teacherid="+teaid;
		ResultSet rs=null;
		rs=DbUtils.getInstance().Query(sql);
		String pass11=null;
		try{
			while(rs.next()){
				pass11=rs.getString(1);
			}
		}catch(Exception e){
			e.printStackTrace();
			return "ERROR";
		}
		if(curpass.compareTo(pass11)!=0){
			return "WRONG";
		}
		if(pass1.compareTo(pass2)!=0){
			return "NOEQUAL";
		}
		if(pass1.length()<6||pass1.length()>18){
			return "TOOLONG";
		}
		sql="update user_teacher set password=\""+pass1+"\"where stuid="+stuid;
		DbUtils.getInstance().Update(sql);
		return "SUCCESS";
		
	}
	public String StuReg() {
		ResultSet rs = null;
		System.out.println("REG " + username + " " + pass1 + " " + pass2);
		if(username.length()<6||username.length()>18)return "TOOLONG";
		Connection connection = DbUtils.getConnection();
	
		try {
			Statement state = connection.createStatement();
			String sql = "select username from user_student where username=\""
					+ username + "\"";
			rs = state.executeQuery(sql);
			if (rs.next())
				return "EXIT";
			sql="select studentnumber from user_student where studentnumber=\""+studentnumber+"\"";
			rs=state.executeQuery(sql);
			if (rs.next())
				return "EXIT";
			if (!pass1.equals(pass2))
				return "WRONGPASS";
			//!!!!!!!!!!!!!!!!!!!!
			if(pass1.length()<6||pass1.length()>18)return "PTOOLONG";
			sql = "insert into user_student values(\"" + studentnumber + "\","
					+ "\"" + username + "\"," + "\"" + pass1 + "\"," + "\""
					+ studentname + "\",\""+email + "\",null)";
			System.out.println(sql);
			int rss = state.executeUpdate(sql);
			System.out.println("RSS: " + rss);
			return "SUCCESS";
		} catch (Exception e) {
			return "ERROR";
		}
	}

	public String TeaReg() {
		ResultSet rs = null;
		System.out.println("REG " + username + " " + pass1 + " " + pass2);
		Connection connection = DbUtils.getConnection();
		if(username.length()<6||username.length()>18)return "TOOLONG";
		
		try {
			Statement state = connection.createStatement();
			String sql = "select username from user_teacher where username=\""
					+ username + "\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			if (rs.next())
				return "EXIT";
			if (!pass1.equals(pass2))
				return "WRONGPASS";
			if(pass1.length()<6||pass1.length()>18)return "PTOOLONG";
			sql = "insert into user_teacher values(\"" + null + "\"," + "\""
					+ teacherName + "\"," + "\"" + username + "\"," + "\""
					+ pass1 + "\"" + ")";
			System.out.println(sql);
			int rss = state.executeUpdate(sql);
			System.out.println("RSS: " + rss);
			return "SUCCESS";
		} catch (Exception e) {
			return "ERROR";
		}
	}
}
