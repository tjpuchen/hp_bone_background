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

    <title>留言板</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    
    <!-- FooTable -->
    <link href="css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

	<link href="css/plugins/iCheck/custom.css" rel="stylesheet">

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
								<strong>留言板</strong>
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
			
								<h2>收到的新留言</h2>
								<div class="mail-tools tooltip-demo m-t-md">
									<div class="btn-group pull-right">
										<button class="btn btn-white btn-sm"><i class="fa fa-arrow-left"></i></button>
										<button class="btn btn-white btn-sm"><i class="fa fa-arrow-right"></i></button>

									</div>
									<button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="left" onclick="window.location.href='9-1-2.jsp'">发送新留言</button>
									<button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="left" title="Refresh inbox"><i class="fa fa-refresh"></i> 刷新</button>
									<button class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="Move to trash"><i class="fa fa-trash-o"></i> </button>
									
								</div>
							</div>
							<div class="mail-box">

								<table class="table table-hover table-mail" >
									<tbody>
										<tr class="unread">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="9-1-1.jsp">Anna Smith</a>
											</td>
											<td class="mail-subject">
												<a href="9-1-1.jsp">你说鸟语啊，沃日啊.</a>
											</td>
											<td class="text-right mail-date">6.10 AM</td>
										</tr>
										<tr class="unread">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.jsp">Jack Nowak</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.jsp">你说鸟语啊，沃日啊.</a>
											</td>
											<td class="text-right mail-date">8.22 PM</td>
										</tr>
										
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Facebook</a> </td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											<td class="text-right mail-date">Jan 16</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Mailchip</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">Mar 22</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Alex T.</a></td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">December 22</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Monica Ryther</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
									
											<td class="text-right mail-date">Jun 12</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Sandra Derick</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
										
											<td class="text-right mail-date">May 28</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Patrick Pertners</a> </td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊 </a>
											</td>
										
											<td class="text-right mail-date">May 28</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Michael Fox</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
										
											<td class="text-right mail-date">Dec 9</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Damien Ritz</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
										
											<td class="text-right mail-date">Jun 11</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Anna Smith</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">6.10 AM</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Jack Nowak</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">8.22 PM</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Mailchip</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">Mar 22</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Alex T.</a></td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">December 22</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Monica Ryther</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">Jun 12</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Sandra Derick</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">May 28</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Patrick Pertners</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊 </a>
											</td>
											
											<td class="text-right mail-date">May 28</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Michael Fox</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
											
											<td class="text-right mail-date">Dec 9</td>
										</tr>
										<tr class="read">
											<td class="check-mail">
												<input type="checkbox" class="i-checks">
											</td>
											<td class="mail-ontact">
												<a href="8-1-1.html">Damien Ritz</a>
											</td>
											<td class="mail-subject">
												<a href="8-1-1.html">你说鸟语啊，沃日啊.</a>
											</td>
									
											<td class="text-right mail-date">Jun 11</td>
										</tr>
									</tbody>
								</table>

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
	
		
	<!-- FooTable -->
    <script src="js/plugins/footable/footable.all.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

	<!-- FooTable -->
    <script src="js/plugins/footable/footable.all.min.js"></script>
    
    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
           // $('.footable2').footable();

        });

    </script>
    
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
