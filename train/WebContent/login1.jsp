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
					out.print(name+"登录成功");
				}else{
					out.print("密码输入错误！！！<br>"+"重新<a href=\"login.html\">登录</a>");
				}
			}else{
				out.print("<font color=red>"+name+"</font>用户不存在！！！<br>"+"请点击<a href=\"login.html\">注册</a>");
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