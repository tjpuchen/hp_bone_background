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

		<title>医药公司政策管理</title>

		<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
		<link href="<%=path%>/css/plugins/iCheck/custom.css" rel="stylesheet">
		<link href="<%=path%>/css/animate.css" rel="stylesheet">
		<link href="<%=path%>/css/style.css" rel="stylesheet">

		<link href="<%=path%>/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

	</head>

	<body>

		<div id="wrapper">

			<nav class="navbar-default navbar-static-side" role="navigation">
				<div class="sidebar-collapse">
					<ul class="nav metismenu" id="side-menu">
						<li class="nav-header">
							<div class="dropdown profile-element">
								<a href="<%=path%>/jsp/index.jsp"> <span><img alt="image" class="img-circle" src="<%=path%>/img/logo.png" />	</span></a>
							</div>
							<div class="logo-element">
								HP+
							</div>
						</li>
						<li>
							<a><i class="fa fa-th-large"></i> <span class="nav-label">系统设置</span> <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
                            <li><a href="<%=path%>/jsp/1-1.jsp">登陆日志</a></li>
                            <li><a href="<%=path%>/jsp/1-2.jsp">操作日志</a></li>
                            <li><a href="<%=path%>/jsp/1-3.jsp">基础信息管理</a></li>
                            <li><a href="<%=path%>/jsp/1-4.jsp">留言管理</a></li>
                        </ul>
						</li>
						<li>
	                        <a href="<%=path%>/jsp/2-1.jsp"><i class="fa fa-flask"></i> <span class="nav-label">药品信息管理</span></a>
	                    </li>
	                    <li>
	                        <a href="<%=path%>/jsp/3-1.jsp"><i class="fa fa-files-o"></i> <span class="nav-label">医保政策管理</span></a>
	                    </li>
	                    <li class="active">
	                        <a href="<%=path%>/jsp/4-1.jsp"><i class="fa fa-sitemap"></i> <span class="nav-label">医药公司政策管理</span></a>
	                    </li>
	                    <li>
	                        <a href="<%=path%>/jsp/5-1.jsp"><i class="fa fa-table"></i> <span class="nav-label">医生信息管理</span></a>
	                    </li>
	                    <li>
	                        <a href="<%=path%>/jsp/6-1.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">必备材料管理</span></a>
	                    </li>
					</ul>
				</div>
			</nav>

			<div id="page-wrapper" class="gray-bg">
				<div class="row wrapper border-bottom white-bg page-heading">
					<div class="col-lg-10">
						<h2>医药公司政策</h2>
						<ol class="breadcrumb">
							<li>
								<a href="<%=path%>/jsp/index.jsp">首页</a>
							</li>
							<li>
								<a>医药公司政策</a>
							</li>
							<li class="active">
								<strong>修改政策</strong>
							</li>
						</ol>
					</div>
					<div class="col-lg-2">
					</div>
				</div>
				<div class="wrapper wrapper-content animated fadeInRight">

					<div class="row">
						<div class="col-lg-12">
							<div class="ibox float-e-margins">
								<div class="ibox-title">
									<h5><small>医药公司政策修改</small></h5>
								</div>
								<div class="ibox-content">
									<form method="get" class="form-horizontal">
										<div class="form-group"><label class="col-sm-2 control-label">政策标题</label>
											<div class="col-sm-10"><input type="text" class="form-control"></div>
										</div>
										<div class="hr-line-dashed"></div>
										<div class="form-group"><label class="col-sm-2 control-label">政策信息</label>
											<div class="col-sm-10">
												<textarea rows="10" class="form-control"></textarea>
											</div>
										</div>
										<div class="hr-line-dashed"></div>
										<div class="form-group"><label class="col-sm-2 control-label">公司编号</label>
											<div class="col-sm-10">
												<select class="form-control m-b" name="account">
													<option>option 1</option>
													<option>option 2</option>
													<option>option 3</option>
													<option>option 4</option>
												</select>
											</div>
										</div>
										<div class="hr-line-dashed"></div>
										<div class="form-group" align="right">
											<div class="col-sm-4 col-sm-offset-2" >
												<button class="btn btn-danger" type="submit">撤消</button>
												<button class="btn btn-primary" type="submit">保存</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="footer">
					<div class="pull-right">
						10GB of <strong>250GB</strong> Free.
					</div>
					<div>
						<strong>Copyright</strong> 版权所有 &copy; 2014-2015
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