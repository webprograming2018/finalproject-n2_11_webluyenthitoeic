<%@page import="model.passages"%>
<%@page import="model.mediaforlisten"%>
<%@page import="model.Part7"%>
<%@page import="model.Part6"%>
<%@page import="model.Part5"%>
<%@page import="model.Part3_4"%>
<%@page import="model.Part2"%>
<%@page import="model.Part1"%>
<%@page import="model.Test"%>
<%@page import="java.util.ArrayList"%>
<%@include file="../header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<title>TOEIC- TEST</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/contest.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/radio.css">       
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/test.css">     
        <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/answersheet.css">    
<%
    ArrayList<Part1> listPart1 = (ArrayList<Part1>) request.getAttribute("part1"); 
    ArrayList<Part2> listPart2 = (ArrayList<Part2>) request.getAttribute("part2"); 
    ArrayList<Part3_4> listPart3 = (ArrayList<Part3_4>) request.getAttribute("part3"); 
    ArrayList<Part3_4> listPart4 = (ArrayList<Part3_4>) request.getAttribute("part4"); 
    ArrayList<Part6> listPart6 = (ArrayList<Part6>) request.getAttribute("part6"); 
    ArrayList<Part5> listPart5 = (ArrayList<Part5>) request.getAttribute("part5"); 

    ArrayList<Part7> listPart7 = (ArrayList<Part7>) request.getAttribute("part7"); 
    ArrayList<mediaforlisten> listMediaPart3 = (ArrayList<mediaforlisten>) request.getAttribute("listMediaPart3");
    ArrayList<mediaforlisten> listMediaPart4 = (ArrayList<mediaforlisten>) request.getAttribute("listMediaPart4");
    ArrayList<passages> getPassagesPart6 = (ArrayList<passages>) request.getAttribute("getPassagesPart6");
    ArrayList<passages> getPassagesPart7 = (ArrayList<passages>) request.getAttribute("getPassagesPart7");
    int size1 = listPart1.size();
    int size2 = listPart2.size();
    int size3 = listMediaPart3.size();
    int size4 = listMediaPart4.size();
    int size5 = listPart5.size();
    int size6 = getPassagesPart6.size();
    int size7 = getPassagesPart7.size();
    
    
    Part1 part1 = listPart1.get(0);
    int dem = 0;
