
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>TOEIC-Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/AdminLTE.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/_all-skins.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/jquery-ui.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/admin/assets/css/style.css" />
  <script src="<%=request.getContextPath()%>/admin/assets/js/jquery.min.js"></script>

  
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="" class="logo">
        <span class="logo-mini"><b>TO</b>eic</span>
        <span class="logo-lg"><b>Admin</b></span>
    </a>
    <nav class="navbar navbar-static-top">
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <!--<img src="" class="user-image" alt="User Image">-->
                    <span class="hidden-xs"> 
                        <%if(session.getAttribute("username") != null){
                           out.print(session.getAttribute("username"));
                        }else
                            out.print("admin");
                        %>
                    </span>
                </a>
                <ul class="dropdown-menu">
                    <li class="user-header">
                        <img src="" class="img-circle" alt="User Image">
                    </li>
                    <li class="user-footer">
                        <div class="pull-left">
                            <a href="#" class="btn btn-default btn-flat">Hồ sơ cá nhân</a>
                        </div>
                        <div class="pull-right">
                            <a href="" class="btn btn-default btn-flat">Thoát</a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- =============================================== -->
  <aside class="main-sidebar">
    <section class="sidebar">
        <div class="user-panel">
            <div class="pull-left image">
                <img src="" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>Hi </p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </form>
        <ul class="sidebar-menu" data-widget="tree">
            <li>
                <a href="<%=request.getContextPath()%>/">
                    <i class="fa fa-home"></i> 
                    <span>
                        Home
                    </span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Manager Topic</span>
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i>Post</a></li>
                    <li><a href=""><i class="fa fa-circle-o"></i>Grammer giude</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Manager Question</span>
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<%=request.getContextPath()%>\admin\question\test"><i class="fa fa-circle-o"></i>Test</a></li>
                    <li><a href="<%=request.getContextPath()%>\admin\question\Part1"><i class="fa fa-circle-o"></i>Part 1</a></li>                   
                    <li><a href="<%=request.getContextPath()%>\admin\question\Part2"><i class="fa fa-circle-o"></i>Part 2</a></li>                   
                    <li><a href="<%=request.getContextPath()%>\admin\question\addPart3-4"><i class="fa fa-circle-o"></i>Part 3 - Part 4</a></li>
                    <li><a href="<%=request.getContextPath()%>\admin\question\Part5"><i class="fa fa-circle-o"></i>Part 5</a></li>
                    <li><a href="<%=request.getContextPath()%>\admin\question\Part6"><i class="fa fa-circle-o"></i>Part 6</a></li>
                    <li><a href="<%=request.getContextPath()%>\admin\question\Part7"><i class="fa fa-circle-o"></i>Part 7</a></li>
                </ul>
            </li>
            
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-user"></i> <span>Manager user</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                   <li><a href="<%=request.getContextPath()%>\admin\user\index"><i class="fa fa-circle-o"></i>List user</a></li>
                   <li><a href="<%=request.getContextPath()%>\admin\user\create"><i class="fa fa-circle-o"></i>Create user</a></li>
                </ul>
            </li>
        </ul>
    </section>
</aside>

<div class="content-wrapper">