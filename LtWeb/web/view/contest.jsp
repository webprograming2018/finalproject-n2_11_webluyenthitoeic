<%@page import="java.lang.Object"%>
<%@page import="model.Test"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>TOEIC- PART 1</title>
        <link rel="stylesheet" href="templates/css/contest.css">
<div class="main">
    <div class="container">
	<div class="col-md-9">
            <div class="panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title">Test</h3>
		</div>
		<div class="panel-body">
                    <%ArrayList<Test> test = (ArrayList<Test>) request.getAttribute("test");
                    for (Test t : test) {
                    %>
                    <li class="list-group-item"><a href="<%=request.getContextPath()%>/test?id=<%=t.getId()%>" > <%=t.getName()%> </a></li>
                    <%}%>
		</div>
            </div>
            <div class="panel panel-danger">
		<div class="panel-heading text-center">
                    <h3 class="panel-title">Skill test</h3>
		</div>
		<div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/level?part=1">Photo</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/level?part=2">Question-Response</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/level?part=3">Short conversation</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/level?part=4">Short talk</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/level?part=5">Incomplete Sentence</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/level?part=6">Text completion</a></li>
                        <li class="list-group-item"><a href="<%=request.getContextPath()%>/practice/level?part=7">Reading comprehen</a></li>
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