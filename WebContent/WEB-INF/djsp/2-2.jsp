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

    <title>添加手术类型</title>

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
                        	<a href="<%=path%>/index.jsp"> 
                        	<img alt="image" class="img-circle" src="<%=path%>/img/logo.png"/></a>                        
                        </div>
                        <div class="logo-element">
                            HP+
                        </div>
                    </li> 
                    
					<li>
                    <a><i class="fa fa-bar-chart-o"></i><span class="nav-label">患者信息管理</span><span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level collapse">
                         <li><a href="<%=path%>/index.jsp"> <span class="nav-label">全部患者信息</span></a></li>
                        <li> <a href="<%=path%>/1-1-1.jsp"> <span class="nav-label">我的患者</span></a></li>
                       </ul>
                    </li>
                    <li class="active">
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

  <div id="page-wrapper" class="gray-bg">
        <div class="row wrapper border-bottom white-bg page-heading">
            <div class="col-lg-10">
                <h2>添加手术类型</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="<%=path%>/index.jsp">首页</a>
                    </li>
                    <li class="active">
                        <strong>添加手术类型</strong>
                    </li>
                </ol>
            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

            <div class="row">
                <div class="col-lg-12">
                    <div class="tabs-container">                                                  
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="panel-body">
                                        <fieldset class="form-horizontal">
                                            <div class="form-group"><label class="col-sm-2 control-label">手术名称:</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" placeholder="手术名称"></div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">流程类型:</label>
                                                <div class="col-sm-10">                                                	
							                            <select name="status" id="status" class="form-control">
							                                <option value="入院前" selected>入院前</option>
							                                <option value="术前">术前</option>
							                                <option value="术后">术后</option>
							                                <option value="康复流程">康复流程</option>
							                            </select>                                           
                                            	</div>
                                            </div>
                                            <div class="form-group"><label class="col-sm-2 control-label">流程描述:</label>
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
                                        </fieldset>

                                    </div>
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