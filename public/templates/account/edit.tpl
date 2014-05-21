

<div class="account-username-box" data-userslug="{userslug}" data-uid="{uid}">
	<ul class="nav nav-pills account-sub-links">
		<li id="settingsLink" class="hide"><a href="{config.relative_path}/user/{userslug}/settings"><i class="fa fa-gear"></i> [[user:settings]]</a></li>
		<li id="favouritesLink" class="hide"><a href="{config.relative_path}/user/{userslug}/favourites"><i class="fa fa-heart"></i> [[user:favourites]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/posts"><i class="fa fa-pencil"></i> [[global:posts]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/topics"><i class="fa fa-book"></i> [[global:topics]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/followers"><i class="fa fa-users"></i> [[user:followers]]</a></li>
		<li><a href="{config.relative_path}/user/{userslug}/following"><i class="fa fa-users"></i> [[user:following]]</a></li>
		<li id="editLink" class="hide"><a href="{config.relative_path}/user/{userslug}/edit"><i class="fa fa-pencil-square-o"></i> [[user:edit]]</a></li>
		<li id="profile"><a href="{config.relative_path}/user/{userslug}"><i class="fa fa-user"></i> [[user:profile]]</a></li>
	</ul>
</div>

<div class="account">
	<div class="row">
		<div class="col-md-2" style="text-align: center; margin-bottom:20px;">
			<div class="account-picture-block text-center">
				<img id="user-current-picture" class="user-profile-picture img-thumbnail" src="{picture}" /><br /><br />
				<a id="changePictureBtn" href="#" class="btn btn-primary">[[user:change_picture]]</a>
			</div>
		</div>

		<div class="col-md-5">
			<div>
				<form class='form-horizontal'>

					<div class="control-group">
						<label class="control-label" for="inputUsername">[[user:username]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputUsername" placeholder="[[user:username]]" value="{username}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputEmail">[[user:email]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputEmail" placeholder="[[user:email]]" value="{email}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputFullname">[[user:fullname]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{fullname}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputWebsite">[[user:website]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputLocation">[[user:location]]</label>
						<div class="controls">
							<input class="form-control" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputBirthday">[[user:birthday]]</label>
						<div class="controls">
							<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="yyyy-mm-dd">
						</div>
					</div>

					<!-- IF !disableSignatures -->
					<div class="control-group">
						<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
						</div>
					</div>
					<!-- ENDIF !disableSignatures -->

					<input type="hidden" id="inputUID" value="{uid}"><br />

					<div class="form-actions">
						<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
					</div>

				</form>
			</div>

			<hr class="visible-xs visible-sm"/>
		</div>

		<div class="col-md-5">
			<div style="vertical-align:top;">
				<form class='form-horizontal'>
					<div class="control-group">
						<label class="control-label" for="inputCurrentPassword">[[user:current_password]]</label>
						<div class="controls">
							<input class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""<!-- IF !hasPassword --> disabled<!-- ENDIF !hasPassword-->>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputNewPassword">[[user:password]]</label>
						<div class="input-group">
							<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
							<span class="input-group-addon">
								<span id="password-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="inputNewPasswordAgain">[[user:confirm_password]]</label>
						<div class="input-group">
							<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm_password]]" value="">
							<span class="input-group-addon">
								<span id="password-confirm-notify"><i class="fa fa-circle-o"></i></span>
							</span>
						</div>
					</div>
					<br/>
					<div class="form-actions">
						<a id="changePasswordBtn" href="#" class="btn btn-primary">[[user:change_password]]</a>
					</div>

				</form>
			</div>
		</div>
	</div>

	<div id="change-picture-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="[[user:change_picture]]" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">[[user:change_picture]]</h3>
				</div>
				<div class="modal-body">
					<div id="gravatar-box">
						<img id="user-gravatar-picture" src="" class="img-thumbnail user-profile-picture">
						<span class="user-picture-label">[[user:gravatar]]</span>
						<i class='fa fa-check fa-2x'></i>
					</div>
					<br/>
					<div id="uploaded-box">
						<img id="user-uploaded-picture" src="" class="img-thumbnail user-profile-picture">
						<span class="user-picture-label">[[user:uploaded_picture]]</span>
						<i class='fa fa-check fa-2x'></i>
					</div>

					<a id="uploadPictureBtn" href="#">[[user:upload_new_picture]]</a>
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal" aria-hidden="true">[[global:close]]</button>
					<button id="savePictureChangesBtn" class="btn btn-primary">[[global:save_changes]]</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-variable="gravatarpicture" value="{gravatarpicture}" />
<input type="hidden" template-variable="uploadedpicture" value="{uploadedpicture}" />
