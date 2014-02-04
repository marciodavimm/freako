	<g:if test="${!session.usuario }">
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/freako/">Freako/Marcio</a>
				</div>
				<div class="navbar-collapse collapse">
					<form action="/freako/login/login" method="post"
						class="navbar-form navbar-right" role="form">
						<div class="form-group">
							<input type="text" name="login" placeholder="Login"
								class="form-control">
						</div>
						<div class="form-group">
							<input type="password" name="senha" placeholder="Senha"
								class="form-control">
						</div>
						<g:if test="${session.usuario }">
							<button type="submit" class="btn btn-primary" disabled>Sign
								in</button>
						</g:if>
						<g:else>
							<button type="submit" class="btn btn-primary">Sign in</button>
						</g:else>
					</form>
				</div>
				<!--/.navbar-collapse -->
			</div>
		</div>
	</g:if>

	<g:else>
		<!-- Fixed navbar -->
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="/freako/">Freako/Marcio</a>
						</div>
					</div>
					<div class="col-xs-10">
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#about">About</a></li>
								<li><a href="#contact">Contact</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Dropdown <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li class="dropdown-header">Nav header</li>
										<li><a href="#">Separated link</a></li>
										<li><a href="#">One more separated link</a></li>
									</ul></li>
							</ul>
						<g:form name="formLogout" class="navbar-form navbar-right"
							url="[controller:'login', action:'logout']">
							<div class='form-group'>
								<input type='text' id='usuarioLog' class="form-control input-sm"
									placeholder='Usuário: ${session.usuario }' disabled />
							</div>
							<button type="submit" class="btn btn-danger btn-sm">Sair</button>
						</g:form>
					</div>
						<!--/.nav-collapse -->
					</div>
				</div>
			</div>
		</div>
	</g:else>