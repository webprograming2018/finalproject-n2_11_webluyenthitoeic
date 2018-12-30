<%@page import="java.util.ArrayList"%>
<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<center>
<div class="col-md-6">
	<form action="" method="POST" role="form">
            <legend>Account</legend>
            <% if(request.getAttribute("user")!=null){
                User user = (User) request.getAttribute("user");
            %>
		<div class="form-group">
                    <label for="name">name</label>
                    <input type="text" class="form-control" id="" placeholder="name" required="" name="name" value="<%=user.getName()%>">
		</div>
		<div class="form-group">
                    <label for="email">email</label>
                    <input type="email" class="form-control" id="" placeholder="email" required="" value="<%=user.getEmail()%>"  readonly="">
		</div>
		<div class="form-group">
                    <label for="password">password</label>
                    <input type="password" class="form-control" id="" placeholder="password"  name="password">
		</div>
		<div class="form-group">
                    <label for="password">password confirm</label>
                    <input type="password" class="form-control" id="" placeholder="password confirm"  name="password_confirm">
		</div>
		<div class="form-group">
                    <label>Role:</label>
                    Admin: 
                    <input type="radio" id="" placeholder="password confirm" required="" value="admin" name="role" required="" <%=user.getRole().equals("admin")?"checked":""%> >
                    Customer: 
                    <input type="radio"  id="" placeholder="password confirm" required="" value="customer" name="role" required="" <%=(user.getRole().equals("customer"))?"checked":""%> >
		</div>
                <div class="form-group">
                    <label>Status:</label>
                    Approval: 
                    <input type="radio" id="" placeholder="password confirm" required="" value="1" name="status" required="" <%=user.getStatus()==1?"checked":""%> >
                    Unapproval:
                    <input type="radio"  id="" placeholder="password confirm" required="" value="0" name="status" required="" <%=user.getStatus()==0?"checked":""%> >
		</div>
            <input type="hidden" name="remember_token" value="">
		<button type="submit" class="btn btn-primary" name="action">Update</button>
               <%}%>
	</form>
    </div>
</center>
</section>
<%@include file="../footer.jsp" %>