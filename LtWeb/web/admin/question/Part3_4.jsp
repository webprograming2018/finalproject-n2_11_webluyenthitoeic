
<%@page import="model.mediaforlisten"%>
<%@page import="model.Level"%>
<%@page import="model.Test"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/css/main-menu.css"/>
<section class="content-header">
    <div class="box">
    <div class="post">	
	<div class="post-body scoll">	
            <div class="post-body-content">	
                <form action="" method="POST" role="form" enctype="multipart/form-data">
                    <input type="hidden" name="dem" value="0" class="dem">
                    <div class="col-md-9">
                        <div class="choose">
                            <div class="form-group">
                                <select name="media_id" class="form-control" required="required" >
                                    <%ArrayList<mediaforlisten> media = (ArrayList<mediaforlisten>) request.getAttribute("listMediaLevel");
                                        for (mediaforlisten m : media) {%>
                                        <option value="<%=m.getId()%>"><%=m.getMediaFile()%>:<%=m.getCreated_at()%></option>
                                    <%}%>
                                </select>
                                +<input value="newMedia" name="more" type="checkbox" class="btn btn-danger" id="btn-more-media">Create new media
                            </div>
                                <script>
                                    $(document).ready(function(){
                                        $(document).on('change', "#btn-more-media", function(e){
                                            e.preventDefault();
                                            if($('#btn-more-media').is(':checked')){
                                                $('.newMedia').show();
                                                $('.file').attr("required", "true");
                                            } else {
                                                $('.newMedia').hide();
                                                $('.file').attr("required", "false");
                                            }
                                        })
                                    })
                                </script>                               
                            <div class="form-group newMedia" style="display: none" >
                                <div class="col-md-6 choose choosemedia">
                                    <label for="">Choose media</label>
                                    <input type="file" name="media" id="input" class="form-control file"   onchange="return previewFile()" />
                                    <audio controls>
                                        <source src="#" type="audio/mpeg" >
                                    </audio>
                                    
                                </div>
                                <div class="col-md-6 choose choosemedia">
                                    <div class="form-group " >
                                        <label for="">Enter question :</label>
                                        <textarea name="script_answer" id="input" class="form-control" rows="3" placeholder="script answer"></textarea>
                                    </div>
                                </div>
                            </div>
                            <ol>
    				<li class="qu0">
    				<table class="table table-striped table-hover">
                                    <tbody>
                                        <tr>
                                            <td colspan="2">
                                                <div class="form-group " >
                                                    <label for="">Enter question :</label>
                                                    <textarea name="question0" id="input" class="form-control" rows="3" required="required"></textarea>
                                                </div>
                                            </td>
                                            </tr>
    					<tr>
    					<td>
                                            <label for="">A:</label>
                                            <input type="text" name="A0" id="input" class="form-control" value="" required="required" title="" placeholder="enter A">
                                        </td>
    					<td>
                                            <label for="">B:</label>
                                            <input type="text" name="B0" id="input" class="form-control" value="" required="required" title="" placeholder="enter B">
                                        </td>
    					</tr>
    					<tr>
    					<td>
                                            <label for="">C:</label>
                                            <input type="text" name="C0" id="input" class="form-control" value="" required="required" title="" placeholder="enter C">
    					</td>
                                            <td>
                                            <label for="">D:</label>
                                            <input type="text" name="D0" id="input" class="form-control" value="" required="required" title="" placeholder="enter D">
                                            </td>
    					</tr>
                                        <tr>
                                        <td colspan="2">
                                            <label for="">Answer:</label>
                                            <input type="text" name="answer0" id="input" class="form-control" value="" required="required" title="" placeholder="enter answer true">
                                        </td>
                                        </tr>
    					</tbody>
    					</table>
                                    </li>
                                    <div class="add"></div>
                                </ol>	
<!--                                <a href="" class="delete" style="display: none">
                                    <i class="glyphicon glyphicon-trash"></i>Delete question
                                </a>  
                                <a href="#" class="addQuestion " id="addQu">
                                    <span class="glyphicon glyphicon-plus"></span> Add question
                                </a>  -->
                                <div class="form-group submit">
                                    <input type="checkbox" value="1" name="stay" >stay on page <button type="submit" class="btn btn-primary ">SAVE</button>
                                    </div>
                                    </div>
                                    </div>
                                <div class="col-md-3" style="background: #01ff70">
                                    <div class="choose">		
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="part" id="input" value="part3" required="">
                                                Part3: Short conversation
                                            </label>
                                        </div>	
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="part" id="input" value="part4" required="">
                                                Part4: Short talk
                                            </label>
                                        </div>	
                                       
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
<script src="<%=request.getContextPath()%>/admin/assets/js/uploadURL.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/assets/js/addQuestion.js"></script>
<%@include file="../footer.jsp" %>