package com.zjw;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import frame.utils.*;

public class StuManager {
	public List<Stu> resultList; 
	public List<Stu> getStuListByName(String stu_name1 ) {
		// 
		
		List<Stu> sl = new ArrayList<Stu>();
		Connection conn= null;
		Statement st = null;
		ResultSet rs = null;
		
		try {
			conn = jdbc.getConnection();
			String sql ="select   * from  t_zjw t  where t.stu_name like     '%" + stu_name1 + "%'" ;
			 st = conn.createStatement();
			 rs =  st.executeQuery(sql);
			 while (rs.next())
			 {	
				 Stu ss = new Stu(); 
				 ss.setId(rs.getInt("stu_id"));
				 ss.setName(rs.getString("stu_name"));
				 ss.setHobby(rs.getString("stu_hobby"));
				 sl.add(ss);
				
			 }
			 return sl;
			
		}  catch (Exception e) {
			
			e.printStackTrace();
		}finally
		{
			jdbc.release(conn, st, rs);
		}
		
		return null;
	}
	public void addStu(Stu ss) {
		
		Connection conn= null;
		Statement st = null;
		
		try {
			conn = jdbc.getConnection();
			String sql ="insert t_zjw( stu_name , stu_hobby) values(  '" + ss.getName()
					+ "','" + ss.getHobby()
					+ "')";
			 st = conn.createStatement();
			 st.execute(sql);
			
		}  catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
	public void DelStuById(int parseInt) {
		Connection conn= null;
		Statement st = null;
		
		try {
			conn = jdbc.getConnection();
			String sql ="delete from t_zjw where stu_id= "+ parseInt + " ";
			 st = conn.createStatement();
			 st.execute(sql);
			
		}  catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}	
}
