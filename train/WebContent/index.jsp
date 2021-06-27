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
    <link rel="stylesheet" href="./css/index.css">
    <title>Document</title>
</head>
<body>
    <div class="top"><a href="http://" class="logo">五险一精ing</a> 
    <div class="left-button">=</div>
        <div class="top_out">
            <a href="login.html">out</a>
        </div>
        
</div>
<div class="left" id="d">
        <label for="a">
            <ul  class="open-box"  >
                <input type="radio" id="radio"name="a" />
               <label for="radio1" ><a  href="?a=1">管理1</a> </label>

            </ul>
        </label>
        
        <label for="a">
            <ul   class="open-box">
        
               <input type="radio" id="radio1" name="a"/>
               <label for="radio1" ><a  href="?a=2">管理2</a> </label>
                
               
        </ul></label>


</div>
<div class="nr" style=" width: 80vw; height: 80vh; position: relative; top:15px; left: 240px;background-color:#f6f4f4;">

<%
String url=new String("catList.jsp");
if(mao==null){
	mao="11";
}

switch(mao){
case "1" :
	 url="./catList.jsp";
   break; 
case "2" :
   url="./StuList.jsp";
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

