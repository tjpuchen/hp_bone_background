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

    <title>留言管理</title>

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
                        	<a href="<%=path%>/jsp/index.jsp"> <span><img alt="image" class="img-circle" src="<%=path%>/img/logo.png" />	</span></a>
                        </div>
                        <div class="logo-element">
                            HP+
                        </div>
                    </li>
                 <li class="active">
                        <a><i class="fa fa-th-large"></i> <span class="nav-label">系统设置</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="<%=path%>/jsp/1-1.jsp">登陆日志</a></li>
                            <li><a href="<%=path%>/jsp/1-2.jsp">操作日志</a></li>
                            <li><a href="<%=path%>/jsp/1-3.jsp">基础信息管理</a></li>
                            <li class="active"><a href="<%=path%>/jsp/1-4.jsp">留言管理</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="<%=path%>/jsp/2-1.jsp"><i class="fa fa-flask"></i> <span class="nav-label">药品信息管理</span></a>
                    </li>
                    <li>
                        <a href="<%=path%>/jsp/3-1.jsp"><i class="fa fa-files-o"></i> <span class="nav-label">医保政策管理</span></a>
                    </li>
                    <li>
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

  <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    </span> <span class="text-muted text-xs block">欢迎来到惠普骨科,管理员 </span> </span> </a>
             </li>
                <li>
                    <a href="<%=path%>/jsp/login.jsp">
                        <i class="fa fa-sign-out"></i> 退出登录
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-sm-4">
                    <h2>留言列表</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="<%=path%>/jsp/index.jsp">首页</a>
                        </li>
                        <li class="active">
                            <strong>留言列表</strong>
                        </li>
                    </ol>
                </div>
            </div>
       <div class="wrapper wrapper-content animated fadeInRight">

					<div class="row">
						<div class="col-lg-12">
							<div class="ibox float-e-margins">
								<div class="ibox-title">
									<h5>留言列表</h5>
									
								</div>
								<div class="ibox-content">
									<input type="text" class="form-control input-sm m-b-xs" id="filter" placeholder="查询（输入要查询的关键字）">
									<table class="footable table table-stripped toggle-arrow-tiny" data-page-size="8" data-filter=#filter>
										<thead>
											<tr>

												<th data-toggle="true">患者编号</th>
												<th>医生姓名</th>
												<th>留言时间</th>
												<th>回复时间</th>
												<th data-hide="all">留言内容</th>
												<th data-hide="all">回复内容</th>
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
												<td>Patrick Smith</td>
												<td >
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
												
											</tr>
											<tr>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Nec Euismod In Company</td>
												<td>Nec Euismod In Company</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Betha project</td>
												<td>John Smith</td>
												<td>0800 1111</td>
												<td>Erat Volutpat</td>
												<td>Alice Jackson</td>
												<td>Nec Euismod In Company</td>
												<td >
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Tellus Ltd</td>
												<td>Alice Jackson</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Alice Jackson</td>
												<td>Nec Euismod In Company</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Project
												</td>
												<td>Patrick Smith</td>
												<td>0800 051213</td>
												<td>Alice Jackson</td>
												<td>Inceptos Hymenaeos Ltd</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Alice Jackson</td>
												<td>Tellus Ltd</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Project
													
												</td>
												<td>Patrick Smith</td>
												<td>Alice Jackson</td>
												<td>0800 051213</td>
												<td>Inceptos Hymenaeos Ltd</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Alice Jackson</td>
												<td>Nec Euismod In Company</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Betha project</td>
												<td>John Smith</td>
												<td>Alice Jackson</td>
												<td>0800 1111</td>
												<td>Erat Volutpat</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Alice Jackson</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Tellus Ltd</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Alice Jackson</td>
												<td>Alpha project</td>
												<td>Alice Jackson</td>
												<td>0500 780909</td>
												<td>Nec Euismod In Company</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Project
													
												</td>
												<td>Alice Jackson</td>
												<td>Patrick Smith</td>
												<td>0800 051213</td>
												<td>Inceptos Hymenaeos Ltd</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
												</td>
											</tr>
											<tr>
												<td>Gamma project</td>
												<td>Anna Jordan</td>
												<td>(016977) 0648</td>
												<td>Tellus Ltd</td>
												<td>Alice Jackson</td>
												<td>Nec Euismod In Company</td>
												<td>
													<button class="btn btn-info btn-circle demo4"><i class="fa fa-times"></i></button>
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
    <script src="<%=path%>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=path%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    
    <!-- FooTable -->
	<script src="<%=path%>/js/plugins/footable/footable.all.min.js"></script>
	
	    <!-- Sweet alert -->
    <script src="<%=path%>/js/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <script>
        $(document).ready(function(){

            $('#loading-example-btn').click(function () {
                btn = $(this);
                simpleLoad(btn, true)

                // Ajax example
//                $.ajax().always(function () {
//                    simpleLoad($(this), false)
//                });

                simpleLoad(btn, false)
            });
            
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

        function simpleLoad(btn, state) {
            if (state) {
                btn.children().addClass('fa-spin');
                btn.contents().last().replaceWith(" Loading");
            } else {
                setTimeout(function () {
                    btn.children().removeClass('fa-spin');
                    btn.contents().last().replaceWith(" Refresh");
                }, 2000);
            }
        }
    </script>
    <!-- Page-Level Scripts -->
	<script>
			$(document).ready(function() {

				$('.footable').footable();
				$('.footable2').footable();

			});
	</script>
</body>
</html>