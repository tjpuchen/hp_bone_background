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

    <title>我的病人</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="<%=path%>/css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

</head>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> 
                        	<a href="<%=path%>/index.jsp"><span><img alt="image" class="img-circle" src="<%=path%>/img/logo.png" /></span></a>
                        </div>
                        <div class="logo-element">
                            HP+
                        </div>
                    </li>
                    <li>
                    <li class="active">
                    	<a><i class="fa fa-bar-chart-o"></i><span class="nav-label">患者信息管理</span><span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level collapse">
                         <li><a href="<%=path%>/index.jsp"> <span class="nav-label">全部患者信息</span></a></li>
                        <li class="active"> <a href="<%=path%>/1-1-1.jsp"> <span class="nav-label">我的患者</span></a></li>
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
                    <li>
                    	 <a href="<%=path%>/8-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
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
                    <a href="<%=path%>/login.jsp">
                        <i class="fa fa-sign-out"></i> 退出登录
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>患者信息管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="<%=path%>/index.jsp">首页</a>
                        </li>
                        
                        <li class="active">
                            <strong>我的病人</strong>
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

                                    <th>患者编号</th>
                                    <th data-hide="phone">患者姓名</th>
                                    <th data-hide="phone">患者性别</th>
                                    <th data-hide="phone">患者年龄</th>
                                    <th data-hide="phone">入院日期</th>
                                    <th data-hide="phone,tablet" >出院日期</th>
                                 <th data-hide="phone">患者状态</th>
                                    <th class="text-right">操作</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                       10001                                      
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                                                                男
                                    </td>
                                    <td>
                                         26
                                    </td>
                                    <td>
                                        03/04/2015
                                    </td>
                                    <td>
                                        03/05/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">已出院</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        324
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                                                                男
                                    </td>
                                    <td>
                                         26
                                    </td>
                                    <td>
                                        12/04/2015
                                    </td>
                                    <td>
                                        21/07/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">已出院</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        10546
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                                                                女
                                    </td>
                                    <td>
                                         27
                                    </td>
                                    <td>
                                        06/07/2015
                                    </td>
                                    <td>
                                        04/08/2015
                                    </td>
                                    <td>
                                       <span class="label label-primary">已出院</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        63255
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                    <td>
                                                                                男
                                    </td>
                                    <td>
                                        50
                                    </td>
                                    <td>
                                        22/12/2015
                                    </td>
                                    <td>
                                        30/12/2015
                                    </td>
                                    <td>
                                        <span class="label label-primary">已出院</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        11566
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        23
                                    </td>
                                    <td>
                                        2/04/2015
                                    </td>
                                    <td>
                                        13/04/2015
                                    </td>
                                    <td>
                                       <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                               <tr>
                                    <td>
                                        12131
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        25
                                    </td>
                                    <td>
                                        01/04/2015
                                    </td>
                                    <td>
                                        13/05/2015
                                    </td>
                                    <td>
                                         <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                               
                               <tr>
                                    <td>
                                        64332
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        23
                                    </td>
                                    <td>
                                        16/06/2015
                                    </td>
                                    <td>
                                        18/06/2015
                                    </td>
                                    <td>
                                     <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                             <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                               
                               <tr>
                                    <td>
                                        17642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                        男
                                    </td>
                                    <td>
                                        33
                                    </td>
                                    <td>
                                        12/08/2015
                                    </td>
                                    <td>
                                        15/08/2015
                                    </td>
                                    <td>
                                         <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                               
                               <tr>
                                    <td>
                                        62342
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                女
                                    </td>
                                    <td>
                                        23
                                    </td>
                                    <td>
                                        14/09/2015
                                    </td>
                                    <td>
                                        17/09/2015
                                    </td>
                                    <td>
                                         <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                               <tr>
                                    <td>
                                        25642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        20
                                    </td>
                                    <td>
                                        10/10/2015
                                    </td>
                                    <td>
                                        13/10/2015
                                    </td>
                                    <td>
                                         <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                               <tr>
                                    <td>
                                        10642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        19
                                    </td>
                                    <td>
                                        10/11/2015
                                    </td>
                                    <td>
                                        13/12/2015
                                    </td>
                                    <td>
                                         <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                               <tr>
                                    <td>
                                        10642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        19
                                    </td>
                                    <td>
                                        10/11/2015
                                    </td>
                                    <td>
                                        13/12/2015
                                    </td>
                                    <td>
                                         <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                            <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        10642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        19
                                    </td>
                                    <td>
                                        10/11/2015
                                    </td>
                                    <td>
                                        13/12/2015
                                    </td>
                                    <td>
                                        <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        10642
                                    </td>
                                    <td>
                                        Customer example
                                    </td>
                                     <td>
                                                                                男
                                    </td>
                                    <td>
                                        19
                                    </td>
                                    <td>
                                        10/11/2015
                                    </td>
                                    <td>
                                        13/12/2015
                                    </td>
                                    <td>
                                        <span class="label label-warning">住院中</span>
                                    </td>
                                    <td class="text-right">
                                        <div class="btn-group">
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-2.jsp'">修改计划</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">出院</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-1.jsp'">康复</button>
                                           <button class="btn-white btn btn-xs" onclick="window.location.href='<%=path%>/1-1-3.jsp'">状态信息录入</button>
                                        </div>
                                    </td>
                                </tr>


                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="7">
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

    <!-- Data picker -->
    <script src="<%=path%>/js/plugins/datapicker/bootstrap-datepicker.js"></script>

    <!-- FooTable -->
    <script src="<%=path%>/js/plugins/footable/footable.all.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();

            $('#date_added').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#date_modified').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

        });

    </script>

</body>

</html>