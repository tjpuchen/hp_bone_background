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

    <title>回复留言</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">

</head>

<body>
     <div id="wrapper">
          <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> 
                        	<a href="<%=path%>/index.jsp"> 
                        	<img alt="image" class="img-circle" src="<%=path%>/img/logo.png"/></a>                        
                        </div>
                        <div class="logo-element">
                            HP+
                        </div>
                    </li>                  
                    <li>
	                   <li>
                    <a><i class="fa fa-bar-chart-o"></i><span class="nav-label">患者信息管理</span><span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level collapse">
                         <li><a href="<%=path%>/index.jsp"> <span class="nav-label">全部患者信息</span></a></li>
                        <li> <a href="<%=path%>/1-1-1.jsp"> <span class="nav-label">我的患者</span></a></li>
                       </ul>
                    </li>
	                    <li>
	                        <a href="<%=path%>/2-1.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">住院流程管理</span></a>
	                    </li> 
	                    <li>
	                        <a href="<%=path%>/3-1.jsp"><i class="fa fa-flask"></i> <span class="nav-label">药品信息</span></a>
	                    </li>
	                    <li>
	                        <a href="<%=path%>/4-1.jsp"><i class="fa fa-files-o"></i> <span class="nav-label">医保政策</span></a>
	                    </li>
	                    <li>
	                        <a href="<%=path%>/5-1.jsp"><i class="fa fa-sitemap"></i> <span class="nav-label">医药公司政策</span></a>
	                    </li>
	                    <li>
	                        <a href="<%=path%>/6-1.jsp"><i class="fa fa-table"></i> <span class="nav-label">出诊信息</span></a>
	                    </li>
	                    <li>
	                        <a href="<%=path%>/7-1.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">必备材料</span></a>
	                    </li>
	                    <li class="active">
	                    	 <a href="<%=path%>/8-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
	                    </li>
                </ul>
            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
       
        </div>

		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>留言板</h2>
					<ol class="breadcrumb">
						<li>
							<a href="<%=path%>/index.jsp">首页</a>
						</li>
						<li class="active">
							<a>留言板</a>
						</li>
						<li class="active">
							<strong>回复留言</strong>
						</li>
					</ol>
			</div>
			<div class="col-lg-2">

			</div>
		</div>
        <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-lg-12 animated fadeInRight">
            <div class="mail-box-header">
                
                <h2>
                   	回复留言
                </h2>
            </div>
                <div class="mail-box">


                <div class="mail-body">

                    <form class="form-horizontal" method="get">
                        <div class="form-group"><label class="col-sm-2 control-label">收件人:</label>
                            <div class="col-sm-10"><input type="text" class="form-control" value="请选择收件人"></div>
                        </div>
                        <div class="form-group"><label class="col-sm-2 control-label">主题:</label>

                            <div class="col-sm-10"><input type="text" class="form-control" value=""></div>
                        </div>
                        </form>

                </div>

                    <div class="mail-text h-200">

                        <div class="summernote">
                            <h3>Hello Jonathan! </h3>
                            这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！
                            <br/>
                            <br/>

                        </div>
<div class="clearfix"></div>
                        </div>
                    <div class="mail-body text-right tooltip-demo">
                        <a href="<%=path%>/8-1-1.jsp" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" title="Send"><i class="fa fa-reply"></i> 发送</a>
                        <a href="<%=path%>/8-1-2.jsp" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Discard email"><i class="fa fa-times"></i> 废弃</a>
                        
                    </div>
                    <div class="clearfix"></div>



                </div>
            </div>
        </div>
        </div>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2015
            </div>
        </div>

        </div>
        </div>

    <!-- Mainly scripts -->
    <script src="<%=path%>/js/jquery-2.1.1.js"></script>
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <script src="<%=path%>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=path%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="<%=path%>/js/plugins/iCheck/icheck.min.js"></script>

    <!-- SUMMERNOTE -->
    <script src="<%=path%>/js/plugins/summernote/summernote.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });


            $('.summernote').summernote();

        });
        var edit = function() {
            $('.click2edit').summernote({focus: true});
        };
        var save = function() {
            var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
            $('.click2edit').destroy();
        };

    </script>
</body>

</html>