package com.cat;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import frame.utils.*;

public class CatManager {

	
	
	public  List<Cat> resultList; 
	public List<Cat> getCatListByName(String Name ) {
		// 
		
		List<Cat> sl = new ArrayList<Cat>();
		Connection conn= null;
		Statement st = null;
		ResultSet rs = null;
		
		try {
			conn = jdbc.getConnection();
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
			jdbc.release(conn, st, rs);
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

}
