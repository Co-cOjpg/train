package frame.utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class jdbc {
	// 定义变量
		private static Properties props = null;
		// 静态块
		static {
			try {
				/*
				 * 1.加载配置文件 2.加载驱动类 3.调用DriverManager.getConnection
				 */
				// 加载配置文件
				InputStream in = jdbc.class.getClassLoader()
						.getResourceAsStream("frame/utils/db.properties");
				props = new Properties();
				props.load(in);
				Class.forName(props.getProperty("driverClassName"));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// 获取Connection
		public static Connection getConnection() throws IOException, ClassNotFoundException, SQLException {
			// 得到Connection
			return DriverManager.getConnection(props.getProperty("url"), props.getProperty("userName"),
					props.getProperty("password"));
		}
		
		public static void release(Connection conn)
		{
			if (conn!=null)
			{
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
		
		public static void release(Connection conn,Statement st , ResultSet rs)
		{

			if (rs!=null)
			{
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (st!=null)
			{
				try {
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn!=null)
			{
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
		
		public static void main(String[] args) {
			try {
		System.out.println(	jdbc.getConnection());
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
}
