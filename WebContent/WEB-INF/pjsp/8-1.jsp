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

    <title>必备材料</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="css/plugins/footable/footable.core.css" rel="stylesheet">

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
                    <li class="active">
                        <a href="8-1.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">必备材料</span></a>
                    </li>
                    <li>
                    	 <a href="9-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
                    </li>                    
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">

            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                	<h2>必备材料</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.jsp">首页</a>
                        </li>
                        
                        <li class="active">
                            <strong>必备材料</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">
							<input type="text" class="form-control input-sm m-b-xs" id="filter" placeholder="请输入查询内容">
                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15" data-filter=#filter>
                                <thead>
                                <tr>

                                    <th data-toggle="true">编号</th>
                                    <th data-hide="phone">材料类型</th>
                                    <th data-hide="phone">材料内容</th>
                             
                                  
                                    <!--<th class="text-right" data-sort-ignore="true">动作</th>-->

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        1001
                                    </td>
                                    <td>
                                       	入院
                                    </td>
                                    
                                    <td>
                                  	       诊断说明
                                    </td>
                                    
                                </tr>
                                  <tr>
                                    <td>
                                        1002
                                    </td>
                                    <td>
                                       	入院
                                    </td>
                                    
                                    <td>
                                  	       医保卡
                                    </td>
                                    
                                </tr>
                                  <tr>
                                    <td>
                                        1003
                                    </td>
                                    <td>
                                       	入院
                                    </td>
                                    
                                    <td>
                                  	    病例本
                                    </td>
                                    
                                </tr>
                                  <tr>
                                    <td>
                                        1004
                                    </td>
                                    <td>
                                       	入院
                                    </td>
                                    
                                    <td>
                                  	    医学影像报告
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td>
                                        1005
                                    </td>
                                    <td>
                                       	入院
                                    </td>
                                    
                                    <td>
                                  	       血液采样
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td>
                                        1006
                                    </td>
                                    <td>
                                       	出院
                                    </td>
                                    
                                    <td>
                                  	     康复报告
                                    </td>
                                    
                                </tr>  
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="6">
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
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- FooTable -->
    <script src="js/plugins/footable/footable.all.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();

        });

    </script>

</body>

</html>