<!-- Content Header (Page header) -->
<link type="text/css" rel="stylesheet"
	href="//cdn.bootcss.com/jstree/3.3.2/themes/default/style.min.css">
<link type="text/css" rel="stylesheet" href="//cdn.bootcss.com/jquery-treegrid/0.2.0/css/jquery.treegrid.css">




<section class="content-header">
	<h1>
		组织结构列表 <small>开始管理组织结构信息</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#page/center/home"><i class="fa fa-home"></i>
				Home</a></li>
		<li class="active">组织结构管理</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<div class="row">

		<div class="col-md-12">
			<div class="mailbox-controls">
				<div class="btn-group btn-group-sm">
					<a type="button" class="btn btn-primary"
						href="#/page/center/org/add"> <i class="fa fa-plus"></i> 添加
					</a> <a aria-expanded="false" aria-haspopup="true"
						data-toggle="dropdown"
						class="btn btn-primary btn-sm dropdown-toggle" type="button">
						批量 <span class="ion-arrow-down-b"></span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="javascript:;" id="batchInstallButton"> <i
								class="glyphicon glyphicon-send"></i>安装/更新到设备
						</a></li>
						<li><a href="javascript:;" id="batchRemoveButton"> <i
								class="glyphicon glyphicon-erase"></i>从设备移除
						</a></li>
						<li class="divider" role="separator"></li>
						<li><a href="javascript:;" id="batchDeleteButton"> <i
								class="glyphicon glyphicon-remove"></i>移除
						</a></li>
					</ul>
				</div>
				<!-- /.btn-group -->
				<a type="button" class="btn btn-warning btn-sm" id="refreshButton">
					<i class="fa fa-refresh"></i>
				</a>
				<div class="pull-right">
					<div class="input-group input-group-sm" style="width: 120px;">
						<input type="text" id="searchInput"
							class="form-control pull-right" placeholder="搜索">

						<div class="input-group-btn">
							<button id="searchButton" type="button" class="btn btn-default">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
					<!-- /.btn-group -->
				</div>
				<!-- /.pull-right -->
			</div>
			<div class="box box-primary">
				<div class="box-body no-padding">
					<table id="grid-org" class="table table-hover">
						<thead>
							<tr>
								<th data-column-id="id" data-type="numeric"
									data-identifier="true" data-visible="false">ID</th>
								<th data-column-id="name" data-sortable="false">名称</th>
								<th data-column-id="code">标识</th>
								<th data-column-id="type">类型</th>
								<th data-column-id="phone">电话</th>
								<th data-column-id="email">邮箱</th>
								<th data-column-id="email">传真</th>
								<th data-formatter="commands" data-css-class="command-column"
									data-width="150px" data-sortable="false" data-align="center"
									data-header-align="center">操作</th>
							</tr>
						</thead>
						<tbody>
						<#macro orgTree childrenList parent_id>
							<#list childrenList as group>
							<tr
								class="treegrid-${group.data.id} ${(parent_id==-1)?string('','treegrid-parent-${parent_id}')}  ">
								<td></td>
								<td>${group.text}</td>
								<td>${group.data.code}</td>
								<td>${(group.data.type=='company')?string('公司',(group.data.type=='department')?string('部门','组'))}</td>
								<td>${(group.data.phone)!}</td>
								<td>${(group.data.email)!}</td>
								<td>${(group.data.fax)!}</td>
								<td><i class="${group.iconCls!}"></i></td>
								<td>
									<div class="btn-group btn-group-sm" data-row-id="1">
										<a type="button" class="btn btn-primary"
											href="#/page/menu/edit/1"> <i
											class="glyphicon glyphicon-edit"></i>
										</a> <a aria-expanded="false" aria-haspopup="true"
											data-toggle="dropdown"
											class="btn btn-primary dropdown-toggle" type="button"> <i
											class="fa fa-cog"></i> <span class="ion-arrow-down-b"></span>
										</a>
										<ul class="dropdown-menu pull-right">
											<li><a href="javascript:;"
												class="command-installAppLock"><i
													class="glyphicon glyphicon-send"></i>安装/更新到设备</a></li>
											<li><a href="javascript:;" class="command-removeAppLock"><i
													class="glyphicon glyphicon-erase"></i>从设备移除</a></li>
											<li class="divider" role="separator"></li>
											<li><a href="javascript:;" class="command-delete"><i
													class="glyphicon glyphicon-remove"></i>移除</a></li>
										</ul>
									</div>
								</td>
							</tr>
							<@orgTree childrenList=group.children parent_id=group.data.id />
							</#list>
						</#macro>
						<@orgTree childrenList=allOrgTree parent_id=-1 />
						</tbody>
					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
	</div>
