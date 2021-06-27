<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*" import="com.cat.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
    public static final String DBDRIVER="com.mysql.jdbc.Driver";
    public static final String DBURL="jdbc:mysql://localhost:3306/train?characterEncoding=UTF-8";
    public static final String DBUSER="root";
    public static final String DBPASS="123456";
    String msg="请输入需要查询的内容";
%>
<%
    String name=request.getParameter("Name");
    Connection conn=null;
    PreparedStatement pst=null;
    
%>

<%
   try{
	  Class.forName(DBDRIVER);
	  conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
	  Statement st = conn.createStatement();
	  ResultSet rs = st.executeQuery("SELECT * FROM cat_system Where Name"+" like '%"+name+"%'");
	 
	   if(name!="") {
			%>
				<h3 align=center>查询</h3>
				<table align="center" style="width:50vw">
				<tr align=center style="height:30px ;background-color: #87CEFA;color: white; border:0 ;width:80vw;">
				<td>id</td><td>品种</td><td>年龄</td><td>性别</td><td>是否节育</td><td>操作</td>
				</tr>
			<%
		   out.print("");
			
		   while(rs.next()){
			   String hrefurl = "./CatDel.jsp?catId="+ rs.getString(1);
			   out.print("<td align=center>"+rs.getString(1)+"</td>");
			   out.print("<td align=center>"+rs.getString(2)+"</td>");
			   out.print("<td align=center>"+rs.getString(3)+"</td>");
			   out.print("<td align=center>"+rs.getString(4)+"</td>");
			   out.print("<td align=center>"+rs.getString(5)+"</td>");
			   out.print("<td align=center><a href="+hrefurl+"> 删 除 </a></td></tr>");
			   out.print("<tr>");
			  
	   }
	   out.print("</table>");
	   %>
	   <p align=center><a href="./add.jsp" style="display:inline-block;width:70px;height:30px;color:white;background-color:#0DC316;border-radius:2px;text-decoration:none;justify-content: center;padding-top:8px;margin-right:10px">添加</a>
	   <a href='catList.jsp'style="display:inline-block;width:70px;height:30px;color:white;background-color:#0DC316;border-radius:2px;text-decoration:none;justify-content: center;padding-top:8px">返回</a></p>
	   <%
	   }else {
		   response.getWriter().write("<script language=javascript>alert('" +msg+ "');window.location='catList.jsp'</script>");
		   }
	       
     }
       catch(Exception e){
        out.println(e);
    }
%>

</body>
</html>


