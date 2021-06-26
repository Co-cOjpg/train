<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="frame.utils.*"%>
    <%@ page import="java.sql.*"%>
<%
	String mao = request.getParameter("a");
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index.css">
    <title>Document</title>
</head>
<body>
    <div class="top"><a href="http://" class="logo">五险一精</a> 
    <div class="left-button">=</div>
        <div class="top_out">
            out
        </div>
        <div class="top_admin">
            admin
        </div>
</div>
<div class="left" id="d">
        <label for="a">
            <ul  class="open-box"  >
                <input type="radio" id="radio"name="a" />
                <label for="radio"><i class="i">cat_system</i></label>
                
                <li id="open1"><a  href="?a=11">add1</a></li>
                <li id="open1"><a  href="?a=12">del1</a></li>
                <li id="open1"><a  href="?a=13">change1</a></li>
            </ul>
        </label>
        
        <label for="a">
            <ul   class="open-box">
        
               <input type="radio" id="radio1" name="a"/>
                <label for="radio1" ><i class="i">stu_system</i></label>
                
                <li id="open2"><a  href="?a=21">add1</a> </li>
                <li id="open2"><a  href="?a=22">del1</a></li>
                <li id="open2"><a  href="?a=23">change1</a></li>
        </ul></label>


</div>
<div class="nr" style=" width: 80vw; height: 80vh; position: relative; top:15px; left: 240px;background-color:#f6f4f4;">

<%
String url=new String("sys_cat/catList.jsp");
if(mao==null){
	mao="11";
}

switch(mao){
case "11" :
	 url="sys_cat/catList.jsp";
   break; 
case "12" :
   url="sys_cat/add.jsp";
   break; 
case "13" :
	   url="sys_cat/catList.jsp";
	break; 
	
case "21" :
	   url="sys_stu/StuAdd.jsp";
	break;
case "22" :
	   url="sys_stu/StuList.jsp";
	break;
case "23" :
	   url="sys_stu/StuAdd.jsp";
	break;	
	
default :
	url="main.html";
}

out.print("<iframe src="+url+" height=100% width=100%;>");


%>
</iframe>

</div>
</body>
</html>

