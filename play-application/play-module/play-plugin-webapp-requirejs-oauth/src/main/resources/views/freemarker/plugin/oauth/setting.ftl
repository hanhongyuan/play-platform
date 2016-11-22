<section class="content-header">
	<h1>
		OAuth认证 <small>开始管理OAuth认证</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#page/center/home"><i class="fa fa-home"></i>
				Home</a></li>
		<li class="active">OAuth认证</li>
	</ol>
</section>

<section class="content">

	<form role="form" class="app-form" action="${plugin.updateUrl}">
		<input type="hidden" name="pluginId" value="${plugin_config.pluginId}" /> <input
			type="hidden" name="id" value="${plugin_config.id}" />

		<div class="box-body">
			<div class="form-group">
				<label for="nameInput">OAuth插件名称</label> <input type="text"
					name="name" class="form-control"
					id="nameInput" data-bv-notempty="true" readonly="readonly"
					data-bv-notempty-message="" placeholder="client_id"
					value="${(plugin.name)!}">
			</div>
			<div class="form-group">
				<label for="avatarInput">插件图标</label>
				<div class="kv-avatar">
					<input id="oauth_icon" name="attributes['icon']" type="hidden" value="${(plugin_config.attributes.icon)!}"> <input
						id="avatarInput" name="file" type="file" class="file-loading">
				</div>
			</div>
			<div class="form-group">
				<label>启用</label>
				<div class="input-group radio">
				<#if plugin_config.isEnabled>
					<label> <input type="radio" value="false" name="isEnabled"  >禁用
					</label> &nbsp; &nbsp; <label> 
					<input type="radio" value="true"  name="isEnabled" checked >启用
					</label>
				<#else>
				 	<label> <input type="radio" value="false" name="isEnabled" checked >禁用
					</label> &nbsp; &nbsp; <label> 
					<input type="radio" value="true"  name="isEnabled"  >启用
					</label>
				</#if>
					
				</div>
			</div>
			<div class="form-group">
				<label for="client_idInput">client_id</label> <input type="text"
					name="attributes['client_id']" class="form-control"
					id="client_idInput" data-bv-notempty="true"
					data-bv-notempty-message="请填写client_id" placeholder="client_id"
					value="${(plugin_config.attributes.client_id)!}">
			</div>
			<div class="form-group">
				<label for="client_secretInput">client_secret</label> <input
					type="text" name="attributes['client_secret']" class="form-control"
					id="client_secretInput" placeholder="client_secret"
					data-bv-notempty="true" data-bv-notempty-message="client_secret" value="${(plugin_config.attributes.client_secret)!}">
			</div>
			

		</div>
		<!-- /.box-body -->

		<div class="box-footer">
			<button type="button" class="btn btn-default"
				onclick="location.href='#/page/plugin/oauth/list'">返回列表</button>
			<button type="submit" class="btn btn-primary pull-right">保存</button>
		</div>
	</form>

</section>

<script type="text/javascript">
	require(
			[ "domReady", "fileinputzh" ],
			function(domReady) {
				domReady(function() {
					activeMenu("app");
console.log("");
					var $form = $(".app-form");
					var userAvatar = "${(plugin_config.attributes.icon)!}";

					var $avatarInput = $("#avatarInput");
					$avatarInput
							.fileinput(
									{
										overwriteInitial : true,
										language : "zh",
										uploadUrl : base
												+ "/center/multipart/upload",
										maxFileSize : 1500,
										showClose : false,
										showCaption : false,
										multiple : false,
										showUpload : false, // hide upload button
										showRemove : false, // hide remove button
										minFileCount : 1,
										maxFileCount : 1,
										elErrorContainer : '#kv-avatar-errors-1',
										msgErrorClass : 'alert alert-block alert-danger',
										defaultPreviewContent : userAvatar
												&& userAvatar != "" ? "<img src='"+userAvatar+"' alt='头像' style='width:160px'>"
												: "<img src='"+base+"/requirejs/app/assets/dist/img/user2-160x160.jpg' alt='头像' style='width:160px'>",
										allowedFileTypes : [ "image" ]
									})
							.on("filebatchselected", function(event, files) {
								$avatarInput.fileinput("upload");
							})
							.on(
									'fileuploaded',
									function(event, data, previewId, index) {
										var form = data.form, files = data.files, extra = data.extra, response = data.response, reader = data.reader;
										if (response.success) {
											var $form = $(".app-form");
											$form.find("input#oauth_icon")
													.val(response.urls);
										}
									});

					$(".app-form")
							.bootstrapValidator()
							.on(
									'success.form.bv',
									function(e) {
										e.preventDefault();

										var $form = $(e.target);

										var bv = $form
												.data('bootstrapValidator');

										$
												.post(
														$form.attr('action'),
														$form.serialize(),
														function(result) {

															if (result.success) {
																$
																		.alert({
																			title : false,
																			content : "保存成功",
																			confirmButton : "返回列表",
																			confirm : function() {
																				location.href = "#/page/plugin/oauth/list";
																			}
																		});

															} else {

																$form
																		.bootstrapValidator(
																				'disableSubmitButtons',
																				false);
															}
														}, 'json');
									});
				});
			});
</script>