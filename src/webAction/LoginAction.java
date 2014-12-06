<<<<<<< HEAD
package webAction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.ActionSupport;

import db.DbUtils;

public class LoginAction extends ActionSupport {
	private String password;
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public String TeacherLogin() {
		ResultSet rs = null;
		String result = "";
		Connection connection = DbUtils.getConnection();
		try {
			Statement state = connection.createStatement();
			String sql = "select password from user_teacher where username=\""
					+ username +"\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			System.out.println("25");
			if (rs.next()) {
				System.out.println("53");
				String input = String.valueOf(rs.getString(1));
				System.out.println("input: "+input);
				System.out.println("pass: "+password+"  "+input);
				if ((password.equals(input))==true) {
					System.out.println("SU: "+password+" "+input);
					return "SUCCESS";
				} else {
					return  "PWD";
				}
			} else {
				return "ERROR";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("67!!");
			e.printStackTrace();
			return "ERROR";
		}
//		System.out.println(result);
//		return result;
	}
	
	
	
	public String StudentLogin() {
		ResultSet rs = null;
		String result = "";
		Connection connection = DbUtils.getConnection();
		try {
			Statement state = connection.createStatement();
			String sql = "select password from user_student where username=\""
					+ username +"\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			System.out.println("25");
			if (rs.next()) {
				System.out.println("53");
				String input = String.valueOf(rs.getString(1));
				System.out.println("input: "+input);
				System.out.println("pass: "+password+"  "+input);
				if (password.equals(input)==true) {
					System.out.println("SU: "+password+" "+input);
					
					return "SUCCESS";
				} else {
					return  "PWD";
				}
			} else {
				return "ERROR";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("67!!");
			e.printStackTrace();
			return "ERROR";
		}
	}
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getCurrentStu(String name){
		int ans=0;
		String sql="select stuid from user_student where username="+"\""+name+"\"";
		
		ResultSet rs=null;
		System.out.println(sql);
		rs=DbUtils.getInstance().Query(sql);
		try{
			while(rs.next()){
				int tmp=rs.getInt(1);
				ans=tmp;
				break;
			}
		}catch(Exception e){
			ans=-1;
		}
		return ans;
	}
	public int getCurrentTea(String name){
		int ans=0;
		String sql="select teacherid from user_teacher where username=\""+name+"\"";
		ResultSet rs=null;
		rs=DbUtils.getInstance().Query(sql);
		try{
			while(rs.next()){
				int tmp=rs.getInt(1);
				ans=tmp;
				break;
			}
		}catch(Exception e){
			ans=-1;
		}
		return ans;
	}
}
=======
package webAction;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//int mainint main

import com.opensymphony.xwork2.ActionSupport;

import db.DbUtils;

public class LoginAction extends ActionSupport {
	private String password;
	private String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public String TeacherLogin() {
		ResultSet rs = null;
		String result = "";
		Connection connection = DbUtils.getConnection();
		try {
			Statement state = connection.createStatement();
			String sql = "select password from user_teacher where username=\""
					+ username +"\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			System.out.println("25");
			if (rs.next()) {
				System.out.println("53");
				String input = String.valueOf(rs.getString(1));
				System.out.println("input: "+input);
				System.out.println("pass: "+password+"  "+input);
				if ((password.equals(input))==true) {
					System.out.println("SU: "+password+" "+input);
					return "SUCCESS";
				} else {
					return  "PWD";
				}
			} else {
				return "ERROR";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("67!!");
			e.printStackTrace();
			return "ERROR";
		}
//		System.out.println(result);
//		return result;
	}
	
	
	
	public String StudentLogin() {
		ResultSet rs = null;
		String result = "";
		Connection connection = DbUtils.getConnection();
		try {
			Statement state = connection.createStatement();
			String sql = "select password from user_student where username=\""
					+ username +"\"";
			System.out.println(sql);
			rs = state.executeQuery(sql);
			System.out.println("25");
			if (rs.next()) {
				System.out.println("53");
				String input = String.valueOf(rs.getString(1));
				System.out.println("input: "+input);
				System.out.println("pass: "+password+"  "+input);
				if (password.equals(input)==true) {
					System.out.println("SU: "+password+" "+input);
					return "SUCCESS";
				} else {
					return  "PWD";
				}
			} else {
				return "ERROR";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("67!!");
			e.printStackTrace();
			return "ERROR";
		}
	}
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getCurrentStu(String name){
		int ans=0;
		String sql="select stuid from user_student where username="+"\""+name+"\"";
		
		ResultSet rs=null;
		System.out.println(sql);
		rs=DbUtils.getInstance().Query(sql);
		try{
			while(rs.next()){
				int tmp=rs.getInt(1);
				ans=tmp;
				break;
			}
		}catch(Exception e){
			ans=-1;
		}
		return ans;
	}
	public int getCurrentTea(String name){
		int ans=0;
		String sql="select teacherid from user_teacher where username=\""+name+"\"";
		ResultSet rs=null;
		rs=DbUtils.getInstance().Query(sql);
		try{
			while(rs.next()){
				int tmp=rs.getInt(1);
				ans=tmp;
				break;
			}
		}catch(Exception e){
			ans=-1;
		}
		return ans;
	}
}
>>>>>>> c0a1b5d3f17011b6f3579cb61801df6e6940a8d7
