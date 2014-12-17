package db;

import java.sql.*;

import javax.naming.*;
import javax.sql.DataSource;

public class DbPool {
	private Connection conne;
	private String dbDriver = "com.mysql.jdbc.Driver";   // 与本地设置相同
	private String dbUrl = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_hitsunday";   // app_yanzel为新浪app数据库名称，开通mysql服务后，通过[服务管理]-〉[MySql]->[管理MySql]中，查看数据库名称
	private String dbUser = "wz1wkw0n5x";           // 为[应用信息]->[汇总信息]->[key]中的access key
	private String dbPassword = "ixizy2jxij2321ml4jihx13xjhkxx4wwiwlzmmkw";    // 为[应用信息]->[汇总信息]->[key]中的secret key

//	private String dbUrl = "jdbc:mysql://localhost:3306/bookdb";   // app_yanzel为新浪app数据库名称，开通mysql服务后，通过[服务管理]-〉[MySql]->[管理MySql]中，查看数据库名称
//	private String dbUser = "root";           // 为[应用信息]->[汇总信息]->[key]中的access key
//	private String dbPassword = "1995";    // 为[应用信息]->[汇总信息]->[key]中的secret key
////	
	public Connection getConne() {
		return this.conne;
	}

	public void getConn(){
		try {
			Class.forName(this.dbDriver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
//			throw e;
		}catch(Exception e){
			e.printStackTrace();
		}

		try {
			this.conne= DriverManager.getConnection(dbUrl, dbUser,
					dbPassword);
		} catch (SQLException e) {
			e.printStackTrace();
//			throw e;
		}
	}

}