%>
<div class="main">
    <div class="container">
	<div class="col-md-8">
            <div class="panel-body" id="check">
                <label for="">Practice Full TEST<%=request.getAttribute("test_id")%> TOEIC Reading, Listening </label>
                <form data-testid=""  action="<%=request.getContextPath()%>/toeic/result" id="fulltest_part_head" method="post" >
                    <input type="hidden" name="test_id" value="<%=request.getAttribute("test_id")%>" >
                    <div class="col-md-1.7 btn  btn-warning action part part1" data-part="part1" data-start="<%=1%>" >Part 1</div>
                    <div class="col-md-1.7 btn  btn-warning part part2" data-part="part2" data-start="<%=size1+1%>" >Part 2</div>
                    <div class="col-md-1.7 btn  btn-warning part part3" data-part="part3" data-start="<%=size1+size2+1%>" >Part 3</div>
                    <div class="col-md-1.7 btn  btn-warning part part4" data-part="part4" data-start="<%=size1+size2+size3+1%>" >Part 4</div>
                    <div class="col-md-1.7 btn btn-warning part part5" data-part="part5" data-start="<%=size1+size2+size3+size4+1%>" >Part 5</div>
                    <div class="col-md-1.7 btn  btn-warning part part6" data-part="part6" data-start="<%=size1+size2+size3+size4+size5+1%>" >Part 6</div>
                    <div class="col-md-1.7 btn  btn-warning part part7" data-part="part7" data-start="<%=size1+size2+size3+size4+size5+size6+1%>" >Part 7</div>
                    <div class="alert">
                        Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:
                    </div>
                    
                    <div id="fulltest_content">
                    <div class="question fullest_page_<%=dem+1%> part1_<%=dem+1%>" data-page="1"  id="test_question_<%=part1.getId()%>" data-part="part1">
                        <div class="text-center" >
                            <img src="<%=request.getContextPath()%>/templates/uploads/<%=part1.getPicture()%>" alt="" width="400px">
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=mediaforlisten.getMedia(part1.getMedia_id()).getMediaFile()%>" type="audio/mpeg">
                            </audio>
                        </div>
                        <div class="text-center script_answer_<%=dem+1%>" style="backgroud:red; display: none">
                            <pre><%=mediaforlisten.getMedia(part1.getMedia_id()).getScript_answer()!=null?mediaforlisten.getMedia(part1.getMedia_id()).getScript_answer():""%></pre>   
                        </div>
                        <p>Question: <%=dem+1%></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=part1.getId()%>][0]" value="A" class="sg-replace-icons radio_answer_listen_a<%=dem+1%>">
                                <label for=""></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=part1.getId()%>][0]" value="B" class="sg-replace-icons radio_answer_listen_b<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=part1.getId()%>][0]" value="C" class="sg-replace-icons radio_answer_listen_c<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=part1.getId()%>" name="answer[<%=part1.getId()%>][0]" value="D" class="sg-replace-icons radio_answer_listen_d<%=dem+1%>"> 
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
                            <img src="<%=request.getContextPath()%>/templates/uploads/<%=p1.getPicture()%>" alt="" width="400px">
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=mediaforlisten.getMedia(p1.getMedia_id()).getMediaFile()%>" type="audio/mpeg">
                            </audio>
                        </div>
                        <div class="text-center script_answer_<%=dem+1%>  " style="backgroud:red; display: none">
                            <pre><%=mediaforlisten.getMedia(p1.getMedia_id()).getScript_answer()!=null?mediaforlisten.getMedia(p1.getMedia_id()).getScript_answer():""%></pre>   
                        </div>
                        <p>Question: <%=dem+1%></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=p1.getId()%>][0]" value="A" class="sg-replace-icons radio_answer_listen_a<%=dem+1%>">
                                <label for=""></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=p1.getId()%>][0]" value="B" class="sg-replace-icons radio_answer_listen_b<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=p1.getId()%>][0]" value="C" class="sg-replace-icons radio_answer_listen_c<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p1.getId()%>" name="answer[<%=p1.getId()%>][0]" value="D" class="sg-replace-icons radio_answer_listen_d<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
  <!--------------------------------------------------------------------->
                    <% 
                        for (Part2 p : listPart2) {
                            dem++;
                    %>
                    <div  style="display:none" class="question fullest_page_<%=dem+1%> part2_<%=dem+1%>" data-page="<%=dem+1%>"  id="test_question_<%=part1.getId()%>" data-part="part2">
                        <div class="text-center" >
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=mediaforlisten.getMedia(p.getMedia_id()).getMediaFile()%>" type="audio/mpeg">
                            </audio>
                        </div>
                        <div class="text-center script_answer_<%=dem+1%>" style="backgroud:red; display: none">
                            <pre><%=mediaforlisten.getMedia(p.getMedia_id()).getScript_answer()!=null?mediaforlisten.getMedia(p.getMedia_id()).getScript_answer():""%></pre>   
                        </div>    
                        <p>Question: <%=dem+1%></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio"  data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][1]" value="A" class="sg-replace-icons radio_answer_listen_a<%=dem+1%>">
                                <label for=""></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][1]" value="B" class="sg-replace-icons radio_answer_listen_b<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][1]" value="C" class="sg-replace-icons radio_answer_listen_c<%=dem+1%>"> 
                                <label>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
 <!--------------------------------------------------------------------->
                    <%
                        int index = dem;
                        for (mediaforlisten media : listMediaPart3) {
                            index++;
                    %>
                    <div  data-media="media_<%=media.getId()%> " style="display:none" class="question fullest_page_<%=index+1%> part3_<%=media.getId()%>" data-page="<%=index+1%>"  id="test_question_<%=media.getId()%>" data-part="part3">
                        <div class="text-center" >
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=media.getMediaFile()%>" type="audio/mpeg">
                            </audio>
                        </div>
                        <div class="text-center script_answer_<%=index+1%>" style="backgroud:red; display: none">
                            <pre><%=media.getScript_answer()!=null?media.getScript_answer():""%></pre>   
                        </div>
                    </div>
                    <%}%>
                    <%
                        for (Part3_4 p : listPart3) {
                            dem++;
                    %>
                    <div  style="display:none" class="question  media_<%=p.getMedia_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=part1.getId()%>" data-part="3">
                        <p>Question: <%=dem+1%> <strong><%=p.getQuestion()%><strong></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][2]" value="A" class="sg-replace-icons radio_answer_listen_a<%=dem+1%>">
                                <label for=""> <%=p.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][2]" value="B" class="sg-replace-icons radio_answer_listen_b<%=dem+1%>"> 
                                <label> <%=p.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][2]" value="C" class="sg-replace-icons radio_answer_listen_c<%=dem+1%>"> 
                                <label>  <%=p.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][2]" value="D" class="sg-replace-icons radio_answer_listen_d<%=dem+1%>"> 
                                <label> <%=p.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
 <!--------------------------------------------------------------------->
                    <%
                        for (mediaforlisten media : listMediaPart4) {
                            index++;
                    %>
                    <div  data-media="media_<%=media.getId()%> " style="display:none" class="question fullest_page_<%=index+1%> part4_<%=media.getId()%>" data-page="<%=index+1%>"  id="test_question_<%=media.getId()%>" data-part="part4">
                        <div class="text-center" >
                            <audio controls>
                                <source src="<%=request.getContextPath()%>/templates/uploads/<%=media.getMediaFile()%>" type="audio/mpeg">
                            </audio>
                        </div>
                        <div class="text-center script_answer_<%=dem+1%>" style="backgroud:red; display: none">
                            <pre><%=media.getScript_answer()!=null?media.getScript_answer():""%></pre>   
                        </div>
                    </div>
                    <%}%>
                    <%
                        for (Part3_4 p : listPart4) {
                            dem++;
                    %>
                    <div  style="display:none" class="question  media_<%=p.getMedia_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=part1.getId()%>" data-part="4">
                        <p>Question: <%=dem+1%> <strong><%=p.getQuestion()%><strong></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][3]" value="A" class="sg-replace-icons radio_answer_listen_a<%=dem+1%>">
                                <label for=""> <%=p.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][3]" value="B" class="sg-replace-icons radio_answer_listen_b<%=dem+1%>"> 
                                <label> <%=p.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="1" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][3]" value="C" class="sg-replace-icons radio_answer_listen_c<%=dem+1%>"> 
                                <label>  <%=p.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-part="1" data-cau="<%=dem+1%>"  data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][3]" value="D" class="sg-replace-icons radio_answer_listen_d<%=dem+1%>"> 
                                <label> <%=p.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
 <!--------------------------------------------------------------------->
                    <% 
                        for (Part5 p : listPart5) {
                            dem++;
                            index++;
                    %>
                    <div  style="display:none" class="question fullest_page_<%=index+1%> part5_<%=dem+1%>" data-page="<%=index+1%>"  id="test_question_<%=part1.getId()%>" data-part="part5">
                        <p>Question: <%=dem+1%> <strong><%=p.getQuestion()%><strong></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="5" data-cau="<%=index+1%>" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][4]" value="A" class="sg-replace-icons radio_answer_read_a<%=dem+1%>">
                                <label for=""><%=p.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>"  data-part="5"data-cau="<%=index+1%>" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][4]" value="B" class="sg-replace-icons radio_answer_read_b<%=dem+1%>"> 
                                <label><%=p.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="5" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][4]" value="C" class="sg-replace-icons radio_answer_read_c<%=dem+1%>"> 
                                <label><%=p.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="5" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][4]" value="D" class="sg-replace-icons radio_answer_read_d<%=dem+1%>"> 
                                <label><%=p.getD()%>
                                </label>
                            </li>
                        </ol>
                        <div class="text-center script_answer_<%=index+1%> " style="backgroud:red; display: none">
                            <pre><%=p.getScript_answer()!=null?p.getScript_answer():""%></pre>   
                        </div>
                    </div>
                    <%}%>
