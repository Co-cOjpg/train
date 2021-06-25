<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
	<%@ page import="com.Stu.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/List.css"></link>
</head>
<body>

<form action="./StuServlet" align="left">
学生名： <input name ="stu_name1" >
<input type="submit" value="查询">
</form>

<div align="center"><a href="StuAdd.jsp">添加</a></div>
<div align="center">学生列表</div>
<form name="form">
<table align="center">
<tr>
<th align="center" width="80"><input type="checkbox" name="chose" onclick="selectAll()"></th>
<th align="center" width="100">学号</th>
<th align="center" width="80">姓名</th>
<th align="center" width="50">性别</th>
<th align="center" width="100">出生日期</th>
<th align="center" width="200">电子邮箱</th>
<th align="center" width="110">电话号码</th>
<th align="center" width="100">操作</th>
</tr>
		<%
			List<Stu> stuList = (List) request.getAttribute("stuList");
			if (stuList == null) {
				return;
			} else {
				for (Stu ss : stuList) {
					String Del = "./stuDelServlet?stuid="+ ss.getID();
		%>
<tr>
<td align="center"><input type="checkbox" name="id" value="<%=ss.getID()%>"></td>
<td align="center"><%=ss.getNO()%></td>
<td align="center"><%=ss.getName()%></td>
<td align="center"><%=ss.getSex()%></td>
<td align="center"><%=ss.getBirth()%></td>
<td align="center"><%=ss.getEmail()%></td>
<td align="center"><%=ss.getTel()%></td>
<td align="center"><a href="">修改</a>/<a href="<%=Del%>">删除</a></td>
</tr>
		<%
			   }
			}
		%>
<tr>
<td align='center'><input type='submit' value='批量删除'></td>
<td align='center' colspan='7'></td>
</tr>
</table></form>
</body>
<script>
function selectAll(){	
if(!document.form.id.length){
if(document.form.chose.checked){
document.form.id.checked=true;}
else{
document.form.id.checked=false;}}
else{
for(var i=0;i<document.form.id.length;i++){
if(document.form.chose.checked){
document.form.id[i].checked=true;}
else{
document.form.id[i].checked=false;}}}
}
</script>
</html>