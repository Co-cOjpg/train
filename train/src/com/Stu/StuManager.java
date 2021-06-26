package com.Stu;

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
			String sql ="select   * from  Student t  where t.stu_name like     '%" + stu_name1 + "%'" ;
			 st = conn.createStatement();
			 rs =  st.executeQuery(sql);
			 while (rs.next())
			 {	
				 Stu ss = new Stu(); 
				 ss.setID(rs.getInt("id"));
				 ss.setNO(rs.getString("stu_no"));
				 ss.setName(rs.getString("stu_name"));
				 ss.setSex(rs.getString("stu_sex"));
				 ss.setBirth(rs.getString("stu_birth"));
				 ss.setEmail(rs.getString("stu_email"));
				 ss.setTel(rs.getString("stu_tel"));
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
			String sql ="insert Student(stu_no,stu_name,stu_sex,stu_birth,stu_email,stu_tel) values('" + ss.getNO()+ "','" + ss.getName()+ "','" + ss.getSex()+ "','" + ss.getBirth()+ "','" + ss.getEmail()+ "','" + ss.getTel()+ "')";
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
			String sql ="delete from Student where id= "+ parseInt + " ";
			 st = conn.createStatement();
			 st.execute(sql);
			
		}  catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
	public List<Stu> getStuListByID(int parseInt) {
		List<Stu> sl = new ArrayList<Stu>();
		Connection conn= null;
		Statement st = null;
		ResultSet rs = null;
		
		try {
			conn = jdbc.getConnection();
			String sql ="select   * from  Student t  where t.id =     " + parseInt + " " ;
			 st = conn.createStatement();
			 rs =  st.executeQuery(sql);
			 while (rs.next())
			 {	
				 Stu ss = new Stu(); 
				 ss.setID(rs.getInt("id"));
				 ss.setNO(rs.getString("stu_no"));
				 ss.setName(rs.getString("stu_name"));
				 ss.setSex(rs.getString("stu_sex"));
				 ss.setBirth(rs.getString("stu_birth"));
				 ss.setEmail(rs.getString("stu_email"));
				 ss.setTel(rs.getString("stu_tel"));
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
	public void upStu(Stu ss) {
		Connection conn= null;
		Statement st = null;
		
		try {
			conn = jdbc.getConnection();
			String sql ="update Student set stu_no='" + ss.getNO()+ "',stu_name='" + ss.getName()+ "',stu_sex='" + ss.getSex()+ "',stu_birth='" + ss.getBirth()+ "',stu_email='" + ss.getEmail()+ "',stu_tel='" + ss.getTel()+ "' where id=" + ss.getID()+ " ";
			 st = conn.createStatement();
			 st.execute(sql);
			
		}  catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
