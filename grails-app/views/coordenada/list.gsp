
<%@ page import="freako.Coordenada" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="marcio">
		<r:require modules="bootstrap" />
		
		<!-- Google Earth Plugin -->
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script type='text/javascript' src="${resource(dir: 'js', file: 'google_earth.js')}"></script>
		<!-- <g:javascript src="google_earth.js" />-->
		
	
		<style>
			#GoogleEarthContainer {
				height: 320px;
			}
			body {
				max-width: 100%;
			}
		</style>
					
		
		
		<g:set var="entityName" value="${message(code: 'coordenada.label', default: 'Coordenada')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class='container'>

		<div class='' id='listaDetalhes'>

			<a href="#list-coordenada" class="skip" tabindex="-1"><g:message
					code="default.link.skip.label" default="Skip to content&hellip;" /></a>
			<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message
								code="default.home.label" /></a></li>
					<li><g:link class="create" action="create">
							<g:message code="default.new.label" args="[entityName]" />
						</g:link></li>
				</ul>
			</div>



			<div id="list-coordenada" class="content scaffold-list" role="main">
				<h1>
					<g:message code="default.list.label" args="[entityName]" />
				</h1>
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
				<table>
					<thead>
						<tr>

							<g:sortableColumn property="nome"
								title="${message(code: 'coordenada.nome.label', default: 'Nome')}" />

							<g:sortableColumn property="local"
								title="${message(code: 'coordenada.local.label', default: 'Local')}" />

							<g:sortableColumn property="latitude"
								title="${message(code: 'coordenada.latitude.label', default: 'Latitude')}" />

							<g:sortableColumn property="longitude"
								title="${message(code: 'coordenada.longitude.label', default: 'Longitude')}" />

							<th><g:message code="coordenada.autor.label" default="Autor" /></th>

						</tr>
					</thead>
					<tbody>
						<g:each in="${coordenadaInstanceList}" status="i"
							var="coordenadaInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								<td><g:remoteLink action="detalhes"
										id="${coordenadaInstance.id}" update='listaDetalhes'>
										${fieldValue(bean: coordenadaInstance, field: "nome")}
									</g:remoteLink></td>

								<td>
									${fieldValue(bean: coordenadaInstance, field: "local")}
								</td>

								<td>
									${fieldValue(bean: coordenadaInstance, field: "latitude")}
								</td>

								<td>
									${fieldValue(bean: coordenadaInstance, field: "longitude")}
								</td>

								<td>
									${fieldValue(bean: coordenadaInstance, field: "autor")}
								</td>

							</tr>
						</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${coordenadaInstanceTotal}" />
				</div>
			</div>
			<!-- /#list-coordenada -->
		</div>
		<!-- /#listaDetalhes -->


		<g:render template="earth"></g:render>
		
		
		
	</div>
	<!-- /.container -->

</body>
</html>
