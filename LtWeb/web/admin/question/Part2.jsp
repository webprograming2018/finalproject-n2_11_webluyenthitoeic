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
                                        <input type="file" data-media="media" name="media" data-link="media">
                                        <audio controls class="media0">
                                            <source src="" type="audio/mpeg" >
                                        </audio>
                                    </div>
                              
                                    <div class="col-md-12">
                                        <label for="">Answer:</label>
                                            <input type="text" name="answer" id="input" class="form-control" value="" required="required" title="" placeholder="enter answer true">     
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="">Enter script answer  :</label>
                                        <textarea name="script_answer" id="input" class="form-control" rows="3" ></textarea>
                                    </div>
                                    </li>
                                    <div class="add"></div>
                                </ol>
				<div class="form-group submit">
                                    <input type="checkbox" value="1" name="stay" >stay on page <input type="submit" class="btn btn-primary submit" name="addQuestionPart1" value="SAVE">
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
<script>
    function previewFile(){
       var preview = document.querySelector('audio'); 
       var file    = document.querySelector('input[type=file]').files[0]; 
       var reader  = new FileReader();

       reader.onloadend = function () {
           preview.src = reader.result;
       }

       if (file) {
           reader.readAsDataURL(file);
       } else {
           preview.src = "";
       }
  }

  previewFile();  
</script>
<!--<script type="text/javascript" src="<%=request.getContextPath()%>/admin/assets/js/addQuestion.js"></script>-->
<%@include file="../footer.jsp" %>