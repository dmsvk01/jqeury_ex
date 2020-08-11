<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<br />
<P>  The time on the server is ${serverTime}. </P>
<br />
<%! int x=140; %>
<%= "x변수 선언! x값은 140입니다." %>
<%= "value of x = " + x %>
<br />
<%!
int power(int n){
	return n*n*n;
}
%>
<br />
<%= "n값을 입력하면 세제곱을 구해주는 함수 선언! power" %>
<br />
<%= "power(128)의 값은 : "+ power(128) %>
<br />
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>
<br />
<%= "from 예제를 통한 request, config out 등의 요소 연습 " %><br />
<br />
<%
out.print("안녕하세요 환영합니다" + request.getParameter("uname"));

String driver=application.getInitParameter("dname");  
out.print("xml파일에 초기설정한 변수dname을 application.getInitParameter로 가져온 값은 : "+driver );

%>
<br />
  
  
  String name=request.getParameter("uname");  
out.print("Welcome "+name);  
  
pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);  
  
<a href="second.jsp">second jsp page</a>  


</body>
</html>
