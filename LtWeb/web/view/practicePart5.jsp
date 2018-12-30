<%@page import="model.mediaforlisten"%>
<%@page import="model.Part5"%>
<%@page import="model.Test"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>TOEIC- TEST</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/contest.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/radio.css">       
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/test.css">     
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/answersheet.css">    

<title>TOEIC- PART 1</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/radio.css">       
<div class="main">
    <div class="container">
	<div class="col-md-8 colQuestion">
            <div class="panel-body" id="check">                
        <div id="fulltest_content">
            <%     
                ArrayList<Part5> listPart5 = (ArrayList<Part5>) request.getAttribute("part5"); 
                Part5 part5 = listPart5.get(0);
                int dem = 0;
            %>
            <form method="post" id="fulltest_part_head" action="<%=request.getContextPath()%>/pratice/result" data-part="part5">
                <input type="hidden" value="part5" name="part"/>
                    <div class="question fullest_page_<%=dem+1%> part1_<%=dem+1%> " data-page="1"   id="test_question_<%=part5.getId()%>" data-part="part1">
                        
                        <div class="text-center script_answer_<%=dem+1%>" style="backgroud:red; display: none">
                            <pre><%=part5.getScript_answer()!=null?part5.getScript_answer():""%></pre>   
                        </div>
                        <p>Question: <%=dem+1%> <%=part5.getQuestion()%></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part5.getId()%>" name="answer[<%=dem%>]" value="<%=part5.getId()%>" class="sg-replace-icons radio_answer_a<%=dem+1%>">
                                <label for=""><%=part5.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part5.getId()%>" name="answer[<%=dem%>]" value="<%=part5.getId()%>" class="sg-replace-icons radio_answer_b<%=dem+1%>"> 
                                <label><%=part5.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part5.getId()%>" name="answer[<%=dem%>]" value="<%=part5.getId()%>" class="sg-replace-icons radio_answer_c<%=dem+1%>"> 
                                <label><%=part5.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part5.getId()%>" name="answer[<%=dem%>]" value="<%=part5.getId()%>" class="sg-replace-icons radio_answer_d<%=dem+1%>"> 
                                <label><%=part5.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div> 
                    <% 
                        for (int idx = 1; idx < listPart5.size(); idx++) {
                            Part5   p1 = listPart5.get(idx);
                            dem++;
                    %>
                    <div  style="display:none" class="question fullest_page_<%=dem+1%> part1_<%=dem+1%> "  data-page="<%=dem+1%>"  id="test_question_<%=p1.getId()%>" data-part="part1">
                        
                        <div class="text-center script_answer_<%=dem+1%>" style="backgroud:red; display: none">
                            <pre><%=p1.getScript_answer()!=null?p1.getScript_answer():""%></pre>   
                        </div>
                        <p>Question: <%=dem+1%> <%=p1.getQuestion()%></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_a<%=dem+1%>">
                                <label for=""><%=p1.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_b<%=dem+1%>"> 
                                <label><%=p1.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_c<%=dem+1%>"> 
                                <label><%=p1.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=dem%>]" value="<%=p1.getId()%>" class="sg-replace-icons radio_answer_d<%=dem+1%>"> 
                                <label><%=p1.getD()%>
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
<script src="<%=request.getContextPath()%>/templates/js/question_anwer.js"></script>
<script src="<%=request.getContextPath()%>/templates/js/resultPractice.js"></script>
<%@include file="../footer.jsp" %>