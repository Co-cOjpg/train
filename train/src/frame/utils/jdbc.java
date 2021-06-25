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
	// �������
		private static Properties props = null;
		// ��̬��
		static {
			try {
				/*
				 * 1.���������ļ� 2.���������� 3.����DriverManager.getConnection
				 */
				// ���������ļ�
				InputStream in = jdbc.class.getClassLoader()
						.getResourceAsStream("frame/utils/db.properties");
				props = new Properties();
				props.load(in);
				Class.forName(props.getProperty("driverClassName"));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// ��ȡConnection
		public static Connection getConnection() throws IOException, ClassNotFoundException, SQLException {
			// �õ�Connection
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
