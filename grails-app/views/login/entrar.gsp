<!DOCTYPE html>

<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="marcio" />
<r:require modules="bootstrap" />
<title>Freako Login</title>


</head>

<body>
	<div class="container">
		<div class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Navegação</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a class="" href="${createLink(uri: '/')}"><g:message
								code="default.home.label" /></a></li>
					<li><g:link class="" controller="usuario" action="list">
							<g:message code="Lista de Usuários" />
						</g:link></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div class="container">
		<br /> <br />
		<div class="table-bordered">
			<h4 class="text-center">Formulario de Login Simples</h4>
			<br />
			<g:form role="myFormLogin" name="formLogin"
				url="[controller:'login', action:'login']">
				<g:if test='${session.usuario }'>
					<div class="form-group row text-right">
						<label for="loginId" class="col-xs-2">Login</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" name="login" id="loginId"
								placeholder="Digite seu login" disabled/>
						</div>
					</div>
					<div class="form-group row text-right">
						<label for="senhaId" class="col-xs-2">Senha</label>
						<div class="col-xs-8">
							<input type="password" class="form-control" name="senha"
								id="senhaId" placeholder="Digite sua senha" disabled/>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-offset-2 col-xs-3">
							<button type="submit" class="btn btn-primary btn-block" disabled>Entrar</button>
						</div>
					</div>
				</g:if>
				<g:else>
					<div class="form-group row text-right">
						<label for="loginId" class="col-xs-2">Login</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" name="login" id="loginId"
								placeholder="Digite seu login" />
						</div>
					</div>
					<div class="form-group row text-right">
						<label for="senhaId" class="col-xs-2">Senha</label>
						<div class="col-xs-8">
							<input type="password" class="form-control" name="senha"
								id="senhaId" placeholder="Digite sua senha" />
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-offset-2 col-xs-3">
							<button type="submit" class="btn btn-primary btn-block">Entrar</button>
						</div>
					</div>
				</g:else>
			</g:form>
		</div>
		<br /> <br />

		<div class="table-bordered">
			<h4 class="text-center">Formulario de Logout Simples</h4>
			<g:form name="formLogout" url="[controller:'login', action:'logout']">
				<g:if test="${session.usuario}">
					<div class="form-group row text-right">
						<label for='logoutInput' class="col-xs-2">Usuário</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" id='logoutInput'
								value="${session.usuario.login }" disabled />
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-offset-2 col-xs-3">
							<button type="submit" class="btn btn-danger btn-block">Sair</button>
						</div>
					</div>
				</g:if>
				<g:else>
					<div class="form-group row text-right">
						<label class="col-xs-2" for='logoutInput2'>Usuário</label>
						<div class="col-xs-8">
							<input type="text" id='logoutInput2' class="form-control"
								value="nenhum usuario logado" disabled />
						</div>
					</div>
					<div class="form-group row">
						<div class="col-xs-offset-2 col-xs-3">
							<button type="submit" class="btn btn-danger btn-block" disabled>Sessão Sem Usuário</button>
						</div>
					</div>
				</g:else>
			</g:form>
		</div>

		<br /> <br />
	</div>
</body>
</html>