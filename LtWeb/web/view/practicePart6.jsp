<%-- 
    Document   : practicePart3
    Created on : Dec 28, 2018, 10:29:45 PM
    Author     : Admin
--%>

<%@page import="model.passages"%>
<%@page import="model.Part6"%>
<%@page import="model.mediaforlisten"%>
<%@page import="model.Part3_4"%>
<%@page import="java.util.ArrayList"%>

<%@include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>TOEIC- PART 6</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/contest.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/radio.css">       
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/test.css">     
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/answersheet.css">    

<%
    
    ArrayList<Part6> listPart6 = (ArrayList<Part6>) request.getAttribute("part6"); 
    ArrayList<passages> listPassages = (ArrayList<passages>) request.getAttribute("listPassages");
    passages pass  = listPassages.get(0);
    Part6 part6 = listPart6.get(0);
    int dem = 0;
    int index = dem;
%>
<div class="main">
    <div class="container">
	<div class="col-md-8 colQuestion">
            <div class="panel-body" id="check">                
        <div id="fulltest_content">
            <form method="post" id="fulltest_part_head" action="<%=request.getContextPath()%>/pratice/result" data-part="part6">
                <input type="hidden" value="part6" name="part"/>
                <div  data-media="media_<%=pass.getId()%>"  class="question fullest_page_<%=index+1%> part3_<%=pass.getId()%>" data-page="<%=index+1%>"  data-id="<%=pass.getId()%>" data-part="part6">
                        <div class="text-center" style="background: #00a7d0; padding: 20px; color:18px">
                                <%=pass.getContent()%>
                        </div>
                </div>
                    <% 
                        ArrayList<Part6> getPart = passages.getPart6(String.valueOf(pass.getId())) ;
                        for(Part6 p1: getPart){
                    %>
                    <div  class="question  media_<%=p1.getPassage_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=p1.getId()%>" data-part="3">
                        <p>Question: <%=dem+1%> </p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_a<%=p1.getId()%><%=p1.getPassage_id()%>">
                                <label for=""><%=p1.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_b<%=p1.getId()%><%=p1.getPassage_id()%>"> 
                                <label><%=p1.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_c<%=p1.getPassage_id()%>"> 
                                <label><%=p1.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_d<%=p1.getId()%><%=p1.getPassage_id()%>"> 
                                <label><%=p1.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%dem++;}%>
                <!--</div>-->
                <%
                        for (int i = 1; i < listPassages.size(); i++) {
                            passages passage  = listPassages.get(i); 
                            index++;
                %>
                <div  data-media="media_<%=passage.getId()%> " style="display:none" class="question fullest_page_<%=index+1%> part3_<%=passage.getId()%>" data-page="<%=index+1%>"  data-id="<%=passage.getId()%>" data-part="part6">
                        <div class="text-center" style="background: #00a7d0; padding: 20px; color:18px">
                                <%=passage.getContent()%>
                        </div>
                        
                </div>
                    <%}%>
                    <% 
                        for (int idx = dem; idx < listPart6.size(); idx++) {
                            Part6   p1 = listPart6.get(idx);
                            dem++;
                    %>
                    <div  style="display:none" class="question  media_<%=p1.getPassage_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=p1.getId()%>" data-part="3">
                        <p>Question: <%=dem+1%> </p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_a<%=p1.getId()%><%=p1.getPassage_id()%>">
                                <label for=""><%=p1.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_b<%=p1.getId()%><%=p1.getPassage_id()%>"> 
                                <label><%=p1.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_c<%=p1.getId()%><%=p1.getPassage_id()%>"> 
                                <label><%=p1.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_d<%=p1.getId()%><%=p1.getPassage_id()%>"> 
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
                        <input type="button" class="btn btn-default"  value="Scope" id="submitTest">
                        <a class="btn btn-success change_page change_page_back" data-type="-1" style="display: none">Back</a>
                        <a data-type="1" class="change_page_next change_page btn btn-danger">Next </a>
                    </div>
                </div>
        </div>
                
    </form>
</div>
                    <div class="left col-md-3">
    <div class="panel my-advertisment">
        <div class="panel-body">
            <a href="<%=request.getContextPath()%>/practice/level?part=5">TOEIC TEST PART 5</a>
        </div>
    </div>
    <div class="panel my-advertisment">
        <div class="panel-body">
            <a href="<%=request.getContextPath()%>/practice/level?part=6">TOEIC TEST PART 6</a>
        </div>
    </div>
    <div class="panel my-advertisment">
        <div class="panel-body">
            <a href="<%=request.getContextPath()%>/practice/level?part=7">TOEIC TEST PART 7</a>
        </div>
    </div>
</div>
</div>
</div>
</div>
<script src="<%=request.getContextPath()%>/templates/js/question_anwer.js"></script>
<script src="<%=request.getContextPath()%>/templates/js/resultPractice.js"></script>
<%@include file="../footer.jsp" %>