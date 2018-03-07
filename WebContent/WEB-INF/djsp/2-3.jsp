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

    <title>流程信息</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/iCheck/custom.css" rel="stylesheet">
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
                <h2>流程信息</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="<%=path%>/index.jsp">主页</a>
                    </li>               
                    <li class="active">
                        <strong>流程信息</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>
        <div class="wrapper wrapper-content">
            <div class="row animated fadeInRight">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="text-center float-e-margins p-md">
                    <span>打开/关闭颜色/背景或方向版本： </span>
	                    <a href="#" class="btn btn-xs btn-primary" id="lightVersion">光版</a>
	                    <a href="#" class="btn btn-xs btn-primary" id="darkVersion">暗版</a>
	                    <a href="#" class="btn btn-xs btn-primary" id="leftVersion">左版</a>
                    </div>
                    <div class="ibox-content" id="ibox-content">

                        <div id="vertical-timeline" class="vertical-container dark-timeline center-orientation">
                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon navy-bg">
                                    <i class="fa fa-briefcase"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>会议</h2>
                                    <p>前一年的销售业绩会议。莫妮卡请检查在市场营销和产品销售趋势。下面请找到目前的销售状况。
                                    </p>
                                    <a href="#" class="btn btn-sm btn-primary"> More info</a>
                                    <span class="vertical-date">
                                        今天 <br/>
                                        <small>12月24日</small>
                                    </span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon blue-bg">
                                    <i class="fa fa-file-text"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>发送文件给迈克</h2>
                                    <p>LoremIpsum 只是印刷排版业虚拟文本。Lorem Ipsum 一直是行业的标准虚拟文本。</p>
                                    <a href="#" class="btn btn-sm btn-success"> 下载文件 </a>
                                    <span class="vertical-date">
                                        今天 <br/>
                                        <small>12月24日</small>
                                    </span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon lazur-bg">
                                    <i class="fa fa-coffee"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>咖啡厅</h2>
                                    <p>去购物，找到一些产品。Lorem Ipsum只是印刷排版业虚拟文本。Lorem存有一直是行业的。</p>
                                    <a href="#" class="btn btn-sm btn-info">多读</a>
                                    <span class="vertical-date"> 昨天 <br/><small>12月23日</small></span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon yellow-bg">
                                    <i class="fa fa-phone"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>Jeronimo打电话</h2>
                                    <p>Lorem Ipsum一直是行业的标准虚拟文本。</p>
                                    <span class="vertical-date">昨天 <br/><small>12月23日</small></span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon lazur-bg">
                                    <i class="fa fa-user-md"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>去史密斯博士医生那里</h2>
                                    <p>看病。 </p>
                                    <span class="vertical-date">昨天 <br/><small>12月23日</small></span>
                                </div>
                            </div>

                            <div class="vertical-timeline-block">
                                <div class="vertical-timeline-icon navy-bg">
                                    <i class="fa fa-comments"></i>
                                </div>

                                <div class="vertical-timeline-content">
                                    <h2>莫妮卡和桑德拉聊天</h2>
                                    <p>Lorem Ipsum一直是行业的标准虚拟文本。</p>
                                    <span class="vertical-date">昨天 <br/><small>12月23日</small></span>
                                </div>
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
                <strong>Copyright</strong> 版权所有 &copy; 2014-2015
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

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <!-- Peity -->
    <script src="<%=path%>/js/demo/peity-demo.js"></script>


    <script>
        $(document).ready(function(){

            // Local script for demo purpose only
            $('#lightVersion').click(function(event) {
                event.preventDefault()
                $('#ibox-content').removeClass('ibox-content');
                $('#vertical-timeline').removeClass('dark-timeline');
                $('#vertical-timeline').addClass('light-timeline');
            });

            $('#darkVersion').click(function(event) {
                event.preventDefault()
                $('#ibox-content').addClass('ibox-content');
                $('#vertical-timeline').removeClass('light-timeline');
                $('#vertical-timeline').addClass('dark-timeline');
            });

            $('#leftVersion').click(function(event) {
                event.preventDefault()
                $('#vertical-timeline').toggleClass('center-orientation');
            });


        });
    </script>

</body>

</html>