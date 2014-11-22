package webAction;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

import db.DbUtils;
//import com.opensymphony.xwork2.ActionSupport;

public class RegAction extends ActionSupport {
	private String pass1;
	private String pass2;
	private String username;
	private String teacherName;
public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	//	private int TotStuId=0;
//	private int TotTeaId=0;
	public String getPass1() {
		return pass1;
	}
	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}
	public String getPass2() {
		return pass2;
	}
//	public int getTotStuId() {
//		return TotStuId;
//	}
//	public void setTotStuId(int totStuId) {
//		TotStuId = totStuId;
//	}
//	public int getTotTeaId() {
//		return TotTeaId;
//	}
//	public void setTotTeaId(int totTeaId) {
//		TotTeaId = totTeaId;
//	}
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
	private String studentname;
	private int studentnumber;

	public String StuReg(){
		ResultSet rs = null;
		System.out.println("REG "+username+" "+pass1+" "+pass2);
		Connection connection = DbUtils.getConnection();
		try{
			Statement state = connection.createStatement();
			String sql = "select username from user_student where username=\""
					+ username +"\"";
			rs = state.executeQuery(sql);
			if(rs.next())return "EXIT";
			if(!pass1.equals(pass2))return "WRONGPASS";
			sql = "insert into user_student values(\""+studentnumber+"\","+"\""+username+"\","+"\""+pass1+"\","+"\""+studentname+"\""+")";
			System.out.println(sql);
			int rss=state.executeUpdate(sql);
			System.out.println("RSS: "+rss);
			return "SUCCESS";
		}catch(Exception e){
			return "ERROR";
		}
	}
	public String TeaReg(){
		ResultSet rs = null;
		System.out.println("REG "+username+" "+pass1+" "+pass2);
		Connection connection = DbUtils.getConnection();
		try{
			Statement state = connection.createStatement();
			String sql = "select username from user_teacher where username=\""
					+ username +"\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			if(rs.next())return "EXIT";
			if(!pass1.equals(pass2))return "WRONGPASS";
			sql = "insert into user_teacher values(\""+null+"\","+"\""+teacherName+"\","+"\""+username+"\","+"\""+pass1+"\""+")";
			System.out.println(sql);
			int rss=state.executeUpdate(sql);
			System.out.println("RSS: "+rss);
			return "SUCCESS";
		}catch(Exception e){
			return "ERROR";
		}
	}
}
