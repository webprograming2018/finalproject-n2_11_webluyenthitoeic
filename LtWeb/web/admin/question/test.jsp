<%@page import="model.Test"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/test.css" />

<section class="content">
    <form action="" method="GET" class="form-inline" role="form">
      	<div class="form-group">
            <input type="text" class="form-control"  placeholder="enter test" name="search">
      	</div>
      	<button type="submit" class="btn btn-primary">search</button>
      	<a href="test/create">New Test</a>
    </form>
    <div class="box">
     	<table class="table table-striped table-hover">
     		<thead>
     			<tr>
     				<th>id</th>
     				<th>Test</th>
     				<th>Media</th>
     				<th>Title</th>
     				<th>Created</th>
     				<th>Part 1</th>
     				<th>Part 2</th>
     				<th>Part 3</th>
     				<th>Part 4</th>
     				<th>Part 5</th>
     				<th>Part 6</th>
     				<th>Part 7</th>
     			</tr>
     		</thead>
     		<tbody>
                    <%ArrayList<Test> listTest = (ArrayList<Test>) request.getAttribute("test");
                        for (Test test : listTest) {
                    %>
     			<tr>
                            <td><%=test.getId()%></td>
     			    <td><%=test.getName()%></td>
     			    <td><%=test.getMedia()%></td>
     			    <td><%=test.getTitle()%></td>
     			    <td><%=test.getCreated_at()%></td>
     			    <td>
     				<a class="detailTest" href="" data-test="<%=test.getId()%>" data-part="Part1">Part 1</a>
     			    </td>
                            <td>
     				<a class="detailTest" href="" data-test="<%=test.getId()%>" data-part="Part2">Part 2</a>
                            </td>
                            <td>
     				<a class="detailTest" href="" data-test="<%=test.getId()%>" data-part="Part3">Part 3</a>
                            </td>
                            <td>
     				<a class="detailTest" href="" data-test="<%=test.getId()%>" data-part="Part4">Part 4</a>
                            </td>
                            <td>
     				<a class="detailTest" href="" data-test="<%=test.getId()%>" data-part="Part5">Part 5</a>
                            </td>
                            <td>
                                <a class="detailTest" href="" data-test="<%=test.getId()%>" data-part="Part6">Part 6</a>
     				</td>
                            <td>
     				<a class="detailTest" href="" data-test="<%=test.getId()%>" data-part="Part7">Part 7</a>
                            </td>
     			</tr>
                        <%}%>
     		</tbody>
     	</table>        
      </div>
      <!-- /.box -->
      	<div class="modal fade" id="modal-message" >
      		<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					</div>
				</div>
			</div>
      	</div>
	
    </section>
<script src="<%=request.getContextPath()%>/admin/assets/js/detailTest.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
