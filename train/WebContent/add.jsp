<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.Connection" %>
    <%@page import="java.sql.DriverManager" %>
    <%@page import="java.sql.SQLException" %>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.Statement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加界面</title>
</head>
<body>
<form action="/addServlet" method="post" >
<table align=center  border=1>
<tr>
<td>品种:
<input type="text" name="name"></td>
</tr>
<tr>
<td>年龄:
<input type="text" name="age"></td>
</tr>
<tr>
<td>性别:
<input type="text" name="sex"></td>
</tr>
<tr>
<td>是否节育:
<input type="text" name="jieyu"></td>
</tr>
<tr align=center>
<td>
<input type="submit" value="添加">
<input type="reset" value="重置">
<a href='catList.jsp'><input type="button" value="返回"></a>
</form></td>

</tr>
</table>


</body>
</html>