<!-------------------------------------------------------------------------------------->     
<%
                        for (passages pass : getPassagesPart6) {
                            index++;
                    %>
                    <div  data-media="media_<%=pass.getId()%>" style="display:none" class="question fullest_page_<%=index+1%> part6_<%=pass.getId()%>" data-page="<%=index+1%>"  id="test_question_<%=pass.getId()%>" data-part="part6">
                        <div class="text-center" style="padding:30px; background: #a6e1ec; font-size: 16px; margin-bottom: 10px">
                            <%=pass.getContent()%>
                        </div>
                    </div>
                    <%}%>
                    <%
                        for (Part6 p : listPart6) {
                            dem++;
                    %>
                    <div  style="display:none" class="question  media_<%=p.getPassage_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=part1.getId()%>" data-part="part6">
                        <p>Question: <%=dem+1%> </p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="6" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][5]" value="A" class="sg-replace-icons radio_answer_read_a<%=dem+1%>">
                                <label for=""> <%=p.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="6" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][5]" value="B" class="sg-replace-icons radio_answer_read_b<%=dem+1%>"> 
                                <label> <%=p.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="6" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][5]" value="C" class="sg-replace-icons radio_answer_read_c<%=dem+1%>"> 
                                <label>  <%=p.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="6" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][5]" value="D" class="sg-replace-icons radio_answer_read_d<%=dem+1%>"> 
                                <label> <%=p.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
