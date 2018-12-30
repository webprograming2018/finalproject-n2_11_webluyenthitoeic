<%@page import="model.Level"%>
<%@page import="java.lang.Object"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>TOEIC- PART 1</title>
        <link rel="stylesheet" href="templates/css/contest.css">
<div class="main">
    <div class="container">
	<div class="col-md-9">
            <%
                ArrayList<Level> level = (ArrayList<Level>) request.getAttribute("level");
                String part = String.valueOf(request.getAttribute("part"));
            %>
            <div class="panel panel-danger">
		<div class="panel-heading text-center">
                    <h3 class="panel-title">Part <%=part%></h3>
		</div>
		<div class="panel-body">
                    <ul class="list-group">
                        <%
                        for (Level elem : level) {
                        %>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/part?part=part<%=part%>&&level=<%=elem.getId()%>"><%=elem.getLevel()%></a></li>
                        <%}%>
                    </ul>
                </div>
            </div>
        </div>	
        <div class="right col-md-3">
            <div class="panel  myList">
                <div class="panel-heading myList-header">
                    <h3 class="panel-title"> <span class="glyphicon">&#xe032; </span> TOEIC Listening Tests</h3>
                </div>
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="#">Listening part 1: photograps (10 questions)</a></li>
                        <li class="list-group-item"><a href="#">Listening part 2: Question (30 questions)</a></li>
                        <li class="list-group-item"><a href="#">Listening part 3: Conversation (30 questions)</a></li>
                        <li class="list-group-item"><a href="#">Listening part 4: Talks (30 questions)</a></li>
                    </ul>
                </div>
            </div>
            <div class="panel my-advertisment">
                <div class="panel-body">
                    <a href="#">TOEIC TEST LISTENING</a>
                </div>
            </div>
            <div class="panel my-advertisment">
                <div class="panel-body">
                    <a href="#">TOEIC TEST READING</a>
                </div>
            </div>
            <div class="panel my-advertisment">
                <div class="panel-body">
                    <a href="#">TOEIC TEST FULL</a>
                </div>
            </div>
        </div>
    </div>
</div>
        <a class="up" href="#topnav">
		<img src="templates/images/up.png" alt="">
	</a>
        <script src="templates/js/contest_stop.js"></script>
        <script src="templates/js/time.js"></script>
        
<%@include file="../footer.jsp" %>
