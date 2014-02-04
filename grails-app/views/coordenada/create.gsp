<%@ page import="freako.Coordenada" %>
<!DOCTYPE html>
<html>
	<head>
		<!-- <meta name="layout" content="main"> -->
		
		<meta name="layout" content="marcio">
		<r:require modules="bootstrap" />
		
		<g:set var="entityName" value="${message(code: 'coordenada.label', default: 'Coordenada')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		
		
		<!-- Google Earth Plugin -->
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script type='text/javascript' src="${resource(dir: 'js', file: 'google_earth.js')}"></script>
		<!-- <g:javascript src="google_earth.js" />-->
		
		<style>
		#GoogleMapContainer {
			min-height: 320px;
		}
		#GoogleEarthContainer{
			height: 320px;
			width: 100%;
		}
		
		</style>
	</head>
	<body>

	<div class="container">




		<nav class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<button type='button' class='navbar-toggle'
					data-target='#navbar-create-coordenada' data-toggle='collapse'>
					<span>Toggle Navigation</span> <span class='icon-bar'></span> <span
						class='icon-bar'></span> <span class='icon-bar'></span>
				</button>
				<a class="navbar-brand" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a>
			</div>
			<!-- /.navbar-header -->

			<div class="collapse navbar-collapse" id="navbar-create-coordenada">
				<ul class='nav navbar-nav'>
					<li class='active'><a href='#'>Adicionar Coordenada</a></li>
					<li><g:link action="list">Listar Coordenadas</g:link></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>



		<div class="panel panel-default">
			<div class="panel-heading">Cadastro de Coordenadas</div>
			<div class="panel-body">

				<div class='col-xs-6'>
					<div class="panel panel-primary">
						<div class="panel-heading">Formulário de cadastro</div>
						<div class="panel-body">

							<g:form action="save" class="form-horizontal">
								<fieldset class="form">
									<g:render template="form" />
								</fieldset>
								<fieldset class="buttons">
									<g:submitButton name="create" class="save btn btn-primary"
										value="${message(code: 'default.button.create.label', default: 'Create')}" />
								</fieldset>
							</g:form>
						</div>
					</div>
				</div>

				<div class='col-xs-6'>
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong>Visor do Plugin Google Earth</strong>
						</div>
						<div class="panel-body">
							<div id="GoogleEarthContainer"></div>
							<div id="GoogleEarthPluginVersion">
								<strong>Versão do Plugin: </strong>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<g:render template="earth"></g:render>


		<%--
						<div id="create-coordenada" class="content scaffold-create"
							role="main">
							<h1>
								<g:message code="default.create.label" args="[entityName]" />
							</h1>
							<g:if test="${flash.message}">
								<div class="message" role="status">
									${flash.message}
								</div>
							</g:if>
							<g:hasErrors bean="${coordenadaInstance}">
								<ul class="errors" role="alert">
									<g:eachError bean="${coordenadaInstance}" var="error">
										<li
											<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
												error="${error}" /></li>
									</g:eachError>
								</ul>
							</g:hasErrors>
							<g:form action="save">
								<fieldset class="form">
									<g:render template="form" />
								</fieldset>
								<fieldset class="buttons">
									<g:submitButton name="create" class="save"
										value="${message(code: 'default.button.create.label', default: 'Create')}" />
								</fieldset>
							</g:form>
						</div>--%>





	</div>



</body>
</html>
