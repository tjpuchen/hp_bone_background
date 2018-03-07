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

    <title>基本表单</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

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
                        <li class="active"> <a href="<%=path%>/1-1-1.html"> <span class="nav-label">我的患者</span></a></li>
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
                            <strong>状态信息录入</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
            
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>关节评估</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <form class="form-horizontal">
                                <div class="form-group"><label class="col-sm-2 control-label">关节部位 <br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="joint">左肘
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="joint">右肘
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="joint">左膝
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="joint">右膝
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="joint">左踝
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="joint">右踝
                                        	</label>
                                    </div>
                                </div>
                                 <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">肿胀 <br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="swell">无肿胀
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="swell">轻度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="swell">中度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="optionsRadios">重度
                                        	</label>
                                      
                                        	
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">持续时间<br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="time">无肿胀或小于6个月
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="time">大于六个月
                                        	</label>
                                        	
                                        	
                                        	
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">肌肉萎缩 <br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="muscle">无萎缩 
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="muscle">轻度萎缩 
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="muscle">中度萎缩 
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="muscle">重度萎缩 
                                        	</label>
                                        	
                                        	
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">活动时的嘎吱声 <br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="activity">无声响
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="activity">轻度声响
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="activity">中度声响
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="activity">重度声响
                                        	</label>
                                        	
                                        	
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">屈曲度降低 <br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="bend">小于5度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="bend">5度~10度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="bend">11度~20度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="bend">大于20度
                                        	</label>
                                        	
                                        	
                                    </div>
                                </div>
                                
                                <div class="form-group"><label class="col-sm-2 control-label">伸展降低 <br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="stretch">小于5度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="stretch">5度~10度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="stretch">11度~20度
                                        	</label>
                                        	<label class="checkbox-inline"> 
                                        		<input type="radio" value="option2" id="optionsRadios2" name="stretch">大于20度
                                        	</label>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                
                                <div class="form-group"><label class="col-sm-2 control-label">肌力<br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                    	<div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="muscle_force">在抗重力与最大阻力下维持测试姿位
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="muscle_force">在抗重力与中度阻力下维持测试姿位（但在最大阻力下姿势破坏）
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="muscle_force">在最小阻力下维持测试姿位，或者在抗重力下维持测试姿位
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="muscle_force">能够在抗重力下部分的完成ROM或者能够在消除ROM重力情况下移动或者消除
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="muscle_force">机徽（级数）或者没有肌肉萎缩
                                        </div>
                                       
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">总体步态 <br/>
                                    <small class="text-navy">  </small></label>
                                    <div class="col-sm-10">
                                    	<div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="gait">所有技能都在正常范围内
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="gait">一项技能不在正常范围内
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="gait">两项技能不在正常范围内
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="gait">三项技能不在正常范围内
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="gait">四项技能不在正常范围内
                                        </div>
                                        <div>
                                        	<label class="checkbox-inline"> 
                                        	<input type="radio" checked="" value="option1" id="optionsRadios1" name="gait">技能都不在正常范围内
                                        </div>
                                       
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-danger" type="button" onclick="window.location.href='<%=path%>/1-1-1.jsp'">取消</button>
                                        <button class="btn btn-primary" type="button" onclick="window.location.href='<%=path%>/1-1-1.jsp'">保存</button>
                                    </div>
                                </div>
                            </form>
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

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="<%=path%>/js/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>
</body>

</html>