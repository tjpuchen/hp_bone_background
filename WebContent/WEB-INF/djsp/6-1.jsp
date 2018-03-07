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

    <title>出诊信息</title>

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
                    <li >
                    	<a><i class="fa fa-bar-chart-o"></i><span class="nav-label">患者信息管理</span><span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level collapse">
                         <li ><a href="<%=path%>/index.jsp"> <span class="nav-label">全部患者信息</span></a></li>
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
                    <li class="active">
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
                    <h2>出诊信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="<%=path%>/index.jsp">首页</a>
                        </li>
                        
                        <li class="active">
                            <strong>出诊信息</strong>
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
                                    <th data-hide="phone">出诊医生</th>
                                    <th data-hide="phone">出诊时间</th>
                                    <th data-hide="phone">出诊地点</th>
                                  
                                    <!--<th class="text-right" data-sort-ignore="true">动作</th>-->

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        1009
                                    </td>
                                    <td>
                                       	牛doctorxxx
                                    </td>
                                    
                                    <td>
                                       2018.1.12
                                    </td>
                                    <td>
                                       		一中心 门诊部 二楼 骨科 02011
                                    </td>
                                    <!--<td>
                                        <span class="label label-primary">Enable</span>
                                    </td>-->
                                    <!--<td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">
                                            	预约
                                            </button>
                                       
                                        </div>
                                    </td>-->
                                </tr>
                                 <tr>
                                    <td>
                                        1002
                                    </td>
                                    <td>
                                       	牛doctor
                                    </td>
                                    
                                    <td>
                                       2018.1.12
                                    </td>
                                    <td>
                                   	        一中心 门诊部 二楼 骨科 02011
                                    </td>
                                    <!--<td>
                                        <span class="label label-primary">Enable</span>
                                    </td>-->
                                    <!--<td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">
                                            	预约
                                            </button>
                                       
                                        </div>
                                    </td>-->
                                </tr>
                                <tr>
                                    <td>
                                        1003
                                    </td>
                                    <td>
                                       	牛doctor
                                    </td>
                                    
                                    <td>
                                       2018.1.12
                                    </td>
                                    <td>
                                       		一中心 门诊部 二楼 骨科 02011
                                    </td>
                                    <!--<td>
                                        <span class="label label-primary">Enable</span>
                                    </td>-->
                                    <!--<td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">
                                            	预约
                                            </button>
                                       
                                        </div>
                                    </td>-->
                                </tr>
                                <tr>
                                    <td>
                                        1004
                                    </td>
                                    <td>
                                       	牛doctor
                                    </td>
                                    
                                    <td>
                                       2018.1.12
                                    </td>
                                    <td>
                                       		一中心 门诊部 二楼 骨科 02011
                                    </td>
                                    <!--<td>
                                        <span class="label label-primary">Enable</span>
                                    </td>-->
                                    <!--<td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">
                                            	预约
                                            </button>
                                       
                                        </div>
                                    </td>-->
                                </tr>
                                <tr>
                                    <td>
                                        1001
                                    </td>
                                    <td>
                                       	牛doctor 
                                    </td>
                                    
                                    <td>
                                       2018.1.12
                                    </td>
                                    <td>
                                       	一中心 门诊部 二楼 骨科 02011
                                    </td>
                                    <!--<td>
                                        <span class="label label-primary">Enable</span>
                                    </td>-->
                                    <!--<td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs">
                                            	预约
                                            </button>
                                       
                                        </div>
                                    </td>-->
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
    <script src="<%=path%>/js/jquery-2.1.1.js"></script>
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <script src="<%=path%>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=path%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <!-- FooTable -->
    <script src="<%=path%>/js/plugins/footable/footable.all.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();

        });

    </script>

</body>

</html>