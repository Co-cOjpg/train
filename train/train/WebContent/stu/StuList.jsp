<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
<%@ page import="com.zjw.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div><a href="StuAdd.jsp">添加</a></div>
	<div align="center">学生列表</div>
<table align="center" border="1" width="600">
<tr>
<th align="center">id</th>
<th align="center">name</th>
<th align="center">hobby</th>
<th align="center">操作</th>
		<%
			List<Stu> stuList = (List) request.getAttribute("stuList");
			if (stuList == null) {
				return;
			} else {
				for (Stu ss : stuList) {
					String Del = "./stuDelServlet?stuid="+ ss.getId();
		%>
<tr>
<td align="center"><%=ss.getId()%></td>
<td align="center"><%=ss.getName()%></td>
<td align="center"><%=ss.getHobby()%></td>
<td align="center"><a href="">修改</a>/<a href="<%=Del%>">删除</a></td>
</tr>
		<%
			   }
			}
		%>
</body>
</html>