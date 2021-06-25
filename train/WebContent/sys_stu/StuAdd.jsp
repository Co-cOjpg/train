<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	 var no= document.getElementById("No").value;
	 var spans = document.getElementById("No").parentNode.getElementsByTagName("span");
	 spans[0].innerHTML="";
	 if(!regno.regstr.test(no)){
	 spans[0].innerHTML="<font color='red'>"+regno.tip+"<font>";
	 alert("学号不合理");
	 submitFlg = false;
	 }
	 
	 //验证电话
	 var regphone={regstr:/^1\d{10}$/,tip:'请输入11位的手机号'};	 
	 var phone= document.getElementById("Tel").value;
	 var spans = document.getElementById("Tel").parentNode.getElementsByTagName("span");
	 spans[0].innerHTML="";
	 if(!regphone.regstr.test(phone)){
	 spans[0].innerHTML="<font color='red'>"+regphone.tip+"<font>";
	 alert("手机号不合理");
	 submitFlg = false;
	 }
	 return submitFlg;
	 }
</script>
</head>
<body>
<div><a href="StuList.jsp">返回</a></div>
<div align="center">添加信息</div>
<form onsubmit="return check()" action="./StuAddServlet" method="post">
    <table align="center">
    <tr>
        <td align="center">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:</td>
        <td><input type="text" id="No" name="No" placeholder="请输入10位的学号" maxlength="10"><span></span></td>       
    </tr>
    <tr>
        <td align="center">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</td>
        <td><input type="text" name="Name" ></td>
    </tr>
    <tr>
        <td align="center">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
        <td><input type="text" name="Sex" placeholder="男/女"></td>
    </tr>
    <tr>
        <td align="center">出生日期:</td>
        <td><input type="date" name="Birth"></td>
    </tr>
    <tr>
        <td align="center">电子邮件:</td>
        <td><input type="email" name="Email"></td>
    </tr>
    <tr>
        <td align="center">电话号码:</td>
        <td><input type="tel" id="Tel" name="Tel" placeholder="请输入11位的电话号码" maxlength="11"><span></span></td>
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