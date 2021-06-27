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
<link rel="stylesheet" type="text/css" href="css/List.css"></link>
<title>添加界面</title>
</head>
<body>
<h3 align=center>添加页面</h3>
<form action="./addServlet" method="post" >
<table align=center style="width:60vw;border:0;height:150px ;">
<tr>
<td align=center>品种:
<input type="text" name="name" style="width:50%"></td>
</tr>
<tr>
<td align=center>年龄:
<input type="text" name="age" style="width:50%"></td>
</tr>
<tr>
<td align=center>性别:
<input type="radio" name="sex" value="雄">雄
<input type="radio" name="sex" value="雌">雌
</td>
</tr>
<tr>
<td align=center>是否节育:
<input type="radio" name="jieyu" value="是">是
<input type="radio" name="jieyu" value="否">否
</td>
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


