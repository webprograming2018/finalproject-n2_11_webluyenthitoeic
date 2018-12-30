<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<center>
<div class="col-md-6">
	<form action="" method="POST" role="form">
            <legend>Create User</legend>
		<div class="form-group">
                    <label for="name">name</label>
                    <input type="text" class="form-control" id="" placeholder="name" required="" name="name">
		</div>
		<div class="form-group">
                    <label for="email">email</label>
                    <input type="email" class="form-control" id="" placeholder="email" required="" name="email">
		</div>
		<div class="form-group">
                    <label for="password">password</label>
                    <input type="password" class="form-control" id="" placeholder="password" required="" name="password">
		</div>
		<div class="form-group">
                    <label for="password">password confirm</label>
                    <input type="password" class="form-control" id="" placeholder="password confirm" required="" name="password_confirm">
		</div>
		<div class="form-group">
                    Admin: 
                    <input type="radio" id="" placeholder="password confirm" required="" value="admin" name="role" required="" >
                    Customer: 
                    <input type="radio"  id="" placeholder="password confirm" required="" value="customer" name="role" required="">
		</div>
            <input type="hidden" name="remember_token" value="">
                <input type="checkbox" value="1" name="stay" >stay on page 
		<button type="submit" class="btn btn-primary" name="action">Add</button>
	</form>
    </div>
</center>
</section>
<%@include file="../footer.jsp" %>