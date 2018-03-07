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

    <title>医保政策-修改</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

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
                    <li class="active">
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
                <h2>医保政策-修改</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="<%=path%>/jsp/index.jsp">首页</a>
                    </li>
                    <li>
                                                       医保政策信息
                        </li>
                    <li class="active">
                        <strong>医保政策-修改</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#tab-1">政策信息</a></li>
                                
                               
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body">

                                        <fieldset class="form-horizontal">
                                            <div class="form-group"><label class="col-sm-2 control-label">医保编号:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder=""></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">政策编号:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder=""></div>
                                            </div>
                                             <div class="form-group"><label class="col-sm-2 control-label">政策标题:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder=""></div>
                                            </div>
                                             <div class="form-group"><label class="col-sm-2 control-label">地区:</label>
                                                <div class="col-sm-10"> <select class="form-control m-b" name="account">
                                        <option>option 1</option>
                                        <option>option 2</option>
                                        <option>option 3</option>
                                        <option>option 4</option>
                                    </select></div>
                                            </div>
                                            <div class="form-group"> <label class="col-sm-2 control-label" for="date_added">发布时间</label>
                                         <div class="input-group date">
                                          <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_added" type="text" class="form-control" value="03/04/2014">
                                           </div>
                        </div>
                                            
                                            
                                            <div class="form-group"><label class="col-sm-2 control-label">政策內容:</label>
                                                <div class="col-sm-10">
                                                    <div class="summernote">
                                                        <h3>Lorem Ipsum is simply</h3>
                                                        dummy text of the printing and typesetting industry. <strong>Lorem Ipsum has been the industry's</strong> standard dummy text ever since the 1500s,
                                                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                                        when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
                                                        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with
                                                        <br/>

                                                    </div>
                                                </div>
                                            </div>
                                            
                                 <div class="col-xs-4">
                                       	</div>
                                        <div class="col-xs-4" >
                                       	  <button type="button" class="btn btn-w-m btn-primary" onclick="window.location.href='3-1.html'">修改</button>
                                          <button type="button" class="btn btn-w-m btn-danger" onclick="window.location.href='3-1.html'">取消</button>
                                          </div>
                                           <div class="col-xs-4">
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

<!-- SUMMERNOTE -->
<script src="<%=path%>/js/plugins/summernote/summernote.min.js"></script>

<!-- Data picker -->
<script src="<%=path%>/js/plugins/datapicker/bootstrap-datepicker.js"></script>

<script>
    $(document).ready(function(){

        $('.summernote').summernote();

        $('.input-group.date').datepicker({
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