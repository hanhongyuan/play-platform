<#assign base=request.contextPath />
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>${setting.siteName!'AirShiplay'} | 管理平台</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="${base}/requirejs/assets/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="//cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${base}/requirejs/assets/AdminLTE-2.3.6/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="${base}/requirejs/assets/AdminLTE-2.3.6/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="${base}/requirejs/assets/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="${base}/requirejs/assets/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="${base}/requirejs/assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="${base}/requirejs/assets/plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="${base}/requirejs/assets/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
  
  <link type="text/css" rel="stylesheet" href="${base}/requirejs/assets/plugins/kindeditor/themes/default/default.css">

  <!-- iCheck -->
  <link type="text/css" rel="stylesheet" href="//cdn.bootcss.com/iCheck/1.0.2/skins/all.css">


  <!-- Daterange picker -->
  <link rel="stylesheet" href="${base}/requirejs/assets/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="requirejs/assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<link rel="stylesheet" href="//cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min.css">


<link rel="shortcut icon" href="/assets/favicon.ico" />
<link rel="bookmark" href="/assets/favicon.ico" type="image/x-icon" />

<link type="text/css" rel="stylesheet"
	href="//cdn.bootcss.com/jquery-treetable/3.2.0/css/jquery.treetable.css">
<link type="text/css" rel="stylesheet"
	href="//cdn.bootcss.com/select2/4.0.3/css/select2.css">
<!-- 
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="//cdn.bootcss.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="//cdn.bootcss.com/iCheck/1.0.2/skins/square/blue.css">
<link rel="stylesheet" href="//cdn.bootcss.com/jquery-bootgrid/1.3.1/jquery.bootgrid.min.css">
<link rel="stylesheet" href="requirejs/assets/vendor/bootstrapvalidator/css/bootstrapValidator.min.css">
<link rel="stylesheet" href="//cdn.bootcss.com/select2/4.0.3/css/select2.min.css">
<link rel="stylesheet" href="//cdn.bootcss.com/pace/1.0.2/themes/red/pace-theme-minimal.min.css">
-->

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="//cdn.bootcss.com/html5shiv/r29/html5.min.js"></script>
  <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini fixed">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>${setting.shortSiteName!'Air'}</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>${setting.siteName!'AirShiplay'}</b>管理平台</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="requirejs/assets/AdminLTE-2.3.6/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="requirejs/assets/AdminLTE-2.3.6/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        AdminLTE Design Team
                        <small><i class="fa fa-clock-o"></i> 2 hours</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="requirejs/assets/AdminLTE-2.3.6/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Developers
                        <small><i class="fa fa-clock-o"></i> Today</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="requirejs/assets/AdminLTE-2.3.6/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Sales Department
                        <small><i class="fa fa-clock-o"></i> Yesterday</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="pull-left">
                        <img src="requirejs/assets/AdminLTE-2.3.6/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Create a nice theme
                        <small class="pull-right">40%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">40% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Some task I need to do
                        <small class="pull-right">60%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    <a href="#">
                      <h3>
                        Make beautiful transitions
                        <small class="pull-right">80%</small>
                      </h3>
                      <div class="progress xs">
                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="requirejs/assets/AdminLTE-2.3.6/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">${currentUser!''}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="requirejs/assets/AdminLTE-2.3.6/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="${base}/center/logout" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/requirejs/assets/AdminLTE-2.3.6/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${currentUser!""}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!--menulist sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="menu-home active"><a href="#page/center/home"><i class="fa fa-home"></i> <span>首页</span></a></li>
        
       <#list allMenuTree as menuTree>
		  <li class="treeview">
    			
    			<a href="#">
            	<i class="${menuTree.iconCls}"></i>
            	<span>${menuTree.text}</span>
            		<span class="pull-right-container">
              		<!--<span class="label label-primary pull-right">${menuTree.children?size}</span>-->
            		</span>
          		</a>
          		<ul class="treeview-menu">
          		<#list menuTree.children as menu>
            		<li class="menu-${menu.data.code}" ><a href="#${menu.data.view}"><i class="${(menu.iconCls)!}"></i>${menu.text}</a></li>
          		</#list>
          		</ul>
    		</li>
		</#list>
        
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    

