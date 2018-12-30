<%-- 
    Document   : practicePart3
    Created on : Dec 28, 2018, 10:29:45 PM
    Author     : Admin
--%>

<%@page import="model.mediaforlisten"%>
<%@page import="model.Part3_4"%>
<%@page import="java.util.ArrayList"%>

<%@include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>TOEIC- TEST</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/contest.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/radio.css">       
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/test.css">     
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/answersheet.css">    

<title>TOEIC- PART 3</title>
<%
    
    ArrayList<Part3_4> listPart4 = (ArrayList<Part3_4>) request.getAttribute("part4"); 
    ArrayList<mediaforlisten> listMediaPart4 = (ArrayList<mediaforlisten>) request.getAttribute("listMediaPart4");
    mediaforlisten Media  = listMediaPart4.get(0);
    Part3_4 part3_4 = listPart4.get(0);
    int dem = 0;
    int index = dem;
%>
<div class="main">
    <div class="container">
	<div class="col-md-8 colQuestion" >
            <div class="panel-body" id="check">                
        <div id="fulltest_content">
            <form method="post" id="fulltest_part_head" action="<%=request.getContextPath()%>/pratice/result" data-part="part4">
                <input type="hidden" value="part4" name="part"/>
                <div  data-media="media_<%=Media.getId()%>"  class="question fullest_page_<%=index+1%> part3_<%=Media.getId()%>" data-page="<%=index+1%>"  data-id="<%=Media.getId()%>" data-part="part4">
                        <div class="text-center" >
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=Media.getMediaFile()%>" type="audio/mpeg">
                            </audio>
                        </div>
                        <div class="text-center script_answer_<%=index+1%>" style="backgroud:red; display: none">
                            <p style="backgroud:red; "><%=Media.getScript_answer()!=null?Media.getScript_answer():""%></p>   
                        </div>
                </div>
                    <% 
                        ArrayList<Part3_4> getPart = mediaforlisten.getPart("part4", String.valueOf(Media.getId())) ;
                        for(Part3_4 p1: getPart){
                    %>
                    <div  class="question  media_<%=p1.getMedia_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=p1.getId()%>" data-part="4">
                        <p>Question: <%=dem+1%> <strong><%=p1.getQuestion()%><strong></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_a<%=p1.getId()%><%=p1.getMedia_id()%>">
                                <label for=""><%=p1.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_b<%=p1.getId()%><%=p1.getMedia_id()%>"> 
                                <label><%=p1.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_c<%=p1.getMedia_id()%>"> 
                                <label><%=p1.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_d<%=p1.getId()%><%=p1.getMedia_id()%>"> 
                                <label><%=p1.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%dem++;}%>
                <!--</div>-->
                <%
                        for (int i = 1; i < listMediaPart4.size(); i++) {
                            mediaforlisten media  = listMediaPart4.get(i); 
                            index++;
                %>
                <div  data-media="media_<%=media.getId()%> " style="display:none" class="question fullest_page_<%=index+1%> part3_<%=media.getId()%>" data-page="<%=index+1%>"  data-id="<%=media.getId()%>" data-part="part3">
                        <div class="text-center" >
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=media.getMediaFile()%>" type="audio/mpeg">
                            </audio>
                        </div>
                        <div class="text-center script_answer_<%=index+1%>" style="display: none">
                            <p style="backgroud:red; "><%=media.getScript_answer()!=null?media.getScript_answer():""%></p>   
                        </div>
                </div>
                    <%}%>
                    <% 
                        for (int idx = dem; idx < listPart4.size(); idx++) {
                            Part3_4   p1 = listPart4.get(idx);
                            dem++;
                    %>
                    <div  style="display:none" class="question  media_<%=p1.getMedia_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=p1.getId()%>" data-part="3">
                        <p>Question: <%=dem+1%> <strong><%=p1.getQuestion()%><strong></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_a<%=p1.getId()%><%=p1.getMedia_id()%>">
                                <label for=""><%=p1.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_b<%=p1.getId()%><%=p1.getMedia_id()%>"> 
                                <label><%=p1.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_c<%=p1.getId()%><%=p1.getMedia_id()%>"> 
                                <label><%=p1.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_d<%=p1.getId()%><%=p1.getMedia_id()%>"> 
                                <label><%=p1.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
        </div>
                    <div class="pageing" id="fulltest_page" data-page="1" data-limit="<%=index+1%>" >
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
</div>
</div>
<script src="<%=request.getContextPath()%>/templates/js/question_anwer.js"></script>
<script src="<%=request.getContextPath()%>/templates/js/resultPractice.js"></script>
<%@include file="../footer.jsp" %>