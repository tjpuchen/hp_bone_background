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

    <title>诊疗计划管理</title>

    
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/chosen/chosen.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/cropper/cropper.min.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/switchery/switchery.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/nouslider/jquery.nouislider.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/ionRangeSlider/ion.rangeSlider.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/ionRangeSlider/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/clockpicker/clockpicker.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/select2/select2.min.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet">

</head>

<body>

<div id="wrapper">

			<nav class="navbar-default navbar-static-side" role="navigation">
				<div class="sidebar-collapse">
					<ul class="nav metismenu" id="side-menu">
						<li class="nav-header">
							<div class="dropdown profile-element">
								<a href="<%=path%>/index.jsp"> <span><img alt="image" class="img-circle" src="<%=path%>/img/logo.png" />	</span></a>
							</div>
							<div class="logo-element">
								HP+
							</div>
						</li>
                   
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

      <div id="page-wrapper" class="gray-bg">
     
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                	 <h2>诊疗计划</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="<%=path%>/index.jsp">首页</a>
                        </li>
                        <li>
                            <a>我的病人</a>
                        </li>
                        <li class="active">
                            <strong>诊疗计划管理</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

        <div class="wrapper wrapper-content animated fadeInRight ecommerce">

         <div class="row">
                <div class="col-lg-10">
                    <div class="ibox">
                        <div class="ibox-title">
                            <h5>诊疗计划管理</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">配置选项 1</a>
                                    </li>
                                    <li><a href="#">配置选项 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <form id="form" action="#" class="wizard-big " >
                                <h1>手术前</h1>
                                <fieldset>
                                    <h2>受伤部位检查</h2>
                                    <div class="row">
                                        <div class="col-lg-12">
	                                        <div class="form-group"><label class="col-sm-2 control-label">请选择诊疗内容</label>
		                                       	<div class="col-sm-10">
		                                        <div class="i-checks"><label><input type="checkbox" value="">CT双螺旋扫描</label></div>
		                                        <div class="i-checks"><label><input type="checkbox" value="">血型验证 </label></div>
		                                        <div class="i-checks"><label><input type="checkbox" value="">肌肉组织检查</label></div>
		                                        <div class="i-checks"><label><input type="checkbox" value="">xxx</label></div>
		                                        <div class="i-checks"><label><input type="checkbox" value="">xxx</label></div>
		                                        <div class="i-checks"><label><input type="checkbox" value="">xxx</label></div>
		                                        <div class="form-group" id="data_1">
					                                <label class="font-noraml">执行时间</label>
					                                <div class="input-group date col-sm-6">
					                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="">
					                                </div>
	                                  		  	</div>
	                                  		
                                			</div>
                                        </div>
                                       
                                    </div>

                                </fieldset>
                                <h1>手术中</h1>
                                <fieldset>
                                    <h2>手术</h2>
                                    <div class="row">
                                        <div class="col-lg-12">
                                    	 	<div class="form-group"><label class="col-sm-2 control-label">请选择诊疗内容</label>
		                                       	<div class="col-sm-10">
	                                            <div class="i-checks"><label><input type="checkbox" value="">局部麻醉</label></div>
	                                            <div class="i-checks"><label><input type="checkbox" value="">消炎药</label></div>
	                                            <div class="i-checks"><label><input type="checkbox" value="">xxx</label></div>
	                                            <div class="i-checks"><label><input type="checkbox" value="">xxx</label></div>
	                                            <div class="i-checks"><label><input type="checkbox" value="">xxx</label></div>
	                                            <div class="form-group " id="data_2">
						                            <label class="font-noraml">执行时间</label>
				                                    <div class="input-group date col-sm-6">
				                                    	<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="">
				                                    </div>
		                                  		</div>
                                        	</div>
                                        </div>
                                    </div>
                                </fieldset>

                                <h1>住院</h1>
                                <fieldset>
                                   <h2>术后观察</h2>
                                    <div class="row">
                                    	<div class="col-lg-12">
                                    		<div class="form-group"><label class="col-sm-2 control-label">请选择诊疗内容</label>
		                                       	<div class="col-sm-10">
		                                    		<div class="i-checks"><label><input type="checkbox" value="">消炎药</label></div>
		                                            <div class="i-checks"><label><input type="checkbox" value="">止痛药</label></div>
		                                            <div class="i-checks"><label><input type="checkbox" value="">心跳检测</label></div>
		                                            <div class="i-checks"><label><input type="checkbox" value="">血压监测</label></div>
		                                    		<div class="form-group" id="data_3">
						                                <label class="font-noraml">日期范围选择</label>
						                                <div class="input-daterange input-group  " id="datepicker">
						                                    <input type="text" class="input-sm form-control" name="start" value=" "/>
						                                    <span class="input-group-addon">到</span>
						                                    <input type="text" class="input-sm form-control" name="end" value=" " />
						                                </div>
						                            </div>
					                            </div>
                                    	</div>
                                    </div>
                                </fieldset>

                                <h1>出院</h1>
                                <fieldset>
                                    <h2>康复注意事项</h2>
                                     <div class="row">
                                    	<div class="col-lg-12">
                                    		<div class="form-group"><label class="col-sm-2 control-label">请选择诊疗内容</label>
		                                       	<div class="col-sm-10">
		                                    		<div class="i-checks"><label><input type="checkbox" value="">消炎药</label></div>
		                                            <div class="i-checks"><label><input type="checkbox" value="">止痛药</label></div>
		                                            <div class="i-checks"><label><input type="checkbox" value="">心跳检测</label></div>
		                                            <div class="i-checks"><label><input type="checkbox" value="">xxxx</label></div>
		                                    		<div class="form-group " id="data_4">
						                            <label class="font-noraml">执行时间</label>
				                                    <div class="input-group date col-sm-6">
				                                    	<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control" value="">
				                                    </div>
				                                </div>   
	                                  		</div>
                                    	</div>
                                    </div>
                                </fieldset>
                            </form>
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

    <!-- Steps -->
    <script src="<%=path%>/js/plugins/staps/jquery.steps.min.js"></script>

    <!-- Jquery Validate -->
    <script src="<%=path%>/js/plugins/validate/jquery.validate.min.js"></script>

    <!-- Data picker -->
    <script src="<%=path%>/js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <script>
        $(document).ready(function(){
            $("#wizard").steps();
            $("#form").steps({
                bodyTag: "fieldset",
                onStepChanging: function (event, currentIndex, newIndex)
                {
                    // Always allow going backward even if the current step contains invalid fields!
                    if (currentIndex > newIndex)
                    {
                        return true;
                    }

                    // Forbid suppressing "Warning" step if the user is to young
                    if (newIndex === 3 && Number($("#age").val()) < 18)
                    {
                        return false;
                    }

                    var form = $(this);

                    // Clean up if user went backward before
                    if (currentIndex < newIndex)
                    {
                        // To remove error styles
                        $(".body:eq(" + newIndex + ") label.error", form).remove();
                        $(".body:eq(" + newIndex + ") .error", form).removeClass("error");
                    }

                    // Disable validation on fields that are disabled or hidden.
                    form.validate().settings.ignore = ":disabled,:hidden";

                    // Start validation; Prevent going forward if false
                    return form.valid();
                },
                onStepChanged: function (event, currentIndex, priorIndex)
                {
                    // Suppress (skip) "Warning" step if the user is old enough.
                    if (currentIndex === 2 && Number($("#age").val()) >= 18)
                    {
                        $(this).steps("next");
                    }

                    // Suppress (skip) "Warning" step if the user is old enough and wants to the previous step.
                    if (currentIndex === 1 && priorIndex === 3)
                    {
                        $(this).steps("previous");
                    }
                },
                onFinishing: function (event, currentIndex)
                {
                    var form = $(this);

                    // Disable validation on fields that are disabled.
                    // At this point it's recommended to do an overall check (mean ignoring only disabled fields)
                    form.validate().settings.ignore = ":disabled";

                    // Start validation; Prevent form submission if false
                    return form.valid();
                },
                onFinished: function (event, currentIndex)
                {
                    var form = $(this);

                    // Submit form input
                    form.submit(window.location.href='1-1-1.html');
                }
            }).validate({
                        errorPlacement: function (error, element)
                        {
                            element.before(error);
                        },
                        rules: {
                            confirm: {
                                equalTo: "#password"
                            }
                        }
                    });
            $('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
            $('#data_2 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
            
            $('#data_3 .input-daterange').datepicker({
                keyboardNavigation: false,
                forceParse: false,
                autoclose: true
            });
            $('#data_4 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
       });
    </script>
</html>