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

    <title>医生信息管理</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/jQueryUI/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/jqGrid/ui.jqgrid.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/fullcalendar/fullcalendar.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/fullcalendar/fullcalendar.print.css" rel='stylesheet' media='print'>

    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    
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
                    <li >
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
                    <li>
                        <a href="<%=path%>/jsp/4-1.jsp"><i class="fa fa-sitemap"></i> <span class="nav-label">医药公司政策管理</span></a>
                    </li>
                    <li class="active">
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
                    <h2>医生信息管理</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="<%=path%>/jsp/index.jsp">首页</a>
                        </li>
                       
                        <li class="active">
                            <strong><a>医生信息管理</a></strong>
                        </li>
                    </ol>
                </div>
            </div>
        <div class="wrapper wrapper-content  animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>医生信息列表</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="jqGrid_wrapper">
                                <table id="table_list_2"></table>
                                <div id="pager_list_2"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
			            <div class="ibox float-e-margins">
			                <div class="ibox-title">
			                    <h5>拖拽事件</h5>
			                    <div class="ibox-tools">
			                        <a class="collapse-link">
			                            <i class="fa fa-chevron-up"></i>
			                        </a>
			                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
			                            <i class="fa fa-wrench"></i>
			                        </a>
			                        <ul class="dropdown-menu dropdown-user">
			                            <li><a href="#">设置 1</a>
			                            </li>
			                            <li><a href="#">设置 2</a>
			                            </li>
			                        </ul>
			                        <a class="close-link">
			                            <i class="fa fa-times"></i>
			                        </a>
			                    </div>
			                </div>
			                <div class="ibox-content">
			                    <div id='external-events'>
			                        <p>拖拽到日历中.</p>
			                        <div class='external-event navy-bg'>牛doctor</div>
			                        <div class='external-event navy-bg'>康doctor</div>
			                        <div class='external-event navy-bg'>远doctor</div>
			                        <div class='external-event navy-bg'>黄doctor</div>
			                        <div class='external-event navy-bg'>李doctor</div>
			                        <p class="m-t">
			                            <input type='checkbox' id='drop-remove' class="i-checks" checked /> <label for='drop-remove'>拖拽后删除</label>
			                        </p>
			                    </div>
			                </div>
			            </div>
			            <div class="ibox float-e-margins">
			                <div class="ibox-content">
			                    <h2>FullCalendar</h2> 
			                    是一个jQuery插件，提供了一个全尺寸，拖放日历如下图。使用ajax每个月的事件，容易配置为自己的样式（扩展来自Google Calendar）
			                    <p>
			                        <a href="http://arshaw.com/fullcalendar/" target="_blank">FullCalendar文档</a>
			                    </p>
			                </div>
			            </div>
			        </div>
			        <div class="col-lg-9">
			            <div class="ibox float-e-margins">
			                <div class="ibox-title">
			                    <h5>条纹表 </h5>
			                    <div class="ibox-tools">
			                        <a class="collapse-link">
			                            <i class="fa fa-chevron-up"></i>
			                        </a>
			                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
			                            <i class="fa fa-wrench"></i>
			                        </a>
			                        <ul class="dropdown-menu dropdown-user">
			                            <li><a href="#">设置 1</a>
			                            </li>
			                            <li><a href="#">设置 2</a>
			                            </li>
			                        </ul>
			                        <a class="close-link">
			                            <i class="fa fa-times"></i>
			                        </a>
			                    </div>
			                </div>
			                <div class="ibox-content">
			                    <div id="calendar"></div>
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
	<script src="<%=path%>/js/plugins/fullcalendar/moment.min.js"></script>

    <!-- Peity -->
    <script src="<%=path%>/js/plugins/peity/jquery.peity.min.js"></script>

    <!-- jQuery UI custom -->
	<script src="<%=path%>/js/jquery-ui.custom.min.js"></script>
	
	<!-- iCheck -->
	<script src="<%=path%>/js/plugins/iCheck/icheck.min.js"></script>
	
	<!-- Full Calendar -->
	<script src="<%=path%>/js/plugins/fullcalendar/fullcalendar.min.js"></script>

    <!-- jqGrid -->
    <script src="<%=path%>/js/plugins/jqGrid/i18n/grid.locale-en-5-1.js"></script>
    <script src="<%=path%>/js/plugins/jqGrid/jquery.jqGrid.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <script src="<%=path%>/js/plugins/jquery-ui/jquery-ui.min.js"></script>


    <script>
        $(document).ready(function () {

            // Examle data for jqGrid
            var mydata = [
                {name: "牛doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "肩部", hospital: "一中心"} ,
                {name: "远doctor", age: "24", sex: "男", grade: "2", phone: "122221321132", type: "踝部", hospital: "蓟州区医院"} ,
                {name: "康doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "膝部", hospital: "一中心"} ,
                {name: "黄doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "臀部", hospital: "一中心"} ,
                {name: "远doctor", age: "24", sex: "男", grade: "2", phone: "122221321132", type: "踝部", hospital: "蓟州区医院"} ,
                {name: "康doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "膝部", hospital: "一中心"} ,
                {name: "牛doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "肩部", hospital: "一中心"} ,
                {name: "远doctor", age: "24", sex: "男", grade: "2", phone: "122221321132", type: "踝部", hospital: "蓟州区医院"} ,
                {name: "康doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "膝部", hospital: "一中心"} ,
                {name: "牛doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "肩部", hospital: "一中心"} ,
                {name: "远doctor", age: "24", sex: "男", grade: "2", phone: "122221321132", type: "踝部", hospital: "蓟州区医院"} ,
                {name: "康doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "膝部", hospital: "一中心"} ,
                {name: "牛doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "肩部", hospital: "一中心"} ,
                {name: "远doctor", age: "24", sex: "男", grade: "2", phone: "122221321132", type: "踝部", hospital: "蓟州区医院"} ,
                {name: "康doctor", age: "24", sex: "男", grade: "1", phone: "122221321132", type: "膝部", hospital: "一中心"} 
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
                colNames:['医生姓名','年龄', '性别', '级别','联系方式','诊治类别','所属医院'],
                colModel:[
                    {name:'name',index:'name', editable: true, width:100, sorttype:"int",search:true,align:"center"},
                    {name:'age',index:'age', editable: true, width:40, align:"center",sorttype:"int",search:true},
                    {name:'sex',index:'age', editable: true, width:50,align:"center" },
                    {name:'grade',index:'grade', editable: true, width:40, align:"center",sorttype:"int"},
                    {name:'phone',index:'phone', editable: true, width:100,align:"center",sorttype:"int"},
                    {name:'type',index:'type', editable: true, width:100,align:"center"},
                    {name:'hospital',index:'hospital', editable: true, width:200, align:"center",sortable:false}
                ],
                pager: "#pager_list_2",
                viewrecords: true,
//              caption: "Example jqGrid 2",
                add: true,
                edit: true,
                addtext: 'Add',
                edittext: 'Edit',
                hidegrid: false
            });

            // Add selection
            $("#table_list_2").setSelection(4, true);


            // Setup buttons
            $("#table_list_2").jqGrid('navGrid', '#pager_list_2',
                    {edit: true, add: true, del: true, search: true},
                    {height: 200, reloadAfterSubmit: true}
            );

            // Add responsive to jqGrid
            $(window).bind('resize', function () {
                var width = $('#table_list_2').setGridWidth(width);
            });
           //日志js
           $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green'
            });

        /* initialize the external events
         -----------------------------------------------------------------*/


        $('#external-events div.external-event').each(function() {

            // store data so the calendar knows to render an event upon drop
            $(this).data('event', {
                title: $.trim($(this).text()), // use the element's text as the event title
                stick: true // maintain when user navigates (see docs on the renderEvent method)
            });

            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 1111999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });

        });


        /* initialize the calendar
         -----------------------------------------------------------------*/
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar
            drop: function() {
                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }
            },
            events: [
                {
                    title: 'All Day Event',
                    start: new Date(y, m, 1)
                },
                {
                    title: 'Long Event',
                    start: new Date(y, m, d-5),
                    end: new Date(y, m, d-2)
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: new Date(y, m, d-3, 16, 0),
                    allDay: false
                },
                {
                    id: 999,
                    title: 'Repeating Event',
                    start: new Date(y, m, d+4, 16, 0),
                    allDay: false
                },
                {
                    title: 'Meeting',
                    start: new Date(y, m, d, 10, 30),
                    allDay: false
                },
                {
                    title: 'Lunch',
                    start: new Date(y, m, d, 12, 0),
                    end: new Date(y, m, d, 14, 0),
                    allDay: false
                },
                {
                    title: 'Birthday Party',
                    start: new Date(y, m, d+1, 19, 0),
                    end: new Date(y, m, d+1, 22, 30),
                    allDay: false
                },
                {
                    title: 'Click for Google',
                    start: new Date(y, m, 28),
                    end: new Date(y, m, 29),
                    url: 'http://google.com/'
                }
            ]
        });

        });

    </script>


</body>	
</html>