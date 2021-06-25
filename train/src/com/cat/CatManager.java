package com.cat;

import java.sql.*;
import java.util.*;

import com.cat.Cat;

public class CatManager {

	
	
	public  List<Cat> resultList; 
	public List<Cat> getCatListByName(String Name ) {
		// 
		
		List<Cat> sl = new ArrayList<Cat>();
		Connection conn= null;
		Statement st = null;
		ResultSet rs = null;
		
		try {
			conn = JdbcUtils.getConnection();
			String sql ="SELECT * FROM cat_system";
			 st = conn.createStatement();
			 rs =  st.executeQuery(sql);
			 while (rs.next())
			 {
				 Cat ss = new Cat(); 
				 ss.setId(rs.getInt("Id"));
				 ss.setName(rs.getString("Name"));
				 ss.setAge(rs.getInt("Age"));
				 ss.setSex(rs.getString("Sex"));
				 ss.setJieyu(rs.getString("Jieyu"));
				 sl.add(ss);
				
			 }
			 return sl;
			
		}  catch (Exception e) {
			
			e.printStackTrace();
		}finally
		{
			JdbcUtils.release(conn, st, rs);
		}
		
		return null;
	}
	public void delCatById(int parseInt) {
		if (resultList==null) return;
		for (Cat ss : resultList) {
			if (ss.getId() == parseInt)
			{
				resultList.remove(ss);
			  break;
			
			}
		}
		
		System.out.println(resultList);
		
	}

	public void addCat(Cat ss) {
//		if (resultList==null) return;
//		
//				resultList.add(ss);
//			 
//		
//		System.out.println(resultList);
		
	
		
		
	}
	
	
	
	
	public static void main(String[] args) {
		CatManager sm = new CatManager();
		
		Cat ss = new Cat();
		ss.setSex("��");
		ss.setName("���");
		ss.setJieyu("��");
		sm.addCat(ss);
	}



}
