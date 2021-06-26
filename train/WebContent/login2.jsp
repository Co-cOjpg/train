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
        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        
		try{
			conn = jdbc.getConnection();
			st = conn.createStatement();
		if(name!=null ){
			rs=st.executeQuery("select * from user where name='"+name+"'");
			
			if(rs.next()){
				out.print("用户已经存在  "+"请<a href=\"registered.jsp\">注册</a>");
			}else{
				if(password1.equals(password2)){
	 				st.executeUpdate("insert into user(name,password) values('"+name+"','"+ password1 + "');");
				%>
				注册成功！！！<br>
				请点击<a href="login.html">这里跳转到登录页面</a>！！！
				<span style="font-size:24px;"><meta http-equiv="refresh" content="3;URL=login.html"> </span>
<% 
				}else{
				out.print("密码输入不一致!!!<br>"+"重新<a href=\"login.html\">注册</a>");
				}
			}
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