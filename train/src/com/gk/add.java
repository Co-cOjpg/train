package com.gk;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("./addServlet")
public class add extends HttpServlet {
 PreparedStatement ps;
 private static final long serialVersionUID = 1L;    	
    public add() {
        super();
    }
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
 }
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  doGet(request, response);
  response.setContentType("text/html; charset=UTF-8");
  String newname=request.getParameter("name");
  String newage=request.getParameter("age");
  String newsex=request.getParameter("sex");
  String newjieyu=request.getParameter("jieyu");
  String msg="���ӳɹ�";
  String msg1="����ʧ��";
  String url="jdbc:mysql://127.0.0.1:3306/cat_system?characterEncoding=utf-8";
  String sql="insert into cat_system(`Name`,`Age`,`Sex`,`Jieyu`)values(?,?,?,?)";  
  try {   
   Class.forName("com.mysql.jdbc.Driver"); 
   Connection conn=DriverManager.getConnection(url, "root", "123456");
   ps=conn.prepareStatement(sql);
   ps.setString(1,newname);
   ps.setString(2,newage);
   ps.setString(3,newsex);
   ps.setString(4,newjieyu);
 
   if(ps.executeUpdate()>0) {
	   response.getWriter().write("<script language=javascript>alert('" +msg+ "');window.location='add.jsp'</script>");
   }else {
	   response.getWriter().write("<script language=javascript>alert('" +msg1+ "');window.location='add.jsp'</script>");
   }
	   
  } catch (ClassNotFoundException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  } catch (SQLException e) {
   // TODO Auto-generated catch block
   e.printStackTrace();
  }
 }
}
