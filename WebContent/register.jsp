<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>注册</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">HP+</h1>

            </div>
            <h3>注册 </h3>
           
            <form class="m-t" role="form" action="login.jsp" id="form">
                 <div class="form-group">
                    <input type="text" class="form-control" placeholder="身份证后6位" required="" name="idcard" id="idcard">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="密码" required="true" name="password" id="password">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="确认密码" required="true" name="cpassword" id="cpassword">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="姓名" required="" name="name" id="name">
                </div>
                <div class="form-group">
                    <input type="number" class="form-control" placeholder="年龄" required="" name="age" id="age">
                </div>
                <div class="form-group">
                    <input type="tel" class="form-control" placeholder="电话号码" required="" name="phone" id="phone">
                </div>
                 <div class="form-group">
                                        性别<br />
                    <label><input name="sex" type="radio" value="男" />男 </label> 
                    <label><input name="sex" type="radio" value="女" />女 </label> 
                </div>
                
                
                <div class="form-group">
                        <div class="checkbox i-checks"><label> <input type="checkbox"><i></i> 同意条款和政策 </label></div>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">注册</button>

                <p class="text-muted text-center"><small>已经有一个账户?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="login.jsp">登录</a>
            </form>
            <p class="m-t"> <small>地表最强：惠普第一分队 &copy; 2018</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script src="js/plugins/validate/jquery.validate.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
             $("#form").validate({
                 rules: {
                 	idcard: {
                      required: true
                    },
                 
                     password: {
                         required: true,
                        
                     },
                     cpassword: {
                         required: true,
                        
                         equalTo:"#password"
                         
                     },
                     name: {
                      required: true
                    },
                    age: {
                      required: true
                    },
                    phone: {
                      required: true
                    },
                    sex: {
                      required: true
                    }
                    
                 },
                  messages: {
           idcard: {
           required:"请输入用户名"
          },
           
        
          cpassword: {
            equalTo: "两次输入密码不相同！"
          },
          name: {
                      required: "请输入姓名"
                    },
                   age: {
                      required: "请输入年龄"
                    },
                    phone: {
                      required: "请输入电话"
                    },
                     sex: {
                      required: "请选择性别"
                    }
          
        }
             })
        });
        
       
    </script>
</body>

</html>