<frame src="index_c.htm" />

  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.6
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<!-- REQUIRED JS SCRIPTS -->


	<!-- RequestJs -->
	<script type="text/javascript" src="//cdn.bootcss.com/pace/1.0.2/pace.min.js"></script>
	<script data-main="/" src="/requirejs/assets/vendor/requirejs/require.js"></script>

	<script type="text/javascript">
		var base = "";
		var activeMenu = function(code) {
			Pace.restart();
			$(".sidebar-menu").find(".active").removeClass("active");
			//$(".sidebar-menu").find(".menu-" + code).parent().removeClass('menu-open');
			if(code=="home"){
				$(".sidebar-menu").find(".menu-open").slideUp(false);
			}
			$(".sidebar-menu").find(".menu-" + code).addClass("active");
			$(".sidebar-menu").find(".menu-" + code).parent().parent().addClass("active");
			
			
		};

		requirejs.config({
			paths : {
				text : base + "${base}/requirejs//assets/vendor/requirejs/text",
				domReady : base + "${base}/requirejs/assets/vendor/requirejs/domReady",
				jquery : "//cdn.bootcss.com/jquery/2.2.4/jquery.min",
				bootstrap : "//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min",
				slimscroll : "//cdn.bootcss.com/jQuery-slimScroll/1.3.8/jquery.slimscroll.min",
				fastclick : "//cdn.bootcss.com/fastclick/1.0.6/fastclick.min",
				router : "//cdn.bootcss.com/Director/1.2.8/director.min",
				//bootgrid : "//cdn.bootcss.com/jquery-bootgrid/1.3.1/jquery.bootgrid.min",
				bootgrid : base + "/requirejs/assets/vendor/jquery.bootgrid/jquery.bootgrid",
				bootgridfa : "//cdn.bootcss.com/jquery-bootgrid/1.3.1/jquery.bootgrid.fa.min",
				confirm : "//cdn.bootcss.com/jquery-confirm/2.5.1/jquery-confirm.min",
				validator : "/requirejs/assets/vendor/bootstrapvalidator/js/bootstrapValidator.min",
				validatorzh : "/requirejs/assets/vendor/bootstrapvalidator/js/language/zh_CN",
				treetable:"//cdn.bootcss.com/jquery-treetable/3.2.0/jquery.treetable",
				treegrid_bootstrap3:"//cdn.bootcss.com/jquery-treegrid/0.2.0/js/jquery.treegrid.bootstrap3",
				treegrid:"//cdn.bootcss.com/jquery-treegrid/0.2.0/js/jquery.treegrid.min",
				treeview_bootstrap:"//cdn.bootcss.com/bootstrap-treeview/1.2.0/bootstrap-treeview.min",
				jstree:"//cdn.bootcss.com/jstree/3.3.2/jstree.min",
				fileinput : "//cdn.bootcss.com/bootstrap-fileinput/4.3.3/js/fileinput.min",
				fileinputzh : "//cdn.bootcss.com/bootstrap-fileinput/4.3.3/js/locales/zh.min",

				select2 : "//cdn.bootcss.com/select2/4.0.3/js/select2.min",
				select2zh : "//cdn.bootcss.com/select2/4.0.3/js/i18n/zh-CN",
				//bootstrapmultiselect : "//cdn.bootcss.com/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.min",

				typeahead : "//cdn.bootcss.com/bootstrap-3-typeahead/4.0.1/bootstrap3-typeahead.min",

				datepicker : "//cdn.bootcss.com/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.min",
				datepickerzh : "//cdn.bootcss.com/bootstrap-datepicker/1.6.4/locales/bootstrap-datepicker.zh-CN.min",
				//moment : "//cdn.bootcss.com/moment.js/2.16.0/moment.min",
				//momentzh : "//cdn.bootcss.com/moment.js/2.16.0/locale/zh-cn",
				datetimepicker : "${base}/requirejs/assets/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min",
				datetimepickerzh : "${base}/requirejs/assets/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN",
				kindeditor:"${base}/requirejs/assets/plugins/kindeditor/kindeditor-all",
				icheck:"//cdn.bootcss.com/iCheck/1.0.2/icheck",
				app : base + "${base}/requirejs/assets/js/app"
			},
			shim : {
				slimscroll : [ "jquery" ],
				bootstrap : {
					deps : [ "jquery" ],
					exports : "bootstrap"
				},
				jstree:["jquery"],
				treetable:["jquery"],
				treegrid:["jquery"],
				treegrid_bootstrap3:["treegrid"],
				treeview_bootstrap:["bootstrap"],
				bootgrid : [ "jquery" ],
				bootgridfa : [ "bootgrid" ],
				validator : [ "bootstrap" ],
				validatorzh : [ "validator" ],
				confirm : [ "jquery" ],
				fileinput : [ "bootstrap" ],
				fileinputzh : [ "fileinput" ],
				select2 : [ "bootstrap" ],
				select2zh : [ "select2" ],
				datepicker : [ "bootstrap" ],
				datepickerzh : [ "datepicker" ],
				//momentzh :[ "moment"],
				//datetimepicker: [ "bootstrap","momentzh" ],
				datetimepickerzh:["datetimepicker"],
				app : [ "jquery", "bootstrap", "slimscroll", "fastclick", "bootgridfa", "confirm", "validatorzh" ]
			}
		});

		requirejs([ "jquery", "router", "text", "app" ], function($) {
			$(function() {

				var contentWrapper = $(".content-wrapper");
				var routes = {
					"/page" : {
						"?((\w|.)*)" : function(path) {
							require([ "text!" + base + "/" + path + ".view?_t=" + (new Date()).getTime() ], function(html) {
								contentWrapper.html(html);
								$("body").removeClass('sidebar-open');
							},function(err){
									$.alert({
										title : false,
										content :err.xhr.status==404?"页面不存在":(err.xhr.status==401?"权限不足":err+"") 
									});
							});
						}
					}
				};

				var router = Router(routes);

				router.init();

				var hash = window.location.hash;
				if (hash && hash != "") {

				} else {
					window.location.href = "#/page/center/home";
				}

			});
		});
	</script>

</body>
</html>