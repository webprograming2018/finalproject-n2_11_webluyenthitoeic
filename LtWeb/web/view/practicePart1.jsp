<%@page import="model.mediaforlisten"%>
<%@page import="model.Part1"%>
<%@page import="model.Test"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/contest.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/radio.css">       
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/test.css">     
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/answersheet.css">    

<title>TOEIC- PART 1</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/radio.css">       
<div class="main">
    <div class="container">
	<div class="col-md-8 colQuestion" >
            <div class="panel-body" id="check">                
        <div id="fulltest_content">
            <%     
                ArrayList<Part1> listPart1 = (ArrayList<Part1>) request.getAttribute("part1"); 
                Part1 part1 = listPart1.get(0);
                int dem = 0;
            %>
            <form method="post" id="fulltest_part_head" action="<%=request.getContextPath()%>/pratice/result" data-part="part1">
                <input type="hidden" value="part1" name="part"/>
                    <div class="question fullest_page_<%=dem+1%> part1_<%=dem+1%>" data-page="1"  id="test_question_<%=part1.getId()%>" data-part="part1">
                        <div class="text-center" >
                            <img src="<%=request.getContextPath()%>/templates/uploads/<%=part1.getPicture()%>" alt="" style="width:300px">
                            <div class="col-md-12">
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=mediaforlisten.getMedia(part1.getMedia_id()).getMediaFile()%>" type="audio/mpeg">
                            </audio>
                            </div>
                        </div>
                        <div class="text-center script_answer_<%=dem+1%>" style="backgroud:red; display: none">
                            <pre><%=mediaforlisten.getMedia(part1.getMedia_id()).getScript_answer()!=null?mediaforlisten.getMedia(part1.getMedia_id()).getScript_answer():""%></pre>   
                        </div>
                        <p>Question: <%=dem+1%></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=dem%>]" value="<%=part1.getId()%>" class="sg-replace-icons radio_answer_a<%=dem+1%>">
                                <label for=""></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=dem%>]" value="<%=part1.getId()%>" class="sg-replace-icons radio_answer_b<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=dem%>]" value="<%=part1.getId()%>" class="sg-replace-icons radio_answer_c<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=dem%>]" value="<%=part1.getId()%>" class="sg-replace-icons radio_answer_d<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                        </ol>
                    </div> 
                    <% 
                        for (int idx = 1; idx < listPart1.size(); idx++) {
                            Part1   p1 = listPart1.get(idx);
                            dem++;
                    %>
                    <div  style="display:none" class="question fullest_page_<%=dem+1%> part1_<%=dem+1%>" data-page="<%=dem+1%>"  id="test_question_<%=part1.getId()%>" data-part="part1">
                        <div class="text-center" >
                            <img src="<%=request.getContextPath()%>/templates/uploads/<%=p1.getPicture()%>" alt="" style="width:300px">
                            <div class="col-md-12">
                                <audio controls>
                                    <source src="<%=request.getContextPath()%>/templates/uploads/<%=mediaforlisten.getMedia(p1.getMedia_id()).getMediaFile()%>" type="audio/mpeg">
                                </audio>
                            </div>
                        </div>
                        <div class="text-center script_answer_<%=dem+1%> " style="backgroud:red; display: none">
                            <pre><%=mediaforlisten.getMedia(p1.getMedia_id()).getScript_answer()!=null?mediaforlisten.getMedia(p1.getMedia_id()).getScript_answer():""%></pre>   
                        </div>
                        <p>Question: <%=dem+1%></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_a<%=dem+1%>">
                                <label for=""></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_b<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_c<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_d<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
                    <div class="pageing" id="fulltest_page" data-page="1" data-limit="<%=dem%>" >
                    <div class="text-center">
                        <input type="button" class="btn btn-default submitagain1 btn-again "  value="Again"   style="display: none">  
                        <input type="button" class="btn btn-default submitScript1 btn-script "  value="Script Answer"  style="display: none">  
                        <input type="button" class="btn btn-default"  value="Scope" id="submitTest">
                        <a class="btn btn-success change_page change_page_back" data-type="-1" style="display: none">Back</a>
                        <a data-type="1" class="change_page_next change_page btn btn-danger">Next </a>
                    </div>
                </div>
                    </div>
                
    </form>
</div>
</div>
<div class="left col-md-3">
    <div class="panel  myList">
    <div class="panel-heading myList-header">
	<h3 class="panel-title"> <span class="glyphicon">&#xe032; </span> TOEIC SESSION</h3>
    </div>
    <div class="panel-body">
        <ul class="list-group">
            <li class="list-group-item"><a href="session.html">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
            <li class="list-group-item"><a href="#">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
            <li class="list-group-item"><a href="#">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
            <li class="list-group-item"><a href="#">Session 1: Hiện tại đơn, Hiện tại hoàn thành</a></li>
        </ul>
    </div>
    </div> 
    <div class="panel my-advertisment">
        <div class="panel-body">
            <a href="<%=request.getContextPath()%>/practice/level?part=1">TOEIC TEST PART 1</a>
        </div>
    </div>
    <div class="panel my-advertisment">
        <div class="panel-body">
            <a href="<%=request.getContextPath()%>/practice/level?part=2">TOEIC TEST PART 2</a>
        </div>
    </div>
    <div class="panel my-advertisment">
        <div class="panel-body">
            <a href="<%=request.getContextPath()%>/practice/level?part=3">TOEIC TEST PART 3</a>
        </div>
    </div>
        <div class="panel my-advertisment">
        <div class="panel-body">
            <a href="<%=request.getContextPath()%>/practice/level?part=4">TOEIC TEST PART 4</a>
        </div>
    </div>
</div>
</div>
</div>
<script src="<%=request.getContextPath()%>/templates/js/question_anwer.js"></script>
<script src="<%=request.getContextPath()%>/templates/js/resultPractice.js"></script>
<%@include file="../footer.jsp" %>