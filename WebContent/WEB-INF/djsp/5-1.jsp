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

		<title>医药公司政策</title>

		<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">

		<!-- FooTable -->
		<link href="<%=path%>/css/plugins/footable/footable.core.css" rel="stylesheet">

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
                    <li class="active">
                        <a href="<%=path%>/5-1.jsp"><i class="fa fa-sitemap"></i> <span class="nav-label">医药公司政策</span></a>
                    </li>
                    <li>
                        <a href="<%=path%>/6-1.jsp"><i class="fa fa-table"></i> <span class="nav-label">出诊信息</span></a>
                    </li>
                    <li>
                        <a href="<%=path%>/7-1.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">必备材料</span></a>
                    </li>
                    <li>
                    	 <a href="<%=path%>/8-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
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
								<a href="<%=path%>/index.jsp">首页</a>
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

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>001</td>
												<td>阿莫西林</td>
												<td>0800051</td>
												<td>2017-12-3</td>
												<td>该吃阿莫西林药了，点开详情的同学，记得吃阿莫西林哦</td>
											</tr>
											<tr>
												<td>002</td>
												<td>复方氨酚烷胺片</td>
												<td>0500709</td>
												<td>2017-8-6</td>
												<td>复方氨酚烷胺片由长春迪瑞制药厂生产，大减价啦，走过路过不要错过，吃药啦吃药啦</td>

											</tr>
											<tr>
												<td>003</td>
												<td>银翘片</td>
												<td>080011</td>
												<td>2018-1-2</td>
												<td>感冒发烧嗓子疼，就吃苗家银翘片，买一送一</td>

											</tr>
											<tr>
												<td>004</td>
												<td>感康</td>
												<td>69770648</td>
												<td>2017-6-22</td>
												<td>是不是有点傻，脑子不太灵光，那就吃药呀</td>

											</tr>
											<tr>
												<td>005</td>
												<td>板蓝根</td>
												<td>780909</td>
												<td>2018-1-17</td>
												<td>怕感冒，怕生病，怕变傻，那就吃板蓝根呀</td>

											</tr>
											<tr>
												<td>006</td>
												<td>急支糖浆</td>
												<td>051213</td>
												<td>2016-12-31</td>
												<td>甜的要死，但是，想喝就买呀，没生病也可以买呀</td>

											</tr>
											<tr>
												<td>007</td>
												<td>葡萄糖</td>
												<td>69770648</td>
												<td>2017-5-6</td>
												<td>头晕眼花低血糖，就喝葡萄糖，不含糖哦</td>

											</tr>
											<tr>
												<td>008</td>
												<td>vc泡腾片</td>
												<td>08051213</td>
												<td>2017-8-9</td>
												<td>难喝的要死，别买，但是大减价 哦</td>
											</tr>
											<tr>
												<td>009</td>
												<td>vc泡腾片</td>
												<td>08051213</td>
												<td>2017-8-9</td>
												<td>难喝的要死，别买，但是大减价 哦</td>
											</tr>
											<tr>
												<td>010</td>
												<td>vc泡腾片</td>
												<td>08051213</td>
												<td>2017-8-9</td>
												<td>难喝的要死，别买，但是大减价 哦</td>
											</tr>
											<tr>
												<td>011</td>
												<td>vc泡腾片</td>
												<td>08051213</td>
												<td>2017-8-9</td>
												<td>难喝的要死，别买，但是大减价 哦</td>
											</tr>
											<tr>
												<td>012</td>
												<td>vc泡腾片</td>
												<td>08051213</td>
												<td>2017-8-9</td>
												<td>难喝的要死，别买，但是大减价 哦</td>
											</tr>
											<tr>
												<td>013</td>
												<td>vc泡腾片</td>
												<td>08051213</td>
												<td>2017-8-9</td>
												<td>难喝的要死，别买，但是大减价 哦</td>
											</tr>
											<tr>
												<td>014</td>
												<td>vc泡腾片</td>
												<td>08051213</td>
												<td>2017-8-9</td>
												<td>难喝的要死，别买，但是大减价 哦</td>
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

			<!-- Custom and plugin javascript -->
			<script src="<%=path%>/js/inspinia.js"></script>
			<script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

			<!-- Page-Level Scripts -->
			<script>
				$(document).ready(function() {

					$('.footable').footable();
					$('.footable2').footable();

				});
			</script>

	</body>

</html>