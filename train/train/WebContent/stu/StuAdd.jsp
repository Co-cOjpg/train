<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div><a href="query.jsp">返回</a></div>
<div align="center">添加信息</div>
<form action="./StuAddServlet" method="post">
    <table align="center">
    <tr>
        <td align="center">name:</td>
        <td><input type="text" name="Name" ></td>
    </tr>
    <tr>
        <td align="center">hobby:</td>
        <td><input type="text" name="Hobby" ></td>
    </tr>
    <tr>
        <td></td>
        <td>
        <input type="reset" value="重置">
        <input type="submit" value="提交"></td>
    </tr>
</table>
</form>
</body>
</html>