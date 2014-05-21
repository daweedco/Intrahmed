

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

<div class="favourites">

	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[user:has_no_posts]]</div>
	<!-- ENDIF !posts.length -->

	<div class="row">
		<div class="col-md-12 user-favourite-posts" data-nextstart="{nextStart}">
			<!-- BEGIN posts -->
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">
					<a href="../../user/{posts.user.userslug}">
						<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
					</a>

					<a href="../../user/{posts.user.userslug}">
						<strong><span>{posts.user.username}</span></strong>
					</a>
					<p>{posts.content}</p>

					<div>
						<small>
							<span class="pull-right">
								[[global:posted_in_ago, <a href="../../category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
								<a href="../../topic/{posts.tid}/#{posts.pid}">[[global:read_more]] <i class="fa fa-chevron-circle-right"></i></a>
							</span>
						</small>
					</div>
				</div>
			</div>
			<!-- END posts -->
		</div>
	</div>
</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />