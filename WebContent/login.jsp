<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>登录</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">HP+</h1>

            </div>
            <h3>欢迎进入</h3>
            <p>惠普正骨
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <form class="m-t" role="form" action="index.jsp">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="用户名" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" required=" ">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">登录</button>

                <a href="#"><small>忘记密码?</small></a>
                <p class="text-muted text-center"><small>没有账户?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.jsp">创建账户</a>
            </form>
          <p class="m-t"> <small>地表最强：惠普第一分队 &copy; 2018</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>

</html>