<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.cat.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3 align=center>这是猫列表</h3>
	<table border="0" align=center style="width:50vw;">
<tr>
<td  colspan="6" align=center style="height:70px">

<form action="./selectServlet" method="post" style="display: block">
<input type="submit" value="查看数据" >

</form>
<form action="./select.jsp" style="display: block">
品种:<input type="text" name ="Name" id="Name">
<input type="submit" value="查询">
</form>
</td>
</tr>
	<tr align=center style="heith:30px ;background-color: #87CEFA;color: white; border:0 ;width:80vw;">
	<td>id</td><td>品种</td><td>年龄</td><td>性别</td><td>是否节育</td><td>操作</td></tr>
		<%
			List<Cat> catList = (List) request.getAttribute("catList");
			System.out.print(catList);
			if (catList == null) {
				return;
			} else {

				for (Cat ss : catList) {
					String hrefurl = "./CatDel.jsp?catId="+ ss.getId();
		%>

		<tr style="height:40px">
			<td align=center><%=ss.getId()%></td>
			<td align=center><%=ss.getName()%></td>
			<td align=center><%=ss.getAge()%></td>
			<td align=center><%=ss.getSex()%></td>
			<td align=center><%=ss.getJieyu()%></td>
			<td align=center><a href="<%=hrefurl%>"> 删 除 </a></td>

		</tr>


		<%
			   }
			}
		%>
	</table>
	<p align=center><a href="./add.jsp" style="display:inline-block;width:70px;height:30px;color:white;background-color:#0DC316;border-radius:2px;text-decoration:none;justify-content: center;padding-top:8px;margin-right:10px">添加</a></p>
</body>
</html>