<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="frame.utils.*"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		Connection conn= null;
		Statement st = null;
		ResultSet rs = null;
		String name = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(name);
		
		try{
			conn = jdbc.getConnection();
			 st = conn.createStatement();
			rs=st.executeQuery("select * from user where name='"+name+"'");
			if(rs.next()){
				rs=st.executeQuery("select * from user where name='"+name+"' and password='"+password+"'");
				if(rs.next()){
					out.print("<script language='javascript'>window.location.href='index.jsp';</script>");
				}else{
					out.print("<script language='javascript'>alert('密码输入错误！！');window.location.href='login.html';</script>");
				}
			}else{
				out.print("<script language='javascript'>alert('用户不存在！！');window.location.href='login.html';</script>");
			}
		}catch(Exception e){
			out.print(e);
		}finally{
			if(rs!=null)
				rs.close();
			if(st!=null)
				st.close();
			if(conn!=null)
				conn.close();
		}
	%>
</body>
</html>