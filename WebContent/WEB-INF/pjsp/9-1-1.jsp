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

		<title>邮件详情</title>

		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
		<link href="css/plugins/iCheck/custom.css" rel="stylesheet">
		<link href="css/animate.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">

	</head>

	<body>
     <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> 
                        	<a href="index.jsp"> <span><img alt="image" class="img-circle" src="img/logo.png" />	</span></a>
                        </div>
                        <div class="logo-element">
                            HP+
                        </div>
                    </li>
                    <li>
                        <a href="1-1.jsp"><i class="fa fa-th-large"></i> <span class="nav-label">住院流程</span></a>        
                    </li>
                    <li>
                        <a href="2-1.jsp"><i class="fa fa-flask"></i> <span class="nav-label">药品咨询</span></a>
                    </li>
                    <li>
                        <a href="3-1.jsp"><i class="fa fa-sitemap"></i> <span class="nav-label">医药公司政策</span></a>
                    </li>
                    <li>
                        <a href="4-1.jsp"><i class="fa fa-diamond"></i> <span class="nav-label">药品用量估计</span></a>
                    </li>
                    <li>
                        <a href="5-1.jsp"><i class="fa fa-files-o"></i> <span class="nav-label">医保政策</span></a>
                    </li>
                    <li>
                        <a href="6-1.jsp"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">诊疗计划</span></a>
                    </li>
                    <li>
                        <a href="7-1.jsp"><i class="fa fa-table"></i> <span class="nav-label">出诊信息</span></a>
                    </li>
                    <li>
                        <a href="8-1.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">必备材料</span></a>
                    </li>
                    <li class="active">
                    	 <a href="9-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
                    </li>                
                </ul>

            </div>
        </nav>
			<div id="page-wrapper" class="gray-bg">


				<div class="row wrapper border-bottom white-bg page-heading">
					<div class="col-lg-10">
						<h2>留言板</h2>
						<ol class="breadcrumb">
							<li>
								<a href="index.jsp">首页</a>
							</li>
							<li class="active">
								<a href="9-1.jsp">留言板</a>
							</li>
							<li class="active">
								<strong>查看留言</strong>
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
								<h2>查看留言</h2>
								<div class="mail-tools tooltip-demo m-t-md">
	                       			<span class="pull-right font-noraml">2014年6月15日 12:33</span>
	                                <span class="font-noraml">来自: </span>wangun@goopay.com
	                    			</h5>
								</div>
							</div>
							<div class="mail-box">
								<div class="mail-body">
									<p>
										留言内容
									</p>
									
								</div>
								
								<div class="mail-body text-right tooltip-demo">
									<a class="btn btn-sm btn-white" href="9-1-2.jsp"><i class="fa fa-reply"></i> 回复</a>
									<button title="" data-placement="top" data-toggle="tooltip" type="button" data-original-title="Print" class="btn btn-sm btn-white"><i class="fa fa-print"></i> 打印</button>
									<button title="" data-placement="top" data-toggle="tooltip" data-original-title="Trash" class="btn btn-sm btn-white"><i class="fa fa-trash-o"></i> 删除</button>
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
		<script src="js/jquery-2.1.1.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
		<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

		<!-- Custom and plugin javascript -->
		<script src="js/inspinia.js"></script>
		<script src="js/plugins/pace/pace.min.js"></script>

		<!-- iCheck -->
		<script src="js/plugins/iCheck/icheck.min.js"></script>
		<script>
			$(document).ready(function() {
				$('.i-checks').iCheck({
					checkboxClass: 'icheckbox_square-green',
					radioClass: 'iradio_square-green',
				});
			});
		</script>
	</body>

</html>