


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
		<div class="col-md-5 account-block">

			<div class="account-picture-block panel panel-default">
				<div class="panel-body">
					<div class="text-center">
						<a href="{relative_path}/user/{userslug}"><img src="{picture}" class="user-profile-picture img-thumbnail"/></a>
					</div>

					<div>
						<div class="text-center">
							<span>
								<i class="account-online-status fa fa-circle status offline" title="[[global:{status}]]"></i>
								<span class="account-username"> {username}</span>
							</span>

							<div class="btn-group text-left">
								<i class="fa fa-cogs dropdown-toggle" data-toggle="dropdown"></i>
								<ul class="dropdown-menu">
									<li><a id="chat-btn" href="#" class="hide">[[user:chat]]</a></li>
									<li class="divider"></li>
									<li><a id="follow-btn" href="#" class="hide">[[user:follow]]</a></li>
									<li><a id="unfollow-btn" href="#" class="hide">[[user:unfollow]]</a></li>
								</ul>
							</div>
						</div>

						<!-- IF banned -->
						<div>
							<span class="label label-danger">[[user:banned]]</span>
						</div>
						<!-- ENDIF banned -->
						<hr/>
						<div class="text-center account-stats">

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{reputation}">{reputation}</span>
								<span class="account-bio-label">[[global:reputation]]</span>
							</div>

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{postcount}">{postcount}</span>
								<span class="account-bio-label">[[global:posts]]</span>
							</div>

							<div class="inline-block text-center">
								<span class="human-readable-number" title="{profileviews}">{profileviews}</span>
								<span class="account-bio-label">[[user:profile_views]]</span>
							</div>
						</div>
					</div>
				</div>
			</div>



			<div class="panel panel-default">
				<div class="panel-body text-center">

					<!-- IF email -->
					<span class="account-bio-label">[[user:email]]</span>
					<span class="account-bio-value"><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</span>
					<!-- ENDIF email -->

					<!-- IF fullname -->
					<span class="account-bio-label">[[user:fullname]]</span>
					<span class="account-bio-value">{fullname}</span>
					<!-- ENDIF fullname -->

					<!-- IF websiteName -->
					<span class="account-bio-label">[[user:website]]</span>
					<span class="account-bio-value"><a href="{website}">{websiteName}</a></span>
					<!-- ENDIF websiteName -->

					<!-- IF location -->
					<span class="account-bio-label">[[user:location]]</span>
					<span class="account-bio-value">{location}</span>
					<!-- ENDIF location -->

					<!-- IF age -->
					<span class="account-bio-label">[[user:age]]</span>
					<span class="account-bio-value">{age}</span>
					<!-- ENDIF age -->


					<span class="account-bio-label">[[user:followers]]</span>
					<span class="human-readable-number account-bio-value" title="{followerCount}">{followerCount}</span>

					<span class="account-bio-label">[[user:following]]</span>
					<span class="human-readable-number account-bio-value"  title="{followingCount}">{followingCount}</span>

					<span class="account-bio-label">[[user:joined]]</span>
					<span class="timeago account-bio-value" title="{joindate}"></span>

					<span class="account-bio-label">[[user:lastonline]]</span>
					<span class="timeago account-bio-value" title="{lastonline}"></span>

					<!-- IF !disableSignatures -->
					<!-- IF signature -->
					<hr/>
					<span class="account-bio-label">[[user:signature]]</span>
					<div class="post-signature">
						<span id='signature'>{signature}</span>
					</div>
					<!-- ENDIF signature -->
					<!-- ENDIF !disableSignatures -->
				</div>
			</div>

			<!-- IF ips.length -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">[[global:recentips]]</h3>
				</div>
				<div class="panel-body">
				<!-- BEGIN ips -->
					<div>{ips.ip}</div>
				<!-- END ips -->
				</div>
			</div>
			<!-- ENDIF ips.length -->

		</div>


		<div class="col-md-7 user-recent-posts">
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-heading">
					<h3 class="panel-title">[[global:recentposts]]</h3>
				</div>
				<div class="panel-body">
					<!-- IF !posts.length -->
					<span>[[user:has_no_posts]]</span>
					<!-- ENDIF !posts.length -->
					<!-- BEGIN posts -->
					<div class="clearfix">
						<p>{posts.content}</p>
						<small>
							<span class="pull-right">
								[[global:posted_in_ago, <a href="../../category/{posts.category.slug}"><i class="fa {posts.category.icon}"></i> {posts.category.name}</a>, <span class="timeago" title="{posts.relativeTime}"></span>]] &bull;
								<a href="../../topic/{posts.tid}/#{posts.pid}">[[global:read_more]] <i class="fa fa-chevron-circle-right"></i></a>
							</span>
						</small>
					</div>
					<hr/>
					<!-- END posts -->
				</div>
			</div>

		</div>
	</div>

	<br/>
	<div id="user-action-alert" class="alert alert-success hide"></div>

</div>

<input type="hidden" template-variable="yourid" value="{yourid}" />
<input type="hidden" template-variable="theirid" value="{theirid}" />
<input type="hidden" template-type="boolean" template-variable="isFollowing" value="{isFollowing}" />