</section>
<script type="text/javascript">
	require(
			[ "domReady", "jstree","treegrid_bootstrap3" ],
			function(domReady) {
				domReady(function() {
					activeMenu("user-list");
					$("#grid-org").treegrid({treeColumn:1});
					/* $('#org_tree').jstree({
					    'core' : {
					        'data' : [
					            {"id" : 1, "text" : "Node 1"},
					            {"id" : 2, "text" : "Node 2"},
					        ]
					    }
					}); */
/* 					$('#org_tree').jstree({
						'core' : {
							'data' : {
								"url" : base + "/center/org/tree",
								"dataType" : "json" // needed only if you do not supply JSON headers
							}
						},
						"plugins" : [ "dnd", "contextmenu" ]
					}); */

					/* var grid = $("#grid-app")
							.bootgrid(
									{
										url : base + "/center/org/page",
										formatters : {
											"commands" : function(column, row) {
												return "\
								<div class=\"btn-group btn-group-sm\" data-row-id=\""+row.id+"\">\
									<a type=\"button\" class=\"btn btn-primary\" href=\"#/page/center/role/edit/"+row.id+"\">\
										<i class=\"glyphicon glyphicon-edit\"></i>\
									</a>\
									<a aria-expanded=\"false\" aria-haspopup=\"true\" data-toggle=\"dropdown\" \
										class=\"btn btn-primary dropdown-toggle\" type=\"button\">\
										<i class=\"fa fa-cog\"></i>\
										<span class=\"ion-arrow-down-b\"></span>\
									</a>\
									<ul class=\"dropdown-menu pull-right\">\
										<li><a href=\"#page/center/role/menu/edit/"+row.id+"\" class=\"\"><i class=\"glyphicon glyphicon-send\"></i>修改权限</a></li>\
										<li><a href=\"javascript:;\" class=\"command-removeAppLock\"><i class=\"glyphicon glyphicon-erase\"></i>从设备移除</a></li>\
										<li class=\"divider\" role=\"separator\"></li>\
										<li><a href=\"javascript:;\" class=\"command-delete\"><i class=\"glyphicon glyphicon-remove\"></i>移除</a></li>\
									</ul>\
								</div>";
											}
										}
									}); */

					var refreshGrid = function() {
						grid.bootgrid("reload")
					}

					var actionWithSelectedRows = function(action) {
						var selectedRows = grid.bootgrid("getSelectedRows");
						if (selectedRows && selectedRows.length > 0) {
							action(grid, selectedRows);
						} else {
							$.alert({
								title : false,
								content : "请至少选择一个应用锁定",
								confirmButton : "关闭"
							});
						}
					}

					var deleteRow = function(grid, ids) {
						$.confirm({
							title : "提示",
							content : "确定删除应用锁定?",
							confirmButton : "确定",
							cancelButton : "关闭",
							icon : 'fa fa-warning',
							confirmButtonClass : 'btn-warning',
							animation : 'zoom',
							confirm : function() {
								$.post(base + "/center/applock/delete", {
									ids : ids
								}, function(resp) {
									if (resp.success) {
										$.alert({
											title : false,
											content : "操作成功",
											confirmButton : "关闭"
										});
										grid.bootgrid("reload")
									} else {
										$.alert({
											title : false,
											content : resp.msg,
											confirmButton : "关闭"
										});
									}
								}, "json");
							}
						});
					};

					var modifyMenu = function(grid, ids) {
						$.confirm({
							title : "推送应用锁定",
							content : "url:" + base
									+ "/center/dialog/deviceList",
							columnClass : "col-md-8 col-md-offset-2",
							confirmButton : "确定",
							cancelButton : "取消",
							confirmButtonClass : 'btn-primary',
							cancelButtonClass : 'btn-danger',
							confirm : function() {
								var me = this;
								var $table = me.$b.find("table");

								var selectedRows = $table
										.bootgrid("getSelectedRows");
								if (selectedRows && selectedRows.length > 0) {
									$.post(base + "/mdmcommand/installAppLock",
											{
												appLockIds : ids.join(),
												deviceIds : selectedRows.join()
											}, function(resp) {
												if (resp.success) {
													$.alert({
														title : false,
														content : "操作成功",
														confirmButton : "关闭"
													});
												} else {
													$.alert({
														title : false,
														content : resp.msg,
														confirmButton : "关闭"
													});
												}
											}, "json");

									return true;
								} else {
									$.alert({
										title : false,
										content : "请至少选择一个设备",
										confirmButton : "关闭"
									});
								}

								return false;
							}
						});
					}

					var removeToDevice = function(grid, ids) {
						$.confirm({
							title : "移除应用锁定",
							content : "url:" + base
									+ "/center/dialog/deviceList",
							columnClass : "col-md-8 col-md-offset-2",
							confirmButton : "确定",
							cancelButton : "取消",
							confirmButtonClass : 'btn-primary',
							cancelButtonClass : 'btn-danger',
							confirm : function() {
								var me = this;
								var $table = me.$b.find("table");

								var selectedRows = $table
										.bootgrid("getSelectedRows");
								if (selectedRows && selectedRows.length > 0) {
									$.post(base + "/mdmcommand/removeAppLock",
											{
												appLockIds : ids.join(),
												ids : selectedRows.join()
											}, function(resp) {
												if (resp.success) {
													$.alert({
														title : false,
														content : "操作成功",
														confirmButton : "关闭"
													});
												} else {
													$.alert({
														title : false,
														content : resp.msg,
														confirmButton : "关闭"
													});
												}
											}, "json");

									return true;
								} else {
									$.alert({
										title : false,
										content : "请至少选择一个设备",
										confirmButton : "关闭"
									});
								}

								return false;
							}
						});
					}

					/* grid.on("loaded.rs.jquery.bootgrid", function() {
						var $table = $(this);
						$table.find(".dropdown-toggle").dropdown();

						$table.find(".command-modifyMenu").on(
								"click",
								function() {
									var appLock_id = $(this).closest(
											".btn-group").data("row-id");

									modifyMenu($table, [ appLock_id ]);
								});

						$table.find(".command-removeAppLock").on(
								"click",
								function() {
									var appLock_id = $(this).closest(
											".btn-group").data("row-id");

									removeToDevice($table, [ appLock_id ]);
								});

						$table.find(".command-delete").on(
								"click",
								function(e) {
									var app_id = $(this).closest(".btn-group")
											.data("row-id");

									deleteRow($table, [ app_id ]);
								});
					}); */

					$("#batchDeleteButton").on("click", function() {
						actionWithSelectedRows(function(grid, selectedRows) {
							deleteRow(grid, selectedRows);
						});
					});

					$("#batchInstallButton").on("click", function() {
						actionWithSelectedRows(function(grid, selectedRows) {
							installToDevice(grid, selectedRows);
						});
					});

					$("#batchRemoveButton").on("click", function() {
						actionWithSelectedRows(function(grid, selectedRows) {
							removeToDevice(grid, selectedRows);
						});
					});

					$("#refreshButton").on("click", function() {
						refreshGrid();
					});
					$("#searchButton").on("click", function() {
						grid.bootgrid("search", $("#searchInput").val());
					});

				});
			});
</script>
