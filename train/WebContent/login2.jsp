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
				out.print("<script language='javascript'>alert('用户已存在！！');window.location.href='login.html';</script>");
			}else{
				if(password1.equals(password2)){
	 				st.executeUpdate("insert into user(name,password) values('"+name+"','"+ password1 + "');");
	 				out.print("<script language='javascript'>alert('注册成功！！');window.location.href='login.html';</script>");
				}else{
					out.print("<script language='javascript'>alert('两次密码不一样！！');window.location.href='login.html';</script>");
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