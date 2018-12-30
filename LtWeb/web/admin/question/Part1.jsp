<%@page import="model.Level"%>
<%@page import="model.Test"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/main-menu.css"/>
<section class="content-header">
    <div class="post">	
	<div class="post-body">	
            <div class="post-body-content">	
                <form action="" method="POST" role="form" enctype="multipart/form-data">
                    <input type="hidden" name="dem" value="0" class="dem">
                    <div class="col-md-9 answersheep">
			<div class="choose">
                            
                            <ol>
                                <li class="qu0 col-md-12">
                                    <div class="form-group answerDiff  col-md-12">
                                    <div class="col-md-6 choosemedia">
                                        <label for="">Choose media</label>
                                        <input type="file" data-media="media0" name="media0" data-link="media0">
                                        <audio controls class="media0">
                                            <source src="" type="audio/mpeg" >
                                        </audio>
                                    </div>
                                    <div class="col-md-6 addImage">
    					<label for="">Choose picture</label>
    					<input type="file" id="insert-media-button" class="button insert-media add_media" data-editor="content" name="picture0" data-link="picture0">
                                        <img src="" alt="" class="picture0" width="200px">
                                    </div>
                                    <div class="col-md-12">
                                        <label for="">Answer:</label>
                                            <input type="text" name="answer0" id="input" class="form-control" value="" required="required" title="" placeholder="enter answer true">     
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="">Enter script answer  :</label>
                                        <textarea name="script_answer0" id="input" class="form-control" rows="3" ></textarea>
                                    </div>
                                    </li>
                                    <div class="add"></div>
                                </ol>
				<div class="form-group submit">
                                    <a href="" class="delete" style="display: none">
                                    <i class="glyphicon glyphicon-trash"></i>Delete question
                                    </a>  
                                    <a href="#" class="addQuestionPart1" id="addQu">
                                        <span class="glyphicon glyphicon-plus"></span> Add question
                                    </a>
                                    <input type="submit" class="btn btn-primary submit" name="addQuestionPart1" value="SAVE">
				</div>
			</div>
		</div>
		<div class="col-md-3 " id="style-switcher" style="background: #01ff70"> 
		<div class="choose">
		<div class="form-group">
		Level:<select name="level_id" class="form-control" required="required" >
		<%ArrayList<Level> level = (ArrayList<Level>) request.getAttribute("level");
                    for (Level l : level) {%>
                    <option value="<%=l.getId()%>"><%=l.getLevel()%></option>
                    <%}%>
		</select>	
		</div>
		Test:<select name="test_id" id="inputPart_id" class="form-control" required="required">
                    <%ArrayList<Test> test = (ArrayList<Test>) request.getAttribute("test");
                    for (Test t : test) {%>
                    <option value="<%=t.getId()%>"><%=t.getName()%></option>
                    <%}%>
		</select>	
		<a href="">+ More Test</a>
		</div>	
		</div>
		</form>
		</div>
	</div>
</div>
</section>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/assets/js/addQuestion.js"></script>
<%@include file="../footer.jsp" %>