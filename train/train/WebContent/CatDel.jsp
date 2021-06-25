<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
    public static final String DBDRIVER="com.mysql.jdbc.Driver";
    public static final String DBURL="jdbc:mysql://127.0.0.1:3306/cat_system?characterEncoding=utf-8";
    public static final String DBUSER="root";
    public static final String DBPASS="123456";
    String msg="删除成功";
    String msg1="删除失败";
%>
    <%
    Connection conn=null;
    PreparedStatement pst=null;
    int rs=0;
    String Id=request.getParameter("catId");
%>

    <%
   try{
	  Class.forName(DBDRIVER);
	  conn=DriverManager.getConnection(DBURL,DBUSER,DBPASS);
	  String sql_delete="delete from cat_system where Id="+Id+"";
	  //获取要删除的此id的数据库信息
	  pst=conn.prepareStatement(sql_delete);
	  rs=pst.executeUpdate();

	   if(rs!=0) {
		   response.getWriter().write("<script language=javascript>alert('" +msg+ "');window.location='catList.jsp'</script>");
	   }else {
		   response.getWriter().write("<script language=javascript>alert('" +msg1+ "');window.location='catList.jsp'</script>");
	   }
    }
    catch(Exception e){
        out.println(e);
    }

%>
</body>
</html>