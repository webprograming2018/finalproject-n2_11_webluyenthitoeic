<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/test.css" />

<section class="content">
    <!-- Default box -->
    <div class="box">
     	<div class="post">    
            <div class="post-body"> 
                <div class="post-body-content"> 
                    <label class="alert"><%=(request.getAttribute("errorMessage")!= null) ? request.getAttribute("errorMessage") : ""%></label>
                    <form action="" method="POST" role="form" enctype="multipart/form-data">
                        <div class="col-md-9">
                            <div class="choose">
                                    Choose media: <input type="file" name="media" id="input" class="form-control file" required="required"  onchange="previewFile()">
                                    <audio controls>
                                        <source src="#" type="audio/mpeg" >
                                    </audio>
                                    <div class="from-group">
                                        <label for="">name:</label>
                                        <input type="text" name="name" id="input" class="form-control" value="" required="required" title="" >
                                    </div>
                                    <div class="from-group">
                                        <label for="">Title:</label>
                                        <input type="text" name="title" id="input" class="form-control" value="" required="required" title="" >
                                    </div>
                                <div class="from-group">
                                    <button type="submit" class="btn btn-primary ">SAVE</button>
                                </div>
                            </div>
                        </div>
<!--                        <div class="col-md-3">
                            <div class="choose">
                                <label for="">Choose the question</label>   
                                <select name="part_id" id="inputPart_id" class="form-control" required="required">
                                    <option value="1">Listening</option>
                                    <option value="2">Reading</option>
                                </select>   
                                <input type="button" value="Add question" class="submit">
                            </div>  
                        </div>-->
                    </form>
                </div>
            </div>
        </div>
	
    </section>
<script src="<%=request.getContextPath()%>/admin/assets/js/uploadURL.js"></script>
<%@include file="../footer.jsp" %>