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

    <title>回复留言</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
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
                    <li>
                        <a href="8-1.jsp"><i class="fa fa-laptop"></i> <span class="nav-label">必备材料</span></a>
                    </li>
                    <li class="active">
                    	 <a href="9-1.jsp"><i class="fa fa-edit"></i> <span class="nav-label">留言板</span></a>
                    </li>                
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg">
       

		<div class="row wrapper border-bottom white-bg page-heading">
			<div class="col-lg-10">
				<h2>留言板</h2>
					<ol class="breadcrumb">
						<li>
							<a href="index.jsp">首页</a>
						</li>
						<li class="active">
							<a href="9-1.jsp">留言板</a>
						</li>
						<li class="active">
							<strong>留言</strong>
						</li>
					</ol>
			</div>
			<div class="col-lg-2">

			</div>
		</div>
        <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-lg-12 animated fadeInRight">
            <div class="mail-box-header">
                
                <h2>
                   	留言
                </h2>
            </div>
                <div class="mail-box">


                <div class="mail-body">

                    <form class="form-horizontal" method="get">
                        <div class="form-group"><label class="col-sm-2 control-label">收件人:</label>

                            <div class="col-sm-9"><input type="text" class="form-control" value="请选择收件人"></div>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">收件人</button>
                        </div>
                        
                        <div class="form-group"><label class="col-sm-2 control-label">主题:</label>

                            <div class="col-sm-10"><input type="text" class="form-control" value=""></div>
                        </div>
                        </form>

                </div>



				<div class="modal inmodal" id="myModal2" tabindex="-1" role="dialog" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content animated flipInY">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
									<h4 class="modal-title">收件人列表</h4>
									<small class="font-bold"></small>
								</div>
								<div class="modal-body">
									<div class="ibox-content">
                            <input type="text" class="form-control input-sm m-b-xs" id="filter" 
                            	placeholder="查询">
                            <table class="footable table table-stripped" data-page-size="8" data-filter=#filter>
                                <thead>
                                <tr>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th data-hide="phone,tablet">年龄</th>
                                    <th data-hide="phone,tablet">级别</th>
                                    <th data-hide="phone,tablet">诊治类别 </th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                <tr class="gradeD">
                                    <td><a>SDFVdent</a></td>
                                    <td><a>BTRrnet EBTGlorer 4.0</a></td>
                                    <td><a>Win 95+</a></td>
                                    <td class="center"><a>7</a></td>
                                    <td class="center"><a>G</a></td>
                                </tr>                          
                                <tr class="gradeD">
                                    <td><a>NHGident</a></td>
                                    <td><a>InDGDt ExNHGlorer 4.0</a></td>
                                    <td><a>Win 95+</a></td>
                                    <td class="center"><a>5</a></td>
                                    <td class="center"><a>Y</a></td>
                                </tr>                               
                                </tbody>
                                <tfoot>
                                </tr>
                                    <td colspan="5">
                                        <ul class="pagination pull-right"></ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-white" data-dismiss="modal">关闭</button>
					
								</div>
							</div>
						</div>
					</div>



                    <div class="mail-text h-200">

                        <div class="summernote">
                            <h3>Hello Jonathan! </h3>
                            这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！这是邮件内容！！
                            <br/>
                            <br/>

                        </div>
<div class="clearfix"></div>
                        </div>
                    <div class="mail-body text-right tooltip-demo">
                        <a href="9-1.jsp" class="btn btn-sm btn-primary" data-toggle="tooltip" data-placement="top" title="Send"><i class="fa fa-reply"></i> 发送</a>
                        <a href="9-1-1.jsp" class="btn btn-danger btn-sm" data-toggle="tooltip" data-placement="top" title="Discard email"><i class="fa fa-times"></i> 废弃</a>
                        
                    </div>
                    <div class="clearfix"></div>



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

    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>

    <!-- SUMMERNOTE -->
    <script src="js/plugins/summernote/summernote.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });


            $('.summernote').summernote();

        });
        var edit = function() {
            $('.click2edit').summernote({focus: true});
        };
        var save = function() {
            var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
            $('.click2edit').destroy();
        };

    </script>
</body>

</html>
