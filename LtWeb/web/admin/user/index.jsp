<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>

<section class="content-header">
      <h1>
        List User
      </h1>
</section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                      title="Collapse">
                <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fa fa-times"></i></button>
            </div>
        </div>
        <div class="box-body">
            <form action="" method="GET" class="form-inline" role="form">
                <div class="form-group">
                    <label class="sr-only" for="">label</label>
                    <input class="form-control" name="name" placeholder="enter username or id...">
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
            <table class="table table-hover">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Status</th>
                    <th>action</th>
                </tr>
            </thead>
            <tbody>
                <%ArrayList<User> users = (ArrayList<User>) request.getAttribute("users");%>
                <% for (User user : users) {%>
                <tr>
                    <td><%=user.getId()%></td>
                    <td><%=user.getName()%></td>
                    <td><%=user.getEmail()%></td>
                    <td><%=user.getRole()%></td>
                    <td><%=(user.getStatus()==1)?"access":"unaccess"%></td>
                    <td>
                        <a class="label label-danger">Delete</a>
                        <a href="<%=request.getContextPath()%>/admin/user/account?id=<%=user.getId()%>" class="label label-success">Detail</a>

                    </td>
                </tr>
                <% }%>
            </tbody>
          </table>
        </div>
        <div class="box-footer">
            Footer
        </div>
    </div>
</section>

<%@include file="../footer.jsp" %>