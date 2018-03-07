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

		<!-- FooTable -->
		<link href="<%=path%>/css/plugins/footable/footable.core.css" rel="stylesheet">
		
		    <!-- Sweet Alert -->
    	<link href="<%=path%>/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">

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
								<a href="<%=path%>/jsp/index.html"> <span><img alt="image" class="img-circle" src="<%=path%>/img/logo.png" />	</span></a>
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
								<a href="index.html">首页</a>
							</li>
							<li class="active">
								<strong>医药公司政策</strong>
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
									<h5>医药公司政策列表</h5>

									<div class="ibox-tools">
										<a class="dropdown-toggle" data-toggle="dropdown" href="#">
											<i class="fa fa-plus"></i>
										</a>
										<ul class="dropdown-menu dropdown-user">
											<li>
												<a href="<%=path%>/jsp/4-1-1.jsp">发布新政策</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="ibox-content">
									<input type="text" class="form-control input-sm m-b-xs" id="filter" placeholder="查询（输入要查询的关键字）">
									<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="8" data-filter=#filter>
										<thead>
											<tr>

												<th data-toggle="true">政策编号</th>
												<th>政策标题</th>
												<th>公司编号</th>
												<th>发布时间</th>
												<th data-hide="all">政策信息</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Project - This is example of project</td>
												<td>Patrick Smith</td>
												<td>0800 051213</td>
												<td>Inceptos Hymenaeos Ltd</td>
												<td>Patrick Smith</td>
												<td >
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button" onclick="window.location.href='<%=path%>/jsp/4-1-2.jsp'"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
												
											</tr>
											<tr>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Nec Euismod In Company</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Betha project</td>
												<td>John Smith</td>
												<td>0800 1111</td>
												<td>Erat Volutpat</td>
												<td>Alice Jackson</td>
												<td >
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Tellus Ltd</td>
												<td>Alice Jackson</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Alice Jackson</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Project
													<small>This is example of project</small>
												</td>
												<td>Patrick Smith</td>
												<td>0800 051213</td>
												<td>Alice Jackson</td>
												<td>Inceptos Hymenaeos Ltd</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Alice Jackson</td>
												<td>Tellus Ltd</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Project
													<small>This is example of project</small>
												</td>
												<td>Patrick Smith</td>
												<td>Alice Jackson</td>
												<td>0800 051213</td>
												<td>Inceptos Hymenaeos Ltd</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Alice Jackson</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Betha project</td>
												<td>John Smith</td>
												<td>Alice Jackson</td>
												<td>0800 1111</td>
												<td>Erat Volutpat</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Alice Jackson</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Tellus Ltd</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Alice Jackson</td>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Project
													<small>This is example of project</small>
												</td>
												<td>Alice Jackson</td>
												<td>Patrick Smith</td>
												<td>0800 051213</td>
												<td>Inceptos Hymenaeos Ltd</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Tellus Ltd</td>
												<td>Alice Jackson</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
                            						<button class="btn btn-info btn-circle" type="button"><i class="fa fa-pencil"></i>
                            						</button>
												</td>
											</tr>
										</tbody>
										<tfoot>
											<tr>
												<td colspan="5">
													<ul class="pagination pull-right"></ul>
												</td>
											</tr>
										</tfoot>
									</table>

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
						<strong>Copyright</strong> Example Company &copy; 2014-2015
					</div>
				</div>

			</div>
		</div>

		<!-- Mainly scripts -->
		<script src="<%=path%>/js/jquery-2.1.1.js"></script>
		<script src="<%=path%>/js/bootstrap.min.js"></script>

		<script src="<%=path%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

		<!-- FooTable -->
		<script src="<%=path%>/js/plugins/footable/footable.all.min.js"></script>
		
		<!-- Sweet alert -->
   		<script src="<%=path%>/js/plugins/sweetalert/sweetalert.min.js"></script>

		<!-- Custom and plugin javascript -->
		<script src="<%=path%>/js/inspinia.js"></script>
		<script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

		<!-- Page-Level Scripts -->
		<script>
			$(document).ready(function() {

				$('.footable').footable();
				$('.footable2').footable();
				
				$('.demo4').click(function () {
            		swal({
                        title: "确认删除?",
                        text: "删除后不可恢复",
                        type: "warning",
                        showCancelButton: true,
                        confirmButtonColor: "#DD6B55",
                        confirmButtonText: "删除",
                        cancelButtonText: "取消",
                        closeOnConfirm: false,
                        closeOnCancel: false },
                    function (isConfirm) {
                        if (isConfirm) {
                            swal("Deleted!", "操作成功", "success");
                        } else {
                            swal("Cancelled", "操作取消", "error");
                        }
                    });
       			 });
			});
		</script>

	</body>
</html>