<!-------------------------------------------------------------------------------------->     
<%
                        for (passages pass : getPassagesPart7) {
                            index++;
                    %>
                    <div  data-media="media_<%=pass.getId()%>" style="display:none" class="question fullest_page_<%=index+1%> part7_<%=pass.getId()%>" data-page="<%=index+1%>"  id="test_question_<%=pass.getId()%>" data-part="part7">
                        <div class="text-center" style="padding:30px; background: #a6e1ec; font-size: 16px; margin-bottom: 10px">
                            <%=pass.getContent()%>
                        </div>
                    </div>
                    <%}%>
                    <%
                        for (Part7 p : listPart7) {
                            dem++;
                    %>
                    <div  style="display:none" class="question  media_<%=p.getPasages_id()%>" data-page="<%=dem+1%>"  id="test_question_<%=part1.getId()%>" data-part="part7">
                        <p>Question: <%=dem+1%> <strong><%=p.getQuestion()%><strong></p>
                        <ol id="que" type="A"  >
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="7" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][6]" value="A" class="sg-replace-icons radio_answer_read_a<%=dem+1%>">
                                <label for=""> <%=p.getA()%></label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="7" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][6]" value="B" class="sg-replace-icons radio_answer_read_b<%=dem+1%>"> 
                                <label> <%=p.getB()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="7" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][6]" value="C" class="sg-replace-icons radio_answer_read_c<%=dem+1%>"> 
                                <label>  <%=p.getC()%>
                                </label>
                            </li>
                            <li>
                                <input type="radio" data-cau="<%=dem+1%>" data-part="7" data-question="<%=p.getId()%>" name="answer[<%=p.getId()%>][6]" value="D" class="sg-replace-icons radio_answer_read_d<%=dem+1%>"> 
                                <label> <%=p.getD()%>
                                </label>
                            </li>
                        </ol>
                    </div>
                    <%}%>
<!---------------------------------------------------------------->
                    </div>
                    <input class="stop"	type="submit" value="Submit" onclick="stop()" style="display: none" /> 
                
                <div class="pageing" id="fulltest_page" data-page="1" data-limit="<%=dem%>" >
                    <div>Score:0/0 <input type="button" class="btn btn-default " id="btn-script-answer" value="Script" style="display: none"></div>
                    <div class="script-answer"></div>
                    <div class="text-center">
                        <a class="btn btn-success change_page change_page_back" data-type="-1" style="display: none">Back</a>
                        <input type="submit" value="Scope" id="submitTest">
                        <a data-type="1" class="change_page_next change_page btn btn-danger">Next </a>
                    </div>
                </div>
            </form>
        </div>
   </div>
 <div class="modal fade" id="modal-message" >
    <div class="modal-dialog">
	<div class="modal-content">
            <div class="modal-header">
            </div>
        </div>
    </div>
