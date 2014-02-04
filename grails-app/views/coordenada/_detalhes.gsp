
<g:set var="entityName" value="${message(code: 'coordenada.label', default: 'Coordenada')}" />

		<div class='table table-bordered'>
			<a href="#show-coordenada" class="skip" tabindex="-1"><g:message
					code="default.link.skip.label" default="Skip to content&hellip;" /></a>
			<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message
								code="default.home.label" /></a></li>
					<li><g:link class="list" action="list">
							<g:message code="default.list.label" args="[entityName]" />
						</g:link></li>
					<li><g:link class="create" action="create">
							<g:message code="default.new.label" args="[entityName]" />
						</g:link></li>
				</ul>
			</div>
			<div id="show-coordenada" class="content scaffold-show" role="main">
				<h1>
					<g:message code="default.show.label" args="[entityName]" />
				</h1>
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
				<ol class="property-list coordenada">

					<g:if test="${coordenadaInstance?.nome}">
						<li class="fieldcontain"><span id="nome-label"
							class="property-label"><g:message
									code="coordenada.nome.label" default="Nome" /></span> <span
							class="property-value" aria-labelledby="nome-label"><g:fieldValue
									bean="${coordenadaInstance}" field="nome" /></span></li>
					</g:if>

					<g:if test="${coordenadaInstance?.local}">
						<li class="fieldcontain"><span id="local-label"
							class="property-label"><g:message
									code="coordenada.local.label" default="Local" /></span> <span
							class="property-value" aria-labelledby="local-label"><g:fieldValue
									bean="${coordenadaInstance}" field="local" /></span></li>
					</g:if>

					<g:if test="${coordenadaInstance?.latitude}">
						<li class="fieldcontain"><span id="latitude-label"
							class="property-label"><g:message
									code="coordenada.latitude.label" default="Latitude" /></span> <span
							class="property-value" aria-labelledby="latitude-label"> ${coordenadaInstance.latitude }
								<%--<g:fieldValue bean="${coordenadaInstance}" field="latitude"/>--%>
						</span></li>
					</g:if>

					<g:if test="${coordenadaInstance?.longitude}">
						<li class="fieldcontain"><span id="longitude-label"
							class="property-label"><g:message
									code="coordenada.longitude.label" default="Longitude" /></span> <span
							class="property-value" aria-labelledby="longitude-label">
								${coordenadaInstance.longitude } <%--<g:fieldValue bean="${coordenadaInstance}" field="longitude"/>--%>
						</span></li>
					</g:if>

					<g:if test="${coordenadaInstance?.autor}">
						<li class="fieldcontain"><span id="autor-label"
							class="property-label"><g:message
									code="coordenada.autor.label" default="Autor" /></span> <span
							class="property-value" aria-labelledby="autor-label"><g:link
									controller="usuario" action="show"
									id="${coordenadaInstance?.autor?.id}">
									${coordenadaInstance?.autor?.encodeAsHTML()}
								</g:link></span></li>
					</g:if>

				</ol>
				<g:form>
					<fieldset class="buttons">
						<g:hiddenField name="id" value="${coordenadaInstance?.id}" />
						<g:link class="btn btn-warning" action="edit" id="${coordenadaInstance?.id}">
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<g:actionSubmit class="btn btn-danger" action="delete"
							value="${message(code: 'default.button.delete.label', default: 'Delete')}"
							onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						<p class='btn btn-info' 
							onclick="setCoordenadas(${coordenadaInstance.latitude}, ${coordenadaInstance.longitude });">
							Set Map
						</p>
					</fieldset>
				</g:form>
			</div>
		</div> <!-- /.table table-bordered -->

		