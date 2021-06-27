<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.util.*"%>
<%@ page import="com.Stu.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check() {
	 var submitFlg = true;
	  
	//验证学号
	 var regno={regstr:/^2\d{9}$/,tip:'请输入10位的学号'};	 
	 var no= document.getElementById("No1").value;
	 var spans = document.getElementById("No1").parentNode.getElementsByTagName("span");
	 spans[0].innerHTML="";
	 if(!regno.regstr.test(no)){
	 spans[0].innerHTML="<font color='red'>"+regno.tip+"<font>";
	 submitFlg = false;
	 }
	 
	 //验证电话
	 var regphone={regstr:/^1\d{10}$/,tip:'请输入11位的手机号'};	 
	 var phone= document.getElementById("Tel1").value;
	 var spans = document.getElementById("Tel1").parentNode.getElementsByTagName("span");
	 spans[0].innerHTML="";
	 if(!regphone.regstr.test(phone)){
	 spans[0].innerHTML="<font color='red'>"+regphone.tip+"<font>";
	 submitFlg = false;
	 }
	 return submitFlg;
	 }
</script>
</head>
<body>
<div><a href="StuList.jsp">返回</a></div>
<div align="center">修改信息</div>
<form onsubmit="return check()" action="./StuUp2Servlet" method="post">
    <table align="center">
    <%
			List<Stu> stuList = (List) request.getAttribute("stuList");
			if (stuList == null) {
				return;
			} else {
				for (Stu ss : stuList) {				
		%>
    <tr>
        <td align="center">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:</td>
        <td><input type="text" id="No1" name="No1" value="<%=ss.getNO()%>" maxlength="10" required="required"><span></span></td>       
    </tr>
    <tr>
        <td align="center">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</td>
        <td><input type="text" id="Name1" name="Name1" value="<%=ss.getName()%>" required="required"></td>
    </tr>
    <tr>
        <td align="center">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
        <td><input type="text" id="Sex1" name="Sex1" value="<%=ss.getSex()%>" required="required" maxlength="1"></td>
    </tr>
    <tr>
        <td align="center">出生日期:</td>
        <td><input type="date" id="Birth1" name="Birth1" value="<%=ss.getBirth()%>" required="required"></td>
    </tr>
    <tr>
        <td align="center">电子邮件:</td>
        <td><input type="email" id="Email1" name="Email1" value="<%=ss.getEmail()%>" required="required"></td>
    </tr>
    <tr>
        <td align="center">电话号码:</td>
        <td><input type="tel" id="Tel1" name="Tel1" value="<%=ss.getTel()%>" maxlength="11" required="required"><span></span></td>
    </tr>
    <tr>
        <td><input type='hidden' name='ID1' value="<%=ss.getID()%>"></td>
        <td>
        <input type="reset" value="重置">
        <input type="submit" value="提交"></td>
    </tr>
    		<%
			   }
			}
		%>
</table>
</form>
</body>
</html>