</div>
<div class="col-md-4 col-sm-4 col-xs-12" id="test_col_right" style="position: relative; height: 1423.81px;">
    <div class="box_ketqua" id="test_ketqua" style="position: absolute; left: 15px; right: 15px; margin: 10px;">
       <div class="head">
		<div class="clockmob">
                    <input type="hidden" value="7200" id="timeStart">
                    <h3 style="color:#000000" align="center">
                        <span id='timer'></span>
                    </h3>
		</div>
            <!--<input type="button" value="stop" class="stop btn btn-danger">-->
          
            <div class="clearfix"></div>
        </div>
        <div class="list" style="height: 557px;">
        	
            <div class="scrollbar-inner" id="fulltest_question_shortcut">
                <%
                    int i = 0;
                    for (Part1 part11 : listPart1) {
                        i++;
                %>
                <div class="cau cau_<%=i%>" data-iquestion="part1_<%=i%>" data-page="<%=i%>" data-question="<%=part11.getId()%>">
                    <a href="javascript:void(0)"><%=i%></a>
                </div>
                <%}%>
                <%
                    for (Part2 part2 : listPart2) {
                        i++;
                %>
                <div class="cau cau_<%=i%>" data-iquestion="part2_<%=i%>" data-page="<%=i%>" data-question="<%=part2.getId()%>">
                    <a href="javascript:void(0)"><%=i%></a>
                </div>
                <%}%>
                <%
                    
                    for (Part3_4 part3 : listPart3) {
                        i++;
                %>
                <div class="cau cau_<%=i%>" data-iquestion="part3_<%=part3.getMedia_id()%>" data-page="<%=i%>" data-question="<%=part3.getId()%>">
                    <a href="javascript:void(0)"><%=i%></a>
                </div>
                <%}%>
                <%
                    for (Part3_4 part4 : listPart4) {
                        i++;
                %>
                <div class="cau cau_<%=i%>" data-iquestion="part4_<%=part4.getMedia_id()%>" data-page="<%=i%>" data-question="<%=part4.getId()%>">
                    <a href="javascript:void(0)"><%=i%></a>
                </div>
                <%}%>
                <%
                    for (Part5 part5 : listPart5) {
                        i++;
                %>
                <div class="cau cau_<%=i%>" data-iquestion="part5_<%=i%>" data-page="<%=i%>" data-question="<%=part5.getId()%>">
                    <a href="javascript:void(0)"><%=i%></a>
                </div>
                <%}%>
                <%
                    for (Part6 part6 : listPart6) {
                        i++;
                %>
                <div class="cau cau_<%=i%>" data-iquestion="part6_<%=part6.getPassage_id()%>" data-page="<%=i%>" data-question="<%=part6.getId()%>">
                    <a href="javascript:void(0)"><%=i%></a>
                </div>
                <%}%>
                <%
                    for (Part7 part7 : listPart7) {
                        i++;
                %>
                <div class="cau cau_<%=i%>" data-iquestion="part7_<%=part7.getPasages_id()%>" data-page="<%=i%>" data-question="<%=part7.getId()%>">
                    <a href="javascript:void(0)"><%=i%></a>
                </div>
                <%}%>
            </div>      
        </div>
      
    </div>
</div>
            
        </div>
    </div>
</div>
        <a class="up" href="#topnav">
		<img src="templates/images/up.png" alt="">
	</a>
        <!--<script src="templates/js/contest_stop.js"></script>-->
        <script src="templates/js/time.js"></script>
        <script src="<%=request.getContextPath()%>/templates/js/question_anwer.js"></script>
        <script src="<%=request.getContextPath()%>/templates/js/resultTest.js"></script>
        <script src="<%=request.getContextPath()%>/templates/js/jquery.countdown.min.js"></script>
        <script src="<%=request.getContextPath()%>/templates/js/demNguoc.js"></script> 
<%@include file="../footer.jsp" %>