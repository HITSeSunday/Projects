package webAction;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

import db.DbUtils;
//import com.opensymphony.xwork2.ActionSupport;

public class RegAction3 extends ActionSupport {
	private String pass1;
	private String pass2;
	private String username;
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
	public String StuReg(){
		ResultSet rs = null;
		System.out.println("REG "+username+" "+pass1+" "+pass2);
		Connection connection = DbUtils.getConnection();
		try{
			Statement state = connection.createStatement();
			String sql = "select username from user_student where username=\""
					+ username +"\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			System.out.println("63!!");
			if(rs.next())return "EXIT";
			System.out.println("64!!");
			System.out.println(pass1+"  "+pass2);
			if(!pass1.equals(pass2))return "WRONGPASS";
			sql = "insert into user_student values(\""+username+"\","+"\""+pass1+"\""+")";
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
			System.out.println("63!!");
			if(rs.next())return "EXIT";
			System.out.println("64!!");
			System.out.println(pass1+"  "+pass2);
			if(!pass1.equals(pass2))return "WRONGPASS";
			sql = "insert into user_teacher values(\""+username+"\","+"\""+pass1+"\""+")";
			System.out.println(sql);
			int rss=state.executeUpdate(sql);
			System.out.println("RSS: "+rss);
			return "SUCCESS";
		}catch(Exception e){
			return "ERROR";
		}
	}
}
