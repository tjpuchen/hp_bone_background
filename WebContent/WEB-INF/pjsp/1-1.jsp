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

    <title>住院信息管理</title>

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
                    <li class="active">
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
                    <li>
                    	 <a href="9-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
                    </li>
                     
                </ul>

            </div>
        </nav>

      <div id="page-wrapper" class="gray-bg">

            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>手术流程列表</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.jsp">首页</a>
                        </li> 
                        <li>
                            <a>住院流程管理</a>
                        </li>  
                        <li class="active">
                            <strong>手术流程列表</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">


            <div class="ibox-content m-b-sm border-bottom">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label class="control-label" for="product_name">检索</label>                          
                            <input type="text" class="form-control input-sm m-b-xs" id="filter"
                                   placeholder="输入手术名称或者流程类型">
                        </div>
                    </div>     
                    <div class="col-sm-4">                       	
                    </div>
                    	
                    <div class="col-sm-2">                     	
                    </div>
                    <div class="col-sm-2">      
                    	
                    </div>                 
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="15" data-filter=#filter>
                                <thead>
                                <tr>
                                    <th data-toggle="true">手术名称</th>
                                    <th data-hide="phone">流程类型</th>                                   
                                    <th data-sort-ignore="true">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>                                    
                                    <td>修腿</td>
                                    <td>入院前</td>                        
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='1-2.jsp'">详细流程</button>                                           
                                        </div>
                                    </td>
                                </tr>
                                <tr>                                    
                                    <td>修腿</td>
                                    <td>术前</td>
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='1-2.html'">详细流程</button>                                            
                                        </div>
                                    </td>
                                </tr>
                                <tr>                                    
                                    <td>修腿</td>
                                    <td>术后</td>
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='1-2.html'">详细流程</button>                                           
                                        </div>
                                    </td>
                                </tr>
                                <tr>                                                                        
                                    <td>修腿</td>
                                    <td>康复要领</td>
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='1-2.html'">详细流程</button>                                            
                                        </div>
                                    </td>
                                </tr>
                                <tr>                                                                        
                                    <td>砸腿</td>
                                    <td>康复要领</td>
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='1-2.html'">详细流程</button>                                          
                                        </div>
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