

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
		<div class="col-xs-12">
			<h4>[[user:browsing]]</h4>
			<div class="well">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="openOutgoingLinksInNewTab" /> <strong>[[user:open_links_in_new_tab]]</strong>
					</label>
				</div>
			</div>

			<h4>[[global:email]]</h4>
			<div class="well">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="showemail" /> <strong>[[user:show_email]]</strong>
					</label>
				</div>
				<div class="form-group">
					<label for="dailyDigestFreq">[[user:digest_label]]</label>
					<select class="form-control" id="dailyDigestFreq" data-property="dailyDigestFreq">
						<option value="off">[[user:digest_off]]</option>
						<option value="daily">[[user:digest_daily]]</option>
						<option value="weekly" disabled="disabled">[[user:digest_weekly]]</option>
						<option value="monthly" disabled="disabled">[[user:digest_monthly]]</option>
					</select>
					<p class="help-block">[[user:digest_description]]</p>
				</div>
			</div>

			<h4>[[global:pagination]]</h4>
			<div class="well">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="usePagination"> <strong>[[user:paginate_description]]</strong>
					</label>
				</div>

				<strong>[[user:topics_per_page]]</strong><br /> <input type="text" class="form-control" data-property="topicsPerPage"><br />
				<strong>[[user:posts_per_page]]</strong><br /> <input type="text" class="form-control" data-property="postsPerPage"><br />
			</div>

			<h4>[[global:header.notifications]]</h4>
			<div class="well">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="notificationSounds"> <strong>[[user:notification_sounds]]</strong>
					</label>
				</div>
			</div>

			<h4>[[global:language]]</h4>
			<div class="well">
				<select data-property="language" class="form-control">
					<!-- BEGIN languages -->
					<option value="{languages.code}">{languages.name} ({languages.code})</option>
					<!-- END languages -->
				</select>
			</div>


			<!-- BEGIN settings -->
			<h4>{settings.title}</h4>
			<div class="well">
				{settings.content}
			</div>
			<!-- END settings -->
		</div>
	</div>

	<div class="form-actions">
		<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />