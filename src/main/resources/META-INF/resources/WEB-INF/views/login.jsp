<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<%@ include file="/WEB-INF/views/head.jsp" %>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    body, html {
      height: 100%;
      margin: 0;
    }

    .bg {
      /* The image used */
      background-image: url("/img/xon.jpg");

      /* Full height */
      height: 100%;

      /* Center and scale the image nicely */
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
    }
  </style>
</head>
<nav class="navbar navbar-light bg-light static-top">
  <div class="container">
    <!--<a class="navbar-brand" href="#">Blood Request</a>-->
    <a class="btn btn-outline-primary" href="#">Blood Request</a>
    <a class="btn btn-outline-info" href="#">Sign In</a>
    <a class="btn btn-outline-primary" href="#">Our MBSTU</a>
    <a class="btn btn-outline-success" href="#">Our Goal</a>
    <a class="btn btn-outline-warning" href="#">Developers</a>
  </div>
</nav>
<body class="bg">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b style="color: #f7ecb5">BBMS</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>

    <form:form action="/login" method="post">
      <div class="form-group has-feedback">
        <input id="username" type="text" class="form-control" name="username" placeholder="User Name"/>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input id="password" type="password" class="form-control" name="password" placeholder="Password"/>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <c:if test="${param.error ne null}">
          <div class="alert-danger">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
        </c:if>
        <!-- /.col -->
        <div class="col-xs-12">
          <button type="submit" class="btn btn-info btn-block">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form:form>
    <!-- /.social-auth-links -->

    <a href="/register" class="btn btn-warning btn-block">Register</a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>

</html>

