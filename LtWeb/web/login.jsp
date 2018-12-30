<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<title>Login</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/login.css">

	
	<%
		String err = request.getParameter("err");
		if ("1".equals(err)) {
			out.print("<h4 style=\"color: red;\">Đăng nhập thất bại</h4>");
		}
	%>
    <div class="container">
    <form class="formLogin" action="<%=request.getContextPath()%>/Login" method="POST">
        <h1> Login  </h1>
        <label class="lbel"> Username: </label>
        <input class="inp"  type="email" name="email"> <br>
        <label class="lbel"> Password: </label>
        <input class="inp" type="password" name="password"> <br>
        
        <label class="lbel">remember:</label>
        <input class="inp" type="radio" name="remember" value="1">
        <label class="lbel">&nbsp; </label>
        <input class="inp" type="submit" value="Login" name="action">
    </form>
    </div>
<%@include file="footer.jsp"%>