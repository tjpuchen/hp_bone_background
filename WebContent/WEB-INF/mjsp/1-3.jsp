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

    <title>基础信息管理</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/jQueryUI/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/jqGrid/ui.jqgrid.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">

    <style>
        /* Additional style to fix warning dialog position */
        #alertmod_table_list_2{
            top: 900px !important;
        }
    </style>
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
                            <li><a href="<%=path%>/jsp"1-2.html">操作日志</a></li>
                            <li class="active"><a href="<%=path%>/jsp/1-3.jsp">基础信息管理</a></li>
                            <li><a href="<%=path%>/jsp/1-4.jsp">留言管理</a></li>
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

	<div id="page-wrapper" class="gray-bg">
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>基础信息管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">首页</a>
                        </li>
                        <li>
                            <a>系统设置</a>
                        </li>
                        <li class="active">
                            <strong>基础信息管理</strong>
                        </li>
                    </ol>
                </div>
            </div>
       	 <div class="wrapper wrapper-content  animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-content">               
                            <h5>医药公司信息管理</h5>

                            <div class="jqGrid_wrapper">
                                <table id="table_list_2"></table>
                                <div id="pager_list_2"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-content">               
                            <h5>地理信息管理</h5>
                            <div class="jqGrid_wrapper">
                                <table id="table_list_3"></table>
                                <div id="pager_list_3"></div>
                            </div>
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

    <!-- Peity -->
    <script src="<%=path%>/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- jqGrid -->
    <script src="<%=path%>/js/plugins/jqGrid/i18n/grid.locale-en.js"></script>
    <script src="<%=path%>/js/plugins/jqGrid/jquery.jqGrid.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <script src="<%=path%>/js/plugins/jquery-ui/jquery-ui.min.js"></script>


    <script>
        $(document).ready(function () {


            // Examle data for jqGrid
            var mydata = [
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,
                {id: "1", invdate: "2010-05-24", name: "test", note: "note", tax: "10.00", total: "2111.00"} ,        
            ];
		      // Configuration for jqGrid Example 2
            $("#table_list_2").jqGrid({
                data: mydata,
                datatype: "local",
                height: 450,
                autowidth: true,
                shrinkToFit: true,
                rowNum: 20,
                rowList: [10, 20, 30],
                colNames:['公司编号','公司名称', '公司电话'],
                colModel:[
                    {name:'id',index:'id', editable: true, width:60, sorttype:"int",search:true,align:"center"},
                    {name:'invdate',index:'invdate', editable: true, width:90, sorttype:"date", formatter:"date",align:"center"},
                    {name:'name',index:'name', editable: true, width:100,align:"center"}
                ],
                pager: "#pager_list_2",
                viewrecords: true,
                caption: "",
                add: true,
                edit: true,
                addtext: 'Add',
                edittext: 'Edit',
                hidegrid: false
            });
             // Configuration for jqGrid Example 2
            $("#table_list_3").jqGrid({
                data: mydata,
                datatype: "local",
                height: 450,
                autowidth: true,
                shrinkToFit: true,
                rowNum: 20,
                rowList: [10, 20, 30],
                colNames:['城市名称','区县名称'],
                colModel:[
                    {name:'id',index:'id', editable: true, width:60, sorttype:"int",search:true,align:"center"},
                    {name:'invdate',index:'invdate', editable: true, width:90, sorttype:"date", formatter:"date",align:"center"},
                ],
                pager: "#pager_list_3",
                viewrecords: true,
                caption: "",
                add: true,
                edit: true,
                addtext: 'Add',
                edittext: 'Edit',
                hidegrid: false
            });

            // Add selection
            $("#table_list_2").setSelection(4, true);
            $("#table_list_3").setSelection(4, true);


            // Setup buttons
            $("#table_list_2").jqGrid('navGrid', '#pager_list_2',
                    {edit: true, add: true, del: true, search: true},
                    {height: 200, reloadAfterSubmit: true}
            );
            $("#table_list_3").jqGrid('navGrid', '#pager_list_3',
                    {edit: true, add: true, del: true, search: true},
                    {height: 200, reloadAfterSubmit: true}
            );

            // Add responsive to jqGrid
            $(window).bind('resize', function () {
                var width = $('.jqGrid_wrapper').width();
                $('#table_list_2').setGridWidth(width);
                $('#table_list_3').setGridWidth(width);
                
            });
       });
    </script>
</body>
